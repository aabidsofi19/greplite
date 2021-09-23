--
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE lms_django;
--
-- Name: lms_django; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE lms_django WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE lms_django OWNER TO postgres;

\connect lms_django

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: anouncements_anouncement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.anouncements_anouncement (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    message text NOT NULL,
    course_id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.anouncements_anouncement OWNER TO postgres;

--
-- Name: anouncements_anouncement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.anouncements_anouncement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anouncements_anouncement_id_seq OWNER TO postgres;

--
-- Name: anouncements_anouncement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.anouncements_anouncement_id_seq OWNED BY public.anouncements_anouncement.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books_book (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    thumbnail character varying(100) NOT NULL,
    description text,
    file character varying(100)
);


ALTER TABLE public.books_book OWNER TO postgres;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO postgres;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_chapter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books_chapter (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    title character varying(255) NOT NULL,
    book_id integer NOT NULL
);


ALTER TABLE public.books_chapter OWNER TO postgres;

--
-- Name: books_chapter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_chapter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_chapter_id_seq OWNER TO postgres;

--
-- Name: books_chapter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_chapter_id_seq OWNED BY public.books_chapter.id;


--
-- Name: courses_assignment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_assignment (
    id integer NOT NULL,
    document character varying(100) NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    book_id integer,
    chapter_id integer,
    course_id integer NOT NULL
);


ALTER TABLE public.courses_assignment OWNER TO postgres;

--
-- Name: courses_assignment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_assignment_id_seq OWNER TO postgres;

--
-- Name: courses_assignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_assignment_id_seq OWNED BY public.courses_assignment.id;


--
-- Name: courses_course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_course (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    instructor_id integer NOT NULL,
    institution_id integer NOT NULL,
    description text NOT NULL,
    thumbnail character varying(100) NOT NULL
);


ALTER TABLE public.courses_course OWNER TO postgres;

--
-- Name: courses_course_book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_course_book (
    id integer NOT NULL,
    course_id integer NOT NULL,
    book_id integer NOT NULL
);


ALTER TABLE public.courses_course_book OWNER TO postgres;

--
-- Name: courses_course_book_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_course_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_book_id_seq OWNER TO postgres;

--
-- Name: courses_course_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_course_book_id_seq OWNED BY public.courses_course_book.id;


--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO postgres;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses_course.id;


--
-- Name: courses_course_lectures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_course_lectures (
    id integer NOT NULL,
    course_id integer NOT NULL,
    lecture_id integer NOT NULL
);


ALTER TABLE public.courses_course_lectures OWNER TO postgres;

--
-- Name: courses_course_lectures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_course_lectures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_lectures_id_seq OWNER TO postgres;

--
-- Name: courses_course_lectures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_course_lectures_id_seq OWNED BY public.courses_course_lectures.id;


--
-- Name: courses_course_users_enrolled; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_course_users_enrolled (
    id integer NOT NULL,
    course_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.courses_course_users_enrolled OWNER TO postgres;

--
-- Name: courses_course_users_enrolled_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_course_users_enrolled_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_users_enrolled_id_seq OWNER TO postgres;

--
-- Name: courses_course_users_enrolled_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_course_users_enrolled_id_seq OWNED BY public.courses_course_users_enrolled.id;


--
-- Name: courses_lecture; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_lecture (
    id integer NOT NULL,
    serial_no integer NOT NULL,
    date_published timestamp with time zone NOT NULL,
    heading character varying(255) NOT NULL,
    notes text NOT NULL,
    video character varying(100) NOT NULL,
    document character varying(100) NOT NULL
);


ALTER TABLE public.courses_lecture OWNER TO postgres;

--
-- Name: courses_lecture_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_lecture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_lecture_id_seq OWNER TO postgres;

--
-- Name: courses_lecture_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_lecture_id_seq OWNED BY public.courses_lecture.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: domains_subdomain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.domains_subdomain (
    id integer NOT NULL,
    subdomain character varying(255) NOT NULL
);


ALTER TABLE public.domains_subdomain OWNER TO postgres;

--
-- Name: domains_subdomain_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.domains_subdomain_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domains_subdomain_id_seq OWNER TO postgres;

--
-- Name: domains_subdomain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.domains_subdomain_id_seq OWNED BY public.domains_subdomain.id;


--
-- Name: home_notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_notification (
    id integer NOT NULL,
    title text NOT NULL,
    redirect_url character varying(200) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.home_notification OWNER TO postgres;

--
-- Name: home_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_notification_id_seq OWNER TO postgres;

--
-- Name: home_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_notification_id_seq OWNED BY public.home_notification.id;


--
-- Name: institutions_institution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.institutions_institution (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    institution_code character varying(255) NOT NULL,
    description text NOT NULL,
    logo character varying(100) NOT NULL,
    admin_code character varying(255) NOT NULL,
    subdomain_id integer
);


ALTER TABLE public.institutions_institution OWNER TO postgres;

--
-- Name: institutions_institution_books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.institutions_institution_books (
    id integer NOT NULL,
    institution_id integer NOT NULL,
    book_id integer NOT NULL
);


ALTER TABLE public.institutions_institution_books OWNER TO postgres;

--
-- Name: institutions_institution_books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.institutions_institution_books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institutions_institution_books_id_seq OWNER TO postgres;

--
-- Name: institutions_institution_books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.institutions_institution_books_id_seq OWNED BY public.institutions_institution_books.id;


--
-- Name: institutions_institution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.institutions_institution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institutions_institution_id_seq OWNER TO postgres;

--
-- Name: institutions_institution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.institutions_institution_id_seq OWNED BY public.institutions_institution.id;


--
-- Name: students_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students_message (
    id integer NOT NULL,
    "time" timestamp with time zone NOT NULL,
    sender_role character varying(255) NOT NULL,
    message text NOT NULL,
    course_id integer NOT NULL,
    student_id integer NOT NULL,
    teacher_id integer NOT NULL
);


ALTER TABLE public.students_message OWNER TO postgres;

--
-- Name: students_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_message_id_seq OWNER TO postgres;

--
-- Name: students_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_message_id_seq OWNED BY public.students_message.id;


--
-- Name: users_instituteadmin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_instituteadmin (
    id integer NOT NULL,
    institution_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users_instituteadmin OWNER TO postgres;

--
-- Name: users_instituteadmin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_instituteadmin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_instituteadmin_id_seq OWNER TO postgres;

--
-- Name: users_instituteadmin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_instituteadmin_id_seq OWNED BY public.users_instituteadmin.id;


--
-- Name: users_student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_student (
    id integer NOT NULL,
    institution_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users_student OWNER TO postgres;

--
-- Name: users_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_student_id_seq OWNER TO postgres;

--
-- Name: users_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_student_id_seq OWNED BY public.users_student.id;


--
-- Name: users_teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_teacher (
    id integer NOT NULL,
    institution_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users_teacher OWNER TO postgres;

--
-- Name: users_teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_teacher_id_seq OWNER TO postgres;

--
-- Name: users_teacher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_teacher_id_seq OWNED BY public.users_teacher.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL,
    hash_id character varying(255),
    is_school_admin boolean NOT NULL,
    is_student boolean NOT NULL,
    is_teacher boolean NOT NULL,
    bio text NOT NULL,
    profile character varying(100) NOT NULL
);


ALTER TABLE public.users_user OWNER TO postgres;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: anouncements_anouncement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anouncements_anouncement ALTER COLUMN id SET DEFAULT nextval('public.anouncements_anouncement_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_chapter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_chapter ALTER COLUMN id SET DEFAULT nextval('public.books_chapter_id_seq'::regclass);


--
-- Name: courses_assignment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_assignment ALTER COLUMN id SET DEFAULT nextval('public.courses_assignment_id_seq'::regclass);


--
-- Name: courses_course id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course ALTER COLUMN id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: courses_course_book id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_book ALTER COLUMN id SET DEFAULT nextval('public.courses_course_book_id_seq'::regclass);


--
-- Name: courses_course_lectures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_lectures ALTER COLUMN id SET DEFAULT nextval('public.courses_course_lectures_id_seq'::regclass);


--
-- Name: courses_course_users_enrolled id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_users_enrolled ALTER COLUMN id SET DEFAULT nextval('public.courses_course_users_enrolled_id_seq'::regclass);


--
-- Name: courses_lecture id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_lecture ALTER COLUMN id SET DEFAULT nextval('public.courses_lecture_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: domains_subdomain id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domains_subdomain ALTER COLUMN id SET DEFAULT nextval('public.domains_subdomain_id_seq'::regclass);


--
-- Name: home_notification id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_notification ALTER COLUMN id SET DEFAULT nextval('public.home_notification_id_seq'::regclass);


--
-- Name: institutions_institution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions_institution ALTER COLUMN id SET DEFAULT nextval('public.institutions_institution_id_seq'::regclass);


--
-- Name: institutions_institution_books id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions_institution_books ALTER COLUMN id SET DEFAULT nextval('public.institutions_institution_books_id_seq'::regclass);


--
-- Name: students_message id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_message ALTER COLUMN id SET DEFAULT nextval('public.students_message_id_seq'::regclass);


--
-- Name: users_instituteadmin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_instituteadmin ALTER COLUMN id SET DEFAULT nextval('public.users_instituteadmin_id_seq'::regclass);


--
-- Name: users_student id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_student ALTER COLUMN id SET DEFAULT nextval('public.users_student_id_seq'::regclass);


--
-- Name: users_teacher id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_teacher ALTER COLUMN id SET DEFAULT nextval('public.users_teacher_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: anouncements_anouncement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.anouncements_anouncement (id, date, message, course_id, title) FROM stdin;
\.
COPY public.anouncements_anouncement (id, date, message, course_id, title) FROM '$$PATH$$/4201.dat';

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/4173.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/4175.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/4171.dat';

--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books_book (id, name, thumbnail, description, file) FROM stdin;
\.
COPY public.books_book (id, name, thumbnail, description, file) FROM '$$PATH$$/4203.dat';

--
-- Data for Name: books_chapter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books_chapter (id, file, title, book_id) FROM stdin;
\.
COPY public.books_chapter (id, file, title, book_id) FROM '$$PATH$$/4214.dat';

--
-- Data for Name: courses_assignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_assignment (id, document, title, description, book_id, chapter_id, course_id) FROM stdin;
\.
COPY public.courses_assignment (id, document, title, description, book_id, chapter_id, course_id) FROM '$$PATH$$/4205.dat';

--
-- Data for Name: courses_course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_course (id, title, instructor_id, institution_id, description, thumbnail) FROM stdin;
\.
COPY public.courses_course (id, title, instructor_id, institution_id, description, thumbnail) FROM '$$PATH$$/4195.dat';

--
-- Data for Name: courses_course_book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_course_book (id, course_id, book_id) FROM stdin;
\.
COPY public.courses_course_book (id, course_id, book_id) FROM '$$PATH$$/4218.dat';

--
-- Data for Name: courses_course_lectures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_course_lectures (id, course_id, lecture_id) FROM stdin;
\.
COPY public.courses_course_lectures (id, course_id, lecture_id) FROM '$$PATH$$/4197.dat';

--
-- Data for Name: courses_course_users_enrolled; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_course_users_enrolled (id, course_id, student_id) FROM stdin;
\.
COPY public.courses_course_users_enrolled (id, course_id, student_id) FROM '$$PATH$$/4199.dat';

--
-- Data for Name: courses_lecture; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_lecture (id, serial_no, date_published, heading, notes, video, document) FROM stdin;
\.
COPY public.courses_lecture (id, serial_no, date_published, heading, notes, video, document) FROM '$$PATH$$/4193.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/4183.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/4169.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/4167.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/4210.dat';

--
-- Data for Name: domains_subdomain; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.domains_subdomain (id, subdomain) FROM stdin;
\.
COPY public.domains_subdomain (id, subdomain) FROM '$$PATH$$/4207.dat';

--
-- Data for Name: home_notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_notification (id, title, redirect_url, user_id) FROM stdin;
\.
COPY public.home_notification (id, title, redirect_url, user_id) FROM '$$PATH$$/4216.dat';

--
-- Data for Name: institutions_institution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.institutions_institution (id, name, institution_code, description, logo, admin_code, subdomain_id) FROM stdin;
\.
COPY public.institutions_institution (id, name, institution_code, description, logo, admin_code, subdomain_id) FROM '$$PATH$$/4185.dat';

--
-- Data for Name: institutions_institution_books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.institutions_institution_books (id, institution_id, book_id) FROM stdin;
\.
COPY public.institutions_institution_books (id, institution_id, book_id) FROM '$$PATH$$/4209.dat';

--
-- Data for Name: students_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students_message (id, "time", sender_role, message, course_id, student_id, teacher_id) FROM stdin;
\.
COPY public.students_message (id, "time", sender_role, message, course_id, student_id, teacher_id) FROM '$$PATH$$/4212.dat';

--
-- Data for Name: users_instituteadmin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_instituteadmin (id, institution_id, user_id) FROM stdin;
\.
COPY public.users_instituteadmin (id, institution_id, user_id) FROM '$$PATH$$/4191.dat';

--
-- Data for Name: users_student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_student (id, institution_id, user_id) FROM stdin;
\.
COPY public.users_student (id, institution_id, user_id) FROM '$$PATH$$/4189.dat';

--
-- Data for Name: users_teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_teacher (id, institution_id, user_id) FROM stdin;
\.
COPY public.users_teacher (id, institution_id, user_id) FROM '$$PATH$$/4187.dat';

--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, is_staff, is_active, date_joined, email, hash_id, is_school_admin, is_student, is_teacher, bio, profile) FROM stdin;
\.
COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, is_staff, is_active, date_joined, email, hash_id, is_school_admin, is_student, is_teacher, bio, profile) FROM '$$PATH$$/4177.dat';

--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.users_user_groups (id, user_id, group_id) FROM '$$PATH$$/4179.dat';

--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.users_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/4181.dat';

--
-- Name: anouncements_anouncement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.anouncements_anouncement_id_seq', 7, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_book_id_seq', 15, true);


--
-- Name: books_chapter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_chapter_id_seq', 10, true);


--
-- Name: courses_assignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_assignment_id_seq', 8, true);


--
-- Name: courses_course_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_book_id_seq', 30, true);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 19, true);


--
-- Name: courses_course_lectures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_lectures_id_seq', 7, true);


--
-- Name: courses_course_users_enrolled_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_users_enrolled_id_seq', 9, true);


--
-- Name: courses_lecture_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_lecture_id_seq', 7, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 72, true);


--
-- Name: domains_subdomain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.domains_subdomain_id_seq', 16, true);


--
-- Name: home_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_notification_id_seq', 27, true);


--
-- Name: institutions_institution_books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.institutions_institution_books_id_seq', 38, true);


--
-- Name: institutions_institution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.institutions_institution_id_seq', 16, true);


--
-- Name: students_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_message_id_seq', 24, true);


--
-- Name: users_instituteadmin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_instituteadmin_id_seq', 9, true);


--
-- Name: users_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_student_id_seq', 20, true);


--
-- Name: users_teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_teacher_id_seq', 15, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 47, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: anouncements_anouncement anouncements_anouncement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anouncements_anouncement
    ADD CONSTRAINT anouncements_anouncement_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_chapter books_chapter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_chapter
    ADD CONSTRAINT books_chapter_pkey PRIMARY KEY (id);


--
-- Name: courses_assignment courses_assignment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_assignment
    ADD CONSTRAINT courses_assignment_pkey PRIMARY KEY (id);


--
-- Name: courses_course_book courses_course_book_course_id_book_id_f7e95394_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_book
    ADD CONSTRAINT courses_course_book_course_id_book_id_f7e95394_uniq UNIQUE (course_id, book_id);


--
-- Name: courses_course_book courses_course_book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_book
    ADD CONSTRAINT courses_course_book_pkey PRIMARY KEY (id);


--
-- Name: courses_course_lectures courses_course_lectures_course_id_lecture_id_653bf078_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_lectures
    ADD CONSTRAINT courses_course_lectures_course_id_lecture_id_653bf078_uniq UNIQUE (course_id, lecture_id);


--
-- Name: courses_course_lectures courses_course_lectures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_lectures
    ADD CONSTRAINT courses_course_lectures_pkey PRIMARY KEY (id);


--
-- Name: courses_course courses_course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_pkey PRIMARY KEY (id);


--
-- Name: courses_course_users_enrolled courses_course_users_enr_course_id_student_id_5288c869_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_users_enrolled
    ADD CONSTRAINT courses_course_users_enr_course_id_student_id_5288c869_uniq UNIQUE (course_id, student_id);


--
-- Name: courses_course_users_enrolled courses_course_users_enrolled_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_users_enrolled
    ADD CONSTRAINT courses_course_users_enrolled_pkey PRIMARY KEY (id);


--
-- Name: courses_lecture courses_lecture_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_lecture
    ADD CONSTRAINT courses_lecture_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: domains_subdomain domains_subdomain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domains_subdomain
    ADD CONSTRAINT domains_subdomain_pkey PRIMARY KEY (id);


--
-- Name: domains_subdomain domains_subdomain_subdomain_3fe77fd8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domains_subdomain
    ADD CONSTRAINT domains_subdomain_subdomain_3fe77fd8_uniq UNIQUE (subdomain);


--
-- Name: home_notification home_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_notification
    ADD CONSTRAINT home_notification_pkey PRIMARY KEY (id);


--
-- Name: institutions_institution_books institutions_institution_books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions_institution_books
    ADD CONSTRAINT institutions_institution_books_pkey PRIMARY KEY (id);


--
-- Name: institutions_institution_books institutions_institution_institution_id_book_id_7e60a4e3_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions_institution_books
    ADD CONSTRAINT institutions_institution_institution_id_book_id_7e60a4e3_uniq UNIQUE (institution_id, book_id);


--
-- Name: institutions_institution institutions_institution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions_institution
    ADD CONSTRAINT institutions_institution_pkey PRIMARY KEY (id);


--
-- Name: institutions_institution institutions_institution_subdomain_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions_institution
    ADD CONSTRAINT institutions_institution_subdomain_id_key UNIQUE (subdomain_id);


--
-- Name: students_message students_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_message
    ADD CONSTRAINT students_message_pkey PRIMARY KEY (id);


--
-- Name: users_instituteadmin users_instituteadmin_institution_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_instituteadmin
    ADD CONSTRAINT users_instituteadmin_institution_id_key UNIQUE (institution_id);


--
-- Name: users_instituteadmin users_instituteadmin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_instituteadmin
    ADD CONSTRAINT users_instituteadmin_pkey PRIMARY KEY (id);


--
-- Name: users_instituteadmin users_instituteadmin_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_instituteadmin
    ADD CONSTRAINT users_instituteadmin_user_id_key UNIQUE (user_id);


--
-- Name: users_student users_student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_student
    ADD CONSTRAINT users_student_pkey PRIMARY KEY (id);


--
-- Name: users_student users_student_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_student
    ADD CONSTRAINT users_student_user_id_key UNIQUE (user_id);


--
-- Name: users_teacher users_teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_teacher
    ADD CONSTRAINT users_teacher_pkey PRIMARY KEY (id);


--
-- Name: users_teacher users_teacher_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_teacher
    ADD CONSTRAINT users_teacher_user_id_key UNIQUE (user_id);


--
-- Name: users_user users_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_hash_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_hash_id_key UNIQUE (hash_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: anouncements_anouncement_course_id_ffb68148; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX anouncements_anouncement_course_id_ffb68148 ON public.anouncements_anouncement USING btree (course_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: books_chapter_book_id_109cb672; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX books_chapter_book_id_109cb672 ON public.books_chapter USING btree (book_id);


--
-- Name: courses_assignment_book_id_48eef8f7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_assignment_book_id_48eef8f7 ON public.courses_assignment USING btree (book_id);


--
-- Name: courses_assignment_chapter_id_32852484; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_assignment_chapter_id_32852484 ON public.courses_assignment USING btree (chapter_id);


--
-- Name: courses_assignment_course_id_71e9893f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_assignment_course_id_71e9893f ON public.courses_assignment USING btree (course_id);


--
-- Name: courses_course_book_book_id_aad0992c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_course_book_book_id_aad0992c ON public.courses_course_book USING btree (book_id);


--
-- Name: courses_course_book_course_id_b88b21e3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_course_book_course_id_b88b21e3 ON public.courses_course_book USING btree (course_id);


--
-- Name: courses_course_institution_id_34e4044f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_course_institution_id_34e4044f ON public.courses_course USING btree (institution_id);


--
-- Name: courses_course_instructor_id_5b0643dc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_course_instructor_id_5b0643dc ON public.courses_course USING btree (instructor_id);


--
-- Name: courses_course_lectures_course_id_cbc52a99; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_course_lectures_course_id_cbc52a99 ON public.courses_course_lectures USING btree (course_id);


--
-- Name: courses_course_lectures_lecture_id_bcbff441; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_course_lectures_lecture_id_bcbff441 ON public.courses_course_lectures USING btree (lecture_id);


--
-- Name: courses_course_users_enrolled_course_id_7002f2bc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_course_users_enrolled_course_id_7002f2bc ON public.courses_course_users_enrolled USING btree (course_id);


--
-- Name: courses_course_users_enrolled_student_id_94f40d4e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX courses_course_users_enrolled_student_id_94f40d4e ON public.courses_course_users_enrolled USING btree (student_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: domains_subdomain_subdomain_3fe77fd8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX domains_subdomain_subdomain_3fe77fd8_like ON public.domains_subdomain USING btree (subdomain varchar_pattern_ops);


--
-- Name: home_notification_user_id_a3272aae; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_notification_user_id_a3272aae ON public.home_notification USING btree (user_id);


--
-- Name: institutions_institution_books_book_id_fb9e173b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX institutions_institution_books_book_id_fb9e173b ON public.institutions_institution_books USING btree (book_id);


--
-- Name: institutions_institution_books_institution_id_ecbf49da; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX institutions_institution_books_institution_id_ecbf49da ON public.institutions_institution_books USING btree (institution_id);


--
-- Name: students_message_course_id_6974008d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_message_course_id_6974008d ON public.students_message USING btree (course_id);


--
-- Name: students_message_sender_id_1787249b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_message_sender_id_1787249b ON public.students_message USING btree (student_id);


--
-- Name: students_message_to_id_a6a45b51; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_message_to_id_a6a45b51 ON public.students_message USING btree (teacher_id);


--
-- Name: users_student_institution_id_25b6c987; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_student_institution_id_25b6c987 ON public.users_student USING btree (institution_id);


--
-- Name: users_teacher_institution_id_010bf939; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_teacher_institution_id_010bf939 ON public.users_teacher USING btree (institution_id);


--
-- Name: users_user_email_243f6e77_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_hash_id_54291bb7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_hash_id_54291bb7_like ON public.users_user USING btree (hash_id varchar_pattern_ops);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: anouncements_anouncement anouncements_anounce_course_id_ffb68148_fk_courses_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anouncements_anouncement
    ADD CONSTRAINT anouncements_anounce_course_id_ffb68148_fk_courses_c FOREIGN KEY (course_id) REFERENCES public.courses_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_chapter books_chapter_book_id_109cb672_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_chapter
    ADD CONSTRAINT books_chapter_book_id_109cb672_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_assignment courses_assignment_book_id_48eef8f7_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_assignment
    ADD CONSTRAINT courses_assignment_book_id_48eef8f7_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_assignment courses_assignment_chapter_id_32852484_fk_books_chapter_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_assignment
    ADD CONSTRAINT courses_assignment_chapter_id_32852484_fk_books_chapter_id FOREIGN KEY (chapter_id) REFERENCES public.books_chapter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_assignment courses_assignment_course_id_71e9893f_fk_courses_course_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_assignment
    ADD CONSTRAINT courses_assignment_course_id_71e9893f_fk_courses_course_id FOREIGN KEY (course_id) REFERENCES public.courses_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course_book courses_course_book_book_id_aad0992c_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_book
    ADD CONSTRAINT courses_course_book_book_id_aad0992c_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course_book courses_course_book_course_id_b88b21e3_fk_courses_course_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_book
    ADD CONSTRAINT courses_course_book_course_id_b88b21e3_fk_courses_course_id FOREIGN KEY (course_id) REFERENCES public.courses_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course courses_course_institution_id_34e4044f_fk_instituti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_institution_id_34e4044f_fk_instituti FOREIGN KEY (institution_id) REFERENCES public.institutions_institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course courses_course_instructor_id_5b0643dc_fk_users_teacher_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_instructor_id_5b0643dc_fk_users_teacher_id FOREIGN KEY (instructor_id) REFERENCES public.users_teacher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course_lectures courses_course_lectu_lecture_id_bcbff441_fk_courses_l; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_lectures
    ADD CONSTRAINT courses_course_lectu_lecture_id_bcbff441_fk_courses_l FOREIGN KEY (lecture_id) REFERENCES public.courses_lecture(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course_lectures courses_course_lectures_course_id_cbc52a99_fk_courses_course_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_lectures
    ADD CONSTRAINT courses_course_lectures_course_id_cbc52a99_fk_courses_course_id FOREIGN KEY (course_id) REFERENCES public.courses_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course_users_enrolled courses_course_users_course_id_7002f2bc_fk_courses_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_users_enrolled
    ADD CONSTRAINT courses_course_users_course_id_7002f2bc_fk_courses_c FOREIGN KEY (course_id) REFERENCES public.courses_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course_users_enrolled courses_course_users_student_id_94f40d4e_fk_users_stu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course_users_enrolled
    ADD CONSTRAINT courses_course_users_student_id_94f40d4e_fk_users_stu FOREIGN KEY (student_id) REFERENCES public.users_student(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_notification home_notification_user_id_a3272aae_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_notification
    ADD CONSTRAINT home_notification_user_id_a3272aae_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: institutions_institution_books institutions_institu_book_id_fb9e173b_fk_books_boo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions_institution_books
    ADD CONSTRAINT institutions_institu_book_id_fb9e173b_fk_books_boo FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: institutions_institution_books institutions_institu_institution_id_ecbf49da_fk_instituti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions_institution_books
    ADD CONSTRAINT institutions_institu_institution_id_ecbf49da_fk_instituti FOREIGN KEY (institution_id) REFERENCES public.institutions_institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: institutions_institution institutions_institu_subdomain_id_0feda4b3_fk_domains_s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions_institution
    ADD CONSTRAINT institutions_institu_subdomain_id_0feda4b3_fk_domains_s FOREIGN KEY (subdomain_id) REFERENCES public.domains_subdomain(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: students_message students_message_course_id_6974008d_fk_courses_course_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_message
    ADD CONSTRAINT students_message_course_id_6974008d_fk_courses_course_id FOREIGN KEY (course_id) REFERENCES public.courses_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: students_message students_message_student_id_7582d5af_fk_users_student_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_message
    ADD CONSTRAINT students_message_student_id_7582d5af_fk_users_student_id FOREIGN KEY (student_id) REFERENCES public.users_student(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: students_message students_message_teacher_id_aafcb882_fk_users_teacher_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_message
    ADD CONSTRAINT students_message_teacher_id_aafcb882_fk_users_teacher_id FOREIGN KEY (teacher_id) REFERENCES public.users_teacher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_instituteadmin users_instituteadmin_institution_id_8bf32d42_fk_instituti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_instituteadmin
    ADD CONSTRAINT users_instituteadmin_institution_id_8bf32d42_fk_instituti FOREIGN KEY (institution_id) REFERENCES public.institutions_institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_instituteadmin users_instituteadmin_user_id_a177866e_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_instituteadmin
    ADD CONSTRAINT users_instituteadmin_user_id_a177866e_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_student users_student_institution_id_25b6c987_fk_instituti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_student
    ADD CONSTRAINT users_student_institution_id_25b6c987_fk_instituti FOREIGN KEY (institution_id) REFERENCES public.institutions_institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_student users_student_user_id_dc59cd64_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_student
    ADD CONSTRAINT users_student_user_id_dc59cd64_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_teacher users_teacher_institution_id_010bf939_fk_instituti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_teacher
    ADD CONSTRAINT users_teacher_institution_id_010bf939_fk_instituti FOREIGN KEY (institution_id) REFERENCES public.institutions_institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_teacher users_teacher_user_id_bc9e1389_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_teacher
    ADD CONSTRAINT users_teacher_user_id_bc9e1389_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

