
use clap::{App,Arg} ;
use std::io;
use regex::Regex ;
use std::fs::File;
use std::io::BufReader;
use std::io::prelude::* ;

fn parse_string(re: Regex ,context_len:usize) ->  Vec<(usize,String)> {
    let mut tags : Vec<usize> = vec![];
    let mut context : Vec<(usize,String)> =vec![] ;
    let mut s= String::new();
    let stdin = io::stdin() ;
    let _ =stdin.lock().read_to_string(&mut s) ;
    

    
    for (i,line) in  s.lines().by_ref().enumerate() {

        if re.find(&line) != None {
            tags.push(i) ;
        }

        
    } ;

    // iterate through the lines and check whether
    //  some tag is in context len bounds
    
                
    for (index , line)  in s.lines().by_ref().enumerate(){
        let line_no = index;
        // let ctx : Vec<(usize,String)> =vec![];
        for tag in &tags {
            
            let lower_bound = tag.saturating_sub(context_len);
            let upper_bound = tag + context_len;
            if (index >= lower_bound) && (index <= upper_bound) {
                context.push((line_no,String::from(line)));
                break;
             }
        }
    }

    context
}


fn parse_file(file_path: &str ,re: Regex ,context_len:usize) ->  Vec<(usize,String)> {
    let mut tags : Vec<usize> = vec![];
    let mut context : Vec<(usize,String)> =vec![] ;
    let file  = File::open(file_path).unwrap();
    let reader = BufReader::new(&file) ;
   
    for (i,line) in reader.lines().enumerate() {
        let l =line.unwrap() ;
       
        if re.find(&l) != None {
            tags.push(i) ;
        }
    }

    // iterate through the lines and check whether
    //  some tag is in context len bounds
    let file  = File::open(file_path).unwrap();
    
    let reader = BufReader::new(file) ;
    for (index , line)  in reader.lines().enumerate(){
       
        let line_no = index;
        // let ctx : Vec<(usize,String)> =vec![];
        for tag in &tags {
            
            let lower_bound = tag.saturating_sub(context_len);
            let upper_bound = tag + context_len;
            if (index >= lower_bound) && (index <= upper_bound) {
                context.push((line_no,line.unwrap()));
                break;
             }
        }
    }

    context
}

fn main() {
    let app = App::new("grep lite ") ;
    let args =app .version("1.0.0")
        .about("a lightweight grep clone searches for patterns in text")
        .args(
                &[
                    Arg::with_name( "pattern")
                    .help("pattern to search for ")
                    .required(true)
                    .takes_value(true) ,

                    Arg::with_name("file-name")
                    .help("name of the file to search pattern in  ")
                    .required(false)
                    .takes_value(true)
                ]
            )
        .get_matches() ;
    
    let context_len  = 2 ;
    let file_path = args.value_of("file-name") ;
    let search_text = args.value_of("pattern").unwrap() ;
    let re = Regex::new(search_text).unwrap() ;
    
    let context = if file_path == None {
                
                parse_string(re,context_len)
            }
            else{
               
                parse_file(file_path.unwrap(),re,context_len)
            } ;
   
   
   for (index, line) in context{
     println!("{}:->{}",index+1,line)  
   }
}

