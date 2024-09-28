PGDMP  !    /                |            directus    16.4    16.4 g   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    directus    DATABASE     �   CREATE DATABASE directus WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Chinese (Simplified)_China.936';
    DROP DATABASE directus;
                postgres    false                       1259    25360    articles    TABLE     c  CREATE TABLE public.articles (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title character varying(255),
    textbook uuid,
    content text
);
    DROP TABLE public.articles;
       public         heap    postgres    false                       1259    25379    articles_knowledge_points    TABLE        CREATE TABLE public.articles_knowledge_points (
    id integer NOT NULL,
    articles_id uuid,
    knowledge_points_id uuid
);
 -   DROP TABLE public.articles_knowledge_points;
       public         heap    postgres    false                       1259    25378     articles_knowledge_points_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_knowledge_points_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.articles_knowledge_points_id_seq;
       public          postgres    false    279            �           0    0     articles_knowledge_points_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.articles_knowledge_points_id_seq OWNED BY public.articles_knowledge_points.id;
          public          postgres    false    278                       1259    17751    classes    TABLE     @  CREATE TABLE public.classes (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    name character varying(255),
    institution uuid
);
    DROP TABLE public.classes;
       public         heap    postgres    false                       1259    18194    conversations    TABLE       CREATE TABLE public.conversations (
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    title character varying(255) DEFAULT NULL::character varying,
    visitor_id character varying(36) DEFAULT NULL::character varying,
    item character varying(255) DEFAULT NULL::character varying,
    collection character varying(255) DEFAULT NULL::character varying,
    user_created uuid,
    user_updated uuid
);
 !   DROP TABLE public.conversations;
       public         heap    postgres    false                       1259    25444    courses    TABLE     =  CREATE TABLE public.courses (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title character varying(255)
);
    DROP TABLE public.courses;
       public         heap    postgres    false                       1259    25524    courses_directus_users    TABLE     y   CREATE TABLE public.courses_directus_users (
    id integer NOT NULL,
    courses_id uuid,
    directus_users_id uuid
);
 *   DROP TABLE public.courses_directus_users;
       public         heap    postgres    false                       1259    25523    courses_directus_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_directus_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.courses_directus_users_id_seq;
       public          postgres    false    284            �           0    0    courses_directus_users_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.courses_directus_users_id_seq OWNED BY public.courses_directus_users.id;
          public          postgres    false    283            �            1259    17029    directus_access    TABLE     �   CREATE TABLE public.directus_access (
    id uuid NOT NULL,
    role uuid,
    "user" uuid,
    policy uuid NOT NULL,
    sort integer
);
 #   DROP TABLE public.directus_access;
       public         heap    postgres    false            �            1259    16461    directus_activity    TABLE     �  CREATE TABLE public.directus_activity (
    id integer NOT NULL,
    action character varying(45) NOT NULL,
    "user" uuid,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ip character varying(50),
    user_agent text,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    comment text,
    origin character varying(255)
);
 %   DROP TABLE public.directus_activity;
       public         heap    postgres    false            �            1259    16460    directus_activity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.directus_activity_id_seq;
       public          postgres    false    221            �           0    0    directus_activity_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.directus_activity_id_seq OWNED BY public.directus_activity.id;
          public          postgres    false    220            �            1259    16399    directus_collections    TABLE     o  CREATE TABLE public.directus_collections (
    collection character varying(64) NOT NULL,
    icon character varying(64),
    note text,
    display_template character varying(255),
    hidden boolean DEFAULT false NOT NULL,
    singleton boolean DEFAULT false NOT NULL,
    translations json,
    archive_field character varying(64),
    archive_app_filter boolean DEFAULT true NOT NULL,
    archive_value character varying(255),
    unarchive_value character varying(255),
    sort_field character varying(64),
    accountability character varying(255) DEFAULT 'all'::character varying,
    color character varying(255),
    item_duplication_fields json,
    sort integer,
    "group" character varying(64),
    collapse character varying(255) DEFAULT 'open'::character varying NOT NULL,
    preview_url character varying(255),
    versioning boolean DEFAULT false NOT NULL
);
 (   DROP TABLE public.directus_collections;
       public         heap    postgres    false            �            1259    16776    directus_dashboards    TABLE     I  CREATE TABLE public.directus_dashboards (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(64) DEFAULT 'dashboard'::character varying NOT NULL,
    note text,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    color character varying(255)
);
 '   DROP TABLE public.directus_dashboards;
       public         heap    postgres    false            �            1259    16985    directus_extensions    TABLE     �   CREATE TABLE public.directus_extensions (
    enabled boolean DEFAULT true NOT NULL,
    id uuid NOT NULL,
    folder character varying(255) NOT NULL,
    source character varying(255) NOT NULL,
    bundle uuid
);
 '   DROP TABLE public.directus_extensions;
       public         heap    postgres    false            �            1259    16438    directus_fields    TABLE     �  CREATE TABLE public.directus_fields (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    field character varying(64) NOT NULL,
    special character varying(64),
    interface character varying(64),
    options json,
    display character varying(64),
    display_options json,
    readonly boolean DEFAULT false NOT NULL,
    hidden boolean DEFAULT false NOT NULL,
    sort integer,
    width character varying(30) DEFAULT 'full'::character varying,
    translations json,
    note text,
    conditions json,
    required boolean DEFAULT false,
    "group" character varying(64),
    validation json,
    validation_message text
);
 #   DROP TABLE public.directus_fields;
       public         heap    postgres    false            �            1259    16437    directus_fields_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.directus_fields_id_seq;
       public          postgres    false    219            �           0    0    directus_fields_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.directus_fields_id_seq OWNED BY public.directus_fields.id;
          public          postgres    false    218            �            1259    16485    directus_files    TABLE     [  CREATE TABLE public.directus_files (
    id uuid NOT NULL,
    storage character varying(255) NOT NULL,
    filename_disk character varying(255),
    filename_download character varying(255) NOT NULL,
    title character varying(255),
    type character varying(255),
    folder uuid,
    uploaded_by uuid,
    created_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified_by uuid,
    modified_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    charset character varying(50),
    filesize bigint,
    width integer,
    height integer,
    duration integer,
    embed character varying(200),
    description text,
    location text,
    tags text,
    metadata json,
    focal_point_x integer,
    focal_point_y integer,
    tus_id character varying(64),
    tus_data json,
    uploaded_on timestamp with time zone
);
 "   DROP TABLE public.directus_files;
       public         heap    postgres    false            �            1259    16890    directus_flows    TABLE     �  CREATE TABLE public.directus_flows (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(64),
    color character varying(255),
    description text,
    status character varying(255) DEFAULT 'active'::character varying NOT NULL,
    trigger character varying(255),
    accountability character varying(255) DEFAULT 'all'::character varying,
    options json,
    operation uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    flow_manager_category character varying(255) DEFAULT NULL::character varying,
    flow_manager_order integer DEFAULT 0,
    flow_manager_last_run_at timestamp without time zone,
    flow_manager_run_counter integer DEFAULT 0
);
 "   DROP TABLE public.directus_flows;
       public         heap    postgres    false            �            1259    16475    directus_folders    TABLE     z   CREATE TABLE public.directus_folders (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    parent uuid
);
 $   DROP TABLE public.directus_folders;
       public         heap    postgres    false            �            1259    16649    directus_migrations    TABLE     �   CREATE TABLE public.directus_migrations (
    version character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 '   DROP TABLE public.directus_migrations;
       public         heap    postgres    false            �            1259    16836    directus_notifications    TABLE     �  CREATE TABLE public.directus_notifications (
    id integer NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(255) DEFAULT 'inbox'::character varying,
    recipient uuid NOT NULL,
    sender uuid,
    subject character varying(255) NOT NULL,
    message text,
    collection character varying(64),
    item character varying(255)
);
 *   DROP TABLE public.directus_notifications;
       public         heap    postgres    false            �            1259    16835    directus_notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.directus_notifications_id_seq;
       public          postgres    false    241            �           0    0    directus_notifications_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.directus_notifications_id_seq OWNED BY public.directus_notifications.id;
          public          postgres    false    240            �            1259    16907    directus_operations    TABLE     �  CREATE TABLE public.directus_operations (
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    options json,
    resolve uuid,
    reject uuid,
    flow uuid NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);
 '   DROP TABLE public.directus_operations;
       public         heap    postgres    false            �            1259    16790    directus_panels    TABLE     /  CREATE TABLE public.directus_panels (
    id uuid NOT NULL,
    dashboard uuid NOT NULL,
    name character varying(255),
    icon character varying(64) DEFAULT NULL::character varying,
    color character varying(10),
    show_header boolean DEFAULT false NOT NULL,
    note text,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    options json,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);
 #   DROP TABLE public.directus_panels;
       public         heap    postgres    false            �            1259    16511    directus_permissions    TABLE       CREATE TABLE public.directus_permissions (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    action character varying(10) NOT NULL,
    permissions json,
    validation json,
    presets json,
    fields text,
    policy uuid NOT NULL
);
 (   DROP TABLE public.directus_permissions;
       public         heap    postgres    false            �            1259    16510    directus_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.directus_permissions_id_seq;
       public          postgres    false    225            �           0    0    directus_permissions_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.directus_permissions_id_seq OWNED BY public.directus_permissions.id;
          public          postgres    false    224            �            1259    17008    directus_policies    TABLE     p  CREATE TABLE public.directus_policies (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(64) DEFAULT 'badge'::character varying NOT NULL,
    description text,
    ip_access text,
    enforce_tfa boolean DEFAULT false NOT NULL,
    admin_access boolean DEFAULT false NOT NULL,
    app_access boolean DEFAULT false NOT NULL
);
 %   DROP TABLE public.directus_policies;
       public         heap    postgres    false            �            1259    16530    directus_presets    TABLE     �  CREATE TABLE public.directus_presets (
    id integer NOT NULL,
    bookmark character varying(255),
    "user" uuid,
    role uuid,
    collection character varying(64),
    search character varying(100),
    layout character varying(100) DEFAULT 'tabular'::character varying,
    layout_query json,
    layout_options json,
    refresh_interval integer,
    filter json,
    icon character varying(64) DEFAULT 'bookmark'::character varying,
    color character varying(255)
);
 $   DROP TABLE public.directus_presets;
       public         heap    postgres    false            �            1259    16529    directus_presets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_presets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.directus_presets_id_seq;
       public          postgres    false    227            �           0    0    directus_presets_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.directus_presets_id_seq OWNED BY public.directus_presets.id;
          public          postgres    false    226            �            1259    16555    directus_relations    TABLE     �  CREATE TABLE public.directus_relations (
    id integer NOT NULL,
    many_collection character varying(64) NOT NULL,
    many_field character varying(64) NOT NULL,
    one_collection character varying(64),
    one_field character varying(64),
    one_collection_field character varying(64),
    one_allowed_collections text,
    junction_field character varying(64),
    sort_field character varying(64),
    one_deselect_action character varying(255) DEFAULT 'nullify'::character varying NOT NULL
);
 &   DROP TABLE public.directus_relations;
       public         heap    postgres    false            �            1259    16554    directus_relations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.directus_relations_id_seq;
       public          postgres    false    229            �           0    0    directus_relations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.directus_relations_id_seq OWNED BY public.directus_relations.id;
          public          postgres    false    228            �            1259    16574    directus_revisions    TABLE       CREATE TABLE public.directus_revisions (
    id integer NOT NULL,
    activity integer NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    data json,
    delta json,
    parent integer,
    version uuid
);
 &   DROP TABLE public.directus_revisions;
       public         heap    postgres    false            �            1259    16573    directus_revisions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.directus_revisions_id_seq;
       public          postgres    false    231            �           0    0    directus_revisions_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.directus_revisions_id_seq OWNED BY public.directus_revisions.id;
          public          postgres    false    230            �            1259    16409    directus_roles    TABLE     �   CREATE TABLE public.directus_roles (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(64) DEFAULT 'supervised_user_circle'::character varying NOT NULL,
    description text,
    parent uuid
);
 "   DROP TABLE public.directus_roles;
       public         heap    postgres    false            �            1259    16597    directus_sessions    TABLE     !  CREATE TABLE public.directus_sessions (
    token character varying(64) NOT NULL,
    "user" uuid,
    expires timestamp with time zone NOT NULL,
    ip character varying(255),
    user_agent text,
    share uuid,
    origin character varying(255),
    next_token character varying(64)
);
 %   DROP TABLE public.directus_sessions;
       public         heap    postgres    false            �            1259    16610    directus_settings    TABLE     6  CREATE TABLE public.directus_settings (
    id integer NOT NULL,
    project_name character varying(100) DEFAULT 'Directus'::character varying NOT NULL,
    project_url character varying(255),
    project_color character varying(255) DEFAULT '#6644FF'::character varying NOT NULL,
    project_logo uuid,
    public_foreground uuid,
    public_background uuid,
    public_note text,
    auth_login_attempts integer DEFAULT 25,
    auth_password_policy character varying(100),
    storage_asset_transform character varying(7) DEFAULT 'all'::character varying,
    storage_asset_presets json,
    custom_css text,
    storage_default_folder uuid,
    basemaps json,
    mapbox_key character varying(255),
    module_bar json,
    project_descriptor character varying(100),
    default_language character varying(255) DEFAULT 'en-US'::character varying NOT NULL,
    custom_aspect_ratios json,
    public_favicon uuid,
    default_appearance character varying(255) DEFAULT 'auto'::character varying NOT NULL,
    default_theme_light character varying(255),
    theme_light_overrides json,
    default_theme_dark character varying(255),
    theme_dark_overrides json,
    report_error_url character varying(255),
    report_bug_url character varying(255),
    report_feature_url character varying(255),
    public_registration boolean DEFAULT false NOT NULL,
    public_registration_verify_email boolean DEFAULT true NOT NULL,
    public_registration_role uuid,
    public_registration_email_filter json,
    flow_manager_categories json,
    command_palette_settings json DEFAULT '{}'::json
);
 %   DROP TABLE public.directus_settings;
       public         heap    postgres    false            �            1259    16609    directus_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.directus_settings_id_seq;
       public          postgres    false    234            �           0    0    directus_settings_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.directus_settings_id_seq OWNED BY public.directus_settings.id;
          public          postgres    false    233            �            1259    16856    directus_shares    TABLE     �  CREATE TABLE public.directus_shares (
    id uuid NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    role uuid,
    password character varying(255),
    user_created uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    times_used integer DEFAULT 0,
    max_uses integer
);
 #   DROP TABLE public.directus_shares;
       public         heap    postgres    false            �            1259    16941    directus_translations    TABLE     �   CREATE TABLE public.directus_translations (
    id uuid NOT NULL,
    language character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);
 )   DROP TABLE public.directus_translations;
       public         heap    postgres    false            �            1259    16420    directus_users    TABLE     G  CREATE TABLE public.directus_users (
    id uuid NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(128),
    password character varying(255),
    location character varying(255),
    title character varying(50),
    description text,
    tags json,
    avatar uuid,
    language character varying(255) DEFAULT NULL::character varying,
    tfa_secret character varying(255),
    status character varying(16) DEFAULT 'active'::character varying NOT NULL,
    role uuid,
    token character varying(255),
    last_access timestamp with time zone,
    last_page character varying(255),
    provider character varying(128) DEFAULT 'default'::character varying NOT NULL,
    external_identifier character varying(255),
    auth_data json,
    email_notifications boolean DEFAULT true,
    appearance character varying(255),
    theme_dark character varying(255),
    theme_light character varying(255),
    theme_light_overrides json,
    theme_dark_overrides json,
    full_name character varying(255) DEFAULT NULL::character varying
);
 "   DROP TABLE public.directus_users;
       public         heap    postgres    false            �            1259    16948    directus_versions    TABLE     �  CREATE TABLE public.directus_versions (
    id uuid NOT NULL,
    key character varying(64) NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    hash character varying(255),
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid
);
 %   DROP TABLE public.directus_versions;
       public         heap    postgres    false            �            1259    16638    directus_webhooks    TABLE     $  CREATE TABLE public.directus_webhooks (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    method character varying(10) DEFAULT 'POST'::character varying NOT NULL,
    url character varying(255) NOT NULL,
    status character varying(10) DEFAULT 'active'::character varying NOT NULL,
    data boolean DEFAULT true NOT NULL,
    actions character varying(100) NOT NULL,
    collections character varying(255) NOT NULL,
    headers json,
    was_active_before_deprecation boolean DEFAULT false NOT NULL,
    migrated_flow uuid
);
 %   DROP TABLE public.directus_webhooks;
       public         heap    postgres    false            �            1259    16637    directus_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.directus_webhooks_id_seq;
       public          postgres    false    236            �           0    0    directus_webhooks_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.directus_webhooks_id_seq OWNED BY public.directus_webhooks.id;
          public          postgres    false    235                       1259    17957    exams    TABLE     \  CREATE TABLE public.exams (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title character varying(255),
    type character varying(255)
);
    DROP TABLE public.exams;
       public         heap    postgres    false                       1259    17976    exams_students    TABLE     i   CREATE TABLE public.exams_students (
    id integer NOT NULL,
    exams_id uuid,
    students_id uuid
);
 "   DROP TABLE public.exams_students;
       public         heap    postgres    false                       1259    17975    exams_students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.exams_students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.exams_students_id_seq;
       public          postgres    false    271            �           0    0    exams_students_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.exams_students_id_seq OWNED BY public.exams_students.id;
          public          postgres    false    270                       1259    25494    institutions    TABLE     �  CREATE TABLE public.institutions (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    name character varying(255) DEFAULT NULL::character varying NOT NULL,
    type character varying(255)
);
     DROP TABLE public.institutions;
       public         heap    postgres    false                       1259    25304    knowledge_points    TABLE     �  CREATE TABLE public.knowledge_points (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    parent_node uuid,
    title character varying(255),
    type character varying(255) DEFAULT 'branch'::character varying
);
 $   DROP TABLE public.knowledge_points;
       public         heap    postgres    false                       1259    18278    messages    TABLE     m  CREATE TABLE public.messages (
    conversation uuid,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    id uuid NOT NULL,
    text text,
    user_created uuid,
    user_updated uuid,
    visitor_id character varying(36) DEFAULT NULL::character varying,
    contact_id character varying(36) DEFAULT NULL::character varying
);
    DROP TABLE public.messages;
       public         heap    postgres    false            	           1259    17786    notices    TABLE     O  CREATE TABLE public.notices (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title character varying(255),
    content text
);
    DROP TABLE public.notices;
       public         heap    postgres    false            �            1259    17336    paper_chapters    TABLE     E  CREATE TABLE public.paper_chapters (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    paper_id uuid,
    title text
);
 "   DROP TABLE public.paper_chapters;
       public         heap    postgres    false                       1259    17596    paper_chapters_questions    TABLE     �   CREATE TABLE public.paper_chapters_questions (
    id integer NOT NULL,
    paper_chapters_id uuid,
    questions_id uuid,
    sort integer
);
 ,   DROP TABLE public.paper_chapters_questions;
       public         heap    postgres    false                       1259    17595    paper_chapters_questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.paper_chapters_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.paper_chapters_questions_id_seq;
       public          postgres    false    262            �           0    0    paper_chapters_questions_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.paper_chapters_questions_id_seq OWNED BY public.paper_chapters_questions.id;
          public          postgres    false    261            �            1259    17173    papers    TABLE     \  CREATE TABLE public.papers (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE public.papers;
       public         heap    postgres    false                       1259    17550    q_fill_in_blank_answers    TABLE     t  CREATE TABLE public.q_fill_in_blank_answers (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    question_id uuid,
    blank_position integer,
    correct_answer text,
    score real
);
 +   DROP TABLE public.q_fill_in_blank_answers;
       public         heap    postgres    false            �            1259    17370    q_mcq_options    TABLE     e  CREATE TABLE public.q_mcq_options (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    option text,
    questions_mcq_id uuid,
    is_correct boolean
);
 !   DROP TABLE public.q_mcq_options;
       public         heap    postgres    false                       1259    17936    q_spreadsheet_scoring_groups    TABLE       CREATE TABLE public.q_spreadsheet_scoring_groups (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone
);
 0   DROP TABLE public.q_spreadsheet_scoring_groups;
       public         heap    postgres    false                       1259    17876    q_spreadsheet_scoring_items    TABLE     �  CREATE TABLE public.q_spreadsheet_scoring_items (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    item_type character varying(255),
    title character varying(255),
    scoring_group uuid
);
 /   DROP TABLE public.q_spreadsheet_scoring_items;
       public         heap    postgres    false                       1259    33496    question_groups    TABLE     [  CREATE TABLE public.question_groups (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    shared_stem text,
    title character varying(255)
);
 #   DROP TABLE public.question_groups;
       public         heap    postgres    false            �            1259    17093 	   questions    TABLE     K  CREATE TABLE public.questions (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title text,
    type character varying(255) DEFAULT NULL::character varying,
    score real DEFAULT '1'::real,
    question_mcq uuid,
    question_fill_in_blank uuid,
    review_status character varying(255) DEFAULT 'draft'::character varying,
    questions_mcq_4opt uuid,
    question_group uuid
);
    DROP TABLE public.questions;
       public         heap    postgres    false                       1259    17512    questions_fill_in_blank    TABLE     @  CREATE TABLE public.questions_fill_in_blank (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    stem text,
    question_text text
);
 +   DROP TABLE public.questions_fill_in_blank;
       public         heap    postgres    false                       1259    17530    questions_fill_in_blank_1    TABLE     [  CREATE TABLE public.questions_fill_in_blank_1 (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    stem text,
    question_text text,
    correct_answer text
);
 -   DROP TABLE public.questions_fill_in_blank_1;
       public         heap    postgres    false                       1259    25344    questions_knowledge_points    TABLE     �   CREATE TABLE public.questions_knowledge_points (
    id integer NOT NULL,
    questions_id uuid,
    knowledge_points_id uuid
);
 .   DROP TABLE public.questions_knowledge_points;
       public         heap    postgres    false                       1259    25343 !   questions_knowledge_points_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_knowledge_points_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.questions_knowledge_points_id_seq;
       public          postgres    false    276            �           0    0 !   questions_knowledge_points_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.questions_knowledge_points_id_seq OWNED BY public.questions_knowledge_points.id;
          public          postgres    false    275            �            1259    17352    questions_mcq    TABLE       CREATE TABLE public.questions_mcq (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    stem text
);
 !   DROP TABLE public.questions_mcq;
       public         heap    postgres    false            �            1259    17400    questions_mcq_4opt    TABLE     �  CREATE TABLE public.questions_mcq_4opt (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    "option_A" text,
    "option_B" text,
    "option_C" text,
    "option_D" text,
    stem text,
    correct_options json
);
 &   DROP TABLE public.questions_mcq_4opt;
       public         heap    postgres    false                       1259    33519    questions_mcq_5opt    TABLE     �  CREATE TABLE public.questions_mcq_5opt (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    stem text,
    "option_A" text,
    "option_B" text,
    "option_C" text,
    "option_D" text,
    correct_options json,
    "option_E" text
);
 &   DROP TABLE public.questions_mcq_5opt;
       public         heap    postgres    false                        1259    17445    questions_mcq_fixed_opt    TABLE     �  CREATE TABLE public.questions_mcq_fixed_opt (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    option_count integer DEFAULT 4,
    "option_A" text,
    "option_B" text,
    "option_C" text,
    "option_D" text,
    "option_E" text,
    stem text,
    correct_option json,
    "option_F" text
);
 +   DROP TABLE public.questions_mcq_fixed_opt;
       public         heap    postgres    false                       1259    17466    questions_mcq_fixed_opt_ans    TABLE     :  CREATE TABLE public.questions_mcq_fixed_opt_ans (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    "option_A_content" text,
    "option_A_isCorrect" boolean,
    "option_B_content" text,
    "option_C_content" text,
    stem text,
    "option_B_isCorrect" boolean,
    "option_C_isCorrect" boolean,
    "option_D_content" text,
    "option_D_isCorrect" boolean
);
 /   DROP TABLE public.questions_mcq_fixed_opt_ans;
       public         heap    postgres    false            
           1259    17820    questions_spreadsheet    TABLE     [  CREATE TABLE public.questions_spreadsheet (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title character varying(255),
    task text,
    handbook text
);
 )   DROP TABLE public.questions_spreadsheet;
       public         heap    postgres    false                       1259    17688    students    TABLE     �  CREATE TABLE public.students (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    number integer,
    name character varying(255) DEFAULT NULL::character varying,
    password character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    class uuid
);
    DROP TABLE public.students;
       public         heap    postgres    false                       1259    25395 	   textbooks    TABLE     s  CREATE TABLE public.textbooks (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    title character varying(255),
    author character varying(255),
    course uuid
);
    DROP TABLE public.textbooks;
       public         heap    postgres    false            �           2604    25382    articles_knowledge_points id    DEFAULT     �   ALTER TABLE ONLY public.articles_knowledge_points ALTER COLUMN id SET DEFAULT nextval('public.articles_knowledge_points_id_seq'::regclass);
 K   ALTER TABLE public.articles_knowledge_points ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    279    279            �           2604    25527    courses_directus_users id    DEFAULT     �   ALTER TABLE ONLY public.courses_directus_users ALTER COLUMN id SET DEFAULT nextval('public.courses_directus_users_id_seq'::regclass);
 H   ALTER TABLE public.courses_directus_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    284    284            R           2604    16464    directus_activity id    DEFAULT     |   ALTER TABLE ONLY public.directus_activity ALTER COLUMN id SET DEFAULT nextval('public.directus_activity_id_seq'::regclass);
 C   ALTER TABLE public.directus_activity ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            M           2604    16441    directus_fields id    DEFAULT     x   ALTER TABLE ONLY public.directus_fields ALTER COLUMN id SET DEFAULT nextval('public.directus_fields_id_seq'::regclass);
 A   ALTER TABLE public.directus_fields ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            r           2604    16839    directus_notifications id    DEFAULT     �   ALTER TABLE ONLY public.directus_notifications ALTER COLUMN id SET DEFAULT nextval('public.directus_notifications_id_seq'::regclass);
 H   ALTER TABLE public.directus_notifications ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            V           2604    16514    directus_permissions id    DEFAULT     �   ALTER TABLE ONLY public.directus_permissions ALTER COLUMN id SET DEFAULT nextval('public.directus_permissions_id_seq'::regclass);
 F   ALTER TABLE public.directus_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            W           2604    16533    directus_presets id    DEFAULT     z   ALTER TABLE ONLY public.directus_presets ALTER COLUMN id SET DEFAULT nextval('public.directus_presets_id_seq'::regclass);
 B   ALTER TABLE public.directus_presets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            Z           2604    16558    directus_relations id    DEFAULT     ~   ALTER TABLE ONLY public.directus_relations ALTER COLUMN id SET DEFAULT nextval('public.directus_relations_id_seq'::regclass);
 D   ALTER TABLE public.directus_relations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            \           2604    16577    directus_revisions id    DEFAULT     ~   ALTER TABLE ONLY public.directus_revisions ALTER COLUMN id SET DEFAULT nextval('public.directus_revisions_id_seq'::regclass);
 D   ALTER TABLE public.directus_revisions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            ]           2604    16613    directus_settings id    DEFAULT     |   ALTER TABLE ONLY public.directus_settings ALTER COLUMN id SET DEFAULT nextval('public.directus_settings_id_seq'::regclass);
 C   ALTER TABLE public.directus_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            g           2604    16641    directus_webhooks id    DEFAULT     |   ALTER TABLE ONLY public.directus_webhooks ALTER COLUMN id SET DEFAULT nextval('public.directus_webhooks_id_seq'::regclass);
 C   ALTER TABLE public.directus_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    17979    exams_students id    DEFAULT     v   ALTER TABLE ONLY public.exams_students ALTER COLUMN id SET DEFAULT nextval('public.exams_students_id_seq'::regclass);
 @   ALTER TABLE public.exams_students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270    271            �           2604    17599    paper_chapters_questions id    DEFAULT     �   ALTER TABLE ONLY public.paper_chapters_questions ALTER COLUMN id SET DEFAULT nextval('public.paper_chapters_questions_id_seq'::regclass);
 J   ALTER TABLE public.paper_chapters_questions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            �           2604    25347    questions_knowledge_points id    DEFAULT     �   ALTER TABLE ONLY public.questions_knowledge_points ALTER COLUMN id SET DEFAULT nextval('public.questions_knowledge_points_id_seq'::regclass);
 L   ALTER TABLE public.questions_knowledge_points ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275    276            x          0    25360    articles 
   TABLE DATA           �   COPY public.articles (id, status, sort, user_created, date_created, user_updated, date_updated, title, textbook, content) FROM stdin;
    public          postgres    false    277   �D      z          0    25379    articles_knowledge_points 
   TABLE DATA           Y   COPY public.articles_knowledge_points (id, articles_id, knowledge_points_id) FROM stdin;
    public          postgres    false    279   >H      k          0    17751    classes 
   TABLE DATA           x   COPY public.classes (id, status, user_created, date_created, user_updated, date_updated, name, institution) FROM stdin;
    public          postgres    false    264   �H      s          0    18194    conversations 
   TABLE DATA           �   COPY public.conversations (date_created, date_updated, id, status, title, visitor_id, item, collection, user_created, user_updated) FROM stdin;
    public          postgres    false    272   �I      |          0    25444    courses 
   TABLE DATA           r   COPY public.courses (id, status, sort, user_created, date_created, user_updated, date_updated, title) FROM stdin;
    public          postgres    false    281   J                0    25524    courses_directus_users 
   TABLE DATA           S   COPY public.courses_directus_users (id, courses_id, directus_users_id) FROM stdin;
    public          postgres    false    284   �J      \          0    17029    directus_access 
   TABLE DATA           I   COPY public.directus_access (id, role, "user", policy, sort) FROM stdin;
    public          postgres    false    249   RK      @          0    16461    directus_activity 
   TABLE DATA              COPY public.directus_activity (id, action, "user", "timestamp", ip, user_agent, collection, item, comment, origin) FROM stdin;
    public          postgres    false    221   �L      :          0    16399    directus_collections 
   TABLE DATA           *  COPY public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse, preview_url, versioning) FROM stdin;
    public          postgres    false    215   �b      Q          0    16776    directus_dashboards 
   TABLE DATA           f   COPY public.directus_dashboards (id, name, icon, note, date_created, user_created, color) FROM stdin;
    public          postgres    false    238   �h      Z          0    16985    directus_extensions 
   TABLE DATA           R   COPY public.directus_extensions (enabled, id, folder, source, bundle) FROM stdin;
    public          postgres    false    247   �h      >          0    16438    directus_fields 
   TABLE DATA           �   COPY public.directus_fields (id, collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message) FROM stdin;
    public          postgres    false    219   3j      B          0    16485    directus_files 
   TABLE DATA           6  COPY public.directus_files (id, storage, filename_disk, filename_download, title, type, folder, uploaded_by, created_on, modified_by, modified_on, charset, filesize, width, height, duration, embed, description, location, tags, metadata, focal_point_x, focal_point_y, tus_id, tus_data, uploaded_on) FROM stdin;
    public          postgres    false    223   0�      V          0    16890    directus_flows 
   TABLE DATA           �   COPY public.directus_flows (id, name, icon, color, description, status, trigger, accountability, options, operation, date_created, user_created, flow_manager_category, flow_manager_order, flow_manager_last_run_at, flow_manager_run_counter) FROM stdin;
    public          postgres    false    243   '�      A          0    16475    directus_folders 
   TABLE DATA           <   COPY public.directus_folders (id, name, parent) FROM stdin;
    public          postgres    false    222   �      P          0    16649    directus_migrations 
   TABLE DATA           I   COPY public.directus_migrations (version, name, "timestamp") FROM stdin;
    public          postgres    false    237   t�      T          0    16836    directus_notifications 
   TABLE DATA           �   COPY public.directus_notifications (id, "timestamp", status, recipient, sender, subject, message, collection, item) FROM stdin;
    public          postgres    false    241   ��      W          0    16907    directus_operations 
   TABLE DATA           �   COPY public.directus_operations (id, name, key, type, position_x, position_y, options, resolve, reject, flow, date_created, user_created) FROM stdin;
    public          postgres    false    244   ަ      R          0    16790    directus_panels 
   TABLE DATA           �   COPY public.directus_panels (id, dashboard, name, icon, color, show_header, note, type, position_x, position_y, width, height, options, date_created, user_created) FROM stdin;
    public          postgres    false    239   }�      D          0    16511    directus_permissions 
   TABLE DATA           x   COPY public.directus_permissions (id, collection, action, permissions, validation, presets, fields, policy) FROM stdin;
    public          postgres    false    225   ��      [          0    17008    directus_policies 
   TABLE DATA           z   COPY public.directus_policies (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access) FROM stdin;
    public          postgres    false    248   }�      F          0    16530    directus_presets 
   TABLE DATA           �   COPY public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query, layout_options, refresh_interval, filter, icon, color) FROM stdin;
    public          postgres    false    227   a�      H          0    16555    directus_relations 
   TABLE DATA           �   COPY public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action) FROM stdin;
    public          postgres    false    229   �      J          0    16574    directus_revisions 
   TABLE DATA           j   COPY public.directus_revisions (id, activity, collection, item, data, delta, parent, version) FROM stdin;
    public          postgres    false    231   `�      ;          0    16409    directus_roles 
   TABLE DATA           M   COPY public.directus_roles (id, name, icon, description, parent) FROM stdin;
    public          postgres    false    216   ��      K          0    16597    directus_sessions 
   TABLE DATA           n   COPY public.directus_sessions (token, "user", expires, ip, user_agent, share, origin, next_token) FROM stdin;
    public          postgres    false    232   z�      M          0    16610    directus_settings 
   TABLE DATA           �  COPY public.directus_settings (id, project_name, project_url, project_color, project_logo, public_foreground, public_background, public_note, auth_login_attempts, auth_password_policy, storage_asset_transform, storage_asset_presets, custom_css, storage_default_folder, basemaps, mapbox_key, module_bar, project_descriptor, default_language, custom_aspect_ratios, public_favicon, default_appearance, default_theme_light, theme_light_overrides, default_theme_dark, theme_dark_overrides, report_error_url, report_bug_url, report_feature_url, public_registration, public_registration_verify_email, public_registration_role, public_registration_email_filter, flow_manager_categories, command_palette_settings) FROM stdin;
    public          postgres    false    234   �      U          0    16856    directus_shares 
   TABLE DATA           �   COPY public.directus_shares (id, name, collection, item, role, password, user_created, date_created, date_start, date_end, times_used, max_uses) FROM stdin;
    public          postgres    false    242   ��      X          0    16941    directus_translations 
   TABLE DATA           I   COPY public.directus_translations (id, language, key, value) FROM stdin;
    public          postgres    false    245   ��      <          0    16420    directus_users 
   TABLE DATA           _  COPY public.directus_users (id, first_name, last_name, email, password, location, title, description, tags, avatar, language, tfa_secret, status, role, token, last_access, last_page, provider, external_identifier, auth_data, email_notifications, appearance, theme_dark, theme_light, theme_light_overrides, theme_dark_overrides, full_name) FROM stdin;
    public          postgres    false    217   ��      Y          0    16948    directus_versions 
   TABLE DATA           �   COPY public.directus_versions (id, key, name, collection, item, hash, date_created, date_updated, user_created, user_updated) FROM stdin;
    public          postgres    false    246   ��      O          0    16638    directus_webhooks 
   TABLE DATA           �   COPY public.directus_webhooks (id, name, method, url, status, data, actions, collections, headers, was_active_before_deprecation, migrated_flow) FROM stdin;
    public          postgres    false    236   V�      p          0    17957    exams 
   TABLE DATA           v   COPY public.exams (id, status, sort, user_created, date_created, user_updated, date_updated, title, type) FROM stdin;
    public          postgres    false    269   s�      r          0    17976    exams_students 
   TABLE DATA           C   COPY public.exams_students (id, exams_id, students_id) FROM stdin;
    public          postgres    false    271   ��      }          0    25494    institutions 
   TABLE DATA           |   COPY public.institutions (id, status, sort, user_created, date_created, user_updated, date_updated, name, type) FROM stdin;
    public          postgres    false    282   ��      u          0    25304    knowledge_points 
   TABLE DATA           �   COPY public.knowledge_points (id, status, sort, user_created, date_created, user_updated, date_updated, parent_node, title, type) FROM stdin;
    public          postgres    false    274   ��      t          0    18278    messages 
   TABLE DATA           �   COPY public.messages (conversation, date_created, date_updated, id, text, user_created, user_updated, visitor_id, contact_id) FROM stdin;
    public          postgres    false    273   ��      l          0    17786    notices 
   TABLE DATA           {   COPY public.notices (id, status, sort, user_created, date_created, user_updated, date_updated, title, content) FROM stdin;
    public          postgres    false    265   ��      _          0    17336    paper_chapters 
   TABLE DATA           �   COPY public.paper_chapters (id, status, sort, user_created, date_created, user_updated, date_updated, paper_id, title) FROM stdin;
    public          postgres    false    252   ��      i          0    17596    paper_chapters_questions 
   TABLE DATA           ]   COPY public.paper_chapters_questions (id, paper_chapters_id, questions_id, sort) FROM stdin;
    public          postgres    false    262   ;�      ^          0    17173    papers 
   TABLE DATA           q   COPY public.papers (id, status, sort, user_created, date_created, user_updated, date_updated, title) FROM stdin;
    public          postgres    false    251   ��      g          0    17550    q_fill_in_blank_answers 
   TABLE DATA           �   COPY public.q_fill_in_blank_answers (id, status, user_created, date_created, user_updated, date_updated, question_id, blank_position, correct_answer, score) FROM stdin;
    public          postgres    false    260   k�      a          0    17370    q_mcq_options 
   TABLE DATA           �   COPY public.q_mcq_options (id, status, sort, user_created, date_created, user_updated, date_updated, option, questions_mcq_id, is_correct) FROM stdin;
    public          postgres    false    254   ��      o          0    17936    q_spreadsheet_scoring_groups 
   TABLE DATA           z   COPY public.q_spreadsheet_scoring_groups (id, status, user_created, date_created, user_updated, date_updated) FROM stdin;
    public          postgres    false    268   P�      n          0    17876    q_spreadsheet_scoring_items 
   TABLE DATA           �   COPY public.q_spreadsheet_scoring_items (id, status, sort, user_created, date_created, user_updated, date_updated, item_type, title, scoring_group) FROM stdin;
    public          postgres    false    267   m�      �          0    33496    question_groups 
   TABLE DATA           �   COPY public.question_groups (id, status, sort, user_created, date_created, user_updated, date_updated, shared_stem, title) FROM stdin;
    public          postgres    false    285   ��      ]          0    17093 	   questions 
   TABLE DATA           �   COPY public.questions (id, status, sort, user_created, date_created, user_updated, date_updated, title, type, score, question_mcq, question_fill_in_blank, review_status, questions_mcq_4opt, question_group) FROM stdin;
    public          postgres    false    250   B�      e          0    17512    questions_fill_in_blank 
   TABLE DATA           �   COPY public.questions_fill_in_blank (id, status, user_created, date_created, user_updated, date_updated, stem, question_text) FROM stdin;
    public          postgres    false    258   ��      f          0    17530    questions_fill_in_blank_1 
   TABLE DATA           �   COPY public.questions_fill_in_blank_1 (id, status, user_created, date_created, user_updated, date_updated, stem, question_text, correct_answer) FROM stdin;
    public          postgres    false    259   ��      w          0    25344    questions_knowledge_points 
   TABLE DATA           [   COPY public.questions_knowledge_points (id, questions_id, knowledge_points_id) FROM stdin;
    public          postgres    false    276   ��      `          0    17352    questions_mcq 
   TABLE DATA           q   COPY public.questions_mcq (id, status, user_created, date_created, user_updated, date_updated, stem) FROM stdin;
    public          postgres    false    253   t�      b          0    17400    questions_mcq_4opt 
   TABLE DATA           �   COPY public.questions_mcq_4opt (id, status, sort, user_created, date_created, user_updated, date_updated, "option_A", "option_B", "option_C", "option_D", stem, correct_options) FROM stdin;
    public          postgres    false    255   a�      �          0    33519    questions_mcq_5opt 
   TABLE DATA           �   COPY public.questions_mcq_5opt (id, status, sort, user_created, date_created, user_updated, date_updated, stem, "option_A", "option_B", "option_C", "option_D", correct_options, "option_E") FROM stdin;
    public          postgres    false    286   ��      c          0    17445    questions_mcq_fixed_opt 
   TABLE DATA           �   COPY public.questions_mcq_fixed_opt (id, status, user_created, date_created, user_updated, date_updated, option_count, "option_A", "option_B", "option_C", "option_D", "option_E", stem, correct_option, "option_F") FROM stdin;
    public          postgres    false    256   ��      d          0    17466    questions_mcq_fixed_opt_ans 
   TABLE DATA           -  COPY public.questions_mcq_fixed_opt_ans (id, status, sort, user_created, date_created, user_updated, date_updated, "option_A_content", "option_A_isCorrect", "option_B_content", "option_C_content", stem, "option_B_isCorrect", "option_C_isCorrect", "option_D_content", "option_D_isCorrect") FROM stdin;
    public          postgres    false    257   C�      m          0    17820    questions_spreadsheet 
   TABLE DATA           �   COPY public.questions_spreadsheet (id, status, user_created, date_created, user_updated, date_updated, title, task, handbook) FROM stdin;
    public          postgres    false    266   ��      j          0    17688    students 
   TABLE DATA           �   COPY public.students (id, status, user_created, date_created, user_updated, date_updated, number, name, password, email, class) FROM stdin;
    public          postgres    false    263   ��      {          0    25395 	   textbooks 
   TABLE DATA           �   COPY public.textbooks (id, status, sort, user_created, date_created, user_updated, date_updated, title, author, course) FROM stdin;
    public          postgres    false    280   ��      �           0    0     articles_knowledge_points_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.articles_knowledge_points_id_seq', 1, true);
          public          postgres    false    278            �           0    0    courses_directus_users_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.courses_directus_users_id_seq', 1, true);
          public          postgres    false    283            �           0    0    directus_activity_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.directus_activity_id_seq', 5419, true);
          public          postgres    false    220            �           0    0    directus_fields_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.directus_fields_id_seq', 1212, true);
          public          postgres    false    218            �           0    0    directus_notifications_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.directus_notifications_id_seq', 1, false);
          public          postgres    false    240            �           0    0    directus_permissions_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.directus_permissions_id_seq', 21, true);
          public          postgres    false    224            �           0    0    directus_presets_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.directus_presets_id_seq', 155, true);
          public          postgres    false    226            �           0    0    directus_relations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.directus_relations_id_seq', 308, true);
          public          postgres    false    228            �           0    0    directus_revisions_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.directus_revisions_id_seq', 5206, true);
          public          postgres    false    230            �           0    0    directus_settings_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.directus_settings_id_seq', 1, true);
          public          postgres    false    233            �           0    0    directus_webhooks_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.directus_webhooks_id_seq', 1, false);
          public          postgres    false    235            �           0    0    exams_students_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.exams_students_id_seq', 1, false);
          public          postgres    false    270            �           0    0    paper_chapters_questions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.paper_chapters_questions_id_seq', 22, true);
          public          postgres    false    261            �           0    0 !   questions_knowledge_points_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.questions_knowledge_points_id_seq', 4, true);
          public          postgres    false    275            '           2606    25384 8   articles_knowledge_points articles_knowledge_points_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.articles_knowledge_points
    ADD CONSTRAINT articles_knowledge_points_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.articles_knowledge_points DROP CONSTRAINT articles_knowledge_points_pkey;
       public            postgres    false    279            %           2606    25365    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            postgres    false    277                       2606    17756    classes classes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_pkey;
       public            postgres    false    264                       2606    18205     conversations conversations_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.conversations DROP CONSTRAINT conversations_pkey;
       public            postgres    false    272            /           2606    25529 2   courses_directus_users courses_directus_users_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.courses_directus_users
    ADD CONSTRAINT courses_directus_users_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.courses_directus_users DROP CONSTRAINT courses_directus_users_pkey;
       public            postgres    false    284            +           2606    25449    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    281            �           2606    17033 $   directus_access directus_access_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_pkey;
       public            postgres    false    249            �           2606    16469 (   directus_activity directus_activity_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_activity
    ADD CONSTRAINT directus_activity_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_activity DROP CONSTRAINT directus_activity_pkey;
       public            postgres    false    221            �           2606    16408 .   directus_collections directus_collections_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_pkey PRIMARY KEY (collection);
 X   ALTER TABLE ONLY public.directus_collections DROP CONSTRAINT directus_collections_pkey;
       public            postgres    false    215            �           2606    16784 ,   directus_dashboards directus_dashboards_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.directus_dashboards DROP CONSTRAINT directus_dashboards_pkey;
       public            postgres    false    238            �           2606    16994 ,   directus_extensions directus_extensions_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.directus_extensions
    ADD CONSTRAINT directus_extensions_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.directus_extensions DROP CONSTRAINT directus_extensions_pkey;
       public            postgres    false    247            �           2606    16449 $   directus_fields directus_fields_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directus_fields
    ADD CONSTRAINT directus_fields_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.directus_fields DROP CONSTRAINT directus_fields_pkey;
       public            postgres    false    219            �           2606    16494 "   directus_files directus_files_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_pkey;
       public            postgres    false    223            �           2606    16901 .   directus_flows directus_flows_operation_unique 
   CONSTRAINT     n   ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_operation_unique UNIQUE (operation);
 X   ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_operation_unique;
       public            postgres    false    243            �           2606    16899 "   directus_flows directus_flows_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_pkey;
       public            postgres    false    243            �           2606    16479 &   directus_folders directus_folders_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.directus_folders DROP CONSTRAINT directus_folders_pkey;
       public            postgres    false    222            �           2606    16656 ,   directus_migrations directus_migrations_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.directus_migrations
    ADD CONSTRAINT directus_migrations_pkey PRIMARY KEY (version);
 V   ALTER TABLE ONLY public.directus_migrations DROP CONSTRAINT directus_migrations_pkey;
       public            postgres    false    237            �           2606    16844 2   directus_notifications directus_notifications_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_pkey;
       public            postgres    false    241            �           2606    16914 ,   directus_operations directus_operations_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_pkey;
       public            postgres    false    244            �           2606    16923 5   directus_operations directus_operations_reject_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_unique UNIQUE (reject);
 _   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_reject_unique;
       public            postgres    false    244            �           2606    16916 6   directus_operations directus_operations_resolve_unique 
   CONSTRAINT     t   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_unique UNIQUE (resolve);
 `   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_resolve_unique;
       public            postgres    false    244            �           2606    16799 $   directus_panels directus_panels_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_pkey;
       public            postgres    false    239            �           2606    16518 .   directus_permissions directus_permissions_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.directus_permissions DROP CONSTRAINT directus_permissions_pkey;
       public            postgres    false    225            �           2606    17018 (   directus_policies directus_policies_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_policies
    ADD CONSTRAINT directus_policies_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_policies DROP CONSTRAINT directus_policies_pkey;
       public            postgres    false    248            �           2606    16538 &   directus_presets directus_presets_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_pkey;
       public            postgres    false    227            �           2606    16562 *   directus_relations directus_relations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.directus_relations
    ADD CONSTRAINT directus_relations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.directus_relations DROP CONSTRAINT directus_relations_pkey;
       public            postgres    false    229            �           2606    16581 *   directus_revisions directus_revisions_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_pkey;
       public            postgres    false    231            �           2606    16419 "   directus_roles directus_roles_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_roles DROP CONSTRAINT directus_roles_pkey;
       public            postgres    false    216            �           2606    16603 (   directus_sessions directus_sessions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_pkey PRIMARY KEY (token);
 R   ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_pkey;
       public            postgres    false    232            �           2606    16621 (   directus_settings directus_settings_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_pkey;
       public            postgres    false    234            �           2606    16864 $   directus_shares directus_shares_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_pkey;
       public            postgres    false    242            �           2606    16947 0   directus_translations directus_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.directus_translations
    ADD CONSTRAINT directus_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.directus_translations DROP CONSTRAINT directus_translations_pkey;
       public            postgres    false    245            �           2606    16826 *   directus_users directus_users_email_unique 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_email_unique UNIQUE (email);
 T   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_email_unique;
       public            postgres    false    217            �           2606    16824 8   directus_users directus_users_external_identifier_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_external_identifier_unique UNIQUE (external_identifier);
 b   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_external_identifier_unique;
       public            postgres    false    217            �           2606    16429 "   directus_users directus_users_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_pkey;
       public            postgres    false    217            �           2606    16834 *   directus_users directus_users_token_unique 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_token_unique UNIQUE (token);
 T   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_token_unique;
       public            postgres    false    217            �           2606    16956 (   directus_versions directus_versions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_pkey;
       public            postgres    false    246            �           2606    16648 (   directus_webhooks directus_webhooks_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_webhooks DROP CONSTRAINT directus_webhooks_pkey;
       public            postgres    false    236                       2606    17962    exams exams_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.exams DROP CONSTRAINT exams_pkey;
       public            postgres    false    269                       2606    17981 "   exams_students exams_students_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.exams_students
    ADD CONSTRAINT exams_students_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.exams_students DROP CONSTRAINT exams_students_pkey;
       public            postgres    false    271            -           2606    25499    institutions institutions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.institutions DROP CONSTRAINT institutions_pkey;
       public            postgres    false    282            !           2606    25309 &   knowledge_points knowledge_points_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.knowledge_points
    ADD CONSTRAINT knowledge_points_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.knowledge_points DROP CONSTRAINT knowledge_points_pkey;
       public            postgres    false    274                       2606    18286    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public            postgres    false    273                       2606    17791    notices notices_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.notices
    ADD CONSTRAINT notices_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.notices DROP CONSTRAINT notices_pkey;
       public            postgres    false    265            �           2606    17341 "   paper_chapters paper_chapters_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.paper_chapters
    ADD CONSTRAINT paper_chapters_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.paper_chapters DROP CONSTRAINT paper_chapters_pkey;
       public            postgres    false    252                       2606    17601 6   paper_chapters_questions paper_chapters_questions_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.paper_chapters_questions
    ADD CONSTRAINT paper_chapters_questions_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.paper_chapters_questions DROP CONSTRAINT paper_chapters_questions_pkey;
       public            postgres    false    262            �           2606    17178    papers papers_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.papers
    ADD CONSTRAINT papers_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.papers DROP CONSTRAINT papers_pkey;
       public            postgres    false    251            	           2606    17555 4   q_fill_in_blank_answers q_fill_in_blank_answers_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.q_fill_in_blank_answers
    ADD CONSTRAINT q_fill_in_blank_answers_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.q_fill_in_blank_answers DROP CONSTRAINT q_fill_in_blank_answers_pkey;
       public            postgres    false    260            �           2606    17375     q_mcq_options q_mcq_options_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.q_mcq_options
    ADD CONSTRAINT q_mcq_options_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.q_mcq_options DROP CONSTRAINT q_mcq_options_pkey;
       public            postgres    false    254                       2606    17941 >   q_spreadsheet_scoring_groups q_spreadsheet_scoring_groups_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.q_spreadsheet_scoring_groups
    ADD CONSTRAINT q_spreadsheet_scoring_groups_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.q_spreadsheet_scoring_groups DROP CONSTRAINT q_spreadsheet_scoring_groups_pkey;
       public            postgres    false    268                       2606    17881 <   q_spreadsheet_scoring_items q_spreadsheet_scoring_items_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.q_spreadsheet_scoring_items
    ADD CONSTRAINT q_spreadsheet_scoring_items_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.q_spreadsheet_scoring_items DROP CONSTRAINT q_spreadsheet_scoring_items_pkey;
       public            postgres    false    267            1           2606    33501 $   question_groups question_groups_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.question_groups
    ADD CONSTRAINT question_groups_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.question_groups DROP CONSTRAINT question_groups_pkey;
       public            postgres    false    285                       2606    17535 8   questions_fill_in_blank_1 questions_fill_in_blank_1_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.questions_fill_in_blank_1
    ADD CONSTRAINT questions_fill_in_blank_1_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.questions_fill_in_blank_1 DROP CONSTRAINT questions_fill_in_blank_1_pkey;
       public            postgres    false    259                       2606    17517 4   questions_fill_in_blank questions_fill_in_blank_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.questions_fill_in_blank
    ADD CONSTRAINT questions_fill_in_blank_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.questions_fill_in_blank DROP CONSTRAINT questions_fill_in_blank_pkey;
       public            postgres    false    258            #           2606    25349 :   questions_knowledge_points questions_knowledge_points_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.questions_knowledge_points
    ADD CONSTRAINT questions_knowledge_points_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.questions_knowledge_points DROP CONSTRAINT questions_knowledge_points_pkey;
       public            postgres    false    276            �           2606    17405 *   questions_mcq_4opt questions_mcq_4opt_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.questions_mcq_4opt
    ADD CONSTRAINT questions_mcq_4opt_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.questions_mcq_4opt DROP CONSTRAINT questions_mcq_4opt_pkey;
       public            postgres    false    255            3           2606    33524 *   questions_mcq_5opt questions_mcq_5opt_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.questions_mcq_5opt
    ADD CONSTRAINT questions_mcq_5opt_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.questions_mcq_5opt DROP CONSTRAINT questions_mcq_5opt_pkey;
       public            postgres    false    286                       2606    17471 <   questions_mcq_fixed_opt_ans questions_mcq_fixed_opt_ans_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.questions_mcq_fixed_opt_ans
    ADD CONSTRAINT questions_mcq_fixed_opt_ans_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.questions_mcq_fixed_opt_ans DROP CONSTRAINT questions_mcq_fixed_opt_ans_pkey;
       public            postgres    false    257                       2606    17450 4   questions_mcq_fixed_opt questions_mcq_fixed_opt_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.questions_mcq_fixed_opt
    ADD CONSTRAINT questions_mcq_fixed_opt_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.questions_mcq_fixed_opt DROP CONSTRAINT questions_mcq_fixed_opt_pkey;
       public            postgres    false    256            �           2606    17357     questions_mcq questions_mcq_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.questions_mcq
    ADD CONSTRAINT questions_mcq_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.questions_mcq DROP CONSTRAINT questions_mcq_pkey;
       public            postgres    false    253            �           2606    17098    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    250                       2606    17825 0   questions_spreadsheet questions_spreadsheet_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.questions_spreadsheet
    ADD CONSTRAINT questions_spreadsheet_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.questions_spreadsheet DROP CONSTRAINT questions_spreadsheet_pkey;
       public            postgres    false    266                       2606    17693    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    263            )           2606    25400    textbooks textbooks_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.textbooks
    ADD CONSTRAINT textbooks_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.textbooks DROP CONSTRAINT textbooks_pkey;
       public            postgres    false    280            �           2606    25390 G   articles_knowledge_points articles_knowledge_points_articles_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_knowledge_points
    ADD CONSTRAINT articles_knowledge_points_articles_id_foreign FOREIGN KEY (articles_id) REFERENCES public.articles(id) ON DELETE SET NULL;
 q   ALTER TABLE ONLY public.articles_knowledge_points DROP CONSTRAINT articles_knowledge_points_articles_id_foreign;
       public          postgres    false    277    5157    279            �           2606    25385 O   articles_knowledge_points articles_knowledge_points_knowledge_points_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_knowledge_points
    ADD CONSTRAINT articles_knowledge_points_knowledge_points_id_foreign FOREIGN KEY (knowledge_points_id) REFERENCES public.knowledge_points(id) ON DELETE SET NULL;
 y   ALTER TABLE ONLY public.articles_knowledge_points DROP CONSTRAINT articles_knowledge_points_knowledge_points_id_foreign;
       public          postgres    false    5153    279    274            �           2606    25413 "   articles articles_textbook_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_textbook_foreign FOREIGN KEY (textbook) REFERENCES public.textbooks(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_textbook_foreign;
       public          postgres    false    277    280    5161            �           2606    25366 &   articles articles_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 P   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_user_created_foreign;
       public          postgres    false    277    5053    217            �           2606    25371 &   articles articles_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 P   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_user_updated_foreign;
       public          postgres    false    5053    277    217                       2606    25513 #   classes classes_institution_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_institution_foreign FOREIGN KEY (institution) REFERENCES public.institutions(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_institution_foreign;
       public          postgres    false    282    5165    264            �           2606    17757 $   classes classes_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 N   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_user_created_foreign;
       public          postgres    false    217    5053    264            �           2606    17762 $   classes classes_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 N   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_user_updated_foreign;
       public          postgres    false    264    217    5053            �           2606    19260 0   conversations conversations_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT conversations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.conversations DROP CONSTRAINT conversations_user_created_foreign;
       public          postgres    false    272    5053    217            �           2606    19265 0   conversations conversations_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT conversations_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.conversations DROP CONSTRAINT conversations_user_updated_foreign;
       public          postgres    false    272    5053    217            �           2606    25535 @   courses_directus_users courses_directus_users_courses_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_directus_users
    ADD CONSTRAINT courses_directus_users_courses_id_foreign FOREIGN KEY (courses_id) REFERENCES public.courses(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.courses_directus_users DROP CONSTRAINT courses_directus_users_courses_id_foreign;
       public          postgres    false    281    5163    284            �           2606    25530 G   courses_directus_users courses_directus_users_directus_users_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses_directus_users
    ADD CONSTRAINT courses_directus_users_directus_users_id_foreign FOREIGN KEY (directus_users_id) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 q   ALTER TABLE ONLY public.courses_directus_users DROP CONSTRAINT courses_directus_users_directus_users_id_foreign;
       public          postgres    false    217    5053    284            �           2606    25450 $   courses courses_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 N   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_user_created_foreign;
       public          postgres    false    5053    217    281            �           2606    25455 $   courses courses_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 N   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_user_updated_foreign;
       public          postgres    false    217    281    5053            Z           2606    17044 .   directus_access directus_access_policy_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_policy_foreign;
       public          postgres    false    249    248    5105            [           2606    17034 ,   directus_access directus_access_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_role_foreign;
       public          postgres    false    249    216    5047            \           2606    17039 ,   directus_access directus_access_user_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_user_foreign;
       public          postgres    false    249    217    5053            4           2606    16828 7   directus_collections directus_collections_group_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_group_foreign FOREIGN KEY ("group") REFERENCES public.directus_collections(collection);
 a   ALTER TABLE ONLY public.directus_collections DROP CONSTRAINT directus_collections_group_foreign;
       public          postgres    false    5045    215    215            J           2606    16785 <   directus_dashboards directus_dashboards_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.directus_dashboards DROP CONSTRAINT directus_dashboards_user_created_foreign;
       public          postgres    false    5053    238    217            8           2606    16741 ,   directus_files directus_files_folder_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_folder_foreign FOREIGN KEY (folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_folder_foreign;
       public          postgres    false    222    223    5061            9           2606    16672 1   directus_files directus_files_modified_by_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_modified_by_foreign FOREIGN KEY (modified_by) REFERENCES public.directus_users(id);
 [   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_modified_by_foreign;
       public          postgres    false    5053    217    223            :           2606    16667 1   directus_files directus_files_uploaded_by_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_uploaded_by_foreign FOREIGN KEY (uploaded_by) REFERENCES public.directus_users(id);
 [   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_uploaded_by_foreign;
       public          postgres    false    217    5053    223            R           2606    16902 2   directus_flows directus_flows_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_user_created_foreign;
       public          postgres    false    243    217    5053            7           2606    16677 0   directus_folders directus_folders_parent_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_folders(id);
 Z   ALTER TABLE ONLY public.directus_folders DROP CONSTRAINT directus_folders_parent_foreign;
       public          postgres    false    222    222    5061            M           2606    16845 ?   directus_notifications directus_notifications_recipient_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_recipient_foreign FOREIGN KEY (recipient) REFERENCES public.directus_users(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_recipient_foreign;
       public          postgres    false    241    217    5053            N           2606    16850 <   directus_notifications directus_notifications_sender_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_sender_foreign FOREIGN KEY (sender) REFERENCES public.directus_users(id);
 f   ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_sender_foreign;
       public          postgres    false    241    217    5053            S           2606    16929 4   directus_operations directus_operations_flow_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_flow_foreign FOREIGN KEY (flow) REFERENCES public.directus_flows(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_flow_foreign;
       public          postgres    false    244    5091    243            T           2606    16924 6   directus_operations directus_operations_reject_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_foreign FOREIGN KEY (reject) REFERENCES public.directus_operations(id);
 `   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_reject_foreign;
       public          postgres    false    244    5093    244            U           2606    16917 7   directus_operations directus_operations_resolve_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_foreign FOREIGN KEY (resolve) REFERENCES public.directus_operations(id);
 a   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_resolve_foreign;
       public          postgres    false    244    244    5093            V           2606    16934 <   directus_operations directus_operations_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_user_created_foreign;
       public          postgres    false    217    244    5053            K           2606    16800 1   directus_panels directus_panels_dashboard_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_dashboard_foreign FOREIGN KEY (dashboard) REFERENCES public.directus_dashboards(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_dashboard_foreign;
       public          postgres    false    238    5081    239            L           2606    16805 4   directus_panels directus_panels_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_user_created_foreign;
       public          postgres    false    239    217    5053            ;           2606    17024 8   directus_permissions directus_permissions_policy_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.directus_permissions DROP CONSTRAINT directus_permissions_policy_foreign;
       public          postgres    false    5105    225    248            <           2606    16756 .   directus_presets directus_presets_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_role_foreign;
       public          postgres    false    227    216    5047            =           2606    16751 .   directus_presets directus_presets_user_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_user_foreign;
       public          postgres    false    227    5053    217            >           2606    16761 6   directus_revisions directus_revisions_activity_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_activity_foreign FOREIGN KEY (activity) REFERENCES public.directus_activity(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_activity_foreign;
       public          postgres    false    231    221    5059            ?           2606    16702 4   directus_revisions directus_revisions_parent_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_revisions(id);
 ^   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_parent_foreign;
       public          postgres    false    5071    231    231            @           2606    16973 5   directus_revisions directus_revisions_version_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_version_foreign FOREIGN KEY (version) REFERENCES public.directus_versions(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_version_foreign;
       public          postgres    false    231    246    5101            5           2606    17019 ,   directus_roles directus_roles_parent_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_roles(id);
 V   ALTER TABLE ONLY public.directus_roles DROP CONSTRAINT directus_roles_parent_foreign;
       public          postgres    false    216    5047    216            A           2606    16880 1   directus_sessions directus_sessions_share_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_share_foreign FOREIGN KEY (share) REFERENCES public.directus_shares(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_share_foreign;
       public          postgres    false    232    5087    242            B           2606    16766 0   directus_sessions directus_sessions_user_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_user_foreign;
       public          postgres    false    232    217    5053            C           2606    16712 8   directus_settings directus_settings_project_logo_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_project_logo_foreign FOREIGN KEY (project_logo) REFERENCES public.directus_files(id);
 b   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_project_logo_foreign;
       public          postgres    false    223    5063    234            D           2606    16722 =   directus_settings directus_settings_public_background_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_background_foreign FOREIGN KEY (public_background) REFERENCES public.directus_files(id);
 g   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_background_foreign;
       public          postgres    false    223    234    5063            E           2606    16980 :   directus_settings directus_settings_public_favicon_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_favicon_foreign FOREIGN KEY (public_favicon) REFERENCES public.directus_files(id);
 d   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_favicon_foreign;
       public          postgres    false    223    234    5063            F           2606    16717 =   directus_settings directus_settings_public_foreground_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_foreground_foreign FOREIGN KEY (public_foreground) REFERENCES public.directus_files(id);
 g   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_foreground_foreign;
       public          postgres    false    5063    234    223            G           2606    17003 D   directus_settings directus_settings_public_registration_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_registration_role_foreign FOREIGN KEY (public_registration_role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;
 n   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_registration_role_foreign;
       public          postgres    false    5047    216    234            H           2606    16816 B   directus_settings directus_settings_storage_default_folder_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_storage_default_folder_foreign FOREIGN KEY (storage_default_folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;
 l   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_storage_default_folder_foreign;
       public          postgres    false    222    5061    234            O           2606    16865 2   directus_shares directus_shares_collection_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_collection_foreign;
       public          postgres    false    5045    215    242            P           2606    16870 ,   directus_shares directus_shares_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_role_foreign;
       public          postgres    false    242    5047    216            Q           2606    16875 4   directus_shares directus_shares_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_user_created_foreign;
       public          postgres    false    217    242    5053            6           2606    16771 *   directus_users directus_users_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_role_foreign;
       public          postgres    false    217    216    5047            W           2606    16957 6   directus_versions directus_versions_collection_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_collection_foreign;
       public          postgres    false    5045    246    215            X           2606    16962 8   directus_versions directus_versions_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 b   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_user_created_foreign;
       public          postgres    false    5053    217    246            Y           2606    16967 8   directus_versions directus_versions_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 b   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_user_updated_foreign;
       public          postgres    false    217    5053    246            I           2606    16996 9   directus_webhooks directus_webhooks_migrated_flow_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_migrated_flow_foreign FOREIGN KEY (migrated_flow) REFERENCES public.directus_flows(id) ON DELETE SET NULL;
 c   ALTER TABLE ONLY public.directus_webhooks DROP CONSTRAINT directus_webhooks_migrated_flow_foreign;
       public          postgres    false    5091    236    243            �           2606    17987 .   exams_students exams_students_exams_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.exams_students
    ADD CONSTRAINT exams_students_exams_id_foreign FOREIGN KEY (exams_id) REFERENCES public.exams(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.exams_students DROP CONSTRAINT exams_students_exams_id_foreign;
       public          postgres    false    5145    269    271            �           2606    17982 1   exams_students exams_students_students_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.exams_students
    ADD CONSTRAINT exams_students_students_id_foreign FOREIGN KEY (students_id) REFERENCES public.students(id) ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.exams_students DROP CONSTRAINT exams_students_students_id_foreign;
       public          postgres    false    263    271    5133            �           2606    17963     exams exams_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 J   ALTER TABLE ONLY public.exams DROP CONSTRAINT exams_user_created_foreign;
       public          postgres    false    5053    269    217            �           2606    17968     exams exams_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 J   ALTER TABLE ONLY public.exams DROP CONSTRAINT exams_user_updated_foreign;
       public          postgres    false    269    217    5053            �           2606    25500 .   institutions institutions_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 X   ALTER TABLE ONLY public.institutions DROP CONSTRAINT institutions_user_created_foreign;
       public          postgres    false    5053    282    217            �           2606    25505 .   institutions institutions_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 X   ALTER TABLE ONLY public.institutions DROP CONSTRAINT institutions_user_updated_foreign;
       public          postgres    false    5053    217    282            �           2606    25542 5   knowledge_points knowledge_points_parent_node_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.knowledge_points
    ADD CONSTRAINT knowledge_points_parent_node_foreign FOREIGN KEY (parent_node) REFERENCES public.knowledge_points(id);
 _   ALTER TABLE ONLY public.knowledge_points DROP CONSTRAINT knowledge_points_parent_node_foreign;
       public          postgres    false    274    274    5153            �           2606    25310 6   knowledge_points knowledge_points_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.knowledge_points
    ADD CONSTRAINT knowledge_points_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 `   ALTER TABLE ONLY public.knowledge_points DROP CONSTRAINT knowledge_points_user_created_foreign;
       public          postgres    false    217    274    5053            �           2606    25315 6   knowledge_points knowledge_points_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.knowledge_points
    ADD CONSTRAINT knowledge_points_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 `   ALTER TABLE ONLY public.knowledge_points DROP CONSTRAINT knowledge_points_user_updated_foreign;
       public          postgres    false    274    217    5053            �           2606    19405 &   messages messages_conversation_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_conversation_foreign FOREIGN KEY (conversation) REFERENCES public.conversations(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_conversation_foreign;
       public          postgres    false    272    273    5149            �           2606    18759 &   messages messages_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 P   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_user_created_foreign;
       public          postgres    false    217    5053    273            �           2606    18764 &   messages messages_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 P   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_user_updated_foreign;
       public          postgres    false    217    5053    273            �           2606    17792 $   notices notices_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.notices
    ADD CONSTRAINT notices_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 N   ALTER TABLE ONLY public.notices DROP CONSTRAINT notices_user_created_foreign;
       public          postgres    false    217    5053    265            �           2606    17797 $   notices notices_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.notices
    ADD CONSTRAINT notices_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 N   ALTER TABLE ONLY public.notices DROP CONSTRAINT notices_user_updated_foreign;
       public          postgres    false    265    5053    217            e           2606    17646 .   paper_chapters paper_chapters_paper_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.paper_chapters
    ADD CONSTRAINT paper_chapters_paper_id_foreign FOREIGN KEY (paper_id) REFERENCES public.papers(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.paper_chapters DROP CONSTRAINT paper_chapters_paper_id_foreign;
       public          postgres    false    252    251    5111            z           2606    17624 K   paper_chapters_questions paper_chapters_questions_paper_chapters_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.paper_chapters_questions
    ADD CONSTRAINT paper_chapters_questions_paper_chapters_id_foreign FOREIGN KEY (paper_chapters_id) REFERENCES public.paper_chapters(id) ON DELETE SET NULL;
 u   ALTER TABLE ONLY public.paper_chapters_questions DROP CONSTRAINT paper_chapters_questions_paper_chapters_id_foreign;
       public          postgres    false    5113    262    252            {           2606    17602 F   paper_chapters_questions paper_chapters_questions_questions_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.paper_chapters_questions
    ADD CONSTRAINT paper_chapters_questions_questions_id_foreign FOREIGN KEY (questions_id) REFERENCES public.questions(id) ON DELETE SET NULL;
 p   ALTER TABLE ONLY public.paper_chapters_questions DROP CONSTRAINT paper_chapters_questions_questions_id_foreign;
       public          postgres    false    250    262    5109            f           2606    17342 2   paper_chapters paper_chapters_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.paper_chapters
    ADD CONSTRAINT paper_chapters_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 \   ALTER TABLE ONLY public.paper_chapters DROP CONSTRAINT paper_chapters_user_created_foreign;
       public          postgres    false    217    252    5053            g           2606    17347 2   paper_chapters paper_chapters_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.paper_chapters
    ADD CONSTRAINT paper_chapters_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 \   ALTER TABLE ONLY public.paper_chapters DROP CONSTRAINT paper_chapters_user_updated_foreign;
       public          postgres    false    217    252    5053            c           2606    17179 "   papers papers_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.papers
    ADD CONSTRAINT papers_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 L   ALTER TABLE ONLY public.papers DROP CONSTRAINT papers_user_created_foreign;
       public          postgres    false    217    251    5053            d           2606    17184 "   papers papers_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.papers
    ADD CONSTRAINT papers_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 L   ALTER TABLE ONLY public.papers DROP CONSTRAINT papers_user_updated_foreign;
       public          postgres    false    5053    217    251            w           2606    17578 C   q_fill_in_blank_answers q_fill_in_blank_answers_question_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.q_fill_in_blank_answers
    ADD CONSTRAINT q_fill_in_blank_answers_question_id_foreign FOREIGN KEY (question_id) REFERENCES public.questions_fill_in_blank(id) ON DELETE CASCADE;
 m   ALTER TABLE ONLY public.q_fill_in_blank_answers DROP CONSTRAINT q_fill_in_blank_answers_question_id_foreign;
       public          postgres    false    5125    260    258            x           2606    17556 D   q_fill_in_blank_answers q_fill_in_blank_answers_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.q_fill_in_blank_answers
    ADD CONSTRAINT q_fill_in_blank_answers_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 n   ALTER TABLE ONLY public.q_fill_in_blank_answers DROP CONSTRAINT q_fill_in_blank_answers_user_created_foreign;
       public          postgres    false    217    5053    260            y           2606    17561 D   q_fill_in_blank_answers q_fill_in_blank_answers_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.q_fill_in_blank_answers
    ADD CONSTRAINT q_fill_in_blank_answers_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 n   ALTER TABLE ONLY public.q_fill_in_blank_answers DROP CONSTRAINT q_fill_in_blank_answers_user_updated_foreign;
       public          postgres    false    5053    217    260            j           2606    17436 4   q_mcq_options q_mcq_options_questions_mcq_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.q_mcq_options
    ADD CONSTRAINT q_mcq_options_questions_mcq_id_foreign FOREIGN KEY (questions_mcq_id) REFERENCES public.questions_mcq(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.q_mcq_options DROP CONSTRAINT q_mcq_options_questions_mcq_id_foreign;
       public          postgres    false    254    253    5115            k           2606    17376 0   q_mcq_options q_mcq_options_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.q_mcq_options
    ADD CONSTRAINT q_mcq_options_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 Z   ALTER TABLE ONLY public.q_mcq_options DROP CONSTRAINT q_mcq_options_user_created_foreign;
       public          postgres    false    5053    217    254            l           2606    17381 0   q_mcq_options q_mcq_options_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.q_mcq_options
    ADD CONSTRAINT q_mcq_options_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 Z   ALTER TABLE ONLY public.q_mcq_options DROP CONSTRAINT q_mcq_options_user_updated_foreign;
       public          postgres    false    217    5053    254            �           2606    17942 N   q_spreadsheet_scoring_groups q_spreadsheet_scoring_groups_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.q_spreadsheet_scoring_groups
    ADD CONSTRAINT q_spreadsheet_scoring_groups_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 x   ALTER TABLE ONLY public.q_spreadsheet_scoring_groups DROP CONSTRAINT q_spreadsheet_scoring_groups_user_created_foreign;
       public          postgres    false    268    5053    217            �           2606    17947 N   q_spreadsheet_scoring_groups q_spreadsheet_scoring_groups_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.q_spreadsheet_scoring_groups
    ADD CONSTRAINT q_spreadsheet_scoring_groups_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 x   ALTER TABLE ONLY public.q_spreadsheet_scoring_groups DROP CONSTRAINT q_spreadsheet_scoring_groups_user_updated_foreign;
       public          postgres    false    217    5053    268            �           2606    17952 M   q_spreadsheet_scoring_items q_spreadsheet_scoring_items_scoring_group_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.q_spreadsheet_scoring_items
    ADD CONSTRAINT q_spreadsheet_scoring_items_scoring_group_foreign FOREIGN KEY (scoring_group) REFERENCES public.q_spreadsheet_scoring_groups(id) ON DELETE SET NULL;
 w   ALTER TABLE ONLY public.q_spreadsheet_scoring_items DROP CONSTRAINT q_spreadsheet_scoring_items_scoring_group_foreign;
       public          postgres    false    5143    267    268            �           2606    17882 L   q_spreadsheet_scoring_items q_spreadsheet_scoring_items_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.q_spreadsheet_scoring_items
    ADD CONSTRAINT q_spreadsheet_scoring_items_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 v   ALTER TABLE ONLY public.q_spreadsheet_scoring_items DROP CONSTRAINT q_spreadsheet_scoring_items_user_created_foreign;
       public          postgres    false    5053    267    217            �           2606    17887 L   q_spreadsheet_scoring_items q_spreadsheet_scoring_items_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.q_spreadsheet_scoring_items
    ADD CONSTRAINT q_spreadsheet_scoring_items_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 v   ALTER TABLE ONLY public.q_spreadsheet_scoring_items DROP CONSTRAINT q_spreadsheet_scoring_items_user_updated_foreign;
       public          postgres    false    267    217    5053            �           2606    33507 4   question_groups question_groups_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.question_groups
    ADD CONSTRAINT question_groups_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 ^   ALTER TABLE ONLY public.question_groups DROP CONSTRAINT question_groups_user_created_foreign;
       public          postgres    false    5053    217    285            �           2606    33502 4   question_groups question_groups_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.question_groups
    ADD CONSTRAINT question_groups_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 ^   ALTER TABLE ONLY public.question_groups DROP CONSTRAINT question_groups_user_updated_foreign;
       public          postgres    false    217    285    5053            u           2606    17536 H   questions_fill_in_blank_1 questions_fill_in_blank_1_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_fill_in_blank_1
    ADD CONSTRAINT questions_fill_in_blank_1_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 r   ALTER TABLE ONLY public.questions_fill_in_blank_1 DROP CONSTRAINT questions_fill_in_blank_1_user_created_foreign;
       public          postgres    false    5053    259    217            v           2606    17541 H   questions_fill_in_blank_1 questions_fill_in_blank_1_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_fill_in_blank_1
    ADD CONSTRAINT questions_fill_in_blank_1_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 r   ALTER TABLE ONLY public.questions_fill_in_blank_1 DROP CONSTRAINT questions_fill_in_blank_1_user_updated_foreign;
       public          postgres    false    217    259    5053            s           2606    17518 D   questions_fill_in_blank questions_fill_in_blank_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_fill_in_blank
    ADD CONSTRAINT questions_fill_in_blank_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 n   ALTER TABLE ONLY public.questions_fill_in_blank DROP CONSTRAINT questions_fill_in_blank_user_created_foreign;
       public          postgres    false    5053    258    217            t           2606    17523 D   questions_fill_in_blank questions_fill_in_blank_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_fill_in_blank
    ADD CONSTRAINT questions_fill_in_blank_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 n   ALTER TABLE ONLY public.questions_fill_in_blank DROP CONSTRAINT questions_fill_in_blank_user_updated_foreign;
       public          postgres    false    258    217    5053            �           2606    25350 Q   questions_knowledge_points questions_knowledge_points_knowledge_points_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_knowledge_points
    ADD CONSTRAINT questions_knowledge_points_knowledge_points_id_foreign FOREIGN KEY (knowledge_points_id) REFERENCES public.knowledge_points(id) ON DELETE SET NULL;
 {   ALTER TABLE ONLY public.questions_knowledge_points DROP CONSTRAINT questions_knowledge_points_knowledge_points_id_foreign;
       public          postgres    false    274    276    5153            �           2606    25355 J   questions_knowledge_points questions_knowledge_points_questions_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_knowledge_points
    ADD CONSTRAINT questions_knowledge_points_questions_id_foreign FOREIGN KEY (questions_id) REFERENCES public.questions(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.questions_knowledge_points DROP CONSTRAINT questions_knowledge_points_questions_id_foreign;
       public          postgres    false    276    250    5109            m           2606    17406 :   questions_mcq_4opt questions_mcq_4opt_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_mcq_4opt
    ADD CONSTRAINT questions_mcq_4opt_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 d   ALTER TABLE ONLY public.questions_mcq_4opt DROP CONSTRAINT questions_mcq_4opt_user_created_foreign;
       public          postgres    false    5053    255    217            n           2606    17411 :   questions_mcq_4opt questions_mcq_4opt_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_mcq_4opt
    ADD CONSTRAINT questions_mcq_4opt_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 d   ALTER TABLE ONLY public.questions_mcq_4opt DROP CONSTRAINT questions_mcq_4opt_user_updated_foreign;
       public          postgres    false    217    5053    255            �           2606    33525 :   questions_mcq_5opt questions_mcq_5opt_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_mcq_5opt
    ADD CONSTRAINT questions_mcq_5opt_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 d   ALTER TABLE ONLY public.questions_mcq_5opt DROP CONSTRAINT questions_mcq_5opt_user_created_foreign;
       public          postgres    false    5053    286    217            �           2606    33530 :   questions_mcq_5opt questions_mcq_5opt_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_mcq_5opt
    ADD CONSTRAINT questions_mcq_5opt_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 d   ALTER TABLE ONLY public.questions_mcq_5opt DROP CONSTRAINT questions_mcq_5opt_user_updated_foreign;
       public          postgres    false    5053    286    217            q           2606    17472 L   questions_mcq_fixed_opt_ans questions_mcq_fixed_opt_ans_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_mcq_fixed_opt_ans
    ADD CONSTRAINT questions_mcq_fixed_opt_ans_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 v   ALTER TABLE ONLY public.questions_mcq_fixed_opt_ans DROP CONSTRAINT questions_mcq_fixed_opt_ans_user_created_foreign;
       public          postgres    false    257    5053    217            r           2606    17477 L   questions_mcq_fixed_opt_ans questions_mcq_fixed_opt_ans_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_mcq_fixed_opt_ans
    ADD CONSTRAINT questions_mcq_fixed_opt_ans_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 v   ALTER TABLE ONLY public.questions_mcq_fixed_opt_ans DROP CONSTRAINT questions_mcq_fixed_opt_ans_user_updated_foreign;
       public          postgres    false    217    5053    257            o           2606    17451 D   questions_mcq_fixed_opt questions_mcq_fixed_opt_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_mcq_fixed_opt
    ADD CONSTRAINT questions_mcq_fixed_opt_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 n   ALTER TABLE ONLY public.questions_mcq_fixed_opt DROP CONSTRAINT questions_mcq_fixed_opt_user_created_foreign;
       public          postgres    false    256    217    5053            p           2606    17456 D   questions_mcq_fixed_opt questions_mcq_fixed_opt_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_mcq_fixed_opt
    ADD CONSTRAINT questions_mcq_fixed_opt_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 n   ALTER TABLE ONLY public.questions_mcq_fixed_opt DROP CONSTRAINT questions_mcq_fixed_opt_user_updated_foreign;
       public          postgres    false    217    5053    256            h           2606    17358 0   questions_mcq questions_mcq_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_mcq
    ADD CONSTRAINT questions_mcq_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 Z   ALTER TABLE ONLY public.questions_mcq DROP CONSTRAINT questions_mcq_user_created_foreign;
       public          postgres    false    5053    217    253            i           2606    17363 0   questions_mcq questions_mcq_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_mcq
    ADD CONSTRAINT questions_mcq_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 Z   ALTER TABLE ONLY public.questions_mcq DROP CONSTRAINT questions_mcq_user_updated_foreign;
       public          postgres    false    253    5053    217            ]           2606    17588 2   questions questions_question_fill_in_blank_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_question_fill_in_blank_foreign FOREIGN KEY (question_fill_in_blank) REFERENCES public.questions_fill_in_blank(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_question_fill_in_blank_foreign;
       public          postgres    false    5125    258    250            ^           2606    33514 *   questions questions_question_group_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_question_group_foreign FOREIGN KEY (question_group) REFERENCES public.question_groups(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_question_group_foreign;
       public          postgres    false    250    285    5169            _           2606    17583 (   questions questions_question_mcq_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_question_mcq_foreign FOREIGN KEY (question_mcq) REFERENCES public.questions_mcq(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_question_mcq_foreign;
       public          postgres    false    253    250    5115            `           2606    25461 .   questions questions_questions_mcq_4opt_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_questions_mcq_4opt_foreign FOREIGN KEY (questions_mcq_4opt) REFERENCES public.questions_mcq_4opt(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_questions_mcq_4opt_foreign;
       public          postgres    false    5119    250    255            �           2606    17826 @   questions_spreadsheet questions_spreadsheet_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_spreadsheet
    ADD CONSTRAINT questions_spreadsheet_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 j   ALTER TABLE ONLY public.questions_spreadsheet DROP CONSTRAINT questions_spreadsheet_user_created_foreign;
       public          postgres    false    5053    266    217            �           2606    17831 @   questions_spreadsheet questions_spreadsheet_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_spreadsheet
    ADD CONSTRAINT questions_spreadsheet_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 j   ALTER TABLE ONLY public.questions_spreadsheet DROP CONSTRAINT questions_spreadsheet_user_updated_foreign;
       public          postgres    false    5053    217    266            a           2606    17099 (   questions questions_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 R   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_user_created_foreign;
       public          postgres    false    250    217    5053            b           2606    17104 (   questions questions_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 R   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_user_updated_foreign;
       public          postgres    false    250    5053    217            |           2606    25518    students students_class_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_class_foreign FOREIGN KEY (class) REFERENCES public.classes(id) ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.students DROP CONSTRAINT students_class_foreign;
       public          postgres    false    5135    263    264            }           2606    17694 &   students students_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 P   ALTER TABLE ONLY public.students DROP CONSTRAINT students_user_created_foreign;
       public          postgres    false    217    263    5053            ~           2606    17699 &   students students_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 P   ALTER TABLE ONLY public.students DROP CONSTRAINT students_user_updated_foreign;
       public          postgres    false    263    5053    217            �           2606    25468 "   textbooks textbooks_course_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.textbooks
    ADD CONSTRAINT textbooks_course_foreign FOREIGN KEY (course) REFERENCES public.courses(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.textbooks DROP CONSTRAINT textbooks_course_foreign;
       public          postgres    false    281    5163    280            �           2606    25401 (   textbooks textbooks_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.textbooks
    ADD CONSTRAINT textbooks_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 R   ALTER TABLE ONLY public.textbooks DROP CONSTRAINT textbooks_user_created_foreign;
       public          postgres    false    5053    280    217            �           2606    25406 (   textbooks textbooks_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.textbooks
    ADD CONSTRAINT textbooks_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 R   ALTER TABLE ONLY public.textbooks DROP CONSTRAINT textbooks_user_updated_foreign;
       public          postgres    false    217    280    5053            x   ;  x��T�NQ}�� ���`��_��sy���Va�j�`@�(Z[uh#�a�_�O�B���m��&�0g�f���A����'H��I-�)rA�IT��t�0#����>�{�̂*ɼ�%Ղ�I���TCKq�.)�(jiӐ"BR���ㅘ�gd9#�	Y��$�Wͧ2��H+*�G��o��'��_��<��$ECNK)������)zZ�3����4��9�7�n!��}�N9.r<���y���;h�|�4XT��9r��s�;&�;�c��ױ�~l9��1� J*~�A�g��2r��$����k��y�v��*�]�k���"���ğ�`W�i��v�� ƟR�^{��0�ȡv�1�m҃�GX��!n7��nw���N���琉��^��9��@w=�o�R!'4���Yڳ�=��3gj���z�����z��A_��P��K�Ʃ<�+�jj)�mT���$�� &Ĕ̬����E�q���w�f{<��!W��<�����%0ķ̍  ��oxʒ@j�x�be��j���,��A(������D:���(��l�~qၶ��x��,�B�}@�U�`��3�q��ä�����
��24�z���b��]4��v�&]Ҩ��j!Q���{�`Aܼ^��9�a�5�׆�'�]�A�*l���2SX�t΂�wsE.F�����(a�Kkh\ǃ]VCN+4�/7��S�|E����\�x�vd/c8�+߀�BE\��6�K~Ww�ik���# O ����a�>�	R����X(��.v������8�}K5�t}��M���E�@�h.�Fہ8�      z   J   x����0���c�1	��� �����qYF��`�g�֘\�&'���\hOe��S��?���F)�7}r�9      k   �   x����MCA����p����v���
������9!F8$�(a��� !M2�����>8��{� !E�fM�[��S���0ծ�vpEyDI�X���s'��O�ypa�q��".Xҝ��a����������o��c�x�	̼�b���D5�*� �%P� ��G�aX]Z������z~�:]n����};�:��d�p�)A�&TZ��|X�y�m:e�      s   �   x�%���0@k{
zt��;���i�9� Z�	� (� ���9�L�6��#��c8V�IES��"�"&���*C�^��e�F�s��^�m�n��s����S{I�m�/��fHR�F�k�B���Ak�,	)K      |   �   x����m1E���H���"�����2H�Ti��U��i���y��A ��?|f�u�Z@�A���f���bynV�M*}G0�b9B����9-K�Ƣ� ��N\��^�wD������~9|N��<���+(��P���@U�ρ\�������?�]Gڱm)�{z��ǯ�i}ݏ�~;��f�cn��^�         J   x�ƻ�  �Zv!OP>��!�ꨕ��qp�.�GZ�$�����fn�i,�������� V      \   U  x���эE!D���(�4����_�r;x�11�0���ĉp�
��@�2�u������=~j;	��.��Q���C�R佁N$p!�91�h]���>Q�&� 7�ʂ��Ϋ�(<^���ׄ(��"�a�MVI�{�.c���P̀�, ���B�γ��5f/�u����18����z4�ʛ�ف�`�[��bL��Fc��íp:؍nKn-3�.��sNN�z�Cnk�T�R.���\|�f ���`r����v���'uxЩj�����v�J�����d� ڪYk@�a�bs�
�OoÖ�>sc � ��r}�b������y�����      @      x�ܽۮIv%�L}E>vc�]v�D?�УB#�_
 �ZI�E��LTa�~��{�ǉs�Ï�(̊�BJ�"}�0۶�]���O��|�>;��F��5�خ��=�4[;�yr�2�Q���cO.��j�I��J���������������}�~�/��ӗ��_�����E���~��Gp�헿�_�?�}�<�����~��������?������������~�?��?���_���߾�y�gm��oP��?������_���O��a���4�����߿O�}?�����N����SR����0�6u?�*v�I�֪����ǏO_�����9z���oc-�t2��F?-z�a�>O�轣��!�O�1}�����l6��!7cR��l�N)�V��e;=��"/9 ��B�A�Ǒ$�!��o����Ȭ�I���f��m�<��΃%\��]�9EQv@\n�Ǥ��I���I�e$����yd�g9��iV���ص���د�-^��G��ыZ"�FGd�/ы^�6YL{w��k'�or����e])�/�ν?��j-�?�R.������.̟>O��9E�3�F?��໦��И�>�4�!1�T*�=^�Y=�m����Xޅ�i毟�g1ʧ~}s��Fr$����G�S��ӑ%�#O�F����c*%ѣO*�4�ֈy~�(]�����7�*۸8��w>4����c?3���ӣ���Omv���C��D�!QF����w��o 3����x'�$������o�����(0�u�N���s�F�(]��V{h�L��TK���*`Fa�~mB	�T�/Ā&��	�\B�����:t�����O�L����d�������Y%o1����ϓ��~�G'?�s(ε6݄�|���@u������:tc�A3Θ[k��=4x桵���|ju�V������Q����ׁc_�$�N��kA������i��a�4�`�a��y�.e�X?�.��T��AB�9)R �����v�9v�}���7�|��s�S�򎣧智�����6��
z�L�&��M��m�a��@w�*F5sqc�,tJM'�s	k+�t>܉�q�M�eъ���|��������nf�w�2�~!����Ǘ#����G/�ٍOm�|>.�����G//���Fϔ��zayFO�փ�����Ǔm���U���Fw2��t��;�>x�[al��u�.Uu-�	�-��|;Y�N�>�l���츓Ͱ����S/6C)Ա�U	��"���iB���]l�˱�s7��k�i&����h8���
��=�Y��o�w�qS)���8Ze'?�3ՇBC�-�a4�z�����5��?�?�[�_�Z	~(�]i��q~�j%��:6�j�C��Uk)�,�uz�_�&Ty߄և�u�|}������mH���P;`�����h���2Hd%�C�2��\*����s��L�T�4K�o�t3���C���1�R�Ps}���19R�C]S�rM@j-x�$����הP\������a�KӤJ,5��������P�=� �7/�}�	��n U��%�ƃ�! c�_6K��bu!�(l�K����B ��,!� C�`u@��� ��"�t����� p���/��t�hV�4�0��AA.�3h���\�rr�YW ȅ�w+E�K֔L�w�(^���B��V�"!� 4��� QDl% `!> EBp% ��BQ�"�3�
�(R��I�c�(R�+�F�E�\@����(R�+�F�E�
��J0ʕ`���0�r%��*�� �:,��ܪ��
��c:[���4ǡq���>���V'���:�t�UE��豪͠)�C�'����;�.H�I� �3=ƶ�#p��	����qq��5&�derc�
��i�33'�*�t͎#���CW'�����͘��!W����L�׭�f}=���D�>�H��.?rwb}o��!Q�)��s�!��ې�\��������]�s:�BWW��(�I�C��~P,㠽mM�����7nǓ6��ZL����{Y29E�� �#��qhҐ	W�y�Y6�-�o���M�>hnNU�kc(�P��?��,�z�Vb�5�+F�N��f=�I��6h̘�#U�Ԯ豾��@?��5��g=�L]�3�ptxjRB
���㣇R}�N>iU��hWӥ%�1��>캡�������ɐ�%�36r��M���w��虨`���n��p4#R���=�oϼ��~ �>a�[���zQ�z������ߧ�˿���z�ϣs@���D�t�ӹ��u��-��NR��7��o�W�d�z\'�g��\(���0��,ҝzLt�Du�Hv��z���"ݹ�/wd\�,ҝ+zh�e�#�t���a\�,��+x�k-7�r@n�$h,�<���r�+��;���
����(��\��F�/���K+��[�C�}�m�U"��7ؿ>#{�I�>���_�D�o��Bz��(_�D�o��0��;ZI�%���e�ܻ��Oc瓵eH]��N]��D:_b�;e��J�W��)�8�ZK��
Z[�;�Z"/��Fn���>f��=�i�.����Ŏs��D^�C�}�9EZ�W�����CZ!t�duk��V%ꪕ�7��8�?����@���H�-�����_#�+|���_#�|h��8�kD�oE���K`Ep��)��������쾕��
����	���|�\�c��s�P �����@ϹF( ��͠���
@��zN���+��oϩ_+�g��A��7p:�Z���$����'`%b�Zx��1���Py�ϹV" /�}����M�^�s��J�>t(p��J�>�+x���_+�|�0��k��� �hA���6;�'����D��U�}����H������@˿�yN$��I�6`eA��Їq!5qJ�qI�&�)5f����XjD�0�ivk$�NMl�l�'9�}��<�C������k3�)�l�/M�4�3|O&k���.�HR.�@=&�|pQOz�}3Nfl�5��F?7vrv
}���9Z$����0�A��S?:gg��<�ʊ��J��^&el�e�Y�#�2��ɺK�����4q~��Yd��N*���<�6��9�;5�GFh}��5�rQ�����+\��W+�}�����r^��T����������ˁ�޾Z�n����ډ|A��ɗ@�Q�w�T�G����y�[\�(��
K�*T��1Q�O��K��
�1�>�X�Gο�_�s�}�\^(ԫ�>��|���jq����s���7;|li9:�K�>���o���������N�qlTg���6c�͑��W����b�As�5��^ �� ��@w�W�Q�M�%^��C^T�v���A;����7��T��~�U�m��а�
�����<���w���\�IQQ�7��XJb� F.2_�VfAom���Y����l".s*]��ǣ�ĭb��nS�1�\j�����<D�3|�7U�Z{���8K;��%;7)�����<������5:��f��b���-��W(���~C�O椧uN��ZQC��E��bF�
<��%ƪv����vpQ��-57�1�}��U[jn�c��|.�_���>�eK������u�������Ǽ��������瘨|v/L8�:���� p�\ռ��Z���\�]3�F�s��bÀ6|�;ڝk7\<AX�H�;�D6o��?��ݹ&�y�h�л��9�yxE�sM��LI��hw�6�Z��i#hB����z��u4/�'��	w��u4���"|��m>͟��Lp���\ސ�p&n��ռ��]���ȣ��Us�޶*b:��ƪJ��h?V��<Xd��J��-�VK��:MU��v6�I�6)Lw��٠��(I�N��`�	_�ж�娩��.�;��$��H�˱��1�:r&UZ�@˦�����}I��-��d.Q^5��e�ܩc    ��%Qn�*خ����:q�	Z%����d��ߣl�Ѯb��FM:������j���F&q�Z�����d���T�ع��y.�S�c�~�~�2SU`�v���jd���Ԗ�]��n%��CP+L^�����`��ڱs?a�&�����`�ʝk2�^�6�|�{eR�uٹ��N���� �&�a˛��:�2�sM��~�8�Q��s��	0F�/�s�
ƫ�
� �*u4P����xM�ݸ�g������	VR�iJ���X�o������������+)�\�OP�x� �XI0r�SZ���XI=���.���c+ɩ�\�F�S�I�@�����2��(�#���!*$���
�P�<�3EM��Py�#�����.kͮC���	�&��Jd=�-���i�p$��՚v7N$z���6��V�����D/�g}3��>��ȋ5�Χ���b�~�ӯ_��^�����E���|�WϑH��r���ҭ{���m����1b��e�d�͹�`�l��_%�|�K���e��"�o�I�6`��j
� I��J 8~��\�~hiX��8$��J ��RC� �� %^� N;Q'@!��{iEi���G�O��JL��?Z	�.�4��i% ���(�A
�\y*2�߶��8H�N�'���4�v6X�P;����A��v��5�5�F3"�Qr<����B	��-a�����l`k��g$I��F��Z~��Q;���l��L��`�Φj�v6�I��c��{��0Aw��d}������-1Q�����F�mۯ��n���O&��f��ϵ7�ڶ��$����Eؔ�7�Y��?����_Z;���C;2�P��=k��-�M��@K��]s�p&�޵<��^���ޖ	D
�(6tV�f��qSvMơ�f���5I ��9�PUp���4�95P��q�]D��uhh����6�b1+��Y'.aiD�� ���:� /�����4��ï	�e�)�_>�̂n����� /�	J;�&���~M@�N��̤� ���Fm�������-��]��^4r(����Aֳm"�ڷ�A]��G0F����V�5��II�Ƈ�U}��?C�hQS���9���h��wd�<��B��Գ��7C��'�k��x5�H�y���.�si$=�>�Q��ּ�$�_�'��
�'�(�N.�ki��L�Hj&��wn�d�'�[���s3���|n�Ж��4�DѶ��{�\�I΍���n�"m����6&���<S��)����Nt�|n5V��Ҡu�g�ؔ�=��馔�l�ף�\�e�Ez��;Ҫz���6���x�u�2�~�ǞF�����!�8N1O���*af�j�1��zf���P�A:�f��hxkuN��D=�맹���"k�1'7�gC�3)g{��l��h,g�p�a�%/��la�F���!��yP�(Ѻ��˯�*J��`u��&�K�:�r! ���3B�i^	 ]�~h@�y+أ��^�j�����	^4#g% ;���"��Z:'�Ѐ_�q_ :�Ѐ_�f��6��E��J@���J�� �;~
��]��� �+�NA�J�C��׉�S��R%X �JPK� ��� ��NH� `�� �$�JPc�5g#eD�\	j�0��"B^˕��p!�M�^��t�m��'�p���WnC~�C�����/�iЊ�N�~�9��u�Qk�\
���o�y7���A5]����1X7��4a~:MG�E؂T��qQ~���C+�v�o���C+�%d��k+�V"��BV����7a���� ����V���n;Ԍ_]V�`Z����Z	�����յ#/�C� ��j�$ЫQY!��B��� l/��RX�C� �][#Ձ������e��Hu �O�g�Hu �_�;ΰ���B v8�w��T	���a#Ձ� p#�:�F*� �>�;ΰ�
A�lW��3l�B� m�8�F�� �V�;ΰ�+A��+}��r%hНA�
X���@{�3l�BРgd�A+����� +������&�ڼ��5�'eZ��ހ�4�U�/��Y��}$��"S�����a��L+f�{u�x�O:�Z��(�2��a7P���U^�{�L�U�\�J��(b�;R+�b^Kc?6\��:@|� >�� <hf���L�``�w�N3)@{�w�N3!�S\�:n|6Z��k5V��1Sm8y��^T���f4�h��*h�Z1CyJ(Y��|����m������
���d��?����-�d9~�0⋆�W�+��^�o/P̆�F��
��¯���J��V���S���?ӿ����R���k��G�L�*Q��@*r AP����ǽQ�a�Zs2�C���d�sv�Tkx���8WZ���ǒQ�	������0��]�`��o_?>M�?t��:�]�{=4�s��<4�*壚ݬ9U{K�"���#lMε�����ߦ���i�l(����(�+�g����[gkWm,���m�"�E���[�	'W�M`�#�6��>�ӧ/�~�T*c�i#h���ߋ�;���rk8��Yd�:�Q��w�����?�����N�qdT���Ȱ���.�-������1�Lhs�E�ks�Ŀ�����\b�Yȅoh�5�~�C�JHEl}�?ӑcᵄ[��&�xZ���+#�#���[�-54'5|e��~����*�|e��?��C�%Y_a�Ə�;o�9)�+�/����\��W������.4�_���1���^����ptT�!:��Y�w���P[=�atY��I�v7��a�̽_�;�b��hͥ^�D^�c��?�za��/H3\�5H��?�06�c$�p���n8� H��:����.\�+l�g8� H��4�B	���{Q�PY���aN���'nǁs�buy��?��ʢ�8��b���0߆�aD���ⓝ�g���ƛJ��"��$��'��������Ǐ%�\R�z��կ��ت��b���н�5�|�I��aTk���ct�R�"����w�V�l`G7�!EN:��P����)r�flB�����"'m�.`>�ǆ�8i7v|��N�uL�����S�|u�!��6a�x�b�zaױ�m_n�-����B x�%?��U`!�bA~&���B��l�86����� p��B%X��J��=�J��m���^(���	`]����� ��3wBA8~������:0A߀;р� ��� >�:�܉�
L��n>�*0ih|�r�@;f�C�T�6���l�20�d`>��3���(�H.��E ��Z�<V���Ц�Xm�*Az�����<�cTu�Xm���|�J*Dup�dSn!�.�Dg�>a�
��Duo����o!��&Q��?[����������n\ol���6SR$��꺁� O��p2�MX;@^;�>�8DӸ0�M
~lT������#j�8ӓ���KzF��f��>�ƹQ7�!��ufR]�z?q���Vz�l�c/�H��e�"��z_{R��T�OJ�{�����oC��xa=R�R��j����i2�u�����0N�\�b�t��`�"~��Ȓ~�z.�R}��D�^��ǽ[Y���҃({�pɒ6�=P/�cM��+��!ˬ�K�؇;Kt��'��t��b(Y"\	���JP/�;�p%�޵!B�����%!U�N6�ZC�����e�|�nAG�9�NI�'᷊��3㗈KJ��?��sJ�]<��6ό_"]*YV������)��#���b��y��i|�¯�6r[��Y�qmwJ$IןJ�>��uJ�X��d�%l��w�	ڕ(A�H�)I���!�o����\.�it�%�H�f�d3����ML�=="9���m��兞��$|��҂I<K͚֭�Ha������ZS��he^^Um�p�kI��J ��� �u�kI�� ���5\ݮג�ݕ �l�+4k��p�B �4�k��F�
b�    �c�Fqm��HڷV�P\�7�����0F�W@����=��(�}�Iׅ l#��W@�� p%�Y`�J� W����F�Pq���R�H� ���&No�J��m5����� �,�Y%h�T��5��P�	[	jV�(��}����+A�|�;CbV�3���;!+W�Yc;C|D�ʕ`ƾ\@�$Ϣ�CY�tɢkQaO>�2 ���[����8'L{~����?��a��ӏ������K
{�Km�V�w~�z�A'�菋��c��¨�?�=���(���X*d�~h�������!z��4x��=;A��B�SP�������DO*����=EN���ف��zx	Pzw]�����X	ң=X����K�<����-A�Vwz�l�+�� �у���P�#H���@e$�rՇ�TY��t��7�nAΖ���ڄ%lމ_"{�
����4��idl�ɤ������_��=���U�<��D��|.]�(w�D{~���S���3�����a(��?'���3~��+V���yhuITY����%�Ϯ����?�_����-V����%���R���=4pe%��BT!�#�GS���i�|(͝�4�)f��v]����9�ܺ��dk�m��	���$2ٺ24&b%�މ_"�m8y���~I֖Q�$���I����R^�:��ƇF������Z��N>RFV�o�`U�<4�#X���|z�	�����<4{*X����q�_^�\/�@��}��U���L�5��}�/��uu�G���<��/	��D�ͮ�y����9�f�!7n��9��4����ɨ��G"{Wz�m���ln����H�"���4x��,��+=Po�C��R���9��."ٛOʶk��C�,�Wk3��r���~��-��Ѻ��r��o�d`�Z�,����~�(����QXg硖�\*�K�\����啴�]�CݞW�-�*
Q�K���ϵ!��y�;~�`�k����^�|���[��Ѽ��
׿��8��5!����?�)��;���c��o.�?++GҊ�D"'�9i�r짜ptH�J����=��HB�+'XM~or��6�ƬtwQ3]y ����ਐ�G/T<ɑ�8��}�q�h���Y�1�Vt{Y�\]	Kw2���5~._�$!͂?���KB��؎XH���ݱ�I�"��揋+$�j\�c�~6��Dq�����H��{V��
I�����l\!I����?���P��D�A�+��B��T��;Y���������/���3����{����B�W���9������GO�r�7�_����p�7�_��թ�>������O�������3��+���5�����+QZٟTTn���(��O:�	��;F�x%�?e�r������W"����j�x�������ѿ�~O��{�
�}�"��Q���ѿ��g�F�Ƃ��,~��/����K�K��n���?N�K��n���+�Es�|����3�_�j�?����ќ�~��'Es��Aa�?Y�G4�ؗ�zm��?s��?��5�4tF���"��̢\V*�Va@�����/�Q�ba��?t�(f�& ]-M`��nVLa���Ů��a�	���f-n`�yM �ZZ0Jq# �jv��`V�Z�X���� �mF[� ��~4��7�X�^��@�� �BXc�'�+a ��Oq�0%�����-��J	<'��s�0-��D���%B��v���-�}�-�;�gB��Ā��ky"P�³'��@Z�	ԭ�������������@-�~��s�PF�	����#��������{�l&\���n�9�g��ץ�a����B��=�*6��~��>)U6������s�/��΁i��[?_tß�� ��
am��?����l� ���\������c�?�����F�~���E?\}؆T��#?ꎣ�~��bNV��)p�(�~{�M�I!�Z�E	�+�����H�b�?i�j첐;�냢�?���a-z�������2��}P���su8�t��*�ߖ�p�� Nz�(�e�:�h�7�gO]O�ǡqS�M��87M9uCP�����>��|Ҧ�;n�_����ߵ���{"�<�$�_H6l*��y�o��CaS�2��%	�D��H!�e~&�B���ykY�n��_��ɛ6�{H�B,��'�Nړ��>�<������mO��e3����_��Y�k�j��� ��?d����&l�\��փ�l)]�h�?xЀ5	Ix�^I�e҃D����?[I$���\p�� ��+~��J\&=�$�������"I��ǔD���H�?�HE�%����cٜ�`%�7'kۄ���As�Z�3G^���_���$"ᷭE���ID�[��%2�4�"������}"E�����;'7����E�;'	�[�����;�����ߟtj#����?����o󂥓~�b{����ߊJ#������?Y����?{�E�/����?����_8y՚g��M"�J����`��N�xR�u���`��߶	����/K�ML��U��{����?�o��i�D�~7l��1��?��穒#S�������!j�%�K)�N5��S㴎Mv�m|7x;���kB��
���ǎ���H�C4��ؤ��F�<9�N�\6����^�C��c��{�\:�����!z��4x��1'!=��X��n.W��tE\3�7�˳3�u�h�t2j����=X���>�}����!����6�m3%e�r���r��L�ǖY!��#�s�荣C�fW:@wh�� %�p���';"���`��F蔁kZ�uߦ߾s<���v����Q!��^��R*??�_�o?�� �N�tT`^��7d�'���!�.�	��̳�B%���$`熸ATA��v����Di7���D��w����D��7�؛H�ATA0���UD��w���	�� ����&���A�;~������鿥6 �6̳�d#������C�}�$�M(�
��{��3�A��_�6c/#Ԟ{��d��7�G����"_�6��Ƴ�߈��S�g�_#�~��S���H�-��'�p�� ����/��\�Gp���/��-��K�X�׈�+|���=�V�;�
\�pϟ��V���u�{X6�;�Ϻ?�=,~��H��	������/��X��ß��+�����/���SX��J�>~���R�W��@�g�?'�>8~���!��t�=��'����#��K9�2m�D��k�@u��r��'�}������}����D@R� �	X	0��1�%���	����(��z`#�Bk �3K@�� 1:��{gT�~��,�n�F �E�K@����*�
&�o`�Q4�����;�FP���`��F �Jn�Y�JPk�R �5K�P	�	�V���Q�\	:� �,`�Bڲ��B�����LS��^�c4+��w�m�a�<�� �-�x�`��N ��#b���F��6�|@H^	���� �L�?8�3,��P�`� >$�����e �L�	��|<H03}! �/��
q�अ�e�4~>3줅��
���NZH�5t0�/v����: �;ya ���0��vV�/�u��� �U�-�u��@@���la������/�;����?v$���T�l���|e��(f����WP����!^�
*b6��! ^�

b6�����WP���8�/(���cMl~��T�,����c�ؾA1̎[��}Q�Z�?x_4+� [c����Y�GP������߿��=��#ڪ~i��?����(j�ɦ�b�L{9<}���i,>v_��lBJS����Ф�t�%�;G5+f���l�ݲE�j�N��`�����S;+X1� �E���
v��@�;���%��]Tl��`��F��6�\�lp�gX��    2 ���$��ϒ1�C��e���y���������.#�ȇLu���2�Dp����BƂ�������f��?`���)A�������g#����>���>������#��Ў[��ϟ �����+F�?���ԟ ���?���D6���/��OB�W����^�$Z�Oʶ*[�~������m�رV�%��[������K"���?}H�e��[������"��#̊�,~�Y$�V��/'��H�-���g��,+~��ϊ�,
�-���'�H����~��?��ɿt��"����_.C�g(��ϨD���֣{����J$��ɘ6i��?���J$�n���Z6*���'o��ĥ/QI��U��+�����?ӿ���
bW��u��⫃b�T��Bk��"SU}Pp��\,(�n�?�,
�,��~�����<�f�~����Y�[u�n�?�r���b]�[}�����5�p�1Fـw�_�V�ߝTh5����s��v2�ֵ<Y8A������#v������g��
c]/������.����~���Xׇ7�ا��Ŧ>Zx�n�9Ql�c�z~�9Ql�c�~p���~�>T���	p��ԇ
��]n�7~,~��K'�Z����_4��Tk�+�T IL��ʋ����5�� �w�M�]B�ӾF���J��
GN�Z��#�δ|�8��Y��[��d}?+�+~�M���g%�����?+�+~t�ϹV��.���?��YI�o�^*��V����~�X�k%����ޫ��?V����9����ρ�İ�_�WiÏm�X�/X���wm ���f�k��?���*]�G�I���#X��4���_�Vi�.Y�'��_c7
��`�҆|���	�Dn�����������������c��Z�?�����������#X+���vY�G�Vl�Z�X���=~�����p�����{���#�+���r�O�WlǏm���_0$��߫�#�3��;|��ϙ�(��?��0��f$o��wD��mc}K�?_&e�vľ�vn��7�'��ЗщJ��M�mr,�q�4F 8$��N
����`I��[I;'����hمL�)j�%f${�fh�隙oݷ��,�}e"0�o��겕Ж�W����k��ǽ�!Z~��l��ˍ�;�"~aǴt�o�S�E�\��aړm��ub���?��_	����o����� L/f��/��(�~ltb	x����m'�]�+����ln'�]�,��=������-��~׆?���K�Mh3v|�(V&�o`��1��BX ��� �<��pŪ �,�� ��^F�P�	 ׁ�2�VNwK���I�E�7�������;��������0<w[i��~l���rh{bZx��/��*�=����U�c~lߓ��d�6������d�6�Ў_V+��,�u�6~��V�����/_f�*���i��e��R{��c���@y��k����A�q�o03��� ��w��9�#�;n�A��A�q���Ǿ���DM��(�V����O�3��i��^s<�7��?��˘?mE�OZ���!-!&>@���%Ģ�)�12Y�����x��\ˊ�
1��OPyت���+�p�+�����g�*G��l���أ���*�`-�N tT�h�$0��nDh]j�c	�C��ݲ5����M_׹��~����͚�������_���vK�K���a���� �B�A[&E��|��3��\�vq���T�vq�^�dx@��g���wP/�P6JO0؂;�Q���l��?A_�`�xA���`���t��`�8��;���VC�0��?�������C�kʽ��X������q� �w��Sk�w�2�oD��;Y�f����������a�?��OJ$������#�_R"�������_$�V��l�Dѯ?��#�oR��ׂ{�+�ɿ?��ϔ'%R+|��I~$-R�~�9��E�/��OA'V2�Z$��o#�Ts���B�g=��矓Z$�bY�nA�z�j����x2�&̋QQA��H&�t`ޓ��yI����	h���*7i��$Zl�@;:�&E�5b@3m�`��Hs�<`��`��H~.T<A�����Ɉ�h<9�:�a0�j*��i��L��<}�0�T��Mv�kܐz�7=4ݠU�ُi��8�?|���O_*��5��������R�d������m��#�2AB�mn�3���Dw��1��!�J��>x���X��X�ʭC~+�+~~�9�g%!�?z���[I��3tq(�o%��Ķ��o%����Jq�z�gOJ��&�u�z�fv�	c���8=Mf�t^��Ŝ;o�l��(�?U�+!#k(�u"�']Ja����E��N.�!b?�<�z�H�Ϲ0�����?�S�r��N���+J��d|�Td�W�/���x���?�(]��<�'E�n����s-3��'�6������x�C���Y�Mx�C��M����z����+p����?���"Q�r��^3�=�>���o�`*^�'���;Ƹ�J�?4I}�O�V�,�2]�����v�=ߔ�C�e���j$m-�f�E"���G���u���j' :\������ B���`7��6@Ǒ�/]V;�Cv���A�g��[���A��F �`��A��?��ȯ��F�?�b��A��F�ž�~� h������z� ���C���z� ���.Dc��BX�> �TmAgԎ� �t@mD��N��>����# hx��.�c�A�տϒ:g{�<w�:g��%'ϝ8���7#xI��%u���f��N��s��oF�r���:gK�����ҫ�A����V���#3�U���\�[Ad�7>@%���T�I.<������ؽ���6���j���x͌p 1���b'l��D��V"�Ǩ�T�U�T<əxk��kB��-1�ē�^�!��9��<����DE++)��q�j�3���ĉJ]��Z�0�\rv�`����U�J����O]
f�I��ԥ`F��
�Y`#��}#wj�<L$B���	�Qm��s;R&�����c[k�L$�|���+�Y�j$�6m����<� �1ZGtPc���<���ǯL�=��t��h�V��ڱ\�(���l�Ŷg�'Q;�?��fe~�^D����vi��2�/�B��G׮����;E#��P?rl�u�^�g$~
���6����?��S����3e�)*9~�n'� G�����Wbb)9~,��?�L�~^������ )�Os'������a;L8�z�J	`�>=��/�ez����_��
�X�u��<�o���룿ς��b}�ֆ\s�A��}o�AÚ�\�T���/#�\�T���c� �A�J^�c�~�1H����w�8� 	�_��A|��IB��S�}���*I�K����8�D�ϕ���ߊ����7��߂���׾���~���#��x[i��!�'�����_��ӫ�p�l����\�7������`&���qr;��
\pr�[�n��_��
nA{������N�)���JI&��lH���J��$������gA#���$wtn���;�=�?w����sÏ>��q9����?�Wb1�?�57���6F�gA?��`�8����w������Y0x|�o�����`���SmF/6��?����oz�/�&��u�=u�~��3�\�6�W�r�6Y0u�����>��f����:l��×�?�J�ك��%���o0��g��$�\�6:�R[��x�	)M�Rl�C��Ӎ���8�Y1�y�`:��,���������wp[�9OI0���[���7��M]O�N���n�4�ƹiʩ�rsE����S`{��$�Ӟ�D3�|�;�H�8m(�������	G��7i� qb�    �4'��{f�"əˀk: �~I���ց�~���6:�'믱�;��/�����*���
F;�����K"���6�����%�τ�Er����n���gg˖O�C'.�j%�̈́��_�~��t��B����}2���8/�]�!����s�V+R��v��x�c�D��)��fV$�����lՉ�߂��˭�H���w�˭�$����?l����V��\n�$��~��/[n�$��?貙C��`��+��>����_@�Y�'�����#X������T��6�q��K�_�������`���c����#X��������K���?{��������~~���3|o[�^m�e��P���.��6N�\�s�}l=�t;��gN��[o`@��O@��� ��(n������7�0�y������.�Q܂7��s�;~h�hn����I� L���D:��΋��k#�"��%����vh���
��;;�vߎ�"Z5z�ł�>����!Z9���\����\`ʓW����k��ǽ�!�F�N��,0��c!Alg!*�!aw�yѽZ����J~�1�2��l��j!{��� z����F����AtS�#Yv�"
��xg\n-���N S$A��>_�DR�����!���	�
� �
D��� �D	%Q��{! ;S�GIC�4��a�EQ�� �FY6L���Tη	|2[*+p6��:�����J�3hw�R�K+�?z�0W)�r	���A^)>&�-�B�^(��i�\nhH�P�hʹ���l��P�<A�[(+�b������	&S���m5�h¿�h>�0�[vF�VU= �`��^bǁ�R�K�Za��:��݉^A+���$��D�(����^6c)
B/|�����٤~)�%E�^H��e��Q�z!����Q4{a4�'*A�C=m�ˇH��U"�c_�\iV�]-5�R�`�W�̊ x|��Xv��і;c�B��t�?�����cV�1��VC�ŏ� �|&��6�*Ս �Ք�ϵo=h!��ET[�b���Z�5T~�'�o5TPm��,��	AՆ?bz\��'�S;~h���Oʧ6�	������&@=�C��	Ԍm���(J���1��s�E�c�b׀m���X?g�TO��?'�����5�D�/�5C�c��H�����[@�D�o���򓖒H����~n�\ɿ�[�$R+|l��:�I����峬��D��_c�����?z�,���(�����8����O�����r����,����?��_�����Ϻ6jl�Y(�������d��+���|>g��;��?��������c�꿂\���?�_��=d���Z)� ,�\q � �<���8�J�B@�~� 0 ׀	�l�D�E`��<�r�@۝�xAD�TEx7��"UVd�I�ր��F������d�I�Vc������7�	�}���	��9J* ��;��	"���i�}�{'@�rê�*� �'�B�HVnF���o�pF���k�-��O��B�q:;x�Hvn�N �	`�.'ğZ�=O�t*K�DεN�� vA"��6B��|G�3��kY���{��h��>)�:pO�,�d너 r��;��,߳��ؕ �G�_�gE:p! �/�_�'�m`?��=+�]�C���,ߓJ[@�G@6m% :)p'$��� :��X8H6�l! � p��R����WEH�C� ��`v�R��" <5�Ui���!�5���AJK�C
~�x�� --!���� --!@W�+�W�	��wʃ��8�����q"@���M [%H�����<J���^4x�<Ju`ɉ`��w<#ԁ� �7�wy�?t8�# ȋo`�ڼ�	�< ~�G�u �������B�3;F(���u ��,`�@�0BxƏ�� /� �S%/��<�{B���F x,���y�s��խ�ur���8ۂ�����<�?��&��?�# H�	�t �6 H_H�#��`�項 �^1>`E:h! t#ڱ`�項 p!��H�@H�	8Q<l!�a� >�DBp!੅�	�� �����V��2��N.xR���A���|4�=@b?�|0�IF�{u���0�3[!*��z&�@e��(�
��nX�h �
��n`����[w��!wl�D��O��a/�+�6�U�U�;~�W����D����y_X�ww' ����`��F ��;ΰ`��F �'��5�;~l��5��U
[�`��F � u���%t��� ��|
O�H�	x��h	�� �� ��\�^�}���^	��&�-�^	�q��Ӿ�-�yoX�O{% b�CxoX�P{% <-�{â���� �D+�WЕ �J0�������+� �ʕ`6���(W��A> ګ]0-x� �
��j~�Z��C��p����y_X�Yw��}a�jݕ �~I�֢�Zޔ����:��Z�Y��[���SD%5.����u�N�� �	w��:%.@;�w���$6�
:tg���Ob# }� k};Ў��i��>�� ��*�4}'Z�A�`j�Qc�XH��}
��-	aL0|�������/�?�������>�y��ǯ�~|�����"�KlA��JG�L*�t`��o�q>%_�9aI	��Ѝd?�;�M�]fD�be�ɮ��L�-�>���i���ω2�Wՙ�D��.�����qz�{{����c���t�����߿�o��ʇT�W�j���Yߣ��j�K�J�t���	�K�O�%a:�L ���S�����B@Ɣ��Ғ0{& �9V����������XQN�
��E9Y��: ��)���gP?���,�g��%)Y�
�M _��� �2�$%? 1�c%)�iP_�XIJ�f���:^	g�L��3��Pz�:���Ъ~��9%�T����3w�� S���ѹS�!�OA Ѣ��+���� �X�cA6�Ek/`?li��u\	 ����Z��q% ��KE{/`� 6"�E{W�+�����u\	@�
p� -��x! �
�h��B�Ů��C�Z��q%@�+A.$�E�Wx@��r%h��0ԢŎ�� �%���?�0�ΐh��w'B�S��7(��H��_ ��D��/��k�Xo�8�	(�t�Y�yDBЗ��
�D��# �OA mv\	 �ֿ����B��N��!A�jǕ��	�V;��'����h�� ����H.dp!�>��ݖ�۵�p�h��B ��>"f�JP���O�\	j�|8@��r% |����[r����ΐh�%�T�g����[>�7(Zn� >Ė7����� ���[������[��oc�a�v˕ p_�w�E�-�'��q�E�-W�}�m���}xw�ɕ`�q����\�� {d�-W�� ���[���s�'�5�^�/�N*��N2�:��g��I�2�Y�7�fV�[.�V�� ��z%��}�x�`��F ��S�췼��+��Â���R�w��-7��$ywX��r#�a'GywX��r' �
��`��F xP�w�.7����;,Xp��}xwX��r# �T�w�.7xr�%�|� ���ſB%hM��#�,�|xoP��r# �ܹ��;؉�,��	 w��gP��r# �u�u�./x�(�\nhp�,��@��_aL���
�ް`����ް`��F x�$�\n`��3,�����xgX0Y�L�s������I���Į6�7T֐�րU�a��׍ Н=ǚ���7��x_P0Y# {��_P0Y�B �%�4���g�m3x�4{�`��F��~�+`#d��pR�5� O�D	��n�#��Fd�#�l<�f�\x�p��    ���c�@6d#d6��ܲ�����@�\@�F��`_6 f#d6�k�؈������W�����3�d �@U6`T6�}Av�����c�ȱv��e�N��CP�=� �*�6(�G��v�m�g�i3vV��	��ץgPcgFKć!@�6��-�b���mv' Z	ŧF��s^�
��1�3�y!�FP�r�Y�B��-���--��
1��ݍ �}�
1��ݍ��.,�� ? l��`��� �BL�ow# �B�/����]�|<L�nw���������<s@P	�C����Yh�P��g� #X���G�@�(�Oa+�v\��	dK�v7��@�2@�lw�}�T��n�g�� ��ݝ p̟ �
 ,��+�v7��*@{I�H8)�_ś y}���%{� y}8w\a��ݍ ���]a��ݝ ht�4��8�^�^��ݝ �+�w�V���qоНW@�`k��&���:`\k�g�ܩ>�g���<�g�����
�K=l��엺`��A��� �7��
�Km�/����R;�6��
�Kmx�� >+ �/�������P~%��kD��P~% �P�w�D���� �ʯ$l#��ED���� ��� ��#^�C����yw�K� |��wX�_j% \	�ޠh��J �	`�A�z�~p��@�$�ˤygP�^�B ���A�z�����A�z�� �p�m���Ƕ��+$�.�`�W��q�Eۥ.@_�;��h��J��¼/(�.� ^&���A�U�����ƲHN�� �P���OY�:��Bs���,@ˀR	���NY�C;å�!@�Ub% {�T)���NY	��A��#@�
�`�H�Z�B�mv�?@*$�+p! ���AA4>h%@c� �Ń�h��J �#���h��?�Ԝ/D�*�ˀ�e��W�$Bp% �8D�U�>)�j�v� �\	@��^�1K<�aU���㟇�|���ǧ�_�]Ц�M���F�td�`��Tק�O,?�����ց�]�~�L�v��%i�S��6�`�C�ƱHf�`W�5�`;�3�� �rd	�  ��,{6~N@TJN@ ?�%@?� L��U�}�~�7���珟�|�?w_��eFX��2�$���)�a���i,�eF�4�:3�1��̰|����hI��o+ߗD8��&�,ě����8��rny�����sH��j���9οƗ�wV"���Lv~��>v�E���=)�F��Ϯ�7�L�~���yh�0���zT.��y�s����Tt��i���˻���������4���U��7���O�y��v*/���:}T�J���ҷɟ�>����䐛���8�R��A71Y�:��s~��J���G�Vo��i̔�m&3П>M�~�~lF��8�������4 ����]V�����'�����n0����o�t@���d�u��y�~���l�'���>��Ԥ��n|2~"}�����
_|�=�Y1��6�F�4�S�l�Ш9�������%|Kϟ�|��? ����kݸr�R��r���9l�*=���|��~�m�5�L@㬎d�����h:��V�_s�Y�~Bk�cc3��ں&�5�wA�q�*�?a0�M����,DKVʆ�Ӂ�O�j�.��<�y�,�e5`����&vބ���џO����o\��4Ÿ�� ���6���g�a���h>�ѢS���o�<wY[5+��%���������Bo����@������=ͦ+�bڭV��f^�>t�z�4Ͷ���q�<7Y�=L���;�<����&�������!M���ӏHӤ��R������&�m����o֨��14]�������h��w���=���|���ߎ��Wi�MV��Ɍ���>�]��li�zN���roo+��Y��
����lMdH��M3�>*:�yp�g=����|���a�}���;K�u$�����#�)��Ƽ�����ڟ|֨��Q�5M��Uy{:�?�5SV$!�F��`�o�=o�Lj���\�� �l�likt��p�#V�N�?�v��4`mm��g��������,���wi��:��
��Ѐ���W�o��=@�-_}VJ��Z�kK��>�U%�T`m���Y�U�C/�k�n�>K�C?�T`m1��g�c�]*��D����^�����ѫ�rǎ��T`m9��g�������*˫�
���w����ǫϊǎ��d`mE��g�c�w���:�������w��,��Uwħ�TI��b�7K�|�r�{z���.�v���g��7�{l��(�ז�ez}�*�3r�$��t����Y������Q�<�0�d�����@w0�]UtǱs�9��4TCu簟?J�I�>�������4пM�FuNf�W�nWu[���7����4��*$=�f����P�b����Fi��u�oTȃ�S���`��;��~���ة����:����Gι�y;]�D3S�����5s7�:̞�.�kk��>*������4���;��y�{I5�F�?2�z�v�\[/u�Qw���G�����i�0�>��!=>�
���/�jk���z���͏�K�zr������m������ٰ�Ԡ�G��<�8�鯤3�T�y4}�|�:��{e��M�ۓ�W����GL�S��@wҩM���U]�UZT�Oƴ{М��%@T���OQ�KpT��k���-kt��|A �	���T��覲�`�#@�"� n���E-"���TG�Q�?�ׁ.(�S#�+9��U�������J���pr�u�� ��Ĉ�c<Y�ϷAI4ؾ#���˾��sK����~l<�V��'g�*��e��
'y�D�&�D^ ���Km#R���i�Ǿ-��6�Hi����\�8q�z6r	���N@}F8)U6�&�l3r4���e��Ik|��zѸ �m:6�`�E�N �	`��^4nD��� [/w�O o��1Ǎ ��kX���+�� �1F/����!�/��Zj&8fꛌfl=�Bb�[�$l��G��ؘ��F^p�%�h�~�`�� [��=r �w�D�����ݺt��-g.X@}&ݘ�� �K-r�������V}��!B��z#T���
`��C�s��yu(>�v�~�;��͍�WK8`H��zg��fЬS��[���X�Ǧy��`�|W
�|�K����R�0�~��i����c���un�I5��}��>�7���w.���NIKom{;���o�r��i(�}.�1:5���8꜃M�7I+om�T�z�s?+����'L�o���0�ۂ2ì������G�U���<驉��_��s��049�c���Q��[���IW>*8;w�\�$�HLuc��WMJz�]�C�_�si�m����@�����.6}0�,3y�5�����+�%�����s�����&io�1̦��~0�~�k���r�:��%��ɡ	�ҟ>��d��F�^�����V�]}ԝ�8�Ge5�L3Y:N.̮�Ø���]�mG?_�?Jj����A�Guz����b;�m�I��QO��y���nWuo���Qc7��ەrn���15c�s��u���QR��^˂7?j�m����i ���M����娅������ZtG��I���R�L֒�?g�O�{zuB��`U7Y����ꬫ�
G�c2�~��g��d��؜�}S�I6h�G�W�k�Eww�䖏�v��/��v�>*%2��7�d��AE5��GI-�#�~�R�5��L1џN/]������C���dw��I-:}���R�}����\����H������uy�za\m���Q������Us��1F�}9��/&!Nz�������QR�N�<3�V��Y��WY��t���d�0������Ztߚ;�]���R��Q$b�I�d�|鴚F�{=W������^wv���u0eD]��\c�^Y5M��W<I��oݑ���h�X��!�K�JyRS�YU�A9ׇI��c.���QG�p��^�17ޖ!p�1�#{�gR��    |��I��'{~�U&��٦�3t��9eR/�drpb��{R{�I�8Sä�Dꤙi(�|hz����ώV�o����s��#�sT�*Kf OE��Q��*:�Q�#u��|������G����1L#����M/���B�U�~���6�~�QGL'��t��,�#�6]4q��ɱ������湷�
����1�!�kҌ��%1�θӤcLO/�'�SR{^6
PS㬢�$��$�H�-^���DƂl�n<k���ugp��Q9�H�Jv���1ӿy75d�l(#TF��>+��,���겊�n_Tt�2I�4w��a$����`զG�>�>����U�}韟5�����X:1�>���&,�>)9��4�1������9v�!�T7�&�N^��v��X�=d�x�s��3�( ��Jo"�@����\	KG=^�=��:r��D.pGZ�w�짞f��gKz/����WAj������w���)Z��TQ��$٬��=y~W�S�u�շ}�/?����\��|��3hM�1�C��o1�6��u���GI�yl��j��>ʅ��36����
���l<���\9ny��9�=����D��Qْ�+����L?��"�Ы�<��m�?Jj�� ��Q~"�I�mv�l��tf�7��ăv��)��<��u�/�i����~�X���db�)G�e���FKn�-YV�4�îc�-"wn�]Aq�x�lU�����m/�l]��������������B�NO*��t���t	r_�X.FI�e��� ��2%�_��Py�1�]�ǁ ��dȄW���IJ���9��։
�W��.�ϒ��a�<�)A�.�&w%�ۓ?��2���}�
�p���Xg�%�^T���6��R��^T�K����̼�,΋
~����SWA�9xiDu=�<b/`�rI����=�mv����F}�#�� �0��ADm���D�8��հ���d��п�L����)���/�ǋd��T!��K��.+:3�Uk�o�A ���i���2H��>oB�����aA�SW@�m����l���**���l]�I�sR�-){!ߔ�{�h�(܅w�����]aA�tW",�*��
-�rqۥ��� ��B��9X������S-�\�(�����L�=���9�`Y0^Z}Q��ӱ%�iK�G�Z&�A�5	�r�F��<�0<��k�	^�r�����j�v���Z�-X�5J���?Rx�v���Gl#�8�w�j�`߻|���Mw�Ż�c%jNGyU�����_@���9
O�o�=$%2�+�&�p�!)�t_�krM�шCR�7E�94�X|�4��G��K��%��Vj��-��-,<A�ỡE�9�J<C��1�ĺ���֑���ޑ�$;��5!�иa�^���Y�|0�U�pm��՗%��$]}���!�Slơ?o��M�o�hՠ���}ׯ��Կ��|k__~ٷ�����BV��yܲW7�`���f����ᒶ�с�����*�qҙ��VF1�Oٕ��L�i0���Jڃ�Z}�6��Uv�Ӆf�]j�dM�S߄1L}��,$޾�K������_��{]���Y��U�!����y"^څ�Z{�A���Jcb���,�NM������h�<MW_%m�K�����U��y.c��aօ��j�d��Ӕ�}���������UyHtx\3Φ��N��LO�9���R����{i#^Q�GΕ���XKj�m�)M��fU,����6>ݳ��W9�Gc:݌A�b�kȮ*"l����)�W\I�{�g�/_�E7�ihr.]�c�MB٠����8�믒���?��-5�֖AQ*te�v���8O]�M{#����L���eS����f�3YQ�]ӛ<51�a
�ը!/���շ�7�*Ʋ�*�K����U~���>�}���j�Pm���W�����<�M�%���m�5����9t�/�WIm{&�~�L:;�[�a�F�	#�8-2�c�����:Hm{&�~䴧`��d�R��g�Wڑ�0�M��';�sX�Զ��R29L�~���^T_9��84��y�9�5�5C���L^��s��������\�bJS�}c=����Զg��>�7��g;6�y�K�l>�_ԣL���%�$3�Fzz���.���]$wu���q���L2=-����8����y�t_nf��L�L��wK�q�M0]���6ۊJ�1Q{�A��*c���mv����n�L����'�ͦߗ�R{LԎZU�V�Ng�-mA�$r+���*��M^;�I�;y@�&!ʩ��B������QI�A������(�Z���V!�y��Y%CD�ʒຟ�r]�@���C���B��$\�?��H*�K9Cr��1(7�J$��u?��*�D����"-�xFh|�J\+�{�2ģ�: R�	�n�.�D�B��|���H���X�gS|qQ$
82L'E�Kh")_r���f�*�o��d�^	�(~Y���
M"�މb��%�ɝH�p:["�d,� ���֎|�bvڴ����	 k�'U�䬛���d�# 9�v�\$��K��C�Ԭ���|�N�7@if{��qz��0���=p�A�.Ϊ�!t�M~h�)��ݥ�L�ښ"6��au8 ���a��C���}��H+k\��X�&|6��c \g���q���L�k�.���<Lf�N��X�N��r���c{��O/��������~�{��̶�Y݆��Q��k�{MQ#%��+��q���!g �G97 ���d�����5�� (� �o�ɹ�MWv e6�ҹ���U���w���~��86v�S�|�@�)������8���|x�.9��k�|s=�1or�yd׌2�6�|Wtqj������Y�;CD��+z�'�c��i��1��z�O��E���ǝYc��/��`�XF�.gKd�qh�4�]缚�R��(������c*WB�Պ�*����޸��5��4��p��"]�~��i��ۼ>���I�g��������}�<����
�}֎ �v2�Z�����+a�9WϹ2Έ �~���ا3*ӕ��ڹ�'H��4z��29	'=7v�W!:�D9�f�9��S�+"E�H�H�b��)�qCb���`�>E1MԽ���� ʄCy�L�X�2Ox]���s��{h����T��Э;/��
HC�E@��W��0����G�$�P�Ԍ�m��aC��zg@�N	Ep ��}z�!�����Ŝ�!���Z��m#��棓UT�Fg \+�g�s�4�-�& `*��L�8��l������btZ�sj��<���bғ4q8�r[��peP�zy�L[����S۳k@��i��
@,@Iz���K0�E?�J�cC�=�eq��*����Sh���4�f���y�7�h�FOFO����7��Efzą��8 #���Z��7���nlb��8���8�8M�CI[j����o�$9�K	�c:�ge�b	i4p Q�f�x8:ň����g��(;M�Q����-�,;ͤ!���gZ�x��"������R��2�F���|6��/{��)�������?�4������8 �)�{ /�. i���rI�32 HQv�H�å��IV.���i�$xRq��b���CQ��)ͦ�8��ĳg�n���لaʓfӤ@pn�9J=D+F?"%� �j	r�&�y�N�����?6�w��F̝j�4i�m&��W5�G*->БF� `}�^�JHSl���:���N��� ���B�b<Mj�} ���k��N��� ��w@!�Vyd��܇b��:m�8*#%�F�+>>7��s�OMʝ����������� �u6���U� ��ݕG���= V�N]�d��k�;��h� ����.}/��b�\��*�#��HgA�\;әe��h��)h�A��r�l��>!y�{���C��I}�.V��{�b�a��g����P����GF�wM�g��b�}hdzc�n�͌,�쵴*����OFt�$�B�V�sZJN�6C��C�`�Rm�r�*���5�>h�f�a��p:�j�r�.�Nzka�_m�p�*��`9���Ҋ��jH~���    Ը�a��&&aU�6XiU5�rj�����q��Γ}�8&UH��U���*���SjT�m��s�9��1���3H�h}�2aU��)�ʡv��U7˘�w�l��/�>1�Q�BJo`��'�^K��_pN��+�76y�����;��VZ��^�P36)�ve2�������L5�� ��$	�<7�Wc�}�H	{ ֶN�T��U�Eʋ��߈d�Ĺ�!i�I�hӑ`����7C�8�@����(�!�&11Ϗ�w
��: �"9|�y��������N�?�:���8"���<�ң ��K�����3� ��?�f����#�*I� ����g^�]RDAyA9~?o�/	� y���׬��Ua$�p��LK��KO��4*����C�b��(����^�nkI3�2 �̟PK@$ͅ:|?s�| �`�~V���<�(�`�~�����S=����w������}=`�����������߲��eXR=�������T0}?��8X~�Ȼ��,��d>.���DЪ��;� H����[RP�H���;V$@Ұ���3m	���H���X��r��`�~�u��'z�����}�# E� ��g��# Et ����\� H㺎����+G �y] ���� i`� ^-n� H��ϭ��_���_����^�$���E�4���W���EMq.0F��{z�$׎��]ڐX���)ޥ���+��E�4�+}���筰����K�"k�������.����!$���0�+vR��y��+ Է4K �\��p:kܚ0�l#��O��`���?IgzkF#c(া~eŇ��}:j�E�k=�&��kL7規��̃�'5E5��U������ҙq4�͍�ؘ^�M�ob'f�y��P��j;�l�au�.�(��!] ���g��]�r�_��z�tF�6��"u�r���R�=�;�]��?Ubg�N�V��Nn�V��{ L��X]��uъ�������R��>=�����@�J�݅_��e��� Lky��*w΍�:K��x'iʭsS|� �~�����" ����:7��� x����un�Վ  ��s@QP?�k o(6���Ӹ  ��ﶆ��~ ����
��� �{~q��	��� ���ͥb�D�= Z��7	^�DO��1������a�J��J���*��T��4��G[^]ǿX,U�R�P:A��UԻH�!�A���_�l��񕁑9�踏�+��{e T��y����ûV $��܏ ���� ����`l����z�}p��y�\ 8��*/�P>�``x��T�L���7f�Uc�1&�S������n(��x� ��(o���W�$$f+��)�܄�7^v�L}7�~(S��L����m`�rQ�9E�Ķ��,�3��,�c���+ԧN�_A�V�n�r��$�<[���^5����=$����p�=��ϝ�;[ט^����0�L�e��\�(��#@�a��ȃ��6󖰬���w���S�G��H%�x����<���ѱH�4Qv�1Q�aԓ�]��7���=>��Ou�Ѫt����z�7���T��)}�,�H����
$�����x�W�m���ƾ�|�7�����/>RN������z���C�\����T �������y�I7��Dc��n��f�g+�H�):��b���N)vת�@�	��7��8��N+1z�Vݏ�=���gC�h�٩�HJ�z� ��q�"��=�S�JXs�$#�$	~'�ߺ�ˆ$I8 Ęd�ܢ�$�>!˺"/]ہ[��;�o\�0a��^G��g?'XFW��I~���	4����-�C�\�ܞB�o*�P�~ ���o��#P/�]�����v�  ��� �J{�T����^���*����#@� ��O-V~$ H� ��O�tN���k�w�S�H �W� �����?}?IF��~��A�I��  ��V���0�&ef
�Hݐ��{^��.'�
ن)s{ �U��2堙����k2�YV�cE�e���m�D�X��
�X���= ��s��S�!�$�y�@�q�S��;�h�إ�2˾��5C^un��颃Y?di?N��0��e&���/��%\(��6y�(��D���%J ���8����#��J���o0���e��~,Q@/�ȼJDn���3&���*qo���36�"{�p Jb.�lk�=����� X�
VnӍ�`�h���nq�x��/��gm b�C�ȱV����6-?X>�LKbM�����Cy؅j(u��J�����T�����[��%�臶~S�e��{����x���YJ ��*�Q|W ���V���U:�Ơ�~Z���M�q���_�R�dMn.��5Ή��C��\�4�{#�!6vL���� B�`P<��m���U:�R��۔��U.�CW|���� ���O�(���R�t ��y8�B5w�o� M���<�6��]��bW�(��}ć�~�Q�oO�ӗ ^ڞ�@��ȩ~��V��yu�����9�\ ��`}����!������q
��0$��掆�u@O&[J�� ��r㐼V�����f�|5�P����r�P ��m��a�Ρ$Y �*����C� ��y���C�� 1��osK����դ����������������;%ZϴP���Ң
�Y%|�u�	��S�5�zx}L�cm[�� x?���% ��W x��(
7m}� `�
}N�5� ���;ԋ�^_�m}VxE��N�#�Ţ[� �o�����ӽ+ �ɏ k0\}� `0~�yx��J������.8X�r���>*a�U����k�*WY��s�&�^9�]1G�D�\����I(���9DG �pm��D�(N� /Xe�>�����y����h��*E�������A��*a����m�
E�$�#J ��8-�z�;���y����S�~TM]��1Xc�.�DN Q�	cs��K�V�Mx�7q��i-և1#e �_zV��O� MI	������Ӿ�~��]����H%dH����z�Ьo1M�I�� ^�>PJ�
���# ��b��0'h�|^2ޏ ��y �y�� 󕡾y�
 �k���@y,=��������qz~/^���=*׽I�Z�3w��b��0�'sݓb�~/SU��;jg��$��w*&�R1�Tz�'Ϧ�lj�Ϧ�Tza[�WmW����91jQF��7�F�_E.�`��?1PF��W�F5�7���;a<�����/ev|c1�H�p�: >�̯���Q+ L�D�(F��PG ��?P�p	��� h^
�� c�Hɝ�Z~�Z梤�O#"%±>�e͹{��X�#ŭO �^�k4�G�z?�M���!m�R�����l�a(F����!�2�O���\�rb8֗� ,����s�J}��

�	-7fJ$aZ@�ӭ�|n�ǿ���&��1>+2��^G��G}�ϫ���^�� �O�՗{I�������^��X0ξ��^�><�9ħ{I��Bs�t�GF-�(�Fϟ`��@�R3wP�q���D5�{w]��
�gE���*ӊ��@�XT߹��f|�f˨w�$��4����%�Z��ݚ=���fX"�#tS�Lf$Pb"�4��"�:&��iH��;b��0ojE�鴡��a�����C<0��0�
���W�\�<�����;�\��b�����ɠꘆ0�
��O�51a��
�^Yu1��� �;��9[�"�������	 ���u�
�J-"	�4*�ZE�c}�$LLZ ����Zs�V!�_�z�5� �����#�UU�I��4YJ�l �I�/�=)k''%�l�>DZ"+򼭠T֎N:~�rm`>.��6��ҡ� �Z�x�W �L���b5o ��{�+�{G �n�2�+ Tz�{ T�.x]_�A�J��2l�p(-�4�� �Z�|�� *�w{ ��AzV��e��Tf����J��p|4�5,{h��
nq�
�8j7M}�̝��k��    1󠍴^K��!9\>7O��;8���>G lh�T�YY��;�vyV�oyM7�x���Cz�߯r̩���Y�o-�(�
^So��cxV r?nV���.++SY�2�\��Ʃ_�ʪ���./!����zv����[ ���� =��A:' ��fjQ�!k�lp<�W ����A:' �$��b>�v�� �Υ���v�� �P�+[�|?���S������0���m���j�(��N(
#jG���Y*��ˠL���\ 伾�];�(T?�1]
���ǰv���� ˫�����������C��=���>�qE�ꪳ�{d�l���0}��U'+��V1)�RLW�n|�ƶ�*��RL~���#Z��r�H���6�AH5��P��c2�zޒ-�I��J[ x	.>P���P:���E��SR� x�&����L����PL�yJ�� O�j����L� ����T�))Kmw"�<��.�[�������{ �k5ӱFۭp�v�W?}
��6�-[���W ��F��*�xT+�?y�)*���
�H\������\�J�Rns��4e��PRr� ����
�l��7:����LH�V�H����X�x���fxfgn�D#�� Оh�z�y6��Fi��&P�{bw��I6[d<��,=U%Z��m� .�HtS��}CtO ��� ���.��|-�5�Q;�g�g3�UCtY����!U;�gӂ��;W���9��D�I���>[,�{��2U;����Tt�L�N��N��ɔ �ӻ��aì���z
%H�� N�PV Je������_�T<�%�R��O8��q�0�@)�:@byz�(��(A����y��jY�p��iEG �j%�Ɓ7�,T���-w�#G��vT�
��p��T;�h���į��#�N��s�����C[,��l����	D'���1���ڑ;[@��r��Y;kg�Ķ�*) ���Gԍ�l팝$�;�߫v��
�%U�y�cvN��O�k�v���;H��x�#v���{�`��P�S{�O W��W��%�=�A��Z�j�?ɁA�T㟐����x�	դv��.�J��8���%�9}M77���q�4��<��q!�	ϭ��W��U��f���A���A�H�Й=F���lPܣ�&�*�̢���=}LT"�f�T�����4Rw}ﴞ��)ɱ�,��&c~U�cU?�d����{Ї!ݽ1eѼ��iY|�7��1 xn��R�eH�c ��2> �J�S�!�����׷V��)�~�� ���
@��2$b o
P��!ʐti����](�J�ST6 �t�?��e���2bg$3o��N(*E���߆��|Z(F��CS2 2wP��
!�I��W0���t�§j$!Oi�N��K��c��a8�����`�೒DQ�I� 0g�b�H���|8�*F���(+ <����b�H����;f�Š�0e���l�4��  <������3Ƿߦ���mxy}|������TD�S:*����u{cj�Ĕ# �y��.�Ԯ>�������#9���g~C#IGr� 0mE�P���I< ��K�E/ّ��= w�(l��".$�Q�?�|��.E�6~�svV�I��_���:�Y�����e���qk�H�Qy4��M��D�~�)J��&�|k�r�
@1P"LhI ��P����aB�@��2�M1��:>�L��l�'ި6�����;hz�)�����
��ۊl|}��
Oz�����	�P�t�%6��h ��Kn�(!LzY!��'e$�՜G$�a���a&a�ˊ�լ�PF���_!y&h��Ϛ��� x�0fE�ʴ0>+a<�
��u^�Y	�`V �>n������wp��x���0+4wP�{��J
���q^+a2̊���k��|i���g7�<4k���p)��# <7�
@��<R�{ ��s+ ŗ�H��I�+ ŗ�H� `�8^(��G�t�  �P��F�r���<#�# ��l)� �����xz��8<|{}����:f��<�\��1-Z�pH~��\�b�p4a����f�'�4a������%�4a�ˊ�:��~�0�e���ϓ_M�i���;h\��liAJ��<tb�OR>tM��ݐ�ӂ�] �ϥ�S~y6�;��n��i� ��1i�J˳�|�JQ-I)�= L'� �$�Z�R�{ <O�\(ID�$�< ��-V JIo-I)�= ��(%�s�C: �w@)�'Ǒ����C�%sQD��U��\�{�E[���<�ô!=�Ev��t�� �E��rD�3�R�1�E��H��'��a�
���zʋ0 p�%Py� ��{)ع1�E��B�4|�MyF� $�O"�E�|�"�?*ݜ�R�~��yҧ$�ѵ-�ܯR��"q�L��G \ U��;![u�~�¨�=8���y<� j!��Y�Q�LK�V�(	�rs:2 ̿�$�˽���Ϝ<K��}� �!�+ �G#]�0 xz�+ �G#��� �j��⣑�ɮ 0o�F�ޅ^p�sw���������[O%tL����}G��a��@��B䟱���>ݻ��LB�^��%S�>��`BX]lf���+8w��263����m?��v�s�+:w �D��M}�x�D�\���1�m�>G�B�4�qۃ��2�@����dH��=L�R��ѱ��܁����6��*��g6���6�ܪ�;�ew�{�%:�:�5�tR�X�Ϻ���Y-�g���Ñ�
-э��܁.�2����y���[y�����
�7]��y4|�u�+�	�������)U{��Θ�2�=�蘆S�6 �ջ+ Ň��AT i����&���t��8[ՙ�QzL�8����^�a�G=��R�Ԫ-Z��MWBk�j}/�fۘ�&�� S,`���8Ѫt)�hi�:�o���UI� :��Z�y�G |Q�P;�j�g��Z(�jg\��	�V�q�
@Q��*S�+ ��} �:,W���~>�.�8!��LSn`Z��b��d� V�Ս:,_�y�~�g���+�[ �
�q:���N x� eV�P���3o�YvjG9m`N E�U����3�o��j�6m���|�(�v<� �S�u���eڠvr�-����[��2%U;�i��K�}�X�]j�8��y���~���$%u�	���IJ���lh��ژE��.6q읈���X��k'7m��ռ�_�Ł��4b�Tr^y{�H�����`�^1|	�f�&�ͱ���'7�;8:}c77�6�&������}-�{�-Vۥ���C7��>*��1���[ٌ��Zߋrv4�_��i�D��j��U�`�#!��Q��wۋ��"+
":���"����HI9��"�8��A�^kg%��i�.��|��rN�2-�i��Z-t��#�h^.�ZC�G�z?�Mߥ�i��jҥ��f6�0��FJ�2��t��(>���eB�c�=g[�J�2�����gU� P��V�l.����e*�(#���-�[(��2���< �t �
@):K� �|I�b�y< �t���P�,A���M���pg%�w �i��afK'��4�k�@% ���]�����'����J�� �[ͅ��$G�  s�,����D[ �wj�P���'� `��ή �bS;�� �G�+��'� �'\��R6�H�2�c|���t(�Ȅ�U���>�7�C�I��aZDE��7���6�(����lM퐣-Ln�ejGm�`���/��N/�q��H�v~�-�����Q�v���*�ۺ#�ډF[$�`�׭ݑ��S|��F��G[#��c�"eB ���ï j'HK0w��(�@r7�(0-���������2�=<>?�O���E<H肇��ӂKj�l����	K4��C��?]K4���q��P��&y�{,�@�X�hR�tM�O��D�R�ngRXr�L�8_��.(��h'C�ь�=�nuFu�3�rSM��U�A<����ާ�=W�ly��uљqLQ�ܸь����t1�    &vb֝7�E�B�П=46����[{Cʢ^�v�� ����	= ������=��gZt����_�o�����>|~Y�\;}g��d������1���:����-B���އ\�_�����Ԏ��~?�� ��/J�j'�l�������e�#����gڎ������Q;g��LSO��/����p� D��#��8 $o��*��@��f�@����G�i|x����U���~R�(�	�l���QcW�)VV��nfSh�+�Φ8�`���0�¤%��5��I�ѭb:��[~@}Vi��;�.7���w�3��#J�`�#Z�w�lP��ޡu�����eZ�x�K���DZ�в��;!�b�&a��
 S-�
@1�E�� �<V ��-a��
 S�
@ѹ#� �{��+�V �PL�f�  �w@1�C���p��WW��q��.��<�V��8PČ�k����_�O������!�9������m���E����%�uO��?��ߊ@�'PW��@ω���}V$���ߪl%��Y��8��Ff� �/]�|�0�g�"�xk����@+4��yA([	Á$�hS�ޭ�	�O�$*�T�!@��ہ�l���@AwU	��V��� @�������Y z���B�b�TDu��o���YE�f��?~'Dnm4ϋfM%�r��?>��F�b���@�O�s!I߮�P|Q�o�>�Ŭn5��e�d�S?`�V�⫢� Կ�� ��}��'�#V����H	�����c~� EQU)��J�T�ӌ-�p�k���>�*b��kCky�
�c	�S��eua�yL+��1]���S���~��P򪬬��Nd�g�zAVk��Z++��o����`ԮZ��IK۝`Y�O'I�_f�4�6��2��ףn� �Ft�Pf�Ꝑ�q{�&+*�$E�C�9�FNs:3Ӭ��B�����^�.z!�Uq���h}��9_Ĺ��� �v�%?�'@7�vbe~���w!��aQ��c���Q���X�mEe�w����¯n��	�<kc�'�D3�İ��uΫ�+�6����1ُg%� l��1nhB����6���&�^vf�n(��VTf�oI��1mdM5�XQ��Caw���]�T����9����
���'�ߊ��p�+�_� ^>_'"�c����ӊj�3�T�z�*��j�������6ie�I _P����X�N������{����}MU�� �7P�<3�_P�#��yh�cMAq~�h-t��M��^���ɵ-D�fM�Y�*�㹾��,=9���;M�n��>�@��������kn��֖0o�9fi���O�[�eS���W��er�ձ'F#ʨ���e[����U�'FÍ����O@��V�k�.|���v%��y����Rs���c�G���?���@�/���B��(���Q�#�`��T�&�5��T��Fq_
��T����j8�S��~,�������<��l�Ε��.O�*u^�r�(\
�NUjr/�K�ө�û��@ʞ�M�����M���@�)#Q�h�V�t�2
��n��=���yB�s�(9Љʜ��`(9Йʜ��_�Tߺ�o^�	k��Շ�K>��@'+�q?1��2����-�J�O��h9���Z-;��Z��Q�	Z���n�:A9`�Z)�Q�o
�X��<1Z��"W��<M���
'7+q��*>�|��4���/~�W �Ѳ'�n�t���H�`��^��1���1�iʝ?O_0
��4�r�=0c�����w�mz}��	+H�>^��	:a��R�ҹ)�=��޿?��<q��`��S�\��� �(���Fm� �(���>��QF�<�f�m���o/����VA%.׊�~�>]�Q*u%����F��U6�r_�z/8I��l��T�JFϫ��;k��7X���Ǟ� �KBR��a��.	r?�d4�� M���FQ�:G��%����?~�${�
謥λ8^�l�%$������Fᖐt���E��?+:ki�:?�Y�YKKܗ?+:=�r���V~}~{��z�E���J��"��kG�o���O`�J�i��^p"�
�N[�����p+(:S}(��`nEg*��ܭ�[Aљʞw�`8Yә�C����ɚ�TV�����>�xx|�����t�r���� ��\��.�Q�4����By��t�r�H4˨W�t�r孵b�t�r�'�,�]��9ʝ�Ac����	˟7o���@͆NXsda�j��W%'�b��(���E�+����PoV#:9��"�6���}�Љ
����V�t��� �Q`dC��p[
��y*��|Y	�l�����=��������{��t�B��ɛ�t����1+��-��"*�b���UD��Y�l�|#jC+ fK稈�tY�L�g��ݫ��"u�q�����d�z6Z�oOYr{��U쾕�C. tMV�'���*�k��=E݆
h��b�FQ���$KדQ�����d�z��BWK�����5Y��+���oJ�j5�4Y��?�`x�,\OF��
x�,\�FQn��&׳Qԅ����u�����@�d�z6�b'�HV�'��HlHv���>��͑���e�402Y��m��� %�u��(��5@�d�z2��P�C�T=��>$KճQ	C��#KՓQ��n��ϑ���(*,��?G֦��3�.>$k�s�/^�C�6=��^ $�6=E��o��MOFQ2�o��M��V�j�Y�*-�9�6=E9KP{����l�,A�#�ГQ\vj�Y������������m!�}kp�(}sdAz6��	 D� ݷSA�#ҳQC�#ҳQԉ��3G��g��U_�,COFQ2tU_�,C�FQ�U_�,COFQ�E_��<�6q�:0J'$�{/OV�'�����<Yy�o��$��sz}�ֶ��5��ɝO��������C[�ύB��'���5��jT�Q:?9�� ʽ<Yw���>8�,;�6Q��<Y_����R$�˓���jH��/�FQ7:�[y��<š�H��g�(	��<YQ���<YQ���<YQ�?6��`���(��*A��\nq�YX�[��i����d������(�2$ȳQT %N�, OFq?)p!Y?�m�\�*�d�x6��I����l��BU�'��}p�	���d�x6��jz<Y?����B"�œQ�#+��x�Z<���DV�g�8x���j�d�.Y,�m�!����Z-�j�,��Zj�AA�'�ÓQTA���Oևg��㠠œ��(� �A%�'ĳQܗ!���(�&�Y �mb\A�$�,
�Fщ�oO/�F6���p��r���ߦ�`��O�����
O��k��Q`b�H<��+`b� <�d!�x�"<E��P��ɂ����~œ��(] b� <�S
H<Y���&$�,�FQ�$�,�FQ��x� <EŪ
7<Y���)Y�Z�o��������q����d�whJ���xē���(
m(�d�w2��VP;����ԯ:��d�w6�bb��d�w��_]m'���&n�'���(�;]��_�ˠ.ւZO��g�8�����l���d	x2�:AP+��
�lu��Vēe��(jA��'�Rf�RÓu�ɨG�9P��ɺ�lub�RÓ����tP�����d��B�-��4������<�@��'���Q\4 �"���Fq�Hցg�(x�\Óu��(.�rOցg��c����FQ��5<Y���~S`E�<��\�^Óu��(ꦃzOցg����5<Y���눷T��ܿ�����p�Ԋx�<EuGsP+��"�l���VēE��(
^��dx@��rP+��"�d���"�,�Fq�)�!Y���8jEY���.8(	dx���q�>��u� ��r��zԃ��R�@��'��]�&��<.�"���FQ)T���;E}(���;�D(	d�w6��(	d�w2�{Z�B�@Vg��y�ݟ�ߖ�X �����A�J K��Qܦ>&K�õw��("Y
���    �	(U	d)x2���L$����(��L$����(
^(	d-x2��a(	d-x6�ڽP'�Z�dE�P&��l�P&��l�.Y���&v:(	dx6�ۼ@Hdx6����[��Y ��C�gx�,OFQ�&���,<E})���,<��g(W	dYx6��(	dYx6����,��@U�;(	dYx6����,�Fq�1�e��(Ju�f$�u��(*H���@օg��kjFY���Ѕ��@��g�8�@HdYx6�V9��~��}�u��:��m�@d�xl%.k�+�,��2�F��r�d5��A�J �ųQ�3�+���FQ�,�,�FQ���@<�ed��%���(���P���l<{(`	d�x2���+���6q�!���(��<ԯ�@<E%a<��@<���@Hd�x6��u�,OFQO�8Y ���v/Y �#=�q�@<E���d}x���M=�q� <"�2z��dAx6�nY���5$��c�z��PJ���l�'����(�n�R�@ևg�8x���xm��m�pު0���5�[A�e��(��&�ēQ��ꡤ$�e��&�&���@��g��M5%��OFQU�jJY'����?�)	d�x2�� y(*	d�x6�����$�u��(n#;�u��(����r�@։g�8x�����l�{��#����(JH࡞#����(
^��dax6���,OFq�$�s�0<��2�������fRC ��ckQ�,jJY'���.�)	d�x6�
���#�u��(�������1���u(���Ғ@V�g�8Ё�ɲ���衲$�U�٫�CeI �ƳQܗ?�U��(>�~{����L�-\/C�-�,#��^��[YF��=Է��<���2t$��#������H֑Gd_A5&���Ⱦ�jL"Y=[�I�0�d�xD�2�Pa���le��$������C�I$��#����
�HV�Gd+C&����V�JL"Y=�m=�xD�b<E��P�Ɋ�du�A�G$�#�����H��k]?�^��<��"JF��$����(�ׅ�H��g�(���H��g�(�jL"Y:���_P����l/�!Y;���HJ<"Y;���_P����lwd����l�Vnzx{��5F��\&���0u&���Fqo<Pg����(*b�:�HU�/FQ/hPg����(���$R���(��B�I�*����h��_��<6(4�T�x6�j���$R��Qt9eb��{����>}��KQ��i!��*M"UL��D�	Pi�b��(�/��$R���(�
�B�H�/6Q'
M"UL��})#U4���\Ph����(^ F�h|1�:�Ph���dT�1Ph����(�K�����lT��
M"U4�����x�4�T��b�{��$RE�Q�o
��*�FQ�j;"U4��ġ�D�/Fq�!QE��h9�8�_��1=o*�"UA�V���$R�Q���%�� �Fq�
�.�T�bC��K"UA��x�K"UA���t�K"UB��0E��H��/F1L��$R%��(�'J�J���P]����(�K�����l%TP]����(�K�����dԠ��T�D�6|1��d��D�6|1���K"U����S�F������(���#R��Q��HTqx6Z�������?_�鴱H����2,��,@�I�����_��*_�����T��b���T�x6�z5P��r��(�7���H��/FQ��uD�\|1��M��#R��٨���@�T��bu�AYG����8x���r�l5�!@YG����(F���HՇg���D��/6Q�BUG����(t��#R���Q�慪�H�g����:"U����DU�/Fq�!Q���(�Q!@EE�*���!x�TxZ���P��*��(nW%RU��QܮN����Q��^�J
-�*��(�I[+)�Q:=y�NX+)�Q:=�Rxk	C�Ig'�����!���YzXK�Q:;y\ļ�0$�tBB�M	kC�I�#\���V0$�t>�uhkC2�|T�q~�l�ZP���<N�,�!U�Em��z��(궱@�TAx6�K	X�C� |1����*_���>����Q\tn��2��(��-"U�E1�B����Q�{g�@�T�b�F����(x0U���%�D��/Fq�#Qe��Q98`�/�}�������@�P���#}��;�����G�����;�_�ǵ�8�4�?:�D�\�U�p"Y���v�N$k�%��v���dx6��M=p"Y.�5����<�O�_�� ������,OFQ��f&+�%�	r���dx6�C��,�ך ��ח����ys	-Ⱥp�*��쁡ɺ�l�[��d]x6��`h�.<Ž)`h�.<���04Y����04Y����� �Hօ�V�d�! 7�u��(*&@�dYx��JO�F�,<��# $�.<E�?���Fq���OFq���D��g�(�@Hd)x6��H�,OFq���D��g���4!����(*5���R�d�\i����Y.[��"p"Y���2B8���FQ�\N$óQS '����(�)� N$ÓQT*
�D�0<�0E��dax6�a�(����d5B.
�D�0<���H�g�7e���y�zZ
��,��ȑ,�-�0� j$�œITP#Y�����,�FQ�(����d%܈��,�FQgW5����h����c<=�t���I�8�,OFQ�r���d�x6������r�lw���r�d��)J�F�\<E��j$�œQ�M`F�Z<��$G�f$�ųQ�>R��d�x2��>�f$�ųQ�@Hd�x6��_Y.����W�����9*�#�Z<ES|DV�g�8x���j�d|( $�@<E��D�g���T!����������{z�~�������Y*�*��Z_�%Y5����㵾$��TDu��k}I2J���z�k}I2J���z�k}I2J������d�NS5�*���(��p}��Zݑ��i*�*�#TwH�n\^k�{�������7X��T+P��e&�� WȦ��L$YA��M1#ԙH��\!�bF�3�d������:��H��\�@ɋ$��r�n��I֕+� �5/��+�FQ� ԼH��<��X��+W�Ƙ�N$YW���(:�d]y6��M��D�u��(.*��I֕+d7�E'��+�FQ�H��\�
UA��D�u��(^`$��\![�F(:�d)y2����D�����-}ꏷ,ܮda�j5�I��I�+�J(B݋$˳QTu/�,,�Fq�)����J�l[�M����6��NV�G(��dIy��J:B�$k�r�k��I֔+�\�e/��)W�溞m�������'xF�d5�Bv��Pz#�j�l�6�d5y2Pw ��H��\![�D(��d5y6�:APz#�jr�U�@͋$��U�P5\�^$YM���X��&OFQ�ԼH��<�DqT�H��<š�DV�'��m|D�g�(t��D����(
](4�d1y2��M��D����(*K �&�,&�FQ�H��<E��Pi"�b�lu�@��$�ɳQ�@Hd�x2�K�C��$�ǳ�[����WHV��֣ڂF(t�d%y2�
]$YI����1�H��<E�c(t�d%y2�s!��E����(ꒃBIV�g�(�BIV�'��U&�,$�6q��%���-j��׭�U��81�H��\!�D(t�d	����`T
�t�dy��y�*]$YC��b�D)��E�E��*�W�j]$YE��"^$K�UQѲP�"ɚ�l�0P#Y4��:/)��D�U��j��cˍ?�oӹr�,!׭@�@�*]$YC��bn\)��E�E��*�A��$�ȓU�J
(v�dy����jI�g����L$YI��"W`G��<YEնHu&��%�Vq��&��&�H}�Pi"�rr��I�&��'��f�lL���V�JN��BI֕g��S�.�,,�Vq{
J]$YY��R6)��E�U�9nY
(vQdy��N
-;9��`t����I�m�*��4�    �E
(�QdQ�Ƶ�
nYT��"�`��R�\)�q_���Pd��n���s�AzUP���2�lǔP��Ț�d�0T�(��<[�ﭗ���o]���<폮�Bs���$T�(��\#�"I�?�,5�ȹHR@�"�ʓU�U�?�,+�Vq.T�(��\#g#I�?�,,���HR@��"+˓UT�)� H���9I
� Rdmy���f��Qdqy���yK�7��.�Vq��7�,/�Hq�P|���r�T'I%/�,0רF7R@ŋ"��5�ӍP��s�lu#Լ(��\�DQR@͋"+�5��P��Ȣ�lG�P��Ȫr��(Ie/�,+�Vq�	�^YW���
_YX��"^"k��5AֹS~8YS�[��i#T�(��\#��He7��*OVQ�����E��k��E
(�Qd!y���a��E����GH
({Qd%y6��Y��E���پH
(|Qd-y���Y��br}��і�^����"��u�Ŵ[�oݦ"C��庍HT�(��<[ő��(��<[�ݹPw��s�)J&��M+�N9T�(��� �H%/�,1OVqN9��(��<�5/��1�V� ������ep�^��jE�g�8f�rEV�g���6�,5�V�g���57צ̀U�C��<YE*��F�5��*�wN$�̳U��
e7��2OVq�+��(��<ő��(��<[Ź�Px��:�lwp��F����*2��EV��k����>u�W�d��i2ނ�EV�g�8/�~Yd����H�?��2�V�T�H��g�8���F�e��*2ҁ�E֙g��{�oYgn�s����E֙g�8Z��E֙�V#u�P���:�l��7�u�-N�E֙�8	
`YZn��Ť�
E��g�(j�P���rsm����������q�FH�u�5�o��L��c��Z���'�[������������K�%\)1����o�/?�B"y!W��>.$���ߟa7�k���+��/�������H�B"��<,���h߶/����|�WX�&��J+ˏk��?6?�!/��T����W�ҵK���s��8��`���+�.��ᤇR���+�"i���ߦW�F*S�֕��O���	@eH�z�D���^��O/?��*��r�mCYFUX��Oo�*M�k/�������M\�kŭh�>��O��"�L�ZU~�������ǩ�7���e��ϗ�Y�1]k���+ئn��ҥk-^�\�G�6E;�\Q2�������BeP��r���Ee��V@�P׆r/��
�d����#�bZR�ӵ�ngwbc�ʖ� ��ͷ��~�#%�)}+����~<t����}*Q�Vݸ���X�A%J�j��bY�<Mc����T�[�o0�}z{��ljI%JM�5����������o]Y����(QR)ѷ��A������������5�,��ʎ���d�v1o�'hEe�p˳���C��"��-[+*c�V������~�>C�n�9N��Њʠ��x�Ⰼ�y*s�֔�}����	w)*u�֖��1}��>�֊J��u7�˞��1=oCQY4��MZ���/��tF��J���F�/c�*s�6�_��Wp��re�u�M�����4�)c+��`�Tl]\Meɘ�[��qp���T����x���ZSI3&W�Ɓ[�MS֚J���婈��ZS�3������B�5�Bcnp�
����hl#>>�l���D"U��M��n���4�A����^ԆH�i	
�b|��L"���p�bCm�ܙl�s$;��u��_�bp�U�6D�L���9����2-�JKۋul��1��G�%*�1ُ�����P�P���t�ĶT���Ƅ]�ehj)GZ�(I��樚Zʑ�\q��樑ֈO�m�-�S��9L]�Q2��	J7}D�^�Q1�U i}��E]H.k��J=�1�ɾ1���%[Qj?�~2t����oYS�R��,J	9	��z�#\H)ٌNL���sa�E��LZ��:ZuY��S��q��{�~B�������ʵH��,J^)��/j6�0��^�ƤU5]��у�����"i̖E�+�ˢ�8Y:�7v�S��&��nZ�>����s�mY��ңqYT���S�N]]��N�|�^��'Ӧ�E�Diˢ��A{%�j����¥�7M�q�jrNoNI[�,�^�+�,*�m�<5bT�1N�&�.����v42�З(�.��҂iYӠ��Oˑ!1B7�&�N7��:?i1I5���|�֣/��b���%ƌ]����P!тOQ�4�M�(#h]�E#�Z(�LZ�R	�&nlF3v�ߋ�u�EQ	�%BGp���h|�����_��!��t
���6lE%���2R/?�����/��v{����1zJ������y�ԩ.��2*����"WmW6����l��*=4~�f��Iͮ��Q�=-�\��Y��	���d��Z1�&�iy�N&�r�#��}e�Z���F�|�XK꼲9���<ɦ3�C����>������oVf�<k����'���$��<ϣ]{ A�׸_Y9M�]���$�ؘ��J�D7u͠����q�Ckr3t��d���veɋ�sI$G4�Lt���\�}h��׍VF%������de��Qٙ��Y#6�O�M.Fr�f�l����r��r����l��$_���K�|.�c��ɻ�ͳ֠5�ܯ�\��]�0M�M�5��~J+�64nR2�?f9v��h%�++ׯnV���Z%�I+HN�ϷӔ<�i�eTF�>�5�ܯ�mV8�c��L�}�ON�ֲ�>�n�{%%��1�~e���ە��<�)f>� ӊ�	3B��vv���� Y~�خl�)b�eZ��9�0��C3ı�Ɇi�4��~��7�.�`f�L"_�}���$l3���U��F���f]]�@�h���>�!LM7${zO�ʸ�OI� �ۅ鴪�Ʉ���S�G��8Lb�մ�2:��+���sݔ��n�$�,�D���sr�T"X���aa�=�u���3��(9@JM/�����dT�+��h�8�++?��̋!�=C�~Q#}�1�_�� YM��3:��r\�]Y�0�h|��ɪ|��	=?���$Orw���s�2,���?��K7f�DR��)��7(�;m�g7&���~a�D�ve�0����s�7�s��c{���SP��(2��t��r��ve�ٙd��f��C�L�����E9�>������_��ꛕ�ݔ�E��a
�{oS�u��O9�R��{��ht�24����夓	����O��KA�0��o���@kF�_Y�at����|��d�N��c:�s��4�a������3��˯�ە��-m�Ĝ����.�`�8t.�qҠu5ݯ�7e?O}�������n͡o�m�U�����Χ��a�l4i��t��Z��!���m�(̬T�����u��r[��ʺ�����UZY������F��~��lZ�����6+��7�ۜ���rƹ��Q�ث^�!n��
0�dە)b/�ƚ��+ �F
Ke�_��GM�N�����mW��%��~c��ƴ��ώ��Q;�� i����W�&���I�B5}����t��y��s�'���>�_�9'�)�LL1�g�Z5q����ي9-yT�mF��m�G�5���!M5�t���%�B�A{�gX��~Y�-�q���M��:;uS�&tZV�˝=j3�4Բ�Pn�Q�9�ɣ��E��xS昦YJ+��سyS~�&$ZVV��R���|��ٲ��6�h�G3����z�z B˵0�y3K= ���4�-�)K���Z��4����Z4�ݔlq��%����-9G= ����́# #n�n�����i�ټ)
v��Vf�tvS��' ��J�~mH�' �,���M���� �J��n�Oh�����}vӻ>Mb��L�k}k_�i�ee��s�5M���̡��M/��9�6�o���[-��+]�k�5-� �t �/N��Z������W:G= ��M�a�z b���<99�Hצ@+nz�q��V�И��|�' ��J���W
O<ie�¬ڧ O< ia���M	wO= 2 ,iܔ��� [S.u{�������L�IA��%5���    ��/�������mů��<>�/�x�������h��5�g�ӯ9���?~<M�c��������0�~�����������~}z�}������_����o�/ߧ�*,į�O�D^����c���K_�����ݿ�ۺ�]�f H���I^��g H��[:&����+ B=�ʝ�;�ӹ�~�M�o��*T�H� r�I�%@�0Lo�Q�S���5��B�6WF&�=NQ{%�c����,�o�h'������\���e�����M)�u�P�haH�V���q���]��`r�6}@7�"��a6b�����%�O�"�O�- �,��,B�S��a�(��Z�\�q_ �?�N��i������A�Z��ϙC���>�W����
�b��P� �|��v��Ho�t	��)��q�&�~?6�@��	 ���OO� ��<�|{|�����C��H�^��>�'�ǨV��X�C��	}'�N۝ѭ8������Ƿ�%�S�#�2���J��"�������Q�W�<�
[�aad�y>��/O�Cn��s�5���Иθ���x-��b6��E���o�B	;��8o��7�HFΘ��;�[d2�/è^��c��1O�NFj<uǖ����ƹ���D�q�$�05N��J��i��?��=�VVN������ R-���{0��_��P�;�N��1m8g����h{���{��Z����a*'+'e b�W�Z^����!RV� y��*������ �[���7$b��i�W �l��T����Y�_����0��/:!��qz��6��;�[}޳�	@׆]��� IgFG��������Ϧݏ�ո>Wi��ӱ�̨����{QDɓQ2L��J�y�;7V� ��� ��Qn��		��+�� %���>�i2�6��I�36A�}3x9�)�!���(E:J<��7 emƠ�o�A�\ܙΚ�C����;�"HJA��0DI���7b�ri#s5�862:}�hl�(�)�(�,���
�!J�8������p^�Ҕ��vV��|� .o���@aR�Оϡ����x�x��B�~]���ݞk� r��)Qr�j�& �%�1���@*/ `l]?�=:	���lE@�"u��SxF��@���:��	L�@@���W�̀٥����L����);`vZ��|� OX�q�� � ��L�f��EXH1�ٷ�+T`��ELH�Yj!�}m��9��pѤ���eK<�-̸���H",��L+C�/����ӪU糺8����{~���������GS��L�zu���c(�}&��i!�E`�xP|Z#�=���֠��Fe�fZ�����x�C(�l�öws�� �hP|،Fh����p$��
��j�ΚV0��-���������'�t��>=��k9n(�j�$]�w����{|��H�Q5K���|.����M%4(ީY����CSF��f4l�*���_?��+��!9�1߳�|�%O4��|y�����Z���L��|I�[��H7��R�h�iA�G�HԵ�Z��y�� �G�cz}~�~$���Ꮯ��հ�P���R���"�����a�����KpX����H�����_� �x��F�:��t��Õ��R<�Cj�"�s<�0P����G�k�s7���F/=N�d��X��zPfPv�}�ύ�o������&����o�ߟ�XP|Ukv*��|�%[0����/�E8H~���-�rb�÷ח�eB��h]Aq�q���=(>��KJ5�[u>A�� y�K���7u�����x-��Hn�Y�B��P�p�L�����T�B����3d���������{�zu��n-�>$y���E0�3�{0\:)���˷�����XD��/�#����	"�{�������ߑ#��K�������ջ�**��;�:��Rģ�3���y����Sy�ԧUW\�6;���S�l�$���n�x|�_�*�P[u�>^���^߮��*'��q��������m尝(��a��+�QV��<���aXޢ�@��8"��CQ�p��8O���cX��Ѩ�!�E��A�X�sm�$�Sh�_(�/����#�N��}z�W��+�*�c�@q5������b���)Y'H�AD�8�+�P�����*���W Dl��d�n���M�8��"���mu�����W��:�!��Pt_9�����M��g�q���j��gl���˸����B�
�*�v�`q��>Rτ��&��tO4���"��t�3��G��g��Z@|��^h����ӈt�3z�����rN�
��3����9��Do4����WN);AB�Z���r�	w�2«ʩc'x�A�Ľ�*ǎ�@��+�E�J]��Lq5�W��xf ����Df��cq`����\ ��å4T�Ƚ-w X��i(�.h�r��4T������P���@�A��z �$��Ԓ�7~5�W�X�dD��#ڭ���%�Z��������N>J��L.�� Ib���c��$�����/Ϗy��S��ElbŒ�q��ʠ��ڃ�Zi���y�_^Ku��0MoFh����_�~~~{xM*�R_V�@Q;!������9y{<t�w�������*R]}Bö�n�c���� ��	��*���os�	�� �l��-<w>~����}���!��5����WU;���;x���FyS�\҄Ch�@*�:��u
�#���#wP��V�a����(�V�Ak�oO/����0�i�DhM��a�4� �#�N=�0�i�n��������ky��"�kڃ���?^��Wa<��Dw�v��6Z�0�i����2�M~�k
a���
�?��yb#�aJP蜾��f3�n��V��\��˺��q���"�Y�H�a�`�� y�hi�2$��2]��A���RYE�,� !s���B�o���0�mO�&m����`U�,�]t`�6]�@���0�ne�'49�k�ȫIO�0���e)��Z�j�	c��N&T�Q�_������{�~U��M�Bp����`o�V�:�C%��z@�'�n@c�cP�鄱����Q7�W���� Q��#H<Yw����!��oơ׍�V6�������)�D��������O��#�ӓ�;�R��8ᛘ(��~Ԯ����.D��� �|z8Lf�B�F�F�vH�e�&]b$��9�S�볲ijH�60����E (�T��^���,%,LxHՆ;h��}z{��h����u��B-[�2}���z����;��Q�蚮�}c:��؋��s�)� Di�������Rb�3�$K�%ʶ�i_��qzJ^���x�ZJiTF���i�5rTWC)�����)O|Z7���#m����i*_Q��*����(��]���� j�խg����U{� ���j�2�r�=j��%�jw� @d��	@uu} �G�5L�=_�D�j'2�d���srr��7ʧ�����{���{~�Ǖ��ҽTٹ2K��gZ��e1��*��=*?9���y�@nRS�ҽ�`�%�W�����_�����=��_�.*�Ԉ!��X74!��q�����E,�U�u�ʥ^L���ۥ���`sy��5<�_�]j���r��������U��,hY����^�N�2	��*�u}2*Cc&'�.�1f�b�'LQ�W;�g��������f3(76�0���s�L�l���Qcg�y��I?G��jy����E�l�ޱ񬮴R��[;!�r���XJ�,����txR�5I�Da�f�� �!���">��O���	>����6F��ԧ��m�$;/B�P�C}��ëk�)>���3ch�P2��\ӧ�h��6�&�/+�^uЧ��a��\3uY�b�h�E����N�����&W|/��2�/.�^��6�]c�A7}��fD?�)�Q��L��	�܀/<_�l��#ڃ�f���'�%�v���#H6���w�Hj�- I����T��Y;�hE�%W��곒!+4�^©R�;�u�x��8u�D����Ym�    �5��s&+���)j_����}�'2v�M/��^5�"?������
'&)�	��D�ӽ����ל��u������c
J:��n���Qz�z;���P��>�
�O���ym����"��O_��WM��g����NwT���v�_y�+7���k裡����I�jc0W=�i�1��`���*�\��vu���R*s�@I�����a4�>�K_��?�����-��oݣZML��|��'�M,��d� 68}}%a�B�jy��W�$�%-���{'�2k���L�he���fM�2��rZ:�YLR0E ��*���Ӷ��-�1�IX�S��ڷ_ۯ|h����8�$�Ϋ����d�fM�Xm�$B��;�χ�C�g|��2�6!��J�9o�f4|�ɺ��$�)d/|hi��X�i��DU��|�	mt�iL0B1U%�GI��@]�|���93����O�l4�r��r�ɡZ��(I=�ZG��0*)��oKR^6>/�Q
cCF?V�(��Ӿ̠������>�1)6E�$m�7y)�iPar��u�l����"�ɞ�!��R�_"g���4��)��0Dơ
S־��Q�[�t�̦t���4�SB��8�{��_��_��O�T9�+꼀T�x�h�9>shy��Ve�h�c� Ә@�dkmm�Ց��G�^����eQ\�,��(ee:P�R��t�T��͢�F��w�@}4���K�V4�; ��@&�jD�|������*�Ͳ�F��X핀������{G��2�
�Z�Q�Ʒ����+�����}��7i�9=����P�D��,HL�ʉ·�-��E��Eו љA7 ���(�h/7���/�B�VwW��+a!`:N���N�,��?����8*�E��Z��d����� u�TWɲ�'�F�Q'PUɲ�&y#@�$yT$����� :�u�H�ͽ�7�TՀl����	��X6������%�D�m�	��6%_�I��Y�ٔ�f�g.L��i��E;ʡ&PE��]�%�ap�e�t��3�efP�<�v�)T�B�\��C���D�ha
�fҏQ
���Ť���E��
��fD�"����B)�����P�͗�ΖV+��[�4�/�(�f�'�B�6_&IZ9�>�v�G�J��<�]�V����"�5�٩>kM��@U�fD�=f�h>#�\Np7��l� U�I�2�\J�^x��?�>��P�j�u�hu�E�#T�{ �f�@�@㹹����IH�Y@H�1���Zc���!��9�vE�ZSM��K��_��Oy�<�[+xMzS޷�>�6�V��N��Ѭ�������n$���Bw�ۧ&��j4�� �;{m5��A��ެ�5V�'_{�Vk�{.gbUXA�9m�:���:݃8�c�#E�V�{$'���㭆C�,NP3ߟ���!6��a�[�5�=�ȱ�[�Gх���#�M�v6���|�%͋���r�.EW ��5}��Z�HD��֨c<�����E?fB�Q�JO��5P��q)u1�sD�_�hZm�3��ʙ���OTQ?Q1ϴ�Ɵ}�@�	��t�.�?F�>���g�W�wA�	��<�^P��!�op,��B�����@���b^e_	���R�w����1P��)��	�ն9`�h�K�'�ys���v�����8����j�s�Ӎ�	��n�=G҇v�1ד�,�j1��di%��ޜ�T�v���0�#"�Aҡ��+S����.�a6��A�x4���=OU�[�P����;M+ˮ̪�l�@�����nW8�;%��c|��6�2�5���AJ+y���l�>��h�yK�@�7������JDe��I`�ʯ$H�.��(K�p��)΅6q�!9&RC0VN�Z�i7)�l�̩jGt�ܽ$��|i����6��~˿�2�\�g&e$�!�sZ9=�|�@j����݆�p�Rf�)s��@�5 �1��B+Ot\���x�Ѩ	CJ����=F�.<,��h���ܡ/(N<6�|=F���g�֫���q. NЛw�*�R4#�OdO�&p�-(�*��|�ciB������<74D#�u��*�LB��e�cũꌡR�>�;��Q��ö��XEZ���,{k��ʴ�/?�&o���<4"��h�8V�,�O�=�L`E�9^^m� �����)-���K�#�K`i&B�^����C�	t��M�ը=����4_�E�=A��%�G��,h��>���fT���|�1P�c�LpQAW�c��e��p��cj� �@9�8�=g/�KhF��z	J�P�BW���v>�rZ@}�ښС��$�~��K�J� -,���ɋ������Z��W��Ǹ�TxU���Զ�e��� ��	���F�J�~�pw��LZx�z����e��@!�}4wA�)-(�I�H�R��~��]P>J�\�:]�� q�5�.=��OZX�`:����4q���h�]P�J��
�.(G�+	��l[�Y*pdg�p�W��ܖ�<��vW�:��h�<�����P诏�>�_i!A��r3wA�+��'�ۙ�Yi�p�+�#G+�fiAr�B�.5��XZX ���XZ�����\P�K���ؑ��\��$NAe.(�:~�J彴�P���{ªшYI�������H1U`
3RL�K͵p#P��	(����!���F�6�P&W��!�oұSe0��j.u[5@���K���XL2�	�y�����Y��#�ޛ�Fo� �`,0�h�����_��c��wAm8/̘� �V����U0�� �<����� ���	�`w����4yU�Dq�������Y��!��E%��T�G��B��X�������� ���z>��`D�C�T�I(ϗ� �&��j���|�������ǧ��ݯUe�0YSf�3@���ښC��L�wJЌ��W�N�q��x�F1j���4%�=�����}�R(��B�Q��hN��nAA?n��D�\q�_ǚ��l�r��͞:����AЏ��]u(����� �\�L^$'(Y��By�,,���ں�P�.W �Oٖ�:��˂��%;��P�.	K����C9�,pN��h"�2�Y��`~rSK�ff�N0PyW eSX�Μ��{G«Q�'�L�ݳ,4j��V��l�-��n�Q�@׍A�@K�C��o����R=T��('�
�˦#��2�Y8x��c���Q�73+��ԖF�,H�ٓ�j��͂N.��?4���
���j(h�΂�������Qj�)����味`9��EK�C��r2):�����\�p-,Np9����2��(t^�D���X�\q
�yG����Ȩ��LLm& �/��B|�\%m���q���fn���)��ĉO���X����oí$V{��QN/����3DY'�R[3�SavF���B��}��@���F��,�s��U��[DG�{��Q�-�I׾��eв  :�w�KT��e�	?�s[4ʅe�~��M{��B7 ����H+�K�L ��D�,�%PUC('��v�?	��R俘h/�NE��LY�S+b�A�B����"F��\	��uE�rDY�S��P�kuI�r>Y���)�Q~'⛠��Q�&W �5q]�lLD�vf(��B�w�hG�NQ��(YP���E1ʕd&@|�%1ʊd�~�Ց�$F��,�Zk��(��� �i}UI��Y�O
���2� ?��*�Q�"�}�;51�Jd!@�]�NE��YP���� e�	h�YN*/z\c�FM"�=��e�rc��"���IGV�u�sN1����0M`c�f�ef*�R�b�ڊ�ǘ�0� �A,s:*�@y	b�4UѠ�)��%�.�ǡA)O��IG\ul���9�������N�o�zW%�F	�G�k�a�Ġ����v��0��2��6�/Y��$p������*�8�)�`v��4�Xg,'x�:����ۧ�&����Uќy(Rrc����� ?��R}��*�3O?�잓`P����u�i��`P�t�B�G�М�*���v���`P    �tA=y�iQjt!B*�o����;[X �jrN��gB�����`�:�}�spN��+Tg�.ms,^�:K�C=�b%��$�w�M�b�j�A�(��EL땕�I����D�݊��&�U�e83I 활���2��~�l3�C��,N`%����<uf?X*�B�uJЌ���2�[g�r���g�3�8A5y���י� ��ђ��Lvf4���f�8��������e�8��:�_�|g\i1�D�p[E
�^eFr�]S q"3�ae�@��_�.s���[i���:g���ᰗ3� n�������]E�Y�-��z�|���}}�|���ZN\��c�|��A�����l�.X��_^ݓ�������ݵ"�3ꚁ�@�5ԊΥiAC�|ٮ�5�L�T2�@Ncp~M3����Ԋίȗ{o *M�{oQ{�mp6E�����{	�T�/s�F�h`��綳��|�	��ᦙ��%���Q��_�[h&�:N�/l%�k&�a#� R�H�B���� ̂VDmPoj�	�"h%@���F�ڋV+�j�F�6�� ��V�Gډ�0+#�5� uU\{Io��+O�4���F�4ᅀ8�"B8 �������@3�p@Z	Hꑰ� �f�،�/�#i� c�^2p&17����y���S��	�C҅���2�x<���W+"Z��_ �@�3����ʈyޤ�+����G_�^�^	j#T�@dG�S���h X��D��A�Q]�f.L�<�������՛w?�~{�����=�$�����rs��j|\#�{i{��0���ħ��3=7���K�PMm[=�.$�Rw�zr���m���L�c�����@�������L�.��#H313�� �)+���',X�r�����F�NROx6VGct&��˛�^� �X �	�^�Ξ<F6*�+e:.���64@�.% �9*)��6Fr
��X�06�a��L����F+j��76�;%��c|fc�Ȃ��M<RZɣ�/�ƚ配�=ם!ڐ�s�ZB]	�iZfɷ���6\0n@3��3�1����r
����,��&��OV[͢f���yKju&��J�<�K�����j#��q�z���Ĥ�bj���:oH�9ڝ�j1uO�z�f�;��b� ���hwN���=��wv�ZL���"�zygwN���=�Vs��V��{DG����i���'�h�t�����Zi%@}	T��
���aXo�Ѧ�.�B d'����z@
"]��H�_��h79�5�����̅�3?M9�v�CJ1�^��z�rc�������
�_,�8h�f��a�G�x|�#�ī�´�
gD�,�e��m�R^E�lSd`}d>��ĭ�&�Q�죌DZ�Jw��m�W�Q��1���ߺ*9�� :�F��:Mc#�=��_o�U(�اxO��&��Fu^�ݺZ�2M���	�
�j�4�m�8�������s'L{G!���:�/Dt��jdt %���n�7~�������VG��*)������VF3�K�^(���s�Vע{
@���^�\I�ڵ��4�FE�<�&U��դ�ˏdRdZM��y��#��xM���s�>y[�5M���{DgV�iZ��A��F��4�3��8�Xv�LlurzƂ����f���=��.��5[����(N3�?8^�����	
>m�5[ݝ����i�f��ӕM�^-��{�u|���=�6��:��K�
ѩs�t|���=C?����nE� �2���V;�;,�֤��2b���=	I_��R����,NP*۟Ѵ�l�!���Ѵmܣ!:��XFc[m6�I�_#M	�muܸgcI�~XBc[-7V6*'4�5�ބƶo����ڡ�ƶn�CQ���VBc[�%�9���j[��V��{?Bjg[�F�A�z����ζZ��c!�X{4���f$�,<}��;���U���@�jZr��~9uG>��]�ĉ*"�D{���=Z#��д�\��2x��ɳ;�i�?��!臔c74_R�'�.m�_3�@��ݼ�g�9��6�Z��q��,�紸�*������ͱb�
��'D[�1qy�@t�˱�b��
�8ZALc^�y�2��˼�p����Ę��yp��bL��;A�hGi1�y%q����4���|�C?�6�F�g6�쀭����@�z}�zhm`ekBi��Dm���_����߽����U��nX��Q���j߲������T��'V�$�wʞ��T�Jt�wS;H ;�$���'z"&<�(����=��o,臊#�S#ŧR���6���,$��d<�Q�곰8�3�]��>/(�W5�y`��Z��nX-�1�?X�o�V��O�G����3	Z�u�w���pƢ��]w)[�,N5�߻Il9X��X˽���3��dǵ�|@c�	.�ۮ���LOpq�t�&��@��! ��|{��ZM�o��	F-�J��.�s���]�>&�b~�OS��sC�����n-]uC���L@��t�� �G{Y���7�������u	�0^ L˔?k
�;J��*(H�Vא Dj}(	=/8��Hhu�,:.�`�$e���� @4e�h��8�T,�!���dbു� ��� � @4��Ȁ���bd���<ל9'�)Sb��Yx@��X3x�X�b�`1
�Ҥ�8
�0� >4U�H�L"&�lF����1�}���(mͫ�� @4�I\�)傁���!f@��6�oq�C��� D�p;�NX��ͧV9�l��5K!
0QcU@(��z�;C����Jck%M�}'�[��j�A�ZI���ͮ��kQV��}�|����CW-�OtR����frhQ�U�����|��9�Z�Q���Tu���럏���~>�3��ټZ�����D/���_M�P~S��Ӷ�����ш��[�Sq���5[O���Z���Ӻ���?�J�
�t �R�(ר� ч	��ީ��� D�#\Կ/��X�@=	@@-h'B�z@�@�;E��zoD)A�+�9�]�{	���/p�L�i5+�&�)ރ�6���娽S���1�\��1�`cdO��V�X/գ̮2�:O�[g��AMT��G��  �d%�9��H���o�?����O�����~`�ˁ$˂���4�뤂�f[�A�3$A��~" �i���}_��Cr�MC0VN�z!�2E�l��$����X���=��%�j���2=�ߟ�<gi��Ջ������Tl8���>��'�)�o�����=�Jd�"eY�|?Qå=71eT�|?Q��=71eF�|?٦���2[��lC��M�C�-�O����*�C��-h+��]�C��-�O����.ʡ�� �r�U�r+�_�I��E9�?�@�P�~�
�-�i��nb�,Ptv�Ƀ��k�~�i@�@�{]?�t��;��������W�`���Z���o�4e˵|�#-��i0j|���DM1w����]��S�Tڕ��u-�O�Cig��ӵ��	�% j$�B��P���p]?��ڨ��n- N�M�Põ��6� ��Z ���z 57K�\'5�4`�DM�R���&��
�$�����S����B�q`���ٓ���2�v�g� a�"�^ʎ��ܕ+������<� Y?&�����sڗ�Y)U˥Jb\���K��x�d�'$�0��q�y�'L�B�8q^�$(�$�;O*���Q�#5g����0洚XM<�<i7T�`�e#�-��E���`SҸ�E^37Z���d�b���4n�d�ihu�~%�TU�{LQ]���z���(��&+2q���㰫@05���^o��I����Na����v�����Qd� �:�jR(I:��Ŕ	T�@Iҙ ͘pPU��R� �y��� hԷ@�1������S��K0x��x6��ӧ�vo�����wƪ< ���y�,�o���>v�0DI�AӬi�T6(�L@��Ո�僪U�mG����ʋ�w�?=�z:��D]�hR�x�����
s7�@1g[,��?ҸIS�[�ؓ����\"/<�    �C�ZL}o�"���M%�����{�����B:����h爋�C��,�>�?d#��yA�i�<��nUD�5Ou/V��M�������6�S��UE��1�Tg�U�z����^�Rm Ě�:����sD���6(Ǘ+�q�p�`el�"�/�cu$���������Y��O�v��P1J�%':�Y��M�X�ev(������e��{�ǒBp��α��&����fi
���{�Z�/�K���bY���]q0wD��۲�6�ZԵ�L���V&Pm����+���@�1�aZ#Do�n������n�`����y%@SZ�T;�7r!�iVEo����y%@�H��mή>��YF9�d`:~�7�q�j��ע��*s�8Np;�EL�G{z��)�	o}��(K������~�M��ޙɔ��4�FS�ʞf�At�v{��GU9(�#�f�ʔf�p�������g���1͂�L�L�R�D�����\k �chK����J�>�=.(g����������G�?tZz\<����N�>�P�Ul����eg���|S�>���Q֠`���<�9�Mk{�N�݄u����N��k����Xp� �lw�x���B�Ѽ�<���Q�tW�A_����=ʬ�<
�x�٣<��s�׬�tؐ��oi���N4��.�kcb<��G�������Y%�K���Lo��,ѻ����̈́�˟�;M�"f/��C#P=ם"z鿯=�#l2����%$������!u������bP�����`��,�qʏN^����k�c�cG�"�1d{3i&`/�h��� ��P��Uѹ���k�?_�XJ22�>�(,�=�h�J1��=�>�BF+�>ʛk���4�N��,�k7�^bT��P��ZK6>';2?��8ü��*/�T��@X]Ѐ�<ѹ{Fn
YԅRbk]�L��M&V�c1gy^&Ӡ@h�r��i�tA�Ru��k�����Ae:���LQ\���p�oQ2�����HRx�}�^��l�Pt"��Q�l��K��c1���Ց����p���ƍ
��h��K��4�"Y�bD$5�S2�&?��3��"�#\�J���Nm���H���bt%����sUюp+Z	}��e��a�����A)��%V��4j�&=�J�zq��^Mz�%Q���p�:�z|ĔG3):�hj��0�L@Ɏ��#V�
S�\�r�x�ן����b�F���? S��{�
�N S������^��<��p0���̘�xڛ�W.DG5����P����F�y�Hх�0�2σm�wu�M�-��V0�Ri�x8 jM���#d:@J�>�IRcd���D��Fo��	�e7F{���	�-�>��PWZѼhh�1F�B�PL�>4Sc�����h9�%mg&4�"�X.Q+��ɹ=�)s��ܝz)n�����
�CjsS��r�L�y����o�=����M�����Rj�s���[fR+�tN>��R+6.�"���d<?�]�*��R�6�+���A(u�z�:��s@��(y��z�̙�;��R���9��f��5��6�!��. �G�*I~�|�r�A���a�i`n��-F�����
W)�+�s�iE���>���C
��_R����ԅKy��O_>���ʿ6:a-�x��E?3�ۇ0���;__ ,�f(��'�^���,F�.N0�����m*'(8�Md1zv�q�r��##ig.gp�k�F�.<�ur왟���	:������օ�	�Ȧ]�w������A� �0����'*;VY���nxv�x���
��S`�_�G8]�h$���m� ��ZI��d��V76�#J�] ��jeCt� �	5��jc;q������Ս���F�aw�RP�)��fW7(������j�Ak R[֋�q��.��.W+��ζ������{�����]Lh�0��R!6ȡ�F�Y�ũ�7��I�W��N	�k$^�JI�ެ�dx�*O5�a! ���Vy��E��476����"I�R��8���h#��PB�4v�2����8C���2��ü�	�:�Ҿ�^g'��K�2����h�w8�>���B���%���@	ؙ�xև2����%�C�c-hN��qGևr�ZH���-�X�	p�p��>�a��F�?��g}+d}�O�bw��r�Zx�|�vLף<������I�~-P诎���j�́�#OL҇2�Z�������e��P��"�=�X��Y�`����e�� ��>Z�>�U��}4;�>���FЗ"mI���Us�BtSҧ��H����O!ulq�>���I�B�����X���j�@�u�Q����Z�����.��r�ZX�Gq0�QHI+��A�_�\� '�"n�(ۮ�	��w�|�}�B���m"������Z��G�z]����E>��+���o���Y�h+,N�%o_�l�������<{cwH!�?Z�2�:�^9���,�*�u���eѵ@9�=����̵ �A��P&]�X����P�\	O���-�C9t]��)M9ʩ��?����9���޼����.Z��;XB���0�+O����~ח�!�����CQҦ[lA�?[H����|���?���z;~x�z̤���c<}_�I_R�����{`�q��������\�/[l<D��*�d���2;Zc�(G��&���:'���OLZa3'��f�#7 �tQnqxN�޾{n2#&�|��cF0&����_�+ks���$�������բb�LO峦I��=g1���5n�Q��6=�tby^G����8�+��A� ;�<}���],_8h�qKm=|���08Ʋ|4K�$�&��28����S�:��_E~��zC{�s� ;iy���6`� �Y�@Rư�)���.�Mq����2��0��0��r/���7�𛫡��{��L'Ȗ�а��!̸L/T�T��#��yj77�42��Z":�NY_(�8D?l�,#CJ�6%ޥ���,�@N��'6���OZ��%�H�)N-�|VN#d�$�ј��
���(����&%�B](�<ϋ�6J��y�x� JŢK��<�aK�"��2%�K��u+�ތ�+|/���Z����\+y�����[�(�8�43#�e�L,xo�|R���a+�q�5� m:�w@}�^q�F��<4�&��bګ��b	�;E��2��-i�0�2�۵�_)����k���`в3@m9|˂��)$��>f}�t)�;ņ�:��|�:��_+�e�
!^k�}na���)q&&��M�6&��\r��aK�"|�f^����︾0�w�89^�q}at��=��S�J��s}�����h}y�����NSS	���J ²�V��l`A�Ĭ����]��.�jLoR3.�; W	��)�!*51��f��a^�c����ܸU��1�xY]ґ[^߈^�;t�8ɸɁba>eh`|t�Aj��� ��V^��Z���S�μ�Z����Ր�!��2�s�Y��ڏ'{���z���O�I�{�1�y)�iE�8�Fx�1&Ŧh\��qf&��4�0�a�W����i��G���F��K��L�!���k�qPi�_�3���XHc�e\��JԾ�Kp�P�/I�������5~�u���O� �Ƌ�}����
��@u���w�^(1>���D��\]s:ڞ�����������Tz'����,�413�aL9�;�^(u?�"�+�=חŭ/); �j����Rڍ�1�O�)���`^(�L�ZR�?n�E����_���іfz�V��~DX�]xA�%΢�rp?8�b�T�H�,/5}
>���[��Pw��:��߃W{�=���Yj��똁WҎ<	��C�ߔs� *�{!F��4�m@��u[�O�{t��	�ŝ-���<���pj/������/@	��U�F1��d}�"+x�'n�5��j��.�o����/@�A�0r`��A,�h�z    �����O�
ʒQzAzf9�dP[üˠ��)�W�k1n�j�P�<$�&>��Q:�$�5��)3g.L��i��E;�a��ko�YAяQ�zC�����pڳ��q�����{l=���$׬�=toE���l=�0׽P� Wb�.+
��gP��J�/��Ո���k���p��%wW���s��n����2�:�4G_�!�ḷ�������th���󱙏��|��L�!�K����j8�}������ǧ�����$b�)�`�M��@(�82��?k|R��BR�3@�=�5��8�V�ӧO������%֘����/���`�y�t��qHI���}����WB�ҝ��*�<����Z�]R�")g���5���r�4�&�M�T�v(}&b�.��,�nd)�`�aT��ĴH��E�ת��&yЁ�V�^ �^���4�XvF��:�
�L��4M�A����� ʧq�tJ�4~>9�*n��(31x�	�̏i�X���$��-��|f��7��JY^H��Q��Y�c"�IU��Iޕ��H����G��NR�\�Mxɂ-�����D��ʧM�>��IY>_?*�2�<1�&�O��R�kУ���AW���܅���4-<ϗL �U����,�Q:����~�7�>�C*��,<�OӐ?(*��Oy:��*P��;1��O[!�ZV�����`C�AH�9o�����|��@��i+ ?�C�xG�g�@�� )}�����Ϫ��>�Q�y��#ǟFW�g|�������� URl|n�;|Ƈ�>|h|֪��|�K���Z>�LA�Q�1�r���iHl��W~(I��F���G��]vܐJOH���>�׮�r~��2�6�D/���w��U2�*#(��7_'�HW�0 d1�R����{�����gZ%у � ��CE�%_�U 	@w�h#�m�W�� ���O ��i����8q ��� ��T� �7�7ǿv �*?_��@�ҁ3 E\Vk7�g D[�V ��A	����*� ���� ������
A�	E;�A�� ��u%h�J0дW@]Y�� ���B�b�``�,�,V	���-Y U!d�J0�^�f��]'9qPU��3 A�"VU�� �:��R	
��;SPW�� G� RW�� O\T��C*�@���spB�!�`@�Y�rH%X H�+�*�R	 ��1XB� �O����� �����H%X X�@U	z�T�6�c@]	z�� ���J�c�`�i�+A�U��3��u��X%�� �J�c�`ywL;�!�U��"�*�=V	��ٜ,��1�U��&^�)AɱJ08����(%�z'^6���Aɋc����{0�{�&���������.�<Ty,GsC�񀦁>�����L�9X�O<'��A�/sS*�nF�bR1p]�3������z���JJi�S&m� ��d�`e�FŒ���P�ےc�t�MmCi�Y�	e�Z����*�*��2`˼=�iW�JٵF��	�FKݵB@p<���V��ecR�  �|�&%o�S�À��B�	oX/������je))�fh>#@�*�5a���w����a�������$�	_Y�:��������+�_-S�v�x�~�i��j�J�W~ox�?��ʯ���>�#"�l�+ �3X&���Tib����;f���ƍ��^�vm����������*�5�J���e�1M)��,���AL����{>90�Φ]}�lHE��5����X0�5��� $��i�z��S�~i~�ug�0s� �����ǹ�'�}��T��5/D��<ѷE�D�woK�;l��d{]s�A�����?�>�����ކ��o��U(�7�+����P���;��߿�X�Gt6�=��}�w�^*��R~�B�è1ƪ�[��сg�D�᷏O��R�~m�Q4���@އ�����Kx�)�=O��T���hj�{4oߕ�R'�Q�	�gN%��A���e�{8�C^%o�A6XE��<������>f4�͞���J[Ou��=��������d��|Ga5l��3�)�@O��>�7���5�U���R��?�
����$=`l!B_�͈�^3�c;�.�>�������\�Z�\V
 �b3�Tc��ŀ�����^l^x�Ju����
V���'ƀ��Te�c������\b���V��кToɌ5R�
���9 �5R�"����rc�T����qX�k���Ё�/ڎ��V+D�';�d+���B��̽(�*���
����%իb@��'����8,F'�}n�y����G�'�
p9P���-9�Ls/��u�[|!,�n'�yd�n���	���:�c�6zZ>A����w@�%�^��	���ԟ�_#��D1��SDk�{�@�q!{�r��h�;�X!��..OCh^��$`۟Q�^C���w�7ՇR� 腾��^<{H�1���b}��V����%�gh30�@0=�>(;�W�&�Zh��t un|WZ��G��w��ˈ�J�]�^h]&����ߕV�����q˻Z�z.c��kI���J�]_h�B��V����@I���%ӧO����ET@���e����4�{.�)\�+�N:�m�W����M�L �:Oܗ�>��ɶ�Ы�SKբ�!�=�M+ Z���=��Q�Q3y�3(}��4�d�r��������ՃQ� Z��^=�z�R�j��Ń��º�xb�hC�N�1�#���H�ӟ�_�Y:/�y��7��`�8h=	�����xz��d�;�C�4�	�u��S��J�&ML�1 �,�nd)�`�aT��)>g@�;G�3��aqu��EK>����d�*ji͔|��ǃFf����h�fz�v�C۩:�a�u�T��f7�G�eA�D���Օ��KA����4M>E�|L�A0�R�J�C������S���T�����:����l�{��� $t��x��iU3��G>֒�M?�@kPf�L*��8��n�F�f`;OK�]	P�=�ID;`4j ������ ��K�)�/Kwh�>�^���$�Pl8kڽV�mZk�@
a���Z�_	Ԛ
��F��.(V�{���&~�Z=B!��VD߹��Z��F�T���Ᏽ �"}�&��s�P������	����3�}U-S*��/'�wh*�������U��J`
����:6kO	̅�L�j�bӬ=%1���S�aԞ��:�M�vlԞ��
�B�����F�)��n.p���`G�)�����o�ã�kS��9&�\(:I��c��Qjt�2��9���L��R�(�lP6�R�(���F�ɵ�����f(�P�X(o٩�½�"k�R�Bc�tk��7 �a!J�j��E�Ӵ���@�aG������7ջY�q�L7�f
�ջY���ϿlG�z^���,�+���4�R{!JJ�^��: �=Q�Q�*�Y�TO��� &��֣'��j&P��P?�V��&댾�$ � 4����~�j�¥j&�;A~�h=�ʓ3�z�ެ���Z	�z6~�Y�4� ꈹ�Y�0����@�Ya#� �o��Ya� �T���P+Z�.��EG�������1��J��������� �W5!��i% ���zn�0$Y	�Wۙ!�V�sê*��xt��
���W*j!�Il���sJ��T��!J+B]/�?�1�y϶3��G^��wo������������{�??��_�P��������j����O��1�o�i�O}_��������NT�.���"�f0E�@j��Gnd�aks�fy�����7#^�y�����OeF�,��/����n��ǣ��l�W��4J��G�e%e�_�������J>N����`L�10�<W�ꪰmu]���2=��+�	|eԗY�p~v>��x��z-:._�}�O�c�³.j	dY>½X�ψύ�Z_���a �  �}��� ��/�zX��(us�~�2ƪ�M�ʖ,��b�Z��|,o�Su�iCsS=�O�P� ez%:�rE�@�T��:A�8z`΋Ȃ�)�4
�՚w�h�2���n~ �b����.��R�������*��$p9]՝z�g�� �aH?�rV�#�c����$��;�B�,LC�X�j|uG^��!B޽Iy��a�ޔ|]9�9��A0딂 ���F�<�ҙw�V�^�ێ�2)�Ȧ gs�K����*T�4v�^�h^���=S8�vާ�����
��q^�=��3}hfP͞lc���+673�^��Ƃ�=C��Uի7�85�M5r��~��ƧJ��:.��z��_+�Cx9�v���a���	VB�3�5>Z������z���-=�p��X��/-�;�vU���jѾ\�v;��\tx�h_�1k;��^lul�� ��N�޼^��;�����(��U�k�'���#���/i�վP���#e�@_Jɪ��H=ya@?bȪ�nuX�� �Eh�Q1��{_n ؟p��ە��x<�,)%Z�R$���$S�Rl�̕%�0JM��T���LWZrGj9}ejQ
>�]1�[.��8�����`8�*�vIk�iD��_���О�^�pȉ9�!��K3%ͣm*ހ5@�m3 ݋b�Cx�=f��OKSi��V㤊%��n�7�B�l����&���$��U�(�ۥ�ʇ�z�g�cpVJƕ�|�J�۲�Fi�(F���`�����ˍD8��Y�T
������)���AxkLH������鞏"�'a�#�Ӡ�Q�r�1�	>$�jL�P��.�W>/g�x�O�F��L�2�<s�6�m� m�|��V>��GڗB�s������r΍O�Ao�^�}�o��_�ī(b�g}�k#2̩�|������p�ܵta%y�^n���QN>�U�51�`�4$��/���?Z��ɮ1��9p�'�rVLRA$n&��g�~Ԗ�qTl�yzϕ��Vȟ�'EKd��51��1���.+Ic����0�3S���WRgT��I����b�9�'s��99�>g+im���XWP�:�r#�0K
� .�_���W��Pz�AO�D�䪤P�ە)����cH��8�w|i�U����� '.ըc��J�ϤH���ko�0����/g_}�ԫI��S~��4��\�8�H2x�DyPc��S�و������曶'�S�^@(R��� j%Fh��z���~�UN��xd����γ��_��
>��{���|��cI���1+rB�;�]N�sj�d�`�֐����-d{^n9:�r3������%XÃ-��EN�C�gvJ,M*MC0:�XE�.���-u��4y_��}i��TgR>��w�s�sn�j��_����2�
�      :     x��X[S�F~�BC���f���I�3�>5�Z^cMd�Ѯ0)�%LCB2��B І�$&3�C�S$�O����
�2�Hf�x�������|�	5�X�D�c��p����Ϸ��*ҦL4���>;��5xm�H#*���A�u���9�u�,�}'��I* C�*�8-���lI���g����8{_󝥛H�-r��<�!�(�
5�6D�iRV7	&گ���bo�D7(��H$F�I�G�;Č����I) qG��jAͷ��y[���A�yԝ�F��&&�%��s�����7t���])mX������� V�'��Q��$SE��͈gP�H䂆J.�Hx�}�G�p��Vնi,X��D�Fi�Ÿi�ig�O��Iew��9u=ԃ�|�p[w�m#Y7mJ�2t3O�����X)-Z�%�d�7ʐ��L-��,�S ��8T�z=��D`�EF#�tP�/@���/��{>�9��cl���H���`���̩G�s�n����;�u������^�R(��A)��(T�=�e�K�ԁD����;�Ӓ��̶�!V�W�o���E��Wg���Y���>� n-=���OW� $ ��x�\�a� Zk��j������w��cK�vrM8�R*���L؟
�����~�g����:Oѕ���ֶ��h�|r������#h����U��)�>,X{Ϭ��秛����}�A�D$1��l�G��r(��u\���~c�HG�x�}Ef�.[�/9H{㨺��+�n��wfg	��\_��NN��5��#B��x����2�2��R�Q������j?/q�rJ�����3`�]Z�⤅�������}V~�Vm��pJ�p�S6�槐���MD����B�0�BJ���\�;.�>�.oed�f�p,Kp!�fȀ1��6�&⟗��;A��H24��%ӗ�^Pqz��;�Ἦ�*��SY]��lz�����T9��c��xb,�c�Fo��jpk��;�e0�&�\09!��k���yss��,�5"A�``F|�W�@X��Ԁ̞��A��t�A�ږ�m¶/����Y�l=}���e,Py&G�	��ʳ-���RcxW�'c���<�n��7	iD�w��Yz/�kd���DR�)V��`W�X<��[x���Uio^��F:�g��MC`�ۍ �@�ds��,ftC��D���W+����5�n�HK�OC�U�ݏ�E��	E�&�0!pN2,�%��L�D	֥8�v�wq��M�cm蛯/Yʳ/��l�*2Z�`$�B%�^���b��U�n��f��D&'yd�?Y�	��&Գ�t)e�qm�yD?@�"���&��q�Z8t�C�Ք{��5䨯�E�í�?�0���?�T)}r�Q�h4KƸg{��v�ߗp�ەÃ����F�1^tp�o����6�\5_8��ƽ�.��&8R�L��P��v�$�I����i�L�*�!d��gD$6+�6�A�m�ڋ���^�p{�����/���*�?�:8�Y�ܰ;F

H" oL)���7^�[O�p{<���<g����၁��RP�Y      Q      x������ � �      Z   &  x���Mn1���]���s�� lL5��&��}����5$���x`�qP�Aj�@2(�7(Vs뙳��zJ�qh���9@3���ɭ�p�l��?�6}��J��p���@J�`��!%�):=��m����ϗ�2���W8�,�����S�2DĦ,\B�( ,�<:J����_�O�iY����@�&����D�!S���2,�Pn�}֗�8ow�8zac�~�
5
�k��ŋ݂���̃�cD���FP�*`i!YWb)N��h�X̀<&(Jy��%̤v����n�� �$      >      x��=]��q�Я`A~H� � �r��%r�V���Eb������.xb���D�)�&S�LI�%Ҷ$:
yV���%��� ��2��3����VD�u�<�WOOOOwOwO�P���q�N�gZ�N	��hC��n�;������~U2������JnI(�Ʀ���$r�ZvW�@E6P����m��m͍@W���1��6$v2��c��.}�Z�A;����tr�S��T�Xà�K�C|AJgǺ���i:gKF�4���Ep$�؁h�:@��]T�G7Aת]�u��au Z����F&x^>Q����i�f������a�����m�t�g��ey�k"DT*�5��@T&��!
/��E���<�s S��^�2�E�V/u ���ĭI��X���H3�-y��[��!��S�֌�]�A�At\�>&Hu���ѝ�7!�o� ���'F�-�p�z�\)���1��ױL���i��U�n_����6�}��˻V��z.'����Y�~���K���N��r�
l[��`��S�%S��M���[�kΆ��,ZɅ�r��K[Z���j��������^��:��f.s�x"/��^x ы`�Mmxz��_��֯ H�ֆ`�ܝ}��t��%E/����xԍAx�� ���XGp�y��'�ы�����:
Mǽ �(<DU��;*iT�8 ڿ�XvlV��±e��^��	(�d�L.�n�����E�Bl���_TH?��������w�o�7������-[#��n�[Tm�ӯB�Yt�~�B�:	:���<���c��D|� ��3L�m�[ �6���ۀ+;@��l�S h��R);�>�~�"�	��M._��=��H�qH���DrZmpH�C#���e�����Z���]���!@��깿Ї��~��� �l���ooZC��T2z`NAssg��B3m�Ĵ��X64�}�w˲L]�¿�=`�����}0�sz�2��x��a�7����=5�]�_>))��u;����$5���e����s�s��O捻�Y�)i��9���Z��Q�����] �@���J��K`��O�4��Q�>�p��]'�p0��ֻpp�=�R��\#r�d��?�ȩu&r�)�M�%M!Ef�W�աʆ�\��%1��Q�ԟ<���1x���z��o�[t�x��iOWK�]`���u�k���V�}��Շѥ����o7\�#!�`&oi��~��P�M�f˄6��!���3���{����\Jǃ�זiuΜ[ 18û��i���k[&����/06���S�G�p-;�{�DU_�͉D�QW�ic�}<�|�`a��̑]�EǱ�����֓pU����U�G�*1િA.Y03hL�`Jih���Ƒ���(�m��UJ P�j��'�[k��m� ���q�&a��3����:��pM�P���|ܧw��>�M���9g���)l��'O&�=����l�@� C1F)��镫�K2le���D^<H�jF��ФR�d1���N�N�����}4���?������b�7|ו�ip!��E�+0zqN��P)k�v�y�omo�|�.�[�4X�+��I�:��(���`zF�Λz�����k�<K���W�&�~>�~��k��	
����>�ÿ>�����sc=����ҧ�u�m�rmkr�2ǟkIl!�9�m ��8����Z@-N�&H��hA"�L9��9�Joa�Eq�4��5��ۆ�J�w���VZ��� 5�/��D��|������/��97����A��x�A{���6�\/�4	���&��u�7M�Oc^ֽ�EL���6�tq���kQ�oE�����S�i�'Z(��P �n�jГ�	�9���}�0I�qw�{ܗ�
+<_���Nx��a5����p�Ʊ�L1���j����S�Eڼ.,b�IXZI��ɣ��R�t�ҊRi#�̸&l2��T~����(n"�pE�A	I��)���Bâ�����ш"y�P� ����oLc`��s~}"�-���]Mӎ�����u>읷��#��|0}�
��9Ҩ.N\��T]�����,�ZLy�
ٸ�1'̓�4�4��_d��O�4C���{�F�����U#E��&I�"�7Ē�W��W��nr����0d�`��S���mbi����?mKƈB�A�Ef�[׈B]J�0�����u@;#L���9���5��.Х�:�@D���`y >�4�+�u�-7ۇ �g��@����T���(#��1=؊JTA�h��-^����DZ=Y+H��.&R�a~a.�*[�b-�����q�f_��VԌ,4��D<��X��ln�Di�fz�Mt4���槇����6��vc��v#RH1���B	D��0�x�4��j�y������SX���v��BPى����TF�VP5���:���F8�>��&9�Vv�jTy��F��d����DIO�O_K�d�͌�(�	d^��%�5�ŐZ�B�ȲE�/ZD��E�/Xd�������ތo����oב���n �_�o7��?G�S�D0��Fn����Nyq, /r�u�a׀d��M�%���]ʺ��^LL?�`U��1^+1
�פJ<2���J<R�הJ<r���J<����xd9�5*�Hs^kV��}�+��z�C<Q�
��e*;�Xd�E�@�9�X0�2��V��z��]�}3��8V5��u��V���n�T��:iJ_'�k��]��d"b�%0V�>t=n�/A�tP4�0���2���,h�p4xN�:?/2��)=��md���9��y��L���(��n)얥�G�)�Y��\�1�(?����чւ>��>�%p��� �%紧�$�l���s3F���-����BE��(q��*.u�o�1P̽��ZfI\��i�ð+Z�Ih�91������FbH��v�y�̼�0z,���8Y-[l�1iZ�r�J�F�V��![��!KW��87���$e��GȡBl��G��W�Ƨ��������Wf7�M/�po�to���ɥO_R���|��4����$�{�å�'���Nn�fr�������S9�\���tz��ާ��z2{����?�!�<x��ᏟLn�����n-�.�~�M�iZۯ�ᶣ���&y#Іfp�KK���N_,{>}���z�����S��׃��������(%J�V
�,���jR��s��j#���w��'�gi�T���� ;��X.63J
�cә�b)w����BM)�Zۦ�=��G���d�m���*����/��V>̪��=�܁0yy֪����9dsO<���t�d��Y��K�9%m��-�Q$骗�p�U�Z����%Ͻ���!Z��K=����<�Y�Ԑ�`U�BG�Ed�I�O���$�:Z<�s�X
�	�z��$�
�"���/4ɜ�BV����	��8�Y:��)&O.��$�QZ.䛬���B�-&h1A�D�Z<g2��$Q� ��gL�ż�a�(��X=/�$�89r�D5���K/������qu�j��h���HQ	�d��o�Ԑ�ӂ��Z�y ����L���4��B�bU��ְݛ��:	��)n^�@J-Bږ�Dx��3���O����:Qߤ���#��~|���?���Iv�kj�����>�������rG���$N@FoCK����Ҧ�.w���مG��twO(�b�¶����"�(��(J��U���*�(��5@��/��i���rN�������r"g�1�@�yFJnF:c�)κ
nMn�L���w�C����TE-t��ãˇ��q�:�Ԁ{W#Vl�K^QW���SL���Y|r��Y�JsRȕ�I�艻sY��:�Xg��E^d	̡p͕�bA�ƕ��x�N�}��q��-D�v<��N�;��{�O�����}ݲ7�w�~3��c��Ȃ��>������#�)��)0JC��/��xY�@��*�q
-� �  mmP8=a\�eG%����-e�T(<V�D.&r1�G/�c�7��E4`�`��bH*+��G;�ȇ��Eȶ�������-�r�Mq�Q��X����m�]8L.�;��4ؖK��@9:s(_X������>����=jO���w��<���v��~�5��=ц(�5y}cc�(B�"�{����]L�v ��t�&��R���ʤ� �;G7��'g�<����U�ˤ|�2|�k��m�sf���{q��镽��+��_�^�?~�`��{��߂G���"v��h���H���ϗ��V ҹ{�%��:$�
��%f�&$Y�^}������lD��i#QD����������o&/�i>������2�/ ��x��ޣ��TZڃ�����{Px
�����(��y�(�����<>�}	��0�,3!��Y!+L�s7*d�O�4)�:�\y��l�PI�J*TR��dΡH%�b��9�"<��ь5���ؘr�ԋ�B��pm���5�Ll~z�:<�>:���R�ҏ	�ո�L����y�ġ��x|h<&F�nx���ԉ�4��/<�����w� 0 ����w������[����d��H��Ф�,��;�K�"|1w�[��p��0f�{܀���u@ބyħ��'���M,:Y�?�6(�:�{�j�JMu��y~�B�LO�}��B�ǅ GII��ͅQ��LXJ��h �j�������;�]&��_�n~1���ɍk����:�����_���"�r
�Ċq�9���B��Q��oY4�����s!]����?g��"�]�P�/��,xn<��牨H�a���R�e)��G�)G��2����=s�H(3���1>�t��۴A�/�<ܿo�!.r�GJ������ƱR�2i^yB��H�;�<�|,}�����wHu�w�N�HI7@�;)`zeo���>jt�	F׀���iCG��o�o?Ť�x�@Há�P�
�C�Xrf��
��Z҆�̘\����A��3��A���ؚ��YWE��!��!-!��A�6�;�ʳo�~p�Ce`4J���f��@���7�H�F�V�����?N�^?�{�2E�$fD���֗��gO�=xt�8�a�o�l���s�|48�fbC�ytUc5j�o#�Mnj�Ԝ�en����N�� 2ɟ3�kF�o���hܬI��Y�_eS[�kA�a^9���]#����T�J���$TӐ�)�{(Z%=��e�X����Pղzqm�&��οL�:�k"	)��ű+�bS)�R��]��BLb:I�VU�&����f��Nn\�}���˅ݛ��@ �z;ĆJh�\�dK"!����0_��ǡiV�;���W�f-%�OA��
�Th���&bo� -Y�=E�����3	Hz�xI�Θ���B����#	@���V�����ﱒ�)��	ZtYa�4�ٶ�.��N?���~�wÿ�3��/��0����,
�VH�B�-�l�q��d���)D�3���Ō\\ �h��B_B�!��r�EOR�� �:��s�A���|� 3�,��O���u�XCw���
,��1Ί�{F%��%l�3�p�G�a���H�z>o	�=G�|� R���?�ړ��V(!1U�unF"�rYX/��r��,�lm��I�.�UN0�\����w9if����ˌK�V�j�bF�b�.^O�5�6V5�%�$��G�Ś�$��� �
�L�F����ɲ�tE��ݠ�t��|�
��O�D�`T�6�=^/�AC $�d�p��4	2RR�pR��WG��f�L.��4�շ���.�ʗ/���GTi�Ԡ�\e�����>c.����s�c���>WF��{E�H�B��8If�*����,����qYU!�aH�J-���C�	Q��LEUi�3;'���5�BQTR�D���^4b$��Kc���Q�r�x����1>�gM�r�YϘ�Ȫ!��z���%�(+hr�L%_K���[��+�{�roq�XS��fuНrW�ic�}�з!��:<�����Y4�Ő�Ӑ�7ȷט:V���><���'� �
������<��h��s���zj�"{ S�z8�3�v�
"+��������opsf�"hP�e��8���E]�ᬬ}QWqD�71�u
iV�ʨ7(���ШK��Fak�F[��	Tc��F�DZO3��[�F�7��b�"R ��T}��ɣ���B>�����`P��w��ڱ��� ���	�Y_�ٲަK�5��tb�#D�Ay �6�2��$�@Y�$0
�,i*O�e+}�DE��	
z��Ch�F�{�ު������J%�9������Fp�Wx�dO gATJ��q����s�T�F��d�?�S!n;���*b"i�sNeYU�bx9̄/11���3�UE&p\��G��*J��B~�k�6q��Sv+�z�������9|�lKQ�5�������7w8e[�6�pU�)"�(�Sy?]�_3�o���Kw*�����
QB�ۚm�c�Đ������
��_���{}��~ޜ޹����������^8Y�B	 -��T}?��!�X4����9F/)�E�u�ki���t>aS�1��I0��u�QZ�z��m��ZJ���#O�a��>6n׿C����[�?���.��Kn�s�P�{+Ba�"F�3#By�`{��<��{��\�3s`Rw�S�tK7۷����4��v�}��̲Š��pu,S���a�p%b�ۖ_=H\4(�����]h�/�9�Ѹ,�1�NK�O��?��,�K�b���vx���ޏ}�����Mܝ�yHq�������u���M�g��EUv ��-QZ�[�2�v�4��fcP=� ��{���>@����ïޙ�|4���T���H�5���m��Am�7㷁�uF#���:/+��������mk�B��R>��N^6%�n9�
�ģEy���^+��巎���K��m:Y      B   �  x��\[o9�}����~�[�Yt�p���j��X�$Ow0����U*YNl�`Ďc�U����>�"K�6'A�ҁ*�4��I*�a��u2g�e
�3���~_n�@��$I�<Y~�%ܔ���z!lf�iW�b�R/|��z�,��x�j�J�J���*!�%ʳrU�dkQg�	 e�pv�م�3��_�;��/Ϗ
�՜��b��/����������f:�)έ�L�DW�fC��)z�In�}tvws�AXv�R#�=iPos��ԨJtR��H�4 i@��2���ǒ5���L4��)7�F��3\��xG%'�]0s�،ߨ=��S̤��G#�������|s!�O&q/Y��T��ͬ�h\�Rr�<O*6=�(l����Yk�����͗�se,3�Їa���8D�C�v���J�DK*՞`��tN�������B��g̉'v�tv7�
ex�J�3Ɍ�gxo6�6LU�}l�߲��2�t�$K��n�4���>з�O�{�v�?\̫فe�!g����n;j��gR�K��o'j˜�T=7VS-���)K����X�V2X�Ԗ��lt^�������՞����#�gj哏
�Q��_���Ǚ�ख़Wi$�9(�4��u^�DC��k��K��@��4��
�&���a���ʕ�G{��y�?��{5~���y��>r�U"��Ņ�\�$�����)�I)���n�`��A���@7���K���pF�"��	�d�>�t�@g���y�sC~Z�,���w����̥���g!,U�s#���5x.Ye*+�w$��\��;b����4r�7�bL�4��)P���LF�sP^)9����~���L�^_��f����h��J|�r�i�9�0��Q\d����
��`AAL��:���#�%��!IC�w�˟H�����3�v��+f�o���D�L��+�:[�G%!d��G!#Sr�^���{���H� H�4 y���S�GΨQD�Q�Hni(BB�� ���x�5��Au��X��B���Xt�����Z�P�!C5f���Tī��I�#���?��y��(B}����AmR�VWZJ;�u����.�+�������ks��>Vz���C�V$X�Ԡ�	�r�j�E���`������_��r��c]V�������%�,7�[����f� �ݢ|)w�5�'u�܁�b����z�UG�����@�f10�E��(��=��1�]&�)�@GA����J�<���l�}�V�Rec�3���L��,J6��,�om0�_��;z�4\�@k��bF�`l�f�}�
c4�PtE;<ASE��J������1|
!�����~�����V2m�A�+(�����8��M�ʤ�B�nf�:�2���-t,����ȧ�X�����'}�Ւ�8Ð `��	5Ä�*iU����F��
N.��9G�}�.�t��VH`��)�h%w���L3.�D�|��;���v�@��,����\�o���涐��e,'���吹�]D��x����q�s�?�^�-�4d5�z'-���M�gt�8rU�`|~wC�T"� �ɯ����P�/sF���e}ڧ�_ΠJd��wR�0Fytn�Q��*�n-����n%FT8P��N���X�I�4$��\�/�}w��.�ji���dʝIf�ɯn̯�:S+y��X`'ׂf$�jL"L[=�A��H� H�4 ��_�4b�xs�{��=�1hy1�eA�g��;Τ��#q�Pf%P�"��[Ĕz�[{~5�4$iHҐ���'�|Y�2���θ�~0����&��,a��>d�LUԧ���"���w�!��H�H�4 y��Ә��E��i�p:k4���o9������c;ۗ��>hӌ���T�f�2Tv�MH,���uR�=Б�^�/e��ׯ���y�r٤fSA��w�
�MY�������Қ��栭RB��م����k��I�$W���N�((��[4�S!��v��l����*�O������U����	!�ǀ�ʣn��⡐���&כ�Z��x��H�j�vG!�4$��m����{��5*L%q�p�B��,I�0�'��,��r�e�M�_���k�~j�������'j�W�:>�l�)T7:i\�I"Ao�L]0��.^�̧=�Q��I�4$iH�d���s���F��Jj����&v���E�E�SL9G�3��"�� �Z'�;��+�w���}�'�w��ǆ0W�ˣގ�;[+����`���M'�=H��Ot(�^$H�4 y��i*&�j���;>=�9��Ke�8c߅�kwC�̹赕�����(@NÊ�A)_����7����*��5�_�&�e�J����rUN�l�A�X�j���d��d��\+&��P �i����W�5�%�:�=�1l�I��$I.��|����>X���ŐY����ݏ6Ӱ�P3%&95��Tq�hH���D.�X�r��v7�%�EY�ɯ;u���f��:�Z�c��� �yHpf9eF��O�Wu��/Y��S��=�!Xt����C�l
��*P�w�9U<�3�_N����/~ ���ۑY���m�g��>#9I(n�JI\N&�H�~�����/!}&?����|�]n�'��@]��S��a�	��g�z�۳JQpVRI�V�1DO�KL�h
S�쁎��?����w�!lʂ�z��_�����VC�څle�~�����ϑ��!�4�) � !��-�&��.��@G�{��[ԣos���rwB�Z����,���#`m�� RbBK�a�\���y�ږĬ��It���77�.}]��Զ�N�Ւ4Y�W*��`j�F]�����Z0�;[n ��Z�}r��l�-,:s�.�S����BŕVUdp`(M�v@��~Z~	w����Q�ެ�_?�on7'�liT|/8z[&ͭ0�b��y���2CB2	I�K�@�бU�6���a�0uSz�����������Ş=P�h�~�S@!p��g9�
�Xr�k'��K��c��e��1�4Ō�X��#��HҐ�!IC�w�˟�����1��]z-ԏl7����JU���v����@��(�5��;�;�C ��_-�	������䮚����bj�rc�����m��TϕY���P_��(۱���A���I[�@g���
�[&B�9�R.<yr%o��� �o���Rz� jb���R�P�r��W��r"�6�;Bg��:�S8�|�}��z�-j<�L{���'�
�&M�Y���:��^�؉�9����5aK$�%�������!@́C�f�k�Xs��[[�ϬF�óD�+��54�M
�?�^�ꀎq�x��$H�\�/~����D��Iw�q5����ҟ!��e�ijks[V���J꼔j���˃�)���b�&	��V��p]t��n�ǲ^�����L��4?��c�ɏ=��f2hu���4�����n�ݗ	^*o�zÔA{������\.QX������'�}��C�����5�G:Um�!��
� �Y	�c�S*X��1V$5&�B�:r�|��o�l��j~�މ��Oxv�?��^�9�G�k���RI%@���������4�>�"��,zt,:�"=,�f�j�� �M����}���n�l�	��߾bk0�PNQn��UFZ���"�R�	q8�6ޛ��Uu�.��1������!.�����k�O��ȿ��������>      V   �  x��X�nܸ�V���H��IQ�"�4A�m Y�ט���X�4�4q�A�>Go��}�J���o�ɢ�MbQ���;?��ւ
^x*�H���Q�r�y��KMr�#خ�ᒼ�U�l�{|H캬|�k!���}oڞR�5ސд��r=n>M���O�,M�6Ub�*�<sMU�7u7;��-�ƚ��]~I@p]X�i&��R���"/�Ș���\K�&$ee�pv��4;�3�G�l!3�T������K���d�ӛ��<�"�)�>Y*}jiapw��l2�Ur��l�P��%y�~NO�Mӗ�t&���&��������=Ծ#�4eE�=ˎ\_A��@��GL���߂�fu?a�oV0;����ɬsM\��!���Ե`z���q����*��˓��7���
~��Z�#����*��)�&8��A�l�������SS:@p�M��^�Lk��Y���.�[H4	Us�a�����E �jC��:R�'����XS{�7=ij2u�!>���AħK�K�q��X�

���9�P )N��,��A��LA�*@�Y�G���z����eAE�\�З�%y=y5fk���������E��D�`�F��� �d�!�5i�0�e1ȦYc�'��!�m�C�~�����cƍ�Я�Y�]e�~�%��[):�
O[, B1�]HM��s���NY�^��9��̊�JD�]h�:�r��*���cD����桬zh��2�|E�V 2�)�EΨISN��[�
��A:�<����T�,v2��J���R�g���A�}:^a)n#o�Km2T�U?��z�%�ƨ���z�1��Xȧ��~]W�uCl�M�B����wv��*��2��3|Ʃc!浔T+!��2�*2��Ћ�Z��LY�BoL��;�1.��X.
�gI�\�m�.�>��K�zwE�o� 䭷(5:箛���RR�|���MT�W`Z[���߽���\��A�T7�"������gl��;B��lJ��Z�p?O�^F��)2�Q�hY*S��+���`�)�A�R���qi.X.h�B����Q�C.@�T��������o�r�t%ʼC���V�F��/RZ֋�Ū������z�� ��dhHߖ�.�b?���Msee[����?�3X4m9��ɍRi��A}�s4�)��2!$�	�Yv!h��7 .�H���A��s�y��f{���֋2l,��l+Y�o�!�N>;�?���G�	cv�T��!ݝ����s�[t�cS�2��0(k��Nz]�\e� �G��D!��-�(DM`T�&�܂�!e�����^�<_���N,K�~�:~���>(�'}?h���I��h�S	��PK�:�c������*���qj�1|���*���Q�#�0)��Qav�0F5J�<M�)g��I�m~��v۪1-$��l���������q���U;ɳ� �\4�#�,be��2�'���.���r;�mq܌�ֽ�V�t��lἩC�.��Y߮��T>��y�y��2V���W���a�l6yMތVK�����m,M�z��㎦��?Fiwݬq��¡*?Blf�<,�X'���[�K�_EŶ�����~��/'�[��/��4���m�Cw��KctR�6+�\�{w�2U��.��j"��x���aw.�;ܺ�D�}�~ז��r�5���08p�m�ܾ�.��7A{�c�|��=҇���*p������>�<0��O�q�߉��}�\_�v����^�E<!��O���eU�r�?xB�?����:c4�̺�#L}���YG���q1�3��Ӌ�N�5�w�?�v��;o@�#�Ǻ���El?�m���r��ٟ\�߳]m|[�'<�^�|�k��S�7�'��������n�D��Q�[��8N�Le�`��3~D�
�c��ذPɡ9�T;婗��:c��_M&15*�<�]���ؤ7�9d۱P����=h�H3o8��e�S��8����#�\H�ϨG��E��] W)+B�K	-��c!�^�Gs��y�D-(S(1���L�R��
�(�n���v�Y�vYF�C{x?�5&�-�#ES�~����� ������{�[�K����5U@��]Ѹ�^���Q�[ۘi{%u�pW�ܯJ0�$:g����昤Y���|f�9��Lv�CZ��#���'O����$      A   �  x���M��8�תS�ؐD�q�r�0d�%RO�˅*w}��s �������)�ܺJ�Je@*��f��^3���c������ �)� ��jf`�4�,��D��_���~��H��Dq�$�M_�Z�������~h?��lz~��z]�oz�\�S�� �C�D���hPKV2{�f9�J1V�`c($�*P�~�����������s��	rB3��Ӭ�E[ϡJ:��{]:����6K-}@�>C��аG��(���H'yvd��)B�P�5�e���f��n�^ߟۃ�e�����!"��P1%s	A�|��o���A����� ��`$L�=.sJɶ���X�z^���}�X9Ǣ�1%����G�s6�5��c��2=(نȨmB�B�W�{��d
�O��A=.=����J�٢�����w�t�M��\5�NO�>�9�|*0T�J)�$��r�~��,��f5M*�Рnه�k����ɻ綎_�+{�x�ܻ�/�ST艈��O�w����c�͛�N$dV�{����f2�wqõ�0[q��7Yn��.������q����_	��u��{�.��xD��`kb��^
�WĨ�O�6w?���ҷ��~���@hd����K22���ެe��N��p|�      P   =  x��X�R�:]�Wx�*�&��BB=:��&ټ���z�m�	��\y�Db5�P�9���� �0"bvv��ų�E��m��<�**��y��z��"��(��d��.F�$�IO#-���n�1�SYj�xI�>~��Yb�2�a�ÕV�n� ��(���v�h���t��.$��O2?[�|�����PO���M�y)U �bk�O#�Ѻ��ދ �D�Z����M�}R��`!���l0��cmԏ&��%掁����JՇ�:oT��f����2���'g��?U��Ͳ�!�.&�zh>��3{��mޤ:��K�%�£!�Ư3���1݆�Hx���7�<=*�>!"���A�M�n��Ro՝�1�Z��{=�ȁ.�y��D��s���m*�߫j.���E.&��\oAG�E5M��$^����k�?�:ƙ����R�2ZdEnD,�� :���5������C̦�4�^�Wt�N�.7ũ�T�f9�1hK���4z��T X��Ľ-PW�e}���������ء�Z]�>�a0�	cRt_�����1Ŝ�(+���~�T�I�ǂ�p,�����8��z9��X�ZDi�Quc�=���a��Y��۪x��,%P��C&I�T4��Xs9�FV��U�k3M�i� �(qH����$:����y`�{GG��}�럝2(X쵴$��Ҿ����C�}�I2��Y�����zI�בN�o
hia�eL�MF&mC��� S-�ً���^�,�� �M]ؠ��
֏��J1�a�)L���>��Zez��VU�)�Դ�	����u��:�lsM�1�����ͱ���O���T`�0N.(L���'f�N\��(�CZ��d��A(�!����� ����e�O��Go	��ZoG���CN2a7$�1�;�T�꩟�i�;E�|	ǁ���Ti^�k�R�x 1�v��_r���z��O�i�'K�`�8I�	���ޅUAr̙H3��z2`��:51o`��0R��	�"�`��	ˡqn�\e]*<��m<dh����>e6�@�X�
1���L��;N�QC��>��lY%�J�ixtU���6*;m{�^r�I�ϴ�bZ��ǰ�Ռ@	�¹�1���hذ9G�?��m�p������kE���Fa3N�exf�2Hzld�^m݀s��4}zg(.�b$Ƞʟ+�G޼&DbL�b�G+�Qy5� �m��u&гV���o=n�4N��Wz_���N'���5�8��t����-�p΋Q!`Gk��/0���� �X��6��A'���ê1V �g����˸k@��+0$��"���W�����5�������Z��	w.¹���lۦYYN5�	��(�PU��K|i>���Tb���3�W0yT�mV�8S��P���Y0@o!�����|��K0�ͤ^���o쇑i[a!����=~�>dz��9hS�`9�.J�ݵ�MJ��:��P��E&hX-6m�� ӈ�d�����O���`^0\�V-��1�����̭���ց��1���X`��v�� 7*�7��A���@.QrIb(&P�x�]�����S      T      x������ � �      W      x��<kw�ƒ�'����;X3z?�M �ᄐ�@r�L��K��Fr$���[�j=G&�}�p�~TWWWU�K�B�܋���p�04"z��I7�<7��h�Jf�|��I�(��Z���,��ǽ*�;z���㩬��E~��4]�<�(��7����:K5��j���^�eJ^���/�"9=�Œ��r�{`��^uy.a��e�\\�B���G"y�x<q#˒�ʫ�G+�>9�԰�2V�?�=*�"�N?�䬐�����YU��Vi�iz��Ցc���R�m1WWO�9|/����I��h�q�5Ki��
�bC���2�||��|����hE?Z5����]-N^��8�؎��5�8�FHC�0}�X<�/t�i��fH,�ȳ��`i��3\�E�g���`��P#��7,ᆱ�� ������٦a9�2��Kˠ.wE�﹋W����$%�]o�B~�|aE�Yx.�87�ئr)?��EU�cB�ˌ�x��*�3�/hE�G8���j�"�3!?l%UN�t�:�(�d��2ߒ�U؅�&�e;�LN3��N�d��
	����4�X���J����l��^�9�*�R�P�f��0����Y�/�Y<���?�5ɦ����)�r�����_��vuzH�ߟ�F����cr�ƃOƃ/5��BV�"Sc����s�۶A}8v��;���LE0��#��XaK���oYFR�"`�p��9�4��ls�X��ˁ���p�@-q�p�HXqϷO�$G��&� ?���ǆ5Æ�6(��*j���>��z[�[��9����<?IL��{����d ��E^���)��U	$0P&������m2��{,2�0��@T'f�1�r]�/8ێlCP�*�:�<4��)��v-saơ�!(	ۊ@��Xh��'����>�Н�v �% SF��Z�cD��w"�b<�¶�3^ȍ~���.����b�4��XguG�U�[p
J$����5'�,Vʪ�cRz��Ч��������?�G
�5}f�]8%�wA}� x�`�eZ�K/�sB���0j�I�<ND"��9���p+�A�LH8(�LP�@	�8
a.~��H%y]��ř���jrJ�Z�4(��Q^�����y���;y�5����5�����U�%@Jʪ<l�$��~Oӭ���]�C�sEdZ���%��+�MQ��eR��m�v5_���N�3��#YNb���f�"�C��N��"���`�LR����5'��k7�|9��.r�L bA@��D����z�6MI^h%�J�Q=8;��dyE�|����i�6� �7�Nv���q=�\ȍ��K�(J���`��n4�Z�(�EXpI��	x)��1��w��" �0C#�0�+(����N[M�y����@Mj֑\�7<�IW���=���#����%��.�J.�M���iL��QH* 1-ii*!A��rgF	f3��6Ӈ��h�+�Я�J@�c�8��Ďc�w$��Mm��d��pOG��9@�0�8N$X�5D���-ۍ\��b�i�"� ��w�(��J�������@��jF�@n7x-�Aߗ1���,�x'V��G���%�l �$,y��Kۂ�؂�~�]-4�Y�V��2��W�ў�9]O�O��m��/�!��<ݦ`7�(R�
k=��K���7�__�幐�`����O���*��)�R��@�Ņ2�𥶆WO����y�|����*y؇���~�St��i_-س}�~���c�~��d�d��C���x�\��K�߫k��5M���d%�絾��{���a�ѽ+C�ݮ�w��oep��1�wWzI��P�nBZ5����;�R�cQ]�T���R�#Tpۆ����0 '�>��؉l���&QO��	�M��'�̲#��i	r�K�,��E~ZSg��k�|Rb���@�΄��z巶�-w�W��{4�0��,
�n�c�#�˘ٖe�������RըM٤��w�r0|�F�I��k+�q/Nd*J�5�s�u����pÀ/�#�}ˈ]}K,�kۊdĥ)c[2���E�C�����$a����t�x�������Oˋ�����˹iƦG=���*���|v)x	�xP�� F������x��cU�֜��]�F`Sͧ�?�sЃ��a�e�nU�z���^�+�#�����ų�XC�(�sD�$�i���f�lZ���C7i������	�g�m{�kh�sqJ��)��!b�o�Sϋ���=�zd}m)�j2�	��[p�ߗꂫk�'��5~�&جx�S
>P?����B�4�Uc8��t��~�~���k ˶Hզ�a(�읯��{��S�q3*�J�AX��b�6�n�a�ë۠a�k��0ǔ���M]���O�;�R������ ܪ ��ZȒ������r����R�XCwʝ 8�63E��Y�ԧB��}ǟ�;��|�S3�,&a��3a�Ȧtm�l��]붆�Z�E1��\�52M9�JD�!C ���j�ؠ~Mp�"�i��l�>\�|?����+-J�c(�3��]+��,�!õ�B7b:����ն��RiB��'i����^�E���-5?��_@�$[*����!,K2b9�HT5�83��L��	�:LE3d�����i�u�i n��l>Mg>��4�`>��`���/�9��ত6���yL�Yދ$^k���3i2� u�b+5adH;6m�Q��V�z 8��`�H�#H�LPE��K��2dlrDc S�V�;?,`rX*_��xJ�p��p#�4��[�*�V@}i��h�e�;��}e�*��%��.�F �YH��r��+���r������?�E)��s��7����'b¯�7�"�`,��x� ��[�M���)_��j��j��z��u�j�j�{{n���j:݀?\�?XV���)��!�5�p-���A}j5 {�͂ch F���NUx��U�:�eڽ�;>&�:z�r@���ձ��)0-^-����Nc���ۢf�~�WO9"?�,���u�A/�M���9R!��~��9��4�9���D�e��n�x]oiȭ�zB�Yۦ	VU������|��<Vx��#>����a�f���\��Z��x�-6�q�F��?�&���1@5l4�aڕu��c {g���׵!��gHy0ţ�
��6S+LdjF�ܛ���㻠3DfG�n*Z���J�R ������v\�	3JY���^{E��~''{�M�0���\��S)�ƥF��#����ݝ�pJ	<m���j����� S�{�E&R�/���2�g ����	eK����2��ՠ�b�{p[ܼA��r_2�G��L&�����|ǋ��.\<�:�d��2��6J��+˯kgG�β�����7�l���h�+��kpv�W7��w�K�AD�b�~����<vhͧN,i�yܬ���X#
idɀ��u��-G�#/�*�^��T�aY���~��K�*��'�	0��<�9�z�%iR].����J���^Á����b���M��_�� :WJ.hٌZ�M�aq��p����MW/.t��9�ρ1�YҁA�-�p�,;4v�e�|�+�6�G]۴@9_�B����tu@=�;�<�6b�������jڞmr'�X�#�E��$"�<�`�۱%�`��"5�\W�
_;�[_3@M�Q���$�BGܧ�:L2�n�$��[O��r��AOǱ�oSx~,<��f��t]#�AK��'8�#O�� 'Ԧ�ǥO�:�~��j!��7���Z��p�kx��[����;��w�(̊��-{f�%ͪ�	�0�I>�//��8��X+	��Ӭ:��2� �4'�%����T��/0�H�*�TuCLJL�MR��Q)�KTL5�%���$N�ˍt���T�3��n�b�\���	�j,�`��S0[��$5��~k�T��h�ʶ*L梂맥 ���b�d+�7VM��k8�� �  ��^�Z�u�͹�	כt|;2b�t���铞�Ӎm;~@? ���S����u\lK�nUw�ټ ����
s3�z��-ێ�絬V����HmA�uc5L4n��g����٭$��A�S8�iW؈����~F7�h�l:���}��]_�v|g�?�+������>�4��t��'ʵ�����(-���}���3�6"n�/3�L����[Q�s�uVQ�s��#/��|����0�jnét�~��\�G��y�8Ie��a��3Љ�@�������B���Nh�V�!���f�օM��{>{���?��#�i����a��Z���A���T���?KX��m���Z�=Ut�wD��!�z<�4_�:�K*��7��V�	��������:�� ޝ��=�ꚫړ������1��fY���sq��8�&�yZWqXL<U�0JFO��R�w��֦���b�0<������]k{�fP���hL���n�������9�1�+�y|�.�����Yf���蔃<J�N��ѓ%����Y�9���u�{ݳ.��D��r����䤽��OKwF�
L�B���m��Sמ/��|���bC�E\���F=�F�}w�L[5n�� �:����7��dI,��M0�:xGg`��qP����u���2�D��~ʧ�f	롯�n�_[pܒ�W+��,{�>}"u[3��e�M%(,���z�6P���Y�tC\Iz��>q���J������v��&�K�r�z��ݩ?m����r��J-� w������3i���K������U��.���+2hX���t"�~����O��ݱ-�{���p��Y4;p�[���#|G������(x����=�2�H�>�w�(�w�a�^D?顕�m+wm��W�<S�F 8V@�����AW���]��"Z<U��!������l}���0M>�l͸���gi������S4؛��`O}ٵ�$�g:��>�_}����z�E�)"P�*��o ����q�܃�b�E�Sw�SOZ}�d�|W�;��$YA�7�~P�&4f�����z��&۬��mk��a�&�R�����G��z�+���]�������`N��'r��϶r�ErtӷxX�������M�$b�ܺ�D�@�`����;��õ�G�8�%�ÉNM��"b/ƗԎ�u!Q��+:�u;���&�a�`���<��3�Sӆ���k��.4.���_m���q��0���4m���\4����u�$s������ޔ��;����s��#�1��C�ꇑ�	-�ʓuUk��-�dZ��C"dL��z��(�Z.le}�і���u*��+)ףz-���2=
?��;�<qē�IW��W?�Ro/�?�(�S�in;���́����I�0t��5O�V���¸vN���z��0���:P�t��u?� K�A�A�Ǐ����E�Ƕ�'��W#��+����<���q�۰ېz���SXcNR7��`�~w?�1	�? �w8dp�h�y3��G�{ll��W���L�`w�a��>Q3��g�I�a����E;6����곰�J�apECc�q�b�;7x7��r{���(/����hh�ט�m�+���rq&3	�������{t|�	��7:�2όoӜ��~oB�B/�s��V�zO}�9��\��m��48a�S����M��A��Q3��ԱJe2ID��q���e&TPE��u�}�����hP���"�X�F��D%�]�|K���tkUg4�m��yу�ܥ�MiT�SZ�+�p{=V^O�NE�oS���ۼK����&���s/R�����5*S{j^���k���ߠrMPg��):�2�J�oL�y�>�F-�z��]2��� ���/��?	p�      R      x������ � �      D   �   x���ϊ� �y�B����K����� ��da�~�R�z�<x��ͧ3(:Z�78�?�~�+����:'�0��m�ߌk-ء7�v�hݏ:�`�f|Cm���rKJ�-.�ʬ��1y!c4;y�����a�Y�"I�����P�ˎZJ��6�|�J�Nz@'ء��i��׊E�L���1�_~f࿝��N� \��0�>���������Ea      [   �   x�e�AJAE���p[�=�==�� ����a�!Nrō��@��\��<��1qa@����'I7�ŔI�y�F�]�l����כ��<�쇇��qkY�\��;#�,��uZ�EW��0=�tJ��Fk�ƻ�N�B�@�j+>'�X�����;�������@174��G�Б���$a�#6��	?�UlK�����r4�����J�o]zT)      F   �  x��Z͒�F>�>���(�nql���`�K--?^'[�J���H�-�:>$y�4#~%@Q*v"oY����n@Ըz����Y۔��ʰ�tE1�V���
��!��A�qa��a^�ag�o�{�ro]D^�9/�λ�����"����q륏p|����Z.>���KmB�����D��n5���T���{#�� �ʣ�HS�S�S�6Mn�g�F⮸�H+>x�EJ�*�<�[��Mv�Lp�Q�S!29^�z��-(,K����A��~����'�8�*%Ma�F��E&R��j!X���@�J
�G^������m���a$��F����Ri�GE�q�D�9���C4�h��'E��~��c�����f���~����R�ź3XJV]���������ư����6�	�,��8�f��ǝT�x�g���X��q���^��$���R����S_��CVs9��:��dR�ĬZӱ�Ne�mQ�Y��c�#��tj!JAXz81�M.��&��Ԧ��jW�.J�@.��� ��4w�4|/��}���!L�*��7���F�l�PN���߆ ���Nv_�P�����:��G-�~��E���^�=W!D9)���r�Xك��e�R���" 晎۵H��U��!�dʡQ��M�y�Zt�8+��f���/3�5Ǘq
���h�_���$D*�g�����]a|{���V��$*�a�q�6V�6�;�O�b�����ϫD�n����-�d����"�qhLR�)lX#H��H]����#��6��%w�v�M�X�@��Q�����㔛�C�ջ��x{j��t%��B�6R�L��߶�������������4Q���nY��L1���Z�"�T;36=��f�C\�mc�%'��W��l��Y̖d�YI�3
�bJ��g#�0��Tz�2=��\�yG_ͩj�:���öM���W�Q��$v:�v�X�(�U�hV��� ��a۲�%r�Lc^0��
��c�M��(�T��$G��<ï����A��� b����p�@wRqR�.�0	��!u&o9N9}���[\�Z%�J�gt�ڴ��S��6�L�3�"2����*���<�+�;C���5qj�t��^ʜN����c��2���b,z�C�j��h[u��E���/�>��F�UqE�����rT�r��U�X�"@Sh� �<Cy0��ý��Nls�M1���%Ys��`j���ebb��n)�j�7)�L�ur��2�)W<JEǱc��y��v^
 �5Z�uR8�����,��D=�1���u�v��*�U)�L���d�目ԥ�����t��%R?a��kt1R�P2���C�je/|��u�nӶ��/v�f������������"���복֢�-OO��Q��e~��.᲌�,��i��>�m��J0�t �����aI�\������ǚܼ��|=�[��}oE�����nl#�R� ���{��&��p��9�!xm��%ʇ�R���"k����L5vY��[j��8N<�0v��\��R�w�G��)�j�o=���C��/��0��j������Kj�R��g���(��T�}�` ���_?����?>~��Ň��ճ�1[��Ɯ�NϽ�1:�7'�l(M�\���M@ͯ����!�5R��_(V��v�OݿӘ}�___�KM�6      H   :  x��Xkn� �M��?.�'��\�&��q�fo���	���E��|�1/�ɪ
���k������Q
�:�n���=��L;��>��7���0�����i�dr���q5F�,Y7Ї�2���\��V�m�0�Y]j��`R�a���S�U@Eu���f��p��L����+����I���,��פHȥ�+�nh��[���.�<�v��R����1���$�A��%m���� ?��\g�LQ&K4�Ӻ "�S��4�I����}�'�w�F�t�v�����2؃�~�e��A��`��N�@�d�&QDrF \�>Q.�-�9va��(�g��P�C��������aU�B���`��t��^��cwړ�=�9Z�Y���HOE�3b G3<��06�סߣ���h��I��d�^?�b��Q^��,�8;G�ت�[˽d�:{_�q7���.ߓ�ݦ�]sV I��L|}��u���v�İa��+?�Q�:Eme�	8ƛ���
�^�(�Dt|f��GaqY�����ΠtXV�\�Б�K(�۬>�Ic���V�{\�$���S]��x�q��қs�@��r(��U!zo��Ԧl��M��ҽ��N��n[M�$6�^��pL&Nڠ*D{�K�4K,�лQ���T.�S;�풑��������~�(a��3��N�vGv�YU{�O�������8����L�爍�Ե1n��ǹ����x�Jk��������TJ:@B��y��s�+[�:�G͵���!�֜2t�����&�s������H��d�eK�Dӑ�W��˯������`      J      x��k���u ��Z�?ĝB�ԧ�i:Y鼬��Z�@���H��{�����Ė�8�c{";=��q:��-�������3�{�O��ޏ AO��} �s��g�H��h������r�V��GKioF�ع��.�����7���c���n�o~���_�)y�d4�@g��b�ܽ�v�į���;7�����f:M.���lO��iR��+����G����t�^�g��bvs=��:��׳�]rnV��['ח�j�]�W��f፹�\>�-F�����G��lи����r�p����+X�3�����g�ؽ��W��r�]��l:��ݡ����y�4�{8{v��/�j6��z�_��koVo��������;�^y�+�ӻv�S��7��Y��7Ko����x2��?=�^N=^��ADX���3����'t2��b2_�b0��r�g9?]8��l�'2��@��3�{������{��ޕw9;�~��t9{�-Xg���C#g�f�g�J�Wo>[�.��l�>J����#�ձ�n^�����4Y�|�f��t�I�]�:&�.�2'�����W���@?����QRt�g���U|�TY����~�\��o*欘�:	G���pt�@k	 _jc4����nYc�S��>�G#�.�coD�c�lP���&"�7aϥزu6�uj ��#j鮍�ˑEGc*���f១�6ނkC����vm9��ƕ�T"�yE�7]�9N��+ ��W2W�\u�Z?G�L15+�)�7e	D�˔	�`1v|�\�o6�)�81a=��F�u�;�'Sx�O]��հ
���.��]���{4�w{�/���]��W���*����C}6���!� 
��H֤� ��ɕ���M�%0��9� s�U��5�
����~�'����P�A>���\X�	���(���.@\c	�y��BS|���O��W���/&��P����05(B���\�"���xd�3whs�3]+2Z�<�����G��_�����h�|����׏2?�=����������$O.c��Gc{�!��!�q���d%t��'/���$~���K韈��7����V�������ވ��6a����1��xșm����7s�Jot9|K(�M�=��b���:kmL���0��hU����T7,��"��0/�q�����o#L ��^�H�v8'������Utx}��� a��O'��c��D�ک���&R���zWCo�(��>��/#���y�XF��F�.޾����xe����$hz2J��%�;FK9���y��6��.�;�M����)>�e2�T6�]Oߊ�	!� ����3g���n�k4�$.5�X0���JY%k��\���T<V9=N�XSN�8=�J5?q�|�x�s��o��������Ϝ�D��U�!op�j>�U����<�'��{1��
�C��>�e��k�*�ăJ<(�k�{.���GO�ܼ�GN��W��j!�3o�N�^z%��r��ǂ�S E&�P�̫����������x����������_����*	�$h�%����ˏ~��������_~�������?~����(���j_������CK �!s� G�@��a�b�!5���BH35K�N��' +��F��6���(m@i]����h25��<�9$�5b����+>|[�;��oK���?�;�5&L'� :� l�����������P�2Ǔ�2��w_���?�+د��^�䃟Q�O�AT����#�w��c�ذm!:֩'�32`F<>��8����lB-/>x��_~��[�%���7���Ϭ.��H��e���R&u�'��Bė_\R����8r��,ݑN� v�}���<�p˵E�L ��u0!��N���${�	��0ڐ|��\j=RY>[�V����\�ei�F:%�y⬜��%�(|r��.�̑���.�j�D����֥���M/��t\�K� ��<�`O&aiD �8�w�v��p�z%�s�����!Cuഌ�CZZ�%�DD֒�U�1E�>�5]\knh��"g�*��]�.W�M��aR�Og��J��^��!*�3���8^i�����>�z�Lo���"���Y����h���l��[��*a�����R����#�E�q��dV��$}�SgqZ����,�����>Z���(�y��O!���Л.�K�)h-Ϟ�[>���,��O$r%Y�Ci�L���<�N�֖}�|y���>g�&���z�|u�CY�	���b�ūκ:q�ĩ��J@�a*ϕt�p*ý\^ݐl��:3Bٚ|ʐ���!,��YA�*+8�
���d��uuA���N5l�n7����n\���}�Ꙇyߓ�B�}��ԩ#��~[|��6�_|{;H�ɐ"�4�;V��������؅��Q��
>~��KV��d:Y	��zC�<3�-_�n����i ��|���b�Ƒ3_���oH/�'�i�-&����� B~��:��K�9���N��a>u:&��H�G֩i��m�M��h�Rb���
��)��Q�4��ß}���GX�	'D��mlXD�<<�)�=}�8�q�C�o8��#f�ək��[o�F�Yu.|s%w�d-���ϟ��Sy)kU��VN������8������(>M�r��2������~+=�YPE�N}"F���b] �����
T���TU�2���je4a;!;�K�˯��'a��e���H��6�c�׍�!��A�1��uK�����Q!��V�>46�Qac�Z�H#E��Q"�3w���X��=�PG�\�����!��h�kx#�$�;v<09��6t¼�l��[�<;h3�:��"h�5��w�;1,�F����ܕ����,�V^K^�Fj��t�T�`������j�D@�X:q�;��.cs΍������>����_]q+���Ѣ���V�W�>�W�3��@\x]V���] =��Z�|k�[�EI�J;�l��G�G;�J���gah�(�P�Y�UZ���*�od��x�?nw��p{H�E�"���zHɠ[���1v#L��Hfܶ+:mHHaX�WX����Q��*?V�����B�ܽ�ʏU��G�[J۱�!5��QRFIU�����2-I���*���Y�u��҂Z�2Y���/j�Mr��e��`bZ�[�f���x��������oЗ���M z��YxA�9�������o�8���p�sb�fCy��ݱ�(�qG�C�����Ǝk��.)!hQ?{7�3����05�e�bB	2�#F9��G����ccװH��|�����]����f��Z��J�V��Vz��N��J��Z�v<s��LK��]S+��JrNl����JKc�z�*�I�OJRn9�?)���[�֘J1PRFI��K�7�w�@I%ez(eڎ�tCc*�@I%e�-����2��eҘj'����2ʖQRFI���2��b�(�t�43�Q��7s1�{�/���v�
�2Mv�P��gV�o��׀��ۗ�~;�A�%aJх'ݧ�&�OVw��U�FK⷗�r�a_���U�H�hv�/NZ����[� ���h�ɶSo��hYx�D�I�x��gMpޣ-�H��]Ҟ,~8�}�L��Fϰ6{��љ�j9֘��r��+�|�j�x���GJ-Wjy��c)C4f+)����2*Ġ���2�	1P�L�l
�B���)u\�s=1�G0}�@��]6r�h��T�����ߖ\��43�UɟD�"�á�9��1և�5�	A�a#�:���B><���A�t>� �t���̧��d�B��9������o����o�� ߘ{e�)�e�!NL��iY۠i�&�4��(MDi";�j�){���L��L��	�� \]��F�m�:�1��6O������%����%�n������N1���@In%���V�[I�nK��=<3Ͷ���H��h�|�rH�k�����/����� �~���44��N}%���V"[�l%    �;)�$c)�4n�Mi�mdr�3bZ:��h�F�N�c�Q�p�Ҕ�+��a���2�7�����`��l�(��8RrY�e%�{"�u��@In%�;)���q,ƈƱcJ�)1�1��K%�:/�2�%�8���O~�g/>��^M��#� �t����:�0u����;�a��F�}o*�/��T㩴�`�Z��
Em]L���!u�cǵƄ��7DV�;���+q1u1��X����g��8L�Kǟ��g�}�g��{؇�>tF������}�{"�=�٧����5��R\u�M�%T���m��@$ͽ�|Z [(?��P�"���d:Z�h��g��m
 ��S��
�ƭg-DS��r���/>��~���>m͒���'�-��lYb���K�]XX�J��E� t��`��%�ң|s\S�p�&n�b��g�@)����c��Q�r�Z��=q��뾚������Y��فo�������w$x�5�
jIQ��eO��5h���o+�#d�6u��t)G��������*B�.�w6�d8�=��I�ғ'Z�I�ڲϕ//��_�WδMTW-0�P����{=u:����F<u������"�,ɘ����kSY����������p#X�$�f7���D�9�n@��Ӆ@H"D��-���Gu��[
�H5���
%f�iu����t!��,^�\6��$L��m)D��Y����v��Y�YNH��F�4�=z�d������fݙ+#T��ݗ*��੃��^(m�.�C0i�Q#;쭾4,V44�����D}2��.BA�]tb�W��=�R�DS��"m�H(EB)*~��:x'r�B��5d�{�8� �e�N��9�NT�U\	��@#�$L���$B��X,Z넨��@D#h�h��ǈg�b���nŵ	@����IT:T��ˬ#�'\"��Q�������X&����3p���w�ѷ�.w-4E�RT�V4mg&]�3�L'+q���P�v?p\�n�ӉT��'���k�o����z �3_�%��0�����{���}�-D��3��7���1�P��b�>��t�L�X=��T�P�)TO�9x�D45�$�B~t�B��N$�BK��"��F�>&j(��@H#"p�P��DQ=2=�R�FhT^��L"��P����=�G�8sќd�>��g#p G���e�(cF3�2f�A�<u�����ɋ�"�X3Pڞ�/=���5�������%-��	� "SC��<�f_�t�x�Ӟ"Dr@d�wH��zE�x?aDdb���7��}�S�HI価��.xc$��zBh"�)q��{��x�qyp �@��-3O5�0?mA2ϓ�(z�ބ
���~"��KJ��;#8�y"��s�ʍ��xʍ�/7�TgR'O�<u��y�"�f.��]�'�p�r�AD&`>���p�_����R��iO"���ŀ#%�����R��0"2a@&�P$�%3��x�Ӟ"D�"��m�}�{5�s�?ܷ#(q�R1��Y�Xp`��, C1��T���Ӕ��7;��	ԩS�N��}��H� �U[����Ao�Q�ȀM���T�?��G䁀<$!���-�/��v:)��f◳��	��g�*k*��g�;��|�Űi�:�E�:>��X���Y���M~��x.mg-�_Y��[�F�Q0\i�p5?���N� -�/��;Fr�Y���d�!��w���Jq�͔94G#Ӵt�Y�N-��6�,�b&s0�0��\^��G��7��_x�Z����>b��t��t�u��T�ݑ���c�1C�a��?��{8��B�zB����41�ݤ��R ����t��7��=��S�&\�s�I��Q���+ �W��;�MrK�O��(��Q�����+o��� ��V�&��w��$ǀp3Jӡy�3}��N	�3bc�x�x��S<�&�F�/�� ����%��߄E��9>�G�������cL@����A���H�϶`��#�']��Ц�u�R�b���:QkL��ǞxeF8_���nX:A�"t��d������,�ro���W��3�ܠX�?BGr4*a�_�����G�4@��vt\L���m>�;6G��K��#�۞g얂�$��#�|��[ftD	���#ڈ�����1��G�	�9�5_����֢OH�j�!�'ʃ�����%B� �X��]������j:>QԔA 
!�����uaX��@��)��Z=�����.+`T3C��M�H���%;��KJ|� ���&��]�}AW{sC���щ�,�����1�u���Z��%\,5`����$�|9�����`r5U޳yil"��V^� LJV�f�I�W��
oιݖ� ��v_W�K��a�,3d��2����E��3o$�8�N�kI_޻�,���Y�w8��l�9�yxt9w0��T�9~��/����w����?τ/Z�+��[}?������O>��ޥ��v|L +IaE)�y�f1�Y,��� �V޵ĩ�g�#n�6��w��?����GG)LD�"��i�D��l��k�@"E2��/���M6&��p95Pj���@�CB6Մ��f4���m t+V2�&�w�����k��X�F͡�ϡIC1�&h:��>�a�����e�p	�	�kT'�e���ᗏ��3�����~<2Q�ϵ*we��x��P{�ɺ��W��r�l1^*g[�l�-g�����Ξ:{�={�`�@0#A�T�I�p��BD*6�J1:�{�S����U�Lf 2�9��T�J������
R)�iyozK��_������܃��ž�<ppȯG�" �b��'Y2��d������z����@P�͑K�7:0@���a��pEy�� ��gB.ȥ�?����JGIG�6'�����`���I.V�O�f�9y6�ؘ,���d<q�`c�ϼ�/E���/i�톼PkP���P�Ts��-#� ��b�ܽ�!-#�� ����j�K�9��5��N�2.������پ.٨$I}Og6{q-��ʙ<~,�蘲�Q�JP� �%�KqZD�AM0
�>�����O��2���c@}1-�'�5�$�C_L�Ǻ���WWӴ�,$�a�ͦCg�{j�G3����p6� �葷�N��~���Mo�V����f�t����L��Ƴ��ع�L�
�XN�D�������~S|�J��� Hq%����ƆX,9��t���A�gaŒ������\*��,��US
xu��&Ҕ8��|{�O��z���"Zz��6���6���o��_ٷ��l��Q�@�(��L7U<���2�H��W�6�I&2��&��I�Q�ZM�g��$���ߗ>{?[����Po�ӽ�z���ԋ����ƃ���ު��:�۝��{<��kU��Oӏ�tˋ�=������O�Ƕ�F��Z��~�c}5j�4L�,�$?��J��[{ �㫳�+{����h�+�.)KS��^�.,Б좎dm�$9���ʶ^dr����� ���"cݲGD�mFlo8���B�(�.Q����	��x*Z�K�Fjk�@��r�=�䄪:w�ܩs��s
Dnh"Q��\��V��8�� "�r)��zT���yv!�^��v��&9��, "!�˭@"D�QQJ���Q�D
H���O��%������|$Δ���WͯFE/r�b�t���P�=��/F@05d�$����쥽�Y�C��ےlqUsPz����kz��J��UA�Q�pPZ�n�
B�D�
B,Z�s�
B�� �B~��*�AA���%MTA�Q�X���;�"���$�u����m����V�1UYۚy���e����AV�6���=���-�2چ�(�#Xv�)m���Onw��(�O�żR�w:ߖ���?�O��F@�jpk��Y�rr��s̙x~��Y��J���x�f�[f]��.J>���l-@#�k��>�<��`=���&������,� }R��W�b3�tD��=��Đ�f���?�����$��A��H    0,I%@q%*���[Il�Tp�b��I��!� T� T��B��5����~���/��)w���"�2����&t��.Ex�2 r.�ZR)��V�޽�%N�@Z�N�) �R:j#]�^`|nq���z�w��&+K0f6"
��ھiэ1|F����.²��aT�S�m��[h���7ߨ��g#M%ݫ�{�S�s��;���:z�=z�X� �y�6�N��ȟN� �bi�h=*)b�W��P	6>*�}�T;��"�O�0��`R;i߃��"�{���&��*���f:k� (�*&��I��*TJ?�fL����j$�S�^"d��ʬ����k�����Q���k-Ue�����C�X� ��� �LGI,ǟ�T�XL[t'E΂i�]Y���?f�3}{_��c`D���rr}9��Z{����&w�P� ��1W1�FQ����mc�gdg�de	���¶�pC8Rrn�!�w��h]	~��!U���\�v��|���"(`U��[���Wx�����|{S�+|Ϙ�:����
4&�η7u��S�����C��pc��|{X�+�ۢPI5O�Щ�O�t�	���Zu�w�zXu�k ���p.��3�jȎ��쭆P=P�h��|Q��u�����~��HЏ��t�~}�q4Z���8֏�ɐ�QL#�7il<~Ґ�6��V1W((}Y�U�^]�^]��Ui���4���7'%z�F�曥p���v����KL��7�$���ڐ�=�ҪE1�9����ǩ9|�Ԝ��ݻ�M� r�< cU�DL��&�9�ls�aϐ�Ӱw�TE{1E����*b*-Kbh���#lm��\�Gw�X�P��q,"���V����G$-�D�w�c+���Q)�{
��=*%
��(�"]QD���h#�Ʀey��Z\��tuˢHg���>2Ɔ%��yv���6[7�yAЅa�sb�����_`K$��n����S��,ˑ�/\��?v�K�������%8Y[!�6T�(�<�B�Db�W�{�7�}��_}����;���?G�7�?������:H}-������<,Y���/�o��b/>18���	�!gE[w6�v�;j�KP��ޮ]
�����"���He7ɸ������Ms�ٙ��l���R깨����롳{��}J��2]*�|q�-���r�7��f��ס�QIӪ�:&�y�&Xޕ�\n�B��HK(��L{$�),_�BG_�jI\�@��>o���%]b2ֻ�X��R�υy{���3�7Um3K��;���cpMh�҄3�P���)`-���,�젝�\Q��b<Y���6��.��Ѱ�?�?3ͣ�2M����v�q:��*Ԃ6��Rj���a�2�:~����K�v��enL�17D{*��6J�M�|����tr��\qݦ:n����hS2��`M�eJ71W���)�p@;�;4�����Hv��G�����㭚�T����rg߿�/��;v����_�#��e��4�����J������*�ܰ��|�ڈ��5�2g�0gk����|�ɇ�����g�8�kз�
��`��6�c�`��o���+�mpS#��RQ�e:l��>�G:�Gw��s�zt�MB�Z�8޽��_,�a7��������^|�O��?�������
�@K�	�b1�Y�$��JZ��e����m�R%���N�!���نė�rl;�g�ͱ��(��I[q���U����f��8�/l���4���{/aٔi�4R,�c�QL	X)K��u�ݶ����3\7�*�<�w��]Pt��sf���[nօa�S+3�f�t��R�q�#�m���3�;3/�E�R������ا�c��f�e�Ƹ�S����k{��3���� ��H�-��Ǯd{3�b��i�B��*;a���H�}9U�
	[R!a��V�K�f=0U���q4T��ZRqA8����b�*s�[	x�I%�<_-q����:��HI�AI����P�a�|�,:��P7���D36M��7�#1�sL�m�ݪ�%&�ƀjK���/�mesٻDt���-q��I-=^3�1@XJ�\M`'�_� "@~6�r���\-��ϦB�]>������������XȻ_�{�c!���7�oK݇i��;[x�~=�c�h�a.�����N�U&"4�FA_,��!���w������G����(@C�f	���~q��~~��'���Q0�?Up��b�p݆�����+r�u+xೊ�vvU�5��ok��dz����`Q:J���Q��fX(l�]�޽�������G��m��P�L�
 y�D4d�q?��v���{�,)	M�P2����F�#�[�=�ɔ˻~_�����ɳ@^oۛ�.���"����X9�$!+.&G���%�Tv�7O�^#�Z�5��SVM^���{��,A������W֠8�' ���t�{
[���m
kG�pBtʩ�֤�R��a�Hn;Z�U�3��^��s�
��	��4M�&>��mW70stJ]�[2ufrfc���v&_���w�r�IkǔTh�� ?B�p�m'�5i�ZW)�eA���&VK�P�D	\cF�GJ�<��H��>�9��"%�_�9���gXA!���l����O������v	=PMTG)zhGd����C�c7���ǻ]w�����d�d钟���Q)0�65ibf�(��0ڢ��uշ#Ptbv�x�h;����`'9�\���*�[�<o�:yv���Sf�)�����<JIY���}�^r�l8d���J��([G.�;\]�e�2�`hDR<�R���J��	��BQW�[l'U�'��ز�:�d{��*�d�CwK�Z���~=����H�}Y�9�51?%�[.B�=�:�,G�㱫;�e���������79��� �f��D,�ɴ�Ӝ���6��˸TX�9��dˡ����`�3w�e/3�2�/i��0տ���ܙ{��f`̍1��!p=s��ȱ��ia>��y�54����c�ȏ��s�w[�����ӏ5'���kh7ev�/�Jձ(U/z^1�q��˲���}�O�Ӛc\���F�f5h1��F~��[��ڹ|=2�J�Pt�3 ����Q�Q�:�~��PFbz�MK��ےR������o�2+�Vڞ�X�c�b�{D�bGc���5,��6%k�yDK�1�&$&�M��d�I	���g�`�� �4jʸ�%(E2FјRήM�G�'1z%��8��L�������V�)��RD�v.9�g��u��&�À��o��lk��y�N��XwF|"�Q��5t�>���~�w����G%j���oE�~]�5
[����>a�yv�i^0�;G��0I�-Rۻw��f��q���!��NX��bf��=ć���Hs�K�ۭ'<K#��[} ��xgxgl-�f�/��Һ�xP��٠���ۙ��M�~��ٽx�e�(	Ϥ��6������z��t�������gr��JF�\�ѷf7"}a%2@�L�6>���,w1��g�������_*��X'j�j��~:����(�V.�(����{�sXqѣ޳�}�^ON���X��W}���s	t����T���Q�<�Ӡ�� '�R�w?2w�d�
�`>���)�@$���s��͆2ǉ)]�@ۛ��5t�)By���I�iH���W�m\;�
��$HL�+fyE���4Գk������%�_#�Π��j�`�\K��<��s��Z";t.%_MP��
u����Dύ"�� oW�K}5AX:�t-����L��>El%t���B�ę�r�W�*g($�cF%*��}��W����t ��FLIC��N������_ܪ��y⬜��gV�o����dz{���oOAW����_��"�3{��:��뜂�'#����Dk�UP�NS�	�"i��q����4ep�V�+����ݧ� )�����IX?z�J�L�����ٶB|��E����]Օ��Y]�o� �����L��`e3�~�,~C�W��+O��ɕ�x��jUxW��E����c�C��Q�5��}0K�(uI�����zr��    �Ailu1o�;�r,�&�|<{zo�pw����b(T<4t�7+ғ'Z�I�ڲϕ//��_�WδMTW-0�P����{=uHCK��b�N�:}�����E��t��Q6��I�yV�g��uO~�o�v�aW�tdd��uKQp�`�� ����X}Q�K	�o��0J��&��XL�H����I?�C]8q0D�^$V?J�k��I)�aOJS�۾"����T$6��R��&��eN�u�˂bݐ(7���q������%�:��֚"�r�,��l*F�c�$�L\���j.6�=�[M"ZILp=�hP؎,��a��3�Í�J�(/��.��A\�b�uAI_9��t�G��M��J3s`_����t�q�(��ԙ@� �3_
|�枰����{zy��s~� �� ��-����Z��b(,�N*$'e��<�,�{��
�e��E�IDhʏ	��j�\��L2�3 ���c�A��l�\�:���vuN�qcLǈjI~_��$�����~�e�K6�D��|v���E@s�b9kKbq����Y"�	�0��λ�������xk���<a@u��|t���D�xn1�PNE`'�J4�$-��`�$��5���r�MԔC��D�۲��iC!:Cΐ�˗j�bQ*�bQ;�E��u���S�oχ/��L�N������'*,cR���ZL�Y�����.�X���m+�'�QLbG!V'�Q��ӆBD-P�d�2K�ͣ�)���gۊ�i>�uNo�	�a��"����d ��z�x_(�O[r��,����G��^#��6XP�n)p�<�A1%��s0��p.��S����Ϧ#���'�����y����L?�������]e�D:��� -�fE�>}�%>��9�
��b�r�(׋r����R���S�O�=�H6R���� 6����T��}�/����!.i?��a�D*����r���@��UD4`H��j=ɑ.���m+§�,�g�҅$k9j:���� �Jڋ��Ilmc"��i�@�P��6�͹�'�u|�6�F�Q��+?�c/�4u/���3�S�����+^���QU�Ei;#���n�Ƣ�M�(5�D�=�Ui�]��ཻ��}0�q��-����NjV�UUc�c]��eܒ�2M#U��.�h�4@Kh���RE]����#�-��qM�4U�[7KSQ���!��Kq�51�T)n=Tܨ��y��2���y�qN9PgA��z3�BX�~��K�����*#,$,�o��T�[Q��6"jA�$�<8I�+��a.h�8�2'`v��dT>~�����%�.y ��)��݉ϲ�&dD��p�83� ��>6m��!&�����Y6j8��m�?���}��?�އQ�Xխ0H�l�!��I{�|T�I�����An[�6>���p|)�>~7=�7�S���W}�z#� �b�Q�?Q�γ�D��hغ�_5�f�8'�<E#~�y��s������|J�6 #{�M�u�r�S���F�a�c׶�c�lF�D�c���N���_���=�ZC&F+�;�C���((�	�:��%�څ�_��d|�78+ʷ��s���
��w�`�4��:xI�,X���6�����q؟�yC<
Fe�()��<��;��vSk 'o�C-��,1f*��UgA�C�R(��v?��S�$�I����2M]~9��R�_I.����{r��.��䲕����e;u�wR�1n�mNA�G�)Щ"�	&>�̀sn+���nB�1Ϲ��*\�cYq�ᱧS�ڦљ�2�<�������a�X9-�Ξ��X�-G[�*��S���juJjQ�ya�s�m��<L�=%����v�ͬ�vj§dH$��fZ�"�>?8ۙhӗ�z�~c��0ڌ����yzJ�"��vKD��Q�r��tC�����#��O-vZJ7d���6v,�(��M;�.]���v61�\�ʶ#'�mW�����r�]ށ�
�+�F~��W��D>zTV��iH�@q3"nnDq��EQO�fU]���������X�ޜ����O���-����Æܥ"���'�(e��*H�!��p���!����-b��ull L,��$}���|�O��R��eH=�������~��o|�_}��o���?����������2�^ �������/���?��t�{�_��Y
�l���t���V\�������}�̓2�jr�zc�Q0�(Ȧ��*�T�
ZXF뉓�J����cw��ss����`/W ���Ԡ�&
��vFI�{p�%�ˁ|��W���89�o��W<<�RB�����)���&���{0�}�4�k���6Xm����[l)!H�8/��M"ʫ��ʫ�[�F���Э!c([l*ft��NV�T�}���O����V `B�H���^Kv�[
�j��O�ܛ�09��S�~���Q��(Ha3��T$�G$�6��E�@I��+)��V��V��#aE���F��0�B�)b��
�my#
��&����n��@5�ĳ1���j�^�^���ܲ{$�7�����h����[�s�;J��@2a�������E�6����}�������'�k�	�Z@�\q�:��Ժ��9������䞻*7I�=���/�_��.3�wWn��}�I�R�S[��{��Dd�����fi��&!$�ݔ�t�L)���p��`�&�)S�u�I I�0vVnҵR�Ԏ��LFC)=5��9z�o2�P7�@��F6��B�zФ�p|B�=Cmq���)N��ة}0N�U�����p�=&�6E7pBP��(^�픵~���p���]�����Q"(ɰ�q�%�̰,/�9P˯t�T�;)5cE{d�"X�$A�4��zn�5�~0�_b�Z�W� �3�|Ib��#lm���ώu�;zt��:�����g�,�?�z|s5�v&��ۗ�~{�,W��Ε��5�,�?��r��7OP�A�Tٚ��#`y4E��M��+J0M���[Ug1��EY��l��}7
�ZŲ.��>�#�t&�o����`�~j�:����pǾ��T�Li���y*?�*s��<�� ;9SΔJH;��R	i�NHS�XZ�)0�Tb��[�@������
2{C����3כ�}����Ͽ�����������A�`j|Ht)��u���x�����LP45����D�stg<2u̙;��噮p5�e{�e��,�Pp#SH�]dc8Խ1�w���>4��N����F��4];7��be��;+�଀`0o̝���l1�������a��-�~/᮷����SDe��-������n_]��e�u#o��LW��x����YzW�<~�=�=�|Ӌ�s5�L=��"����{�Uq`|�_��+PG�����ya
.k?֒W����r����"Z�� ٙ����MgO�+�`���M�1�=���N��g_�zB�#o�.&� ��׿��G���_>����G�z���^�㷞�!BD���w����1u8B�.�_.s�?v���(E/s�s�R�#P�,�!���r*��,u�r��[,&#o�g���Y�����R���Gpu�H���������sV7/�J�}���v
�P�H�]�:&�.]�iD����W����9A;�!�\�`�<�-&�P������_���+�7�xǌ����
%��w\�j.���6ᖲ
~��\I���/���GO�ܼ�GN��W���Z���[����^�+�ܣ��d%~l���I�@��R]�ZWW�J�+'�6(�u�j���N�	��)uO�{J�렺q/��)u�o�^@ۉ$�@��z�5���s&w��kH&�ȁ���uVǕY!c[���'��^q肔SCIZ��?߬��d���NYJ����\y��̞�3m�,N�x�<���anF�Ѿd�\4��p�,��C��#��]�S�ݱ�m ���p��7r�i�����~���_��O����_��+b���J:��d�[���c6ԩE)(��ld���C���G�� ,;H� �	�Yĵ�+��������S��;��JA2I#    B@��b5�ү����E��x�$�2Y�-mt*;��[��O7�&?5Le�ׂ$!;���bA^f�)�!@=��a��!�M%�nk�H�;�!�V�xf�)��@7�`vS{��1$)�}�n�e��""D��Wj���~j)q�D�v@D�¦�%"&�$o�/�E�aF�v8Ўl���dݫ���J��6��l8��=�Uя�
�F��4���#Yo��&/���'Y�''i�Ț髓��IP�_�Ps-���@������J�qa�c.`:9N��˱�D,�,g���\g��u���;��.-���d�h���?�� |d�=���U=�9�7�V,�xY�6hO���!+������x��r���K4��'G�l�[$�B�����R*��hi�\�6}�����U?����oU\��|�{�|�� ����˄!ӎ/��qBl��W�S�@��d��	YjĮ}RD�&^\d|J,$+v[Gp��PQd���+�s�M���'����K����"є��N�B��K���.���[Ǐ�<��}��n�HlDh�m��ɓ��^�WG<v=�a�N�~���ʇ��"�%&+Q�3H2#&��ɵ�jp=�u��!��o��AF�))ApC��"����V����5�_GѲrt�_ԃ�Ie��T���D����F��˩	�`6�c6�UD�y�l���e��P���AzWr�c���c�ځ���ip���)�p�U�2�����ͩw��7����A�������*U<��/�
�9�:�Ǟ{����v�*Zi&�S�ã�������T!Z��b>6H�A��4�5�bK�A����
%M�1��XV���c��'y�ͤ�Mhi.D�ߠ��$���@b�%E#�;.�X����b_	IX@�F�#�У��ŏ����w��a9(��UD^�0���8�Z%1�"#��eL�J�S�L������-��p���Ŧ�
�{ۮq�	��37�Q*˫V�:{-�	g��<r���ޜ�����D���ٙ�,��TyM� �N�U��bjg�T=P٬�cGk�a�jR�	�	��[)�:���N༫)>�7$�����Y�����Y�����Y�Ǌ��Y�׊�̳�����Yg	T<f�%tQ���Ą��iw4-uP�}PYFA�����.D}J�..�xr��a��Ͻu�r�E�_�ƫ�����k9�w�2��xuc�l�Zl����M�-��-Q��$�dk�oa�9QF7;��p���Z4�d�s��W��� ρ
5oj���"�L��xO-��}A�s4���{�~����֋����p��������KU�����{���s�����^���A�;��z�S$}�$�[���M��X�'�
�WV���T�r�U�gV���c��+���ע�>O��o�?�I��ɕ�x�iC�I��=���w$S��q��ɓ̊R��/{�,��l��A�����{ˇ�8X� ��x�\�C�It����֠^���s��K����{2m�UL=T���,�*}oi���R�_���w����넻D[��ފ�^,	(�L�oV��>�В5T��u���C���Gf�EK��,�� �,#�F��2��I�1�F)S)���y�c7�����a�����&�Ԃ$�-N����wm�Lj�)J�����1�$��f�T�UצΤ���H���m-�]@��6A��K�Z�P�I��D�m\j [������q߬b=�,���Jf�W�4v�-��h��%��K�`�$�#C{�Ѿ��[�%�D֚m�%��7�6�,�D�EX������ꮼ6'��n�:��A����9H���������t�L9<Sj�h�'�>��-�v�m��g�h^-ʺ���mU4OE�v���6�>�M[�����1�:�&F��,l�wK�<a�D~�z�U�]������I ����;����>4@#?\Ն�"���~m�/p������$EZ&�V>��$�t����v��d��xmʞ��S���|l��c�$#�R�׊(v�����������rd�Xޕ3P,ѰV�(':���e����f��^�@�Dk�t5�La��AO�g�5�a<� �TO�
 wV=�� P���о0�9�[���^�u�X1��H���7,�s�P!Ǩ�]��AU5���C5��Ջֱ��~Ā��,u�9��n$�ꈫ�¯�(�YL+�CBG��(�F�4���h����G�	� A�)�&v��"� �6�S�b�J˒��(�%mn(���c�k�W@vLIY?�8�r�d�)J2��ds���>��c>0#k�!�<�i������?*�[Kbܒ�	��G��+(��̮]�h��k*�uW��~���c�2�lI��㦤:�����+��j��A�=ψ�EM�n���DoK��"��5ѻU�j��%��I�8�tg7�+��ph0���>��r�'Hrb��"['#,b���[���#4�Gc�b�Ҿ��:����|��_����d��o9��X�H�ujQ�M�t6��h���G�{� '�r��%�?�H�)G4'd��;��
�T�`
��f�:���x��,���k�Q�2C?k��L��`7o�vg��yĈ�t7��6�N�儗�Ω�
��n@G��$ݘ�tW���mb㒂�n:�	��{�0�4�e�n���rE��� )��O
1�`��s��X|�2���M��{�0K �)k�åV�]�˜FꀗE,�!Qo��7��3(ySo5K�\u1սuEP� eR��:�L���v�E����z�]X��F��_��O��R^bg>��S8"�o�z��9�6��N���89�oA�FH�x\�n�Ӊx*��J��B$1wx���R,b6��%:_xO&��˛E|�-��?�5��$}mB(�68w��m;����w|���8�ƥ�M0nƙ�sg��c9��0��Y��m�L��Ks��-=���?x��o����P��zyL�P�+���ؙ�ʎs|W��%-�d���2����*���GP�6́Z��n�&J�3 z2���k�H��eY�S�6H�=��#��eI�YHܒ�T�d�gV�R:UJ��H;.�ˤ�t�����Ro(%�;�Rg;�:+F�QK��7�!�m@r�<�!�xZJ��N� 1�Z��BbʨN��};u��<�#���_��1j����1Q�zL���z����&Ŭ�NՀje�R[XL���?���GԾ}����SP\�P\9��̢�pIĺ9�El
���Lmjɜ(�6N��N���9M6�^�Q[Uc6"�nWcb@�l�T�;
Wϧ�}|��L������zJ�W�b&sS��'I��ɲ3ީ�KO���`RD��� �ʼ:�����χw<�Tc��E)��(�>��!N��G�P�mQ�X���?�������y���~�K���x2�^N�/��7E%�� %#�iX��Ycur���7A��|�*:p��Ɓ2d�c�2��D�(���Ut�ģ�ʐ��Ut��(n0@�̓���Cl�耉�H��ƕg�kF��iv	1`QVMios�:Q���e$V�I B4M���H{_��t��C- �I�TX��a���Lqż�ȼ�GULZ�=F��v0W��1�N��a'��Y#�f��a]Fqo�E5�e&��ޠtb,��P�wxZ�|c���]Fq#�'宬�JrRIN*�I%98��%��>;��g{N;�jׇp P2��T��8�Q��W
�+�� eȒ���e7Q89�
*��=�֌�s8�xhlD�FFD�딄�w'���� ��N�hs��}�M�5E�^!�I�{��h��[�0YpTyc�7Fyc�7���n��ycTBNה�z	9���w����&�XHcX�v�/s�ч\J� ���*���3�,�!s��*���$��>h�Q���Sg�+Pv��f��A�]���Au����f:{"�<�	����x��Ց��5(�M;�\�$b�D���Ǳ^�(����(?����ڏ��X� u�ԋ����;_꾘����F{�x�    y����(�A+x\�; ,R�E�ώ�o���r2�ˮ�;����z�8�~�5	�g�g�����q
.�#*������S��I�<�>�j�C�2��
�R��»"���%�H+�/[���J��y��e��ESE:P�%�E⢴���U?�$�cI޴���,Ny���h/�qb#B;�k3�O�LF@���~���o�]�|h��+r\b��z��P�}r=�\{��C\w7a�04�FFE� "��kS�_ۊ�XVuk�u=دm��׾�}[���h�Q��k���8f�QED��w�&�Z�	�����]I×\cXV]���;��͒�-p*�QUY�]I���l@���;����@�,��WI#���W0k#���'��"(�������%���ݕMt@i��� @'?J�>��u��r�	uP�Y�II���{p��`�&���:z_��J`�,�*�l0��C�eJ��R(��G?*'9%�����5;�DN�G��VA��$^+��5��I&[V矪TL��Y��Y�@l�(�!T�P��HVZ +%� J�cJ�;+�s9�����>�ц=J��K�]Ny��_ɥ��d
6B�����LQ�r�&�^j�E ����c<�!ꬉ�s������_��O�o����|.&�K�,&*�I�h#do� V�f����t{~��d��Ԍ`v9!ts��$�5"�4�`�I���^|���ɡ�ۋ�K �X. �?�r�S�Be����F7$Z��u�fd3,A[�z�Y�|l��N.-7pK"�*e򘫛�j2��dz�ogϲ�7������z�iZm��K�D(m5�O���R7H����X8���Fן "�a@3�!1�X�W��]?�F۹�����mB
&�B���f��@��nh�gB�A���Yb~�+gZ�pG��<$)RD�A�Z�l���,�2��1Έ��2bB�V.�k��C��}V*�!��?�������y����S�nS�c�o���4m MY���O���Mq��p�%1� (D���YY�Q�V�І ,�nB1HcL6W�`eS���#�ŗ��l�4вh�C=�v�L�Y �GL��q�CKg���S�D�c��N��ٖ��`�1�
}$���}_��|���}��,�@8x�G�Z|Y�?���=�����!���7�=�˲����%��&���-s'�5�}KtM{	�M@�,︷Y���J��7A7t��{��)B��7A��y�z���>�6�[��Wto)���Yٍ@��}u0g��[9�\���Dl����i��謹�� ��Ы7[l-��#kj��W���ȧ�CZ��е�e\e��%,� ˫��Zk�A�EQ���s��\�㱐�E�Ư>~�|�W����4Vg>��ӕ��Lf�WY
-����3�L'+���B3�( ���f>���B(�]�� x�ԙ/=_0zB��ޓ����f�'�b	��#���"�Ң@Z�$];)�7j�H9�74�����yW���[y�X����D�nNT�G�)KVUJ�RJ�R���N�Z�D�]f�r�դ�nN�mu�)땬;��`gџ����aSiBG5Q�i�s��,ѱ����I<h�Tړ�Wϧ'Ѭ�5ة�%Z�2.���ÞI��gUˤ�#���s�D�^�e-bGm�(��p�V�c͇k�Z(3RS>Ct�e\��|j��6JȎ&\Z5
K��e����*Vܚ�Z��uTՊ�C�DC_��e!�&u�K	<�HM��t1p�C�24�{Hu���۞k�hD�1!.{�$�S���/t�j��_P��p�󃳬����ɯ��G���s����'d˒����q1��?���W���{Fb`]�]�35�kD�Q�c����GY�E�&u�CM 8�̾��6�����(z���&�_[��{PM[��{��̾#rR�}�+9�����7e�uxvu�\��s�������+��B��`�*$�,;Vk�j�v�v�*؁�=I�,+$wqU��kUtea#鍌�Z��Z �r����f���tZJ�WÝ�K�K<v!�jb��TFJ;gh}j
1�n�������T�|ɫ�tˢ��E�vUrǇ�L����IV�,�>]Yt�g\��U���[M���s�E�{�e	 �����8�ډ͢[=�Nib��H���,�3KV�W�*�Y�j=%�nմ���<J�N���i	�J=��O��٩p�z�	�?��fJϋQ��������������_�p~��R�v������������F Y������ɿ�� ��Ҙ}J���i�0�[���v���F�+�7|K�x�(mZ��,�����Gw�P�)��o�	� �
t"q�X�Fb �!U��~�O��ʊ$��Fre@��6h���.�}���mmPi�O��@�3�4��S�Į��Б	tdg�H3� ��>6m��!&�����Y6j8��9�yVFB�������]��`ֹm�/E����/�z��?��2��^����3ƺ=4M8`#8jq�${�3��L5�ږ7��:nrX��6��#N<s�x�v�	�p�4R�Qi'�J�8�V�˃����Z��Tܲ����M(��@5(B�F�soԊ�&�b��n�{�����`�c�����]���x'r�ϝ9�6�����F�?2{������.�3\zn;��A9���}d�����/�����_������8�wձވa��ے�&�J��iI}Sg4��ݵ�SH��r��;�h�_�*Ƚ1)�gϷ��%Iǀ��4�Wŝ��=�����NZ��/կ���(����AX�k��-��33ͭ�����2-������A���G4Ȁe��4t}��,(UUss����	h�dGи�1]��8�Q�m_u�W��;�m��L�^}�k&���Ľ����۹�V�[b�F7}���z��������Ϫ����&=�M�C��C�8t}[���U[�}!�Ig}n �ev��t}�e	����ݥ�&��9����8O���Ӗ��j��/FP��>ǀhI��MN���,8]6�J��(m�+:����QRՓ���2�u@M�G9wi�D�>�+x���;M:E�Uu��G��&��;��J`��<�FP[����mG���$�h�jn��O��`Q������7#H� 	�o��dUx���!�7Y��4h��V\3�Ľ�
͈������4h���@B�a<Y�Ϫ2m~���X�Xf���V�CZ��,Y�	�mC��:3!ֶ�JHQV�{QYS/jṷ���.oC��*Y,���T60[*�+�g�YQ������������k�Ǥ2]Cy?����OQ]cR��[��N�EZ��;HE��Ien�8�5M��֯��[�F�n�L��^*�qL�H@k��v;�e�k0����i�tPQ�cJ��>� �M��ؽ�-|�/"�x;R|2��J����z�D>�)���;����ѽz]j��	�&��*��˹�"��d�!�K�rI}���d���7���n�My�&��;ʛ���>}���$����xS)��Fm�Jrd�Ԩg`L��=�ꔳ�>��t�0��!.�|,f��_��c�Q�S���[��:,�#���lXI|P�'�����H.}�Η�~����{��Ђ�LR%��dS�l���=k�J6-PǱLWfv��l1��2�Z������5�i����>��$-Y-[(3[�ق>L�Y�efw�MJ6-��DV���6���NҒ�fYU%-�0JIKb(�Id5�ɚ��q]W���HZJ�*�$-�Ak&�M��[�D/��RIh%�m��e*�.	��}q�$�w���2w�JB�p�\fYno��d_���KP*)�c�ײ>}*��MraR�Y�\(&��D�U�Y�U�Y��C��Vx�6�Qɼ�*<����5��:!��
��ޯ����UG��Dt�,hb �UGݦ��T³�����Љ�«)d<y��/��T�P��H�E��$͵�$uB�/�����|�;���ܥ�~�f�&�<�P��E���
�[3� C`Qg�c{Ʈ�g��Ȼ�+������    �!�_a� �@�$(ŭ�[!�L�#�tꢩ��j��Z$�0��+�{#j9*�����4ch��T,#B�el�$zn�Q�j]4U���PA-����9X�y�D{,����]��\���L�h]�%��hz�,	1�ڔ��V�t�R��.��N,�.fӚ2_T�ҹv�:P:�@i�)˂�^{�XԚ� :���J�S��R,�b�e�3`T�<�U�F�HJ�*K3�l�J�Si|"�O��a'�4W5�&��P�6�"��\A[�\V��+l�\ѓ�
� &�`ň6"���,6y2��WM%9�/��w��A���ȩ���55��x��z:��^����D���BF5A�@�$�b����Q��?�!�X8Ow��Z׃�>w���P#����K��X��=��Q�{ 71%�E�J�0�L���_�>4vz�^HX�OY7��^ـ�Sh�֛$I�T�x3l ^O�۩E0�U5��]?E@�)4�:56&����t�4֙"��<�`���6<��(��<
x�et)��e�H�M6dB%�D<������5�J�#��q��us5�=�����5U;N'����%b�~y�Gt�~y6 Z�Q���I�����S�C�OQe�v�M2n)D�j�N3ya]�J?�J[(�P�ا�aY;#�$��@Ӓ�yD'�$�b�C8G[5�kh{W���Zl{
�W��n���_��LK�~��W�~��ˮ_j�R��na���,w�V�_��-q�R�C�~��M\��D+ׯr���~���\�ǉ�&�_� �2�o�o�U��/qEt*��n���ýʛ�0�[��=MO�*SL�ڐ9l���:�Z�WYE$�@:�A���[���xʎyJ)��`@��B�:w<��߿x���Y�[o5�J�Rֱ�Ԫ����e����l2!�qCVuj����w�X�����L��"���8�����{p,D�`�M&Db�ȚK�Z�e}�=<"y��&c"1 ��U%��� ғ�cM]�X��\��0�T"Y�R�.��j'n��4 ������y�L��,��|�w���`�?x�W�K������6$��L��|7���#nݑ�������L�L>$�W����N���`z�O���
���rt3�N܀d��.�艱�h�̗�/&=!T����{zy����o���ʑ3�"��@`����$��C��@�,I�����Ӭ4�d|�5����Ʊ�[Ǎd�h/��)%0���"�/\;����~?\܈��o.���P1�)ܿ���  �[���Ny�C ��f���Y�>TB�1��NV�K]���b�z���cqv<Y
�\�\��Ng�_�,Hlg$�g:�~Sl�Nş ����v���g�Wfb�%�F_z��89J�[#o��LW�ní�b�5�@���*ğ*�#�I�{JB�f��J�I��f��0��Qma4��
�:���cx�c�K
�R�a����.��W�H�2#K�2.�,�fH�0���d�7���)�%)�I���pl�%&�A���H���H�����G���Ƒ$=��1��MR�p�6&��n0±8Fu\��6k=����7xm$ud!0m �$
o����'k>�R�]M�};��y�S'���=�Mŀ���'�����ݟ�C��z����+��d3'M��=�Շ��`G�6�x�����t@���.�X�)�d&��VQ����"���kHJ�Lӊ]>c�^uA1�Ѳ�)��Қ"Hb��$HjƉ�fu"c%�:�����h�(Zc�L�[G�kg�qGIVLg��v㣤zpm�ŵ]��e��$S`q�}k�ҳ��O>���7~������+v��;so�l̈.*�^Vt(�;܈���0��V�ت�]�Jl�8��ی3`V��K\�jVW��>}
]����L����>j��En�:��NC����uD-�����)�ǲ K����nnPJm=�uD��꠨����F$%�f\LnV���t�:��hu`]��ۀ� R�����f}P7ڴ�P��e��y�W�L�@�,JW�Օ�U��������L�uQ��	OA��C�� �e����cW���+�q��fU
�P�o9e���`Ūt���g����<8��4j�� ��Ƨ��!DEg��y�S%����	.I�ت*����n:��l�1�jQ���̳����ї�ضė͓`7��˵{��\;�ʾ����\]!����q"k{���:��$�r"��*�F�ڨ\�kӥ\�f%���\�k҈m ���m*��8��$��F�lY�M�ڨ\��F0Ј,��rm��MrmlȖ�T��)����/�)��	��񄕡�CW$���v�f�lZ5�?B���o3 rY�A�C,놥u\��C,%�m,+�ݩfswj���rꡊ����=��Br,DQ7e��R䏃�5R�Ʃ$���o��%�w��[����#�TC���ij��$��c�8o��C��:0�M|yW�3
`^��Ez`l80�`��^��u�u�{�y˩D3W�?]���h9�E�T����Q�?*��C�?b 2��Pn��;ۡS�w:�VݗP�D�"@�`�JwS�n�P�Y�[����������"�*�M��E4b�Ȃ�*Jv�n%C�8���S�n'��&��q&sa�.Qd���'ҟ�N�'"Ϟ�8�8���9�.}Je��yIe��U!F�c�@{�P�9����(��!F�V��·;��<(*��"��  �]�RA�h�Ҹ)� �"ǁ�&d�e#AP��F�8����(�h�����*�t�ne"`4q�Ѥ�L�e"`Dp���z�h�ˁi[�I���Z %��v�dڝ*{ReOʻ֤�	��ԜjU;�jgT�L�kg׸)K�]�Q�bJ�$	c�B�c�C��Pj�R��Qj�cK�\��Pj�R��Z�u����N��B��J�7V�	��!�p2���IBqI.6"tÿ���2��ɓ��[dsd����|-��	=|EV�[MV�	�������k����*�W��-��4��|Q�f�hn���ޅ�t�vq{m%�WƝ �BqI�D�
[PE��$�
5�JH��N�ֹ�v�T'П}�+���4�!��N3��h�4@����c.rU�&�`IBH��uP�������r����q�$}��Z����Z���%U-]6�ń#IV����WKc�q.�Q�ҪZ���������.0���U�tD#hD�,��U֒b��L&Z�\-�[�� �`���Qj�`GAYjf�J�S	v*���	v&�,C�hnTy�Ԩ*�JD84ٰ�����A)�z�]�%!(b�q�di)�z�=�� ��\�ʣ�<��d���S䮔?�Q��S
4"K�Pu�Q?M�ZϣN�j�e�yէ��ݾ���Ј,��t����`ڲZV��
��lK[f[�L�����{;��DB+/�R�+�6M?�Q�pT$UK�0*K�DʦTG��j�G�Ěe�
���5���:j���R �߆�,W����G��E��t�O����{<{>Zm*%몄��H3nPS�	E����ْQ�깣z�����CY+J�s�8̹&��	ȖT��æ��Ce�).Y�lsN�����{�&W��L�����6�8�%3�>o�S��#�b(�b�VT$	�8�r���8�G�Ȣ,�%Z�i��%�I�=n�>�L��O���� ����,��}d%���۷o}k-&�ii:D�|�.�w�q6d�9p����}��(��&/�g����ۑ���k�dE��a�c���ʓmZv븙���W��9����Xa�*�pn0��W��ؠZ�"�-g�c̠B *����@]��Y��Q��Q��u<��N��.�݃��_����P�^��l�H�e�!�G>�	���ȸm�{�N�9=ML.��˫K�O���9b����}����������>}�*�Q6�Ί`j޾۟��ه�W ��;�Ԋ��h=Ӣ~�r��1�^yM*���w�`c��T���-8R�����p4�+��ƮG��Cci Rh���X    �C���!�F�SJO1ɑ��wI���:��ln��ܿn��h��.�A樑93ȅ�a3Hڱ�T�]�@�����k7����k�=}�;�����?�AT����lt~�7�}1��艳Yt��6t!R�#O��fq� HJC^�|�R8i&V����z��۬�ٹ�	�-L�йh�J�P�3��np��h>����ѐ�O�Y�ޕ"bJ���~@�;�/�w�l,��n�J�qV��a�~Z�.���j��ʠ���� ���Y8A�6�Ǣ�)�*eQ�,��ɢZd�}���r�����/-;t/	�����
������.3���ߴoѾE�V���ui��)${��=�1t�K�RS.��:�п0k��,nY�-�Ǖ�/Z��2c�J���]hB��]�k0�QҝI��5��hB���\�w�F'���}�����\e�@�^���=lź��j�@�xM����-�íW�F���̳�r�e5�\���2:PZ��I��d�13�R�rҜ�QNk�7z$c��f4eFb���h�2�&�'[u��{����|��͛�}r����A���wg3f�7�e�����b���<Gv���\��~m�0ߣ�w�fS��ƣ+8;��`�C-�&3Bg��3E��/����Ed�����_L�`���gח��Rx95��8_�c�#� ��9��^5U[ �
fOs���h�kD����#7�:���<�Z3�D�P���
��*�@�+
�3�oF�y������ ��F�0�k�80��5ޓ�~p��6��kp�q�̜��U��?�?*�ۆ�UvZ]���#��k@�<��;7���=����9�=eL��L��ǏN��[��[m���6'����my;ς����	����-�!�l�%BzN�l(\�KK׷d���_,�������@�􏒽~9�V8��N����~����p��s�Ǥ�	�9�{�U�6�7���!��g�ZO|����%�`���%V�+zɽo^ �z��Ō�j�w�y�0�['���O<SH5���U��
VE6Q��ȃ{����.�I�$|�Ҧ5����+9G�o$'���\��1�i$ � �H.P�����S���'�]�vko��3���q!�|!�����4��Tmj����ŞVM��ؓR#�4�3���f�셗"��^J`�5��h�F�m0���R4P3�]&H3cl�&u��{�W�shk��?	/U[�G#�.�Gscr,qq��tG�t�A��+7q�P�X� X�KCi�����w��0����e�Ǜ��ԫ�j�T7����������<}�;����?�O>}����?���O���7�MH�=��}��[s'�����9l�H��gM�5��|rb>999I>x`>x��A�������tNp���Y�1+B|{"$��a����jt16�a�b���<�����dV�iE�_��ij������x�8��TO��g9��d��p���lr}5��q�v���؆����0�ϥ�4Ȭ-����bJ9Hh\��юA4V�8��x�-+?�o�����ڭf{sa�L�܌_����+�	��1x65,�J<Ndf
��U�J�Y�HI�CA�l��r��B1�\2�NJt�7��'���?(��
\��R+?-�qٴ���:.���mw�R	�M���Rc����U�~D{�A��D{P=-��A��374D�C74����cǟ�m��<C��C�LK����3t.8�8?Ӝ�1�۴oӾM�6�ۇڷ�o'd�:R�����ȳ@,��˥H3�þ�Z��KKr�[:\��
x�P��Z
y0cgsi�²�Wl���v��ܯE��ޟ�����}f�S�}-�:"��J�|���))+N\9k���1��9���ܖ��?��>�J=ĉWω�|���;?������_0�����7��gs�|�ѫ7O^��o߻y���~���G�g)�����?�}�͛�����̧���u ��߻��_�����|��͟��O���>������_n^�����_����|��[�7=����ٿ�s�׿�_������Og~:�ә�Ag�:�������l׀�*Y�]ĝ$�Eb�S'H��;�������^[�%+5��g�����=�m��>��ɤ_�NҔ�0��5��ҕL���Ц�$�%:�R�dٖY6����j$�u�dw۟y6��Tڔ��8@��WA��w��-EwM**�p�Z�$jB2���IHt?e��{�Kec:$],e��������^�mE+��R�ҬjH6
s��V5����VG;^���d_G;��{�.�F�d� 9��,6e��l�[|M�Xe�G���SUc�jLw�ƫ�a�K�g&�].��N�ee+�$��_����XHV��VV�؞�{�����k�)2e��U�y�e��t��X$K�+W�6�Ɯ��F��Hcqm�I��E�}-�-��_$�C�Lv�d��̝Ji�)��a0�y�(�3�]"Ϳb�K	Mi�[��_1ǘ�)���T�a��ƚ4���Gʥ��E�QE�QE�Qu�ۡ�(��Z=K���<�WGLx����9��������_�B$E5�����aμ�_6�����0��� �hE�I�²&܏I�)��I���9s�P�� 4+��藳���.w���+�	�P�x������a<����F�g��e�9��3+1�)���D樃9��ae�8S��
:06���l4}0?�!LW2�~��>^ڏg�%:�N,��;c��B�~���3"���L'�)(/p Ӕ�4�w?# i�r�PX/�p{�=ܓ(v�&�wF�����K���<BM�A_:��>}�w�\��������1ٳ{&K�2KFQ�b����
S?D�j�I�'�*�LAi��e�f�'�{��Mi�Y�}sp?��+�J��;�1��mp,	ǥG��{�v�8v����q#Q��EW�k��̠�!T�I��yL�}u>f�Ѹ�����	��A6Ə9	q�z�]���R� �▒�eBӉ?܎hĄ1$f�Kt�$@i5Fgr��O/G��(���Lk�c[,4i*�T<�T��Mi�M,�0Q;	|_�����l�&��g�5G~��s��s���,��l�$D���Ԧ� W��m楎%�v�� K/!�:�jZ&�b̜4G[�B���)�L�;�6�iJ�f�p���.[@�՝�l�[#�we����9���3$IW�4hL�HRI��U�xԼm�p`B��Vw2��6�Ne>K�0�c���1:[9�..g��}�r�>_�2�?M��a^M�ai#ָ�� �F��B`
Kyq鿼�F�I���a55܌h��/$���U��$짶OC2�=ޅ*	9,P��01��٥�	r�A�P"��>����a[��0���]�gwUO�;�)��l,%��Ƽ�L��E%�����P�1&�8��6�W�6��OSi(*E^�C��j�U��p�����8��W0�����o�e*�T���T>�	V\�z0�36Ģ���]^��]+?N�,��2�,�2X��=��A^��A+����wk������GR��2��|����~?`���c���ky�D_9�射\N z�8��H� �|K�}�RR{3���	�iӒx�?y�ߛ5�2������ś���~�]�#�'T\�E�ۂ�6J�^��Q&ź�V0�8._�
���&)�Y��E�`�uɌ�1�;ζ�JdBx��q�H��:5�벫Kn��1�2������լ��`��h0[M������v��w�G����'��Ѹhl��<��|T�rE�B�;~w׀h��#���°���
�2?�Q���:F�_��c3�/�#�1b��|b��'6��l��̢�1����Ê�|��1���|b�W��V���������c+��&f{+�`#9��n���0�7F�S��]wSd��Xᘺ�,�.v� ��xG��nxDK-E��Ru��m-�J�T=�X��rmcC��I��R�0���I�TÌ^��r�1:v�$Z�h�U��L9D�T��^��r�1:&�"Z�	�.HK���2FK��ڎ���    �j*�Uo��un�
�[z����X�=�QIu��-�!1k/gQt=cm,Z�]${ż���������wOaq@p���P� 
K�V��(�����̙ѽ�(�C��Cx`1|�qq�� �Mϻ|��lchL��C���)�ǌ�1=J�]|��y���>n��!���O���0±f��}��j�X�>�0 ���e���J��(ϒ�XJIf9����7���N��K5dQ>r�wQ3�i���d$� YG�dEV��/���i�����]LA�,�u��Dg�QN���.�[��6�oN'�|�>�_�.ơ<���om\�M����|�����x��B��8M}!WV�*��v]�P+j�L���s����9�-!�,۷)A�{��}����׾��+8E�]f�*�-)�P+?pmF�H�<{��#�{>���&�m���ĞJ������{l��.R��'��`6��������g�����x���?��;7��lY1�׿1M��}w0A�g�1[��Ǖ�	1lȬ��~;��E� �9혭�1���o��N@�H������i<�41.�mpQ��x�G��4`�*A��	F��H]�w���;p'��� P�\�� jZW��9i ?ڐ}�B�d��HL}\�P񥻅�w� ,^�~G�G�����h)~�l~�Ö|UF�<cmL�|xk���W�昲�[�:{��~�9)��z_���6#��o*n��{nV"|y|��]����x`��N�]�a�S�ucw|��~����4�Ռd�ZfP�a�N�z��˃�5�,�c%���K�Y2��p��O�с���4#F5��{�\5@cB���3��2e�w5���V������y��s�1��b�$�&�6	��(�^��O�GZRU��Zqs�>p�%;��٫#u�H5�J9��}K�Ү�seߑ�t�"c���"���,H�/=��ޙ���N_��c���[������5�~�C�v?}���o08�� ��PP�B�^�1{�V+T"��F/��Pkct*M�7g/Զm�B墛o��!龖�,MN�jsj�[c�����;-"~�C�x�-V]ըw���10F��G<���V�˂�Kͱ����=��Ҙq���@��;���ϗ��[c�	�;Z ������3��Izp��~�9o*���9�ji�H;�V�\j�r�ABx�`���1e7��!��v0ꌼ��%�(yEk���BY��)�[F��y��H���םF�m���;#x=��f8�*�V������]�
7Xq1~��[�s5�&{�����5t��kMۮ5Lp}Ą��g��>��޷�����܌l���ӫɣ�_9��h��z�m{�̐��B��6���GL"�R8O������x6��|ڐ*՟���M�a��PF3#�Yw#�#߄�׮�!7��޺!]�0�u�i�\0�vc��<��O�|:���߬���I^y��e}����Ŭk����h(�Y�b��ƄR�����*�P	�oQ�Ba�ʄ�5���0d�n�%��k������S�ؚ�*&�ʺR9�������AuSBg�/Ul�ׄNqa�#.?��q���t^����9؇Wg�`riΎg#��	ѫ��8L����"O4?�QB1�M����_��t�v�(�)m��i�̉)e�`KON1��2z��R��S���4�X��)e�v�0���'��8̉)e�10���6E�fB�r�I�2�EB[�p�T�`�8�-e�X���9���֡��aP�Y�X�v�p�ĺ�ͱ/7��x�!��*�9��cB�5��F{aWw)�O6�L�U"�gB� @�Gk�}4�5w�
-;P�%7���*�k_x{����<-�����}����'�^ʟ{���/�=�t��xK\�+�<YLkLf]����/j���_<y��g��|��O����W?���J�ߙ��\x��7>���/�|��lQ_���oNsZx��3��V��J)Y�-��}d%V�G�����gC(���wqN�X��k��x��HE U�&6�,`�5��Ld3��%B��7gî�#&N�Ƅj%&��'��l��@|�2��R��X����?�ݣ��{�Ud̯>����۷��?��D��p4������/�Fb��fy�ޢjZz�qs�ŪGPpy-n)E�˹{�=,G>��WR��Lk��=�,��?�e�2���ѱ�$� ��*V��
�s �G��^F�!lct�A�����C0ck,��?�k�2�����r�$���}��?�0�Ŵ�5]��}��A��М�f?��ѿ��A�t��L�"X�����,�K�Y��Nv�j���m�"�Cȯg�׻p�9�.x��Ǹ&Ҧ��l�i��{:N���K���F��� E��LY�
� 
�`���w��,.ʘ�亐峺���Y>�Ȑ��VӉS�&�]�Om�~>d��X�D� K��(3T)c�=3T�2�Bet��<�$G���Q$76�"H�Br�U����&9JÌ^F�"�1:�a��($GYŊc��%� 9J��^F�"�#����l��s�dEz�M��[��dE*c`,�IV�l߂�&���Խ>��ik;��s���f%O�������<d3�g�[�Ƿ����x'�Ҝ��؛/��5�|���o�{�ӏ>�y�'���K���y�[�������d-��faM��t=�|uڌ�_�W���dF�-���3}�_\@�Y�SX��0^��~���~d�58%\�_���xtGE� ,�w��/ƣ`>c�ka�u�7��Ec�b.�擋��Q����e��^N��fX#��F`�MaB &�;�Ň@��&������i�xG���"���M�H�T���L�Q�D͖ 9�N:�d������"���ɱP�c!���UB]+�rl��*6I��qK�,�r�1!���̥����(�l`ND���̅d.$s��WL����ano���Êd.�46D��$s!�K+��
�e�d.�2z���1���ؤs!��*X< ��&�K��^F��(�:���vpg�-�q�9G0��DOm��$w�M�k ��L-T=�J��=��rq����'|j�K#_��{8��#	�2�/�hR��hze珖l�`5�o0�����^�~�0���,����9 �ʜ����p�bL�Z��B���ti+�kqX�(�}}�X�����(�=y[
x[\�R%�o��˸[\�Re�'wKw�l+�4�ͷzw��*������Ȳ��W����Bl�&/����-k�@"�����.�<p�t�$�A�� 	,�~}p-`����r�o�o���o�n�E�����<�������&�袚	c�-���i�"qQ6�w"��p�����U��(%��ǣ��+��d��7٤䐦N8�pBM8q���9'�C��M;�����6�nU����Si�	��)�;��;�؉�\���O:��!�3�le�q����)�x��#�¿0/^�����b1�mX���T]���
��7��3�&s���|��l	�b���c|�k��Y�п�ʛ��4�KXWTl]\XĄ�������r[�{��^5v�5B�TmHIJy��$E�R>�=��L�?��GL�,Yř\��_���3�_�ͯ�Y�%�M~�8�WV2���*3}�ts�i�͗�l�sx�1B�Q��2&X�F6А ��C�3C��yC������Q�����h�g2�� ��l����|�qMU�m�>?�v 2YgN�>���:�)dAf�6��2����*�9scȔ��Z۬2컄'�w��x ��.�3/�L�H���:�)dAf�6��	��X���Rh(��Rhh�=tyY�A���(4�f,�2�#�
���X �#q_�0��	U�űTZJ���`��0�E�Qhh��^&4TA�G����/%1鮡�
t��5��Ў��*��X�z
�hh���2���u#Z��*w�L�"UrbI��K�Oaju�l�05�!�ҵ���-��ݤ9|��H Q�nwi��;b�&K]�a��C    -�D���b֥�	,�{����l���)�f��̊�O�`�{�ORYě܇�T@��U^�Y�9W9ȮmDvM��u��� �)�@耍�� �.f, H1����I�B��,X�1Dd�$Hi���R@�o#J|�� %8J,�=	R�e�2�4�$��|�:�ʬ���&i$�J7E*���y\�|��N��!U�]2����T�l��a�Pi� 9�f���	%��S'�����h
R�G��\Lƣ`���?T>s���Y`I_�����m;�=�C��K�}~w��._?�m��l���&Ù���Iߟ��~�X|杪o��I���F~�0|e�"������P�OѸ��m������M[Q��5�79��iF������H���,(�\���%/�xk��r���\�W'o=���;+(n��ѳ2>՗���z��U�$YŽ99������_�;
��#�+y����E=���wV�ܠ�e���o��u��^�Y)rcv��(��;��E}���wV�ܠ:�E��?ύˀv0r���%}�M�F��?ϣˀZvj�^��N�v��sݸhn����_��ۼUc�G�� *f���� ��i??����X�
��b�<��{�bb�6fi���zEr�����IF6��M2qF2�G s �]�@��6-�As�u],QhlD����@}fi}�f��Iwv'��l�=)d ��b�&H�B�������^A	g��ea!	K=�XD�����b����^�����R�
����p�8x��R�5	
ڣ4$a)"a�@M{��S�5	�ڣD$a���=�.�xt��A��Y��_��u��M�\ 1ݨ��c��	~�80��՟Lơ�:����܌�3_޾��O��`>����ak�z��۟��ه���ʇ�i��H������ЖU���ڲ<�� ׅ��!mY��k��_ܯ�p�ݐ%m"�[.K��p�V ����6iV�Cg,�3��D'�%9-2qF��G�
�y&,��|�U��,O��G����a� 0��C��F�]Ba2(�	����d�
;�L��2	�z�$!� �V��s�1q�����&Z�B��pM�3J e��;�� a.�x�Q�-7q��C#���)��)v�z"�N�>v&m�-5qm��$$������f3�|�̣����$�d��r��_�3�̺��YF�}�_\�/���N}�讯�W��T� ��G�]�`rm.��xt5�ΎG��b���8\_�G�-��s�u&r"������4��#���z�4
_>���'�K�%xVͰ.F4��{m��~$�@�d�˻�R0�R�`\N��Y�>�'�Ǐ+}W|�a��V�n�w�n�m0BٮG��Q�B��kr�.m(A�0�G��8�*ڐ����
�/HцmHцmX�]�`�����B�(��YǜR�'��qFS�	�d�.j�Q�|�,��
>�@�h�!eB�qP6Y��C#4G7�,�Io�ބ��c"��jH�� }������S�M�]�X��6
�[�e['hϓ�9 mӘ��}��6�,γ�|Mca)�s��P�T�������I�z�H����w�9�b�nA���(3�R�`>yһ�W����! X�L�ɓO�|�䓯��W�'�JX߰� 
�������X�оև��p�aXNW
��оZ ��!�
a5��DX.�1,�DX$�ʠEZ0���e�R",h0�I,�m�5���c���f%���r�;I��N�؜��ڹ��e+�
2MMM�`����?����*Y ���`D,�rlD݉)X[1����R�F)�D:E��d����y�K�8�r�'������O�x����>����9�n����o���'o����߾��}r��O>{�_<�.�/e��¹R�g���?�c�����L���6"	 R��I�.�ף|�P��R} �9�vn����wX�$�N䧩;b?�A_���E�/~����'�;�:r?�A_�B�k����d]5��!�uL(���g�?�@ܟH��іԸ��0�m�)�>O�"a��W����a��چ_��AD��l���ڈ"�5�#�ds�cp��A�mXN�`]��TIL���"m��u�r�%̿*�i���T�L�=��� Y��s���B.��>�\���n���ҩn���5\-��'�\ƛ����ͱi|6:?�Sڋ�_2Mxr�.�v�������Q�|e"�2���9:��cY�:�R6��!K	��¨�%���S�@��l!K����[XW
Y� �e�9=/�Ń�֍B�����AlǢ�݊DMM��\Hq�z32��f�q,��)���K� ��iqe'����Z� ΍cqn�(,?D���v�y
B����7J��4>��=O � ��c�t^r6v���blӶ-~0����Ϡѽ���K�>a�4B2�%���L��ղ�8�z��
��h��J���˫�)�gS�������P$�&����!��zU�5�P�+�?N���"
�(�RX�S3*�`sJ�X_;ڤ�E�)5c��}�R3*p_J�H���fTp�����f/��Q��JPjFJ�X$5��BPj�曽TjF%�U(�B:�M	۝�//E����l���R46R����Q��K`�2��*49G�+��>ף\:F7W,�Q����A�ג�h4���� 
R d�u�(��X�Xʺ@M�nDϴغ�U/���̅����U��K����eZ��ey_DC/��lz�>ë�i0���p)b�}��$dw��1��wA�Ð�x������>&�q���Bz�7-�M�4�L�dX\J�������ФM�(�6C��8j|�܊��g��S9�8�LʒR���j��N�K?t��hR�ck��3�Gı�Wuɚ�M��d�����T��f+�4��%�!{7���9J��6�p�h8�M�3n�B@C��vc��+(T�r�n����kL�d�h�vcӖ <�v�A�q��>�¿Z���7���b�Krۋ�K�-]PيV�pP�m�6_ڐ �A��q�X{���޶+/<*����K�;HBx;No���ܦ���Yl��_2�� y�Y�7��7�Q:ݦ����:]?�")"@�_��bP$�!E(��[Ȧ�hξ��=��E~5��e"��a⇡�/��B�b\�OC�_M3{��/�8d(򫳑_<9��P�WIP�)�%�J�#1<���-�����2 �Brw0ʣ*Kg|����{���@�q����!;L"��/��݋�^@C3��fZ'=ݮf^�k5���[�ġq��q����,!���N���`��n��w���\Z.�}u(%x}O��ō���1f�����4�Cy�I�Jb�&�])�w��1�!�(Ot]�X O�� X��DwR-����R�hRQ1��'��f/�b��q)O4������l\��|��Rqp���'��B)L��å<ѤZBx=\,O4��������X��&������EEuy�O����t�qT ��")�l�2aC3��<��!4'd���R80������d�r��$��w��6e
ֶ�����#O$\�T����8��%W�H���־c�=x��|<:�2�|A��I�R�J��5��I�$G�r�����%�
�WH�B�z��
�W$��{��z�p��6��)��Nw�+��ZQ̠�#��4��"gx�.Z�����4��"g89�3h��F<`�o��K9�pqi��E���:�ppi��E���:� Y4V蔜��u�;p7��ݔ���u�;�f>{���
��Zq��Hӓ�"M�i�&#<�@�cy���"2k3��A��QIb�����|=�����<J�Na�E��w%Eo��Kyvt%E'�Nώ �Σ���7{)ώ fΣ����Ia�􊒢�gg	��W��<;K� �MaI�ɳ�]ώ -���S�|4>���=�!$@i&�J���ӣ��m���Q��Az\#�'����f��0�&�'[u��{����̌� ^�2�_�qa�G������>    _�2b��я̻�������ƣ+�A��5kA�.������x��2�����]<�����i8�G�����Q����e<A_
/��y3��M��b�Ma�&������ ������x�uh�|��͛�}r����q���?�_<yk�{���o�{�ӏ>�y�'����/�|C���E�4<����{���צ@$ D^��ey�+�J�y�Y��].$Q��P ����)1�P<,ځr���Y(׫���*C�eڔ�U��R#~�$�(��>�;��(��S0��f7>�8���$+��C�Qa.��)4�ȵ�.�f6��R�(8	4�o�P��ޅPH}���t�j�
�{��dIEF*�U�8 ɷ)�Z}�Y�@�(0"��d\E�:�b��ϵ?�B��z��N}.+by�����S�Ǎ�Y���m!ʑ���/��6Ȼv̑xR�&к��'�1 �t 	�����(H���(H���\� 9G�)s���F�-o��5zys�ocVbo��͠E ZO.� 7��b�]	fǢ:)�b�3hB�ƂA)�Yf/�g�e={T5�x�p0���� �Bb>�%��BPx��M�
� v�w�0�q'�« ndXx�����a����. ��a�y�:�ft",|����a�y�t+�Ǔ��Ϡ���x'����4w F��t�s��t�*�aT�bt:C��N�J�/��;=I��d<
fA����#-��K�ҵ�@�'l���2��h���@����߆)?[�����z��x��g�??�h�пg�i��=�s�BL��z��Ed�j��tm����s\�4#+I$r�D41�H�j�4[ ��r@�Ƒs�)�b���q��6d�`+�Fu�dV����t$�������_�s�ɏ6�+7>���9̄��32]t&3�ς���Uޔ����]º�b��n�
��l�5�3Y�4`B��e[Yn(k�� �M����и�� ���I�H"K�7wG��� A�+��+뎂��H����������sb���K��u7��T2X��?�b!+��8��lN-޽&�bXS����N*,\.��paVB��9�n�P���	F%���?&J���	��PD�
�	�IG�A��F�K��2hwX�aƉ�~tG�����b&S�וJ�GR�~��.���,��T���\�1�Gp��u1?�-u��]��b�1�e9���+�ϱ�X���Sl&�f��E�X�cI�(6�Yf/��@ˑ,\�I��Y�@�?G��)6�af/��@�͑�6�fv36S��c2p���nl���}�D�Slf�c3���3�fv76SA0��j>Plfwc3PV���^V]�޶�������?���Q�Sр2���B����g+�Ƴw���&y��򦁕+�XU��Xm��WT ���I�-z��b�?�J$-!T'Hɻ���U�[#����X�m����ؤ�Hz�Y�=�T�t��jC���H͙G#��x�l������O>���������b������o��"t��yLM4$��/&��Sc��Nħ-���w��0�Ý,�E�0,���X-��T����48V��u����mm9�oXZ�U W���	=S �f_P��bAU,��E�XhpQI�E�M����CHHpfI��U�u�HARt�$�|'��<����$�/ ��
�-$�o��ˈ�A�j�Nby�˃Š����7{�<{5f'�<���b	���aa��/�˓�H�oҚ���{yg�n��%Z�Y��`�a9�.����$����׉ȏ�4������A`��F~T��od�G��~*0�'"?���72�#�f�B��ډȏJ���F~��P�נ�_I&R[n��@�^cD�%��DH&B2�z.m�d"���,o�On��ر��R�+"�<��[�����XRr�?� ��<���o��K��p��q������ ��b�ar�7��e��Z0`,��?��r1zG2�C�-��K]ii�3Kj.����SU�#�߾��n��y��w��٧����/�0u��	�?���ݷ���-��
���e�a9X|�e�/�0�n��'D'5������1%�Q���%��+&i�� ���8�\�_@���8Ь.���dݕp�m]��%�@geJO6&Gu�2ؕ��_x������5^�5�8Kw�^G��f%�ʺ��x?u`?ͺ>@˛*5^_��z�z���q
��G�kƲ���ʘ������֮���n��JcxG�:�Y�xL�:�G��F�{i7���G�:�U�V N�۸T0몂LW�c@ͪ��%}��͌��w�9hE_ �����/��������$�w��i=�W��]E�Z"��]"`m��5��]]��V�~���C�K�HL3��2%h���:�)d�(��tȜf!����*��� �dJ��6�Y����Fɱ��`�k@��@b��8Ϳ*[O����� �)
PHDy ��%�x�"%��"��ã�z�V�;���*��*E�I	����Q�������� �)��
@�-%�j���A���qZ9<���.`���8*�v��W;l.a,�� o�0��ě�H�7O[27��%6����wb���-XȊ�.��n�c���̮u!zE�,����ytR��s��1�3�֨��v�lh�t�Ɓ���|�s0�|W�B�t��84t:�����������)�FEQ��z��s�7��=��g1%�*�d�>\1��.�-6�ǹ	��=��g1��*��+�N�-��c� ��0�^Ƙ(��k-Aܬ�}�U��M�.ˀ@�{E�DQ4�)!�IB�ը�IA ���߳��g;���|������ys!s��L�_@�_�C��m�dJh��¾�P�]|�:�Z�*�VU�JB�v��jy4� �U!4+	�ڦcD�jyĩ �Ta�i�j�bP�	��TD��$Tk����Q��T�Q��	��D�v�ւ���1��V�0��m���h��j�BJ���+�����х^N��}?��@Y�d֡V�V����-x([���߾�������g��B8zRՒ��T����ŢYPU+�{���RՒ����V�;Iaa&��mJ�j%��&�'U-�j��j%��4�{�T�m C)U���Ʋꐪ��\�fU��ƼG�����V��Hc�{Rն	[�j�i�sD��.y�J�j�iL�O��.A������ƴ����dJ�j`_5��'Um-�T�Ъ�UIU�.~uU��1��$�$�k�����qe�����Ϋj�E��S��f�p`��'�t>-��t4@+oM��:[��~ҵ��'F*6R����Tl�X�
��\���'�؊��\�dݤbkJ��\`�d��b#[1�+CX�R���TlP����R����*6($�`��I��Y�v��Ҥbk"�P�AEh�M*�.��%TlP@�a�&�Tl]�L	�~�ieI��%ȔP�y��2L+K*�6ZJ��<�UVt��Lǆ�i��W=�W¯�|���{R�<��Ɣ�����u��<��a*i��R�F�T�Q��m�ҭ������c��H�XgK�6z��r�)%m#iI�H��Z,d��p��������Ŵ�
H}���I��0��6*��9&�&m#i�i���uA��6����Q�ϱ,�ml5W\ۨ�������]�6*`�9�����M��Bۨ��O��.��%��
�{�)�I��%Ȕ�6*�LAM��.A���Q�*05i�xh)�m�@�
�V%[[��)[���_�J�׶j����
LM��Vabm�U`*i��R�FT���T�6v��RBۨ�iX6�6������s�#�]dO���J�:���ZjV0����ӳ����.k�_��V=��c�	,�d�$�$�&�6k�F�mjpOH,��d�$�,&��ௐX�6� �R�M����I�I��B�M(c0�%w!�f�PF�	ub��-$�l�XX�	�a&0]7�6;*ۄ�/�s�d�mBDy�&ԏ1��\    $��k��l�t�`"p�mv	2�e�P��9&'�f� S\�	�;d��4Xmn"�>�qT`��΋y�E�����P�À�WI��V��攔P�à�x�l�U��B�	u:80�d�mG�&T�0���T�mv��R\�	�:d���$۬��7����ƴSJ�F�6������XȊi�֋Y̰��6�����J�0�����ml�h��&�&m#i�i��.F�`(�md@�X��6���+�m�@廘����]�6r`�]��'mc������b�=i��ߗ�6r��]L)M��.A�����_��Ԥm�dJh9��.¾�����F|���$_k���x.J��aP�%���]T�:�kcʁ1�Ɣ����N��6r`P=�A%mc�QJ�(�J�0*���]����6
`Z=�� i�l��FL��0��m$m#iI�X�����Q ��a|�6�����Q ��ab�6�����zK�����Ŵ��}�e@!mc�PJ�(��W�O��vQsŵ��|���I��Um� _a>iۄ�-���{����m�_B�(��W�R���]�L	m����J^�Pm��Y{"T�#X%�
!XI��V�bJ��G�J�L���P�]��:�Z�*�BU���B�v���jyܨnTc�h�j�"I�	��R	\�Ƹ���l�D�pkA�k�T	T�ƨT�6v	2%���i��H G8�� ��ZA�D�Ƅ�$�#\1�̯��$�kJ	� |5��%	��	���5F� �`(%�s��X	A�uU �G̵1�p]�9`#I �&Dl!�s@�*n��k$6Pws���� L8�u$I�Pud��͵2���;�HJ㇪#�xV�d��ԑm��H��r@��%ud˔p%���P�ifI �*Ll#�s%��FI �Fp�����JI ץ�i	�T*èT�u	2%p.0���F���l���\`J������m$mc-���F�}�0��m$mcAm�T?����mlJi= �&�&m#i�i=��Vh���m C)m�L?�J�����F~���m쪶�^�a�>iۄ�-������I��Fl��6z��sLM��.9wJh=� pL+M��.A������#<+i;�mT��r�9%mc���
(T�%�|�]��:�Z7�������v��넯y\���c\)i�t0-�mT@�r�J%mc� SBۨ�i�)�5i�����o��Q��Iz�# $.�����0�&�'[Y��{����|��͛��������[�?�_�����x��ҧ��&'�¿�0_��#w_����>_�2�~����w��ɵ9��G���$���i!�ZL93Vg���(�k>�� ��{	�`8�bΰ�Fo�
/�Ϯ/���Rx95�4ýi ���:N�z�] �k1X3��N	����.�Z��&��l=&f+�9�:y�H���q<����C#&��>�����Ft���?�0Yf'������7?�蓛7��{��Y��.����%����~@��6" }/����j�ج@�E���r����q���0>G�Wv�e7#:>����_L���Ui���ՁZmPRA�Ϳ�v��?ݼ���w�s�Woܼ��R��9��?T��rKR�����s��r?���a|
B�FX	X�K�N�����@T�N~H\�W!��� }m
Y�����¼xD�O����k�m�*�n�c��H�u"wU����wn>�Q{&6���yr�᭙�g�C��*oJ�������Q�uqY���>�I2/'�pz�����a[����k1�G��<�CyX���+�������
YP#�k��FSsn����.��,("������OӶ�prٛ�X��q�
��h��i�?� @�W�p���3csZ��q�|�0���9�G�-@���³������5�l�Ul�0�v���BY�V�҃�Y�B��v���m�E�M��ajfG��/��d�LO/'�X����e��|��&/�����fp̈́0�D�
&�]�/fݽ��g� ��aor�ƣ���7�{��s1ve�C���.�rV�*WX!�%�PX��?���C�#�q�g�}0�T2�p�4����<8�a�۬_0�W��e��r�M��i陋���3��`_��BWcd@���>���9�L��2k��-)}?�C�� ���h��M��j�Z��Gf��N���f�����^]=�]�_����(�
�g/.~����8�;N�[B�Ӓ��?=b\�AhZ>40�F�,��rw��3ݲ���E�]Z$z��*q��'���+}W�;z���y�so`[��BX�<KsX�P�>��t?nQ�g�]L�W�Tw����.�_g�Ͻa�]�,�g̒�@k(�s�P3Wi9�$1�E�M�p����[�}���µ������[̜A,)�gN&ܬA�w���Vy6i�h<��O�������Q��􇋁
8�����LHK�ܷ\�w��bTy6}*������V�_C�9�~�X{�l��8f��V_����p8p3�q
<�4a:�7zdn�i{����?�������p7�!�d�k֒@[��G�p�BϋO}E�MM���te뿏{'WWf{��� ��C�3{������[�p�k&�-���_�٤���T����p6r�l�}�σ�XB����7`���p�}X�x')�l��]$���o������������p(,[��%á�ms{
�7�*�ӃH�~\�٤�^��e��L������";z�Bs�͒��Ƽ捖�͍ж�9���թȳ��y5	^�L���vp�������k���9'8�_j B�/���9(T�~<.�l�~�����K@�<��qO`/w��|�?�1�g�#���,����ٔ<Ɔ*�ˋ<���i�^��<����^�^�!{�@�r���ڶY�C�)���`(��6�O2nE�g�V�{�?�|�?���v��{�^���!;z�^��kˑ��o.3f�<�?0�u�7p:��x6i3��kAҝ�_� ]E����:L�bPnP�:��akAC�AbH�Z/?Q�AO��r�BR5aR��L�ל�"�9��(����AV!�Y!L�����^Re�Ԑ��蠯MA�d��d��A�PcM����w$&� ��$&k��lV��XW�����)[9�탌[��򀬕D�6+{'k�(s"k��ݞ����DD�6y�9L(��{��U&�d��L<�$��I��f�jR��'z�9����P�� �qO�j]�8�a�0�Nf��N]�;1�ܝʝ6�VlT�bp��n��7e+;�m��{��q/�*�B���ƟH!\N9��D�B�ax"��P�\���u�;̥����Ŋ�Q���t����4��۹�)؁O��ʠQ�<�݊ɪ���.RK�
cm.��j䥍V%��Tw�JlTskcͭN �Z�q����
ׁ��~� L�K޶����5Y�K��.�ۢx\pw�7���"u��.��s]���\S	a�X����`��
΂��Q��:K������_@�����������������в..G���W���i�]߹���N.C@��`�5)N�Yї��_��,��3�[0h����������NO'W/��2����桾���!+y��Q_׶���|c�O.��*�������[�xhy� !���	�+em��f���#���� )�h��5�^YY���S���g̮=�������>�rYJ�1N��8���hi�~|}m>�2l�;ؙO4lڱVM�����.������@�:>�aK֏����l�g��z������5�����|cE�|c��f=�20����K��y﷮^?�����ǽo{l.�g��o�_��e��K7�Y;�e��.�.�p�bkC�9��<�gfǾZ{g_��g�c���|w5z�9���A���L�R�8�&�E���:�+��0�?�C�Yv�%�;s�3x^_r��F/(���fah�b+A#����ya�3/<C5��ق���-(���f�au    �W4���S✚s'����^���^EkS�FS�"��{�b��L3q�W��]��R�����v^�J�������ܭ�p�$>e��U���c	�b���������<��M���Q��
@���h"h�l���}�]Glg�Q��zB�
�q�!s��L'��S$[�JE��#��tqT �H[N�εF���2Nad\���$�̘,K��)�����#,��,K WX��X��vV�� ��)yS��.��dO�y�%��
�c��Y�c����"j��9�B&�V�@+�,��Tt7�*��p6U���]w�I<T��BK!�iO
'@�,e��Z��_��IǙ*��N3�AO� ���ǁ���N�2��nY���d߈:|I����h<>�����^L��؆x�����zG�Z�\2u�k�j��u�_o���I�ܽ=}��,�>��菣�g�CG�2�����kI9`�o��+$m���N</�,4f��^N@7kݒ��q0�k鰡e뾴$������@���7����`��1��4a��+6����\��6���3˲�r�O�*�~���Oܓ��������л|@�l��PW0�kh��%�\X}1V�ln�������A��dO����~;�ڻ�!�yɭ���
������`\H�L��Um�D|�K=<4�1�gɓO�λ��ܵ�J�6?w��[o�$�nx�r�e ���)oyd�'r=L`��6�ĥ����!r ���K~3SO�-��l�j`I[HK��?�ࡹaؒy�b��ȳ ��Lb,=��N;���¶��"��!�"p�k�PX�����XLp���u�H=~\�٤	W0���h��N���;��0���Ƽ\�������tCf)�e����ԶD-)�lҒ���������p<�x4�D_���sI2w'�*f��\޴�-�ey�j���Ѕ������O�I��*"5H�A�Ӝ{۲$)��\�=��\:C��~<H�M�n2���������r�0��]s��C��Bs�g������;S� `��0�h
Zw����O�[=PC�s���ڶcɐ��}n̽{`�qՁ�0[�65���`ΰ/|�b��̳��+��;�Y;bJ�ȳ�`����٦���Jl���԰80,
.*���B�3Xt]3Ʈ㻌�V�T)�l2,_	�d�W��ޙ�A#à\cT�,��{����+߶�͒m�a<�M�a:j�7z4ۯ�E�n�N�g�e)~a1,�|���ْ�4�Bv�@[��U�y�~\���Bz9�������m_�������� ����ǳ$�����[�p�k&�-�h0�<��x�¤��a��B΃���A�,�D`��U@����!�a�H�g�g!�Qţ��+�A`p�Tȡ��<�C<�y�`8��g�p�Á�zzɯ��<�����������7?ܯ�h(K�i,��&)V�G��6�>墢\T�sQe�ϒ
��4il�;&h�5�%�n���o���igVE9y�J.]4+q��r�zij�|��R}�:qQN~���hmc+�4X#�$�J�O�o��gF��$(h<V0���"�u<f�6I�0��Ek;[�+�M.ڥ?7��QWQN=�q�6SM���䤹i��r��:%� :/_ʀ��p�
���6����6���1"�\5�ܷ�}��y��'հ#�O��Ҫ�~f�~,ξ̒�O����$<0<x� ���|pzz�|�����,|d��\e�ͅU_�Wc؛�����z�·�g����/��u�4�|���۟|�������o�����G7���y`��^}k�������r���;����>�	�w�a>���_?C:��-Z��Y_usv4����Z#�l	�V���c��=[�Yd;�E6lg��}�"��=�B�4�
e8�=��}�2���m�6�82L��E�M9ӫI������:5(��Q�~f`]������-�����4�V��(��q�g�A��z_��G�2ޭ�?KuT0
Q����6��1c5eV���02�;��!��E�M:�7�;���֯M�`��)�����^c�jq���K�*c����X�c)2@�а��mc{�J�(�R[-\�Pp����@��1r��D��X�����1$	���]�hD28��]��M��^�%`�����=��eHnS�+24"A�.C�7	����%`�����!��m��]yAM|�cզ)�όy���/��Y{��?=��'�H����_�ӏ^���4��$7�Y;��R�ϻt�n������H�w�W�_ΥU�+����6��̉D2��7������k���޸y�'����_��cv܎N��qG�i"���!��[:=�v����/�u�q�[�1 q��_�c�􌊉�g3�r~��A��$�s=љ��3]�wS���Q� y�,x�<G~������y��W:0_P�w��8��X�����Ϋ���]V�ҚNk:�鴦]Ӌ��B0ȟ���)�NVq��]�s�/E#�R�(�X�92vxujP o�r��q8=��<��?S�gI/�V�8V���t�"��)E����=�;1����މy����㋜����@�ah�`;��[v��ٻz�bvN u��~�"�ϦW���uq<	�6���=�q�e4���&��WC�_������-|�,t�Q��lj������z�?ya���z������/e��|�;�z4^����,�;�\:Zd�>��;XA��-9|Ki۳l�烁/��qDA�gS��4~yt>�=x��JG�@3��{{� ��Z�����}ŭ�4���������}�˴�<����މy������sˏ�W0%$6pEZvo�D��(���)��\/i���Y���ٹD����y�
E �N�W�"Ϧ�m�x�Y�x�������`�Ht�
�l�E�[��� ����hqu`���fA;z`N4��V?���|����m~vi�����<n��{'ˏ�W0C">p�[v��<3p�� �+�Q�1�)} %��f	����L�_��o����C�ux��ȳ�=z��+������ix���٭'/����a�G�+-L{����GzύCH�<�9͹"��r���Hp�I�i~f��졯̒�o~r���7���6�j�~�W�ȳ�ь���=x���V��.X�e��~;��'��-'
��d�8��Y^8t��+�������k�vm�o�Jս�٥Q�?ރ�{�x�=��x5���e[�~���)ޑ���fH1�l��ۖ�Bffc�Y���@|�IR�Ϧ�-J���I�`��O�&lqpia�b�+�{�G��zCַ�K�yٶ�;���*t�`�5H�3�x����� i����.��f�#�E�D8Q8"�#�Gw���#4i�4<�4�wLP�sDI.�XΎE�n\�h<V0�v���e%��`ٍ�hmc+C���ܑIg�"_7���cC!���Ĕ5=Hv#(Z���ʐB��w�����nט�&��SC�$a��=�_�J�v���-���Yy{�X�@�
Uv�/؈=�'X�n�����	Xصz�I��q\\�柶���܋�w�)��/eM��K{C&��ؙ�۴hR�O~t��"��Wl|�g|` dN��٤=�WyS:����V�=���@�˹Y��p�L�p�,�.�Z,~Vv����a7�:��K��3��Q��2XF�?��c�o!7V�Y-<T0���s��Í�x&ȼu���_P��AƩ2
!��Q&0O�á7�%���ͱ4h]�е�0�� �y�8��D���q��9=x���xQ*EZ��4�K]��"l@J&�OJ_�����������ܵX �Rz�Q���"Ϧ���� 7S'��罯���;����Z��*Ҡm4���h�
���ɾ`�6�(��� �c�
��30�]�(�lj���{ϙ�{�x��<�{n��*t�EZ�<���'p�	�s$���m���͚�d��]=��6?��<���X    �gS�6<��pM�}�����i����a�����Gm��"-�R�ڭN�h��LX�c�4Yhy�cV1�Zz��V��<��;NP������S3\����{_��/����N���˿M���Gz�?�/f�D*�m�?�Q�	t���!h�����,��vlK)�v�~?>�y65���S�x��㽕ǫX���l�}�C=�q� N2!}�te財%8V��g�]�j�9���3�MFm�K�6�����މy����U\��l��P��#��d��\O�~ ��}eNPvh)�pk�y����'�"Ϧ�m�x�Y�x�����ǫ��.Ҳ-"����%��2}�b��ڵ\W��\��L��-���!�ϽE�M���<ރ�{�xo��J&W��m��t��1R �eB ]mܖ�
���;4�d0P���3-��y�x6=l��{ϙ�{�x�<[�B��hٖ'�nu:F�,�ۺ>|!�5�|�y�0�V�
\�e2�c6�ȳ���O��x4|�ʈ�"-���\d}	\,�p���p�V��!.��BH�Z���\0��*�MO���=x���������U\��l[Tt����g��M�\o���&�7˒�w+ni�ÍL��!w�fQ����~�����%G�߽����Y)(q�������?�����߾{��}�䭯�z�����z����>�������������˛����k>�ڼm�~\T���G�:��΂Bf���S��h�(dI��E9���7�����_o�~��G3�h��G��?����7O���M?o~��3'�\eiU�9��p��Ǐi�
�TPȃ.�\���B�잞e�
f)փ��z�=�m!fi��W����\��'w�c�<(H�/�܁rd��k��,@_X�?�-�S>��C�u��1de��K�7%]�ͿJg�Od��8�	��2M�,�|)�`�2��9~�������/�(⿉��9�HT��֪��h+R�kj��<1��K�= u6	Ck��*��Io>-Q�T'��tlS����>=X��"��+�=���%��K���.�x-�}u����ߠ-k�-�*C�0�O�t�j�W��7e�Y׋Bo,���+O4��ӊT�)�@)LB-u���2L>3��~0���͓t�k`KY/n�������5�*�� Ӷ59����y4b�bȩ
��o���7q��~�n�<7��f��;
��aз$g�RC�[C�6��ߗ)=@�gSN�s
�=��(�����/��z;(ʋ�b+�Y;{�t�,���\�e�-��mI!|�3����v l?,֗y65B�	���4�'��,?H=�������uK_^ׇ!�y8�^N����WW>�Q|��:w���W�{��_}��w06r�z��8<s�K�fwH-�|��ym��G���-�^y&��'7��f���t��K�h��0p-6�j(D�C(n�����1��4a��+��o�������k���l^�ޟ�����}ǽ�������~����.��Y���b
���tv�M.�^
�]R���k�y=�)�θ��HW�c��ꚵn1�8jW�����&��BL�b�U1̇�Q�T1��AI f��y�2�g��9�c~����X*��>�w�i	g��)�l�`=ރ�{�x�<^�x�H˶�kw���M"�X&���"���g�t�*e)�:�0��q\۳�q�"�bW���LU�����օ��؀(2��"S�0�C�B�n�c�P���qs�x���<����<ރ�{�xo��*Be��l�ؠ�t8F	D��L�R}�x³L����ٲ�c0-\>0��}=���y65h��_����e~��{��=�����`���i�6�`z�b�x&fL=� ��܂��I+��D��P8�V�ŧ�"Ϧ'���ީy���N@��xr��mu�R�c�@��Č��6��`��<K&���k��C�������=h�a�?B`~b����Xe�L�Vly�hoc@,�Ă���{��p%T�5+�:P�;H�ς �+�lj���N�ë�����0�=}>�*ZW��e���}���@d�D���/�f�1g�������$�0-À�xE(�lj���pd�''c?x��������凓�IE�U�E� �=�q~g��;�9�� ,��C��9@����T`K�wC��f�gS��e��E���/�W��G��R�>�j�
4e+@���1��3��m{����1�ri�j.����a�:�d�(�lj���p<���{0�I��+��*Њ�@����~Gps��_�Z1�܍�� ,}y\����0hbx
�&�צ0���|�����
 \��䱚��'o޾����O>��۷��?hx�~���6�;�W����p�<Q�]t ?�d6_<y����}��s���}r��O>{�91�ٕ�~@��6"�	p�"+�A8�ׯ?������4���������g���_����fC��t�צ��{�šC���U���s��gjc}&�����)�G��]��X��nN!=ʰQ����/�8�b�ʥb��E���ݔ/2�2��˭B�Vm����B�^��@����9>��VR[����p� �) :.�ء6;���3tā��#J��)Zw����%��aV �(���a|o(^��6��l^wx���ˡ�l��!��\��LQƙ��-Ϋj�y�����a�:�YE�l�V�Y�CϒD�a�;b���k#�N+%:����H��p�����9<�Za.�9���,�gߕ�Ƶ��9�z2~�l.(�P�tNo��L�LI[��n6�G��tfvH�y11����?T>s�9
,	�~����x�PTON�}ܺL��$Y�oC:~ӣix5M�v1�.�y�f�w������vkݼ�5���p|&w_Sf��� 2P$2 ~� ?/�'�����Os�h�jp rq ^U��K�=�3ܻj�{�(M��7@�^t@��iP\�"�k:�2ܯ"�\��X�\�+c�F`761SF�`툇�8zcZ'
���lKǪ-���)� ��s���7�C
-�I�E�vz���9�y��.Go�r(7B�w����; ��9�K���������6�tS���G:�� |�q��b�T�]l������}�3gc����?5�=����ba������.��x��x�����2Ϯ�~�� 4z.��"�ӹٗ\�_�ψg�3�7��f�]�����2=�*.������!w|����d����jkRS�V�1��V���懽�9.vʥL��������W��^���@���\�]֤��2�]]�]	Ƨ�m���@Yb�)K���KK�``���-���t`�����%�<{��5y���<xeI��*WxB)K�ǒ�`h��yO����u�BW��I�_ߢhh�:[J���m�#�u&������To�Vfu�r8�|M�Ǧ����z���n4hr����ږDZ��kY+]��+ze����ײH���\��I��B�����Zl���s�<y�Zk�0F�d<qI�I�:�G	��/�,0-�j�yyp�u~K�D�������;��'��n�Ϧ̈́�ֳ�-PM�I��p����2�x��@�EH�7�8���'����m�j���˸�{�x�}��`�F�������,�ԚGLɨ8
��	���!vd
'v��$SDaq����xx�w`x�w�/_F��63[�)�mZr�hLk�#�I��HI3�w���f�qW	&�3Z4xk3V'�xx�w`x�ީ/��	C�E��� ��Թ)���8!>�1���bf�#�h�N�y0�5�<z�q"驷���}�%�TʐB�7�(-�jT������ia��Jn:L`%peԌ|'�ߍƉt�h���h�������(��G	���	�XM7�B��"�s��B��Es�6c5�<���(�x	�J��s׏��s�8C�U��N4�sQ�	�p*�	�S���RJbaİ�MDk1�C��^R����f4ܢ%�    Hq��0���O(�E��a���R��F]�DE$��m�X�l��9��?<멋�E��8�å��rot�y���ge-�b����<�(Y����P'�ň��uq#�f�nQ=��-�@4��&ÑR���J-Hc^�����P]���8�������ށ��y�<��w|A� ��hW��I|��D����ڎ��	J/���p�D�(u^�F�Ξ�"��%I������ِr`�Wǰ������NҲ�D�5��s�޷�/����O>������eiF���^bb�
H��1�^Ucb�C�����U�s'�>���|W$����n3V;������<��w�-_�9���1�ܢ8��9��8�PJ�$�L8
��c7$�X]�����b��:���Qy��FI��\'�#G�+��4Ѧ������
΃���t	v=*���ď_DJ�U�5�Su'����X�<���;0��;w��γ����/mf����E+.p.;Zs�%�ؗ�ᾧ��&�x r��(�Qb�0���Q�?�<;��y�b��u�A�t���g��T�/�@��h�}�>�Su��JH!&��đ^	�4qʴ�D�ߏ�#�S�^ox�,b���Bx���� W��iX��i�A��Kut�I{��K����`��ӜXm��-�u�_��� �����2p0f�"3D��	��!΀}8*Bݻ� � � �#"�0=�jJ�5r�/��ś��(����/��z<<����O�^��t�oƏ|u���)\��������(�6Ku�
��q1u^P�Jo���x\���"���u��t{=N�'��{c�N���}�}�H=����o�F���:��Ǿ������Ā-����'}A�:��υz��0���9:Q���h�a�e��7N� �K��u�ߦ�ˣ���0/xwe�f�N���W%$s� I�$4�
��W0$�	�(q(s��C��X��Tǀ����ҥNLB��1u�0��y(J����0��ar�š�� �O��@��;=�h9�t��������""�����2���3���纽��NsVFn��+��Zy�=�N}�{J���;SdM| ]w�Ü�bp��C�t�����j񮌺��hp��0p��l�c���}��N@_�L-�70�~��Ϟ�ѷR�w���Yԛ<�����{�E����>�_���s�{��b�
^WW�\MY��?/��.��|m%wխ@]+�SO��d_g����z��	S�<e��R�@�����S%�V+7�e���&;E@)z�j;E��B��'颴�1vQ4o�ni��ɠ��FJR������	��GݔY�äL�;��?��q�i�[?}�_�+�}0��_S�'c
�W��c7�ӹW+��h��o~t��ߝ���9�qیA�/|���tbn8m�������&¥i�k���ei5a�nA����ث��P��h@��{��=�B1<I=��V�?���w��qRu�q�/z��ś���Y��܏^����.brgQ�1����7>����^9�i1 Z�(P�>�qwxo0*���6_�A��:u�3�4�O�[y\��&�8g��S��LfN��6�yv�Ae�E΍5���/O����M(���	8H�'h�.y�+�<��׾=���ๆS�@p�z��.~�� b���#wN_��Hh�I��&���[';�Hذ��i����ɠle����M�z�ݢ��:�lWF��c�"1J���a�G�a��<��$L�"���X=�I8̈p	�"���G܉� 37�a��h�,��ĉ(Esw����^�)����F�����q�g�o�o�ź0��n����mÂd�"��%��%8ǈ�*�1F%w!R�e������q��+H�CF�8&���Lx���O2�u#0��S]�w�/�gŬ:�_���yn铿����\�����w�y�����{��uq1����R��__������G���G�ȇb��Q��W���8�����v/�P!�����8�K�C�2Ax�0ɘ��;<�D�
��a����٧;>����+W��n�E��:��>�,4c����Q���������^��<z򧞣ST��X�|��:��BX���u��E�&P���眯�T�M��L�6(8è��e����
E��cPk��?��0���U��a.b�A�i�8��bܝ�c���*{m��ѣm0�����Id���N�����st��s�5�"�]���\u����{����w#�,���������w<�G�IO�W2Gz8p|�űG����N��݆̽�"S� �G��s��w�y]���{��2]d��������m�mg�cѳ��N�/(�˴\����B)(�<�D8>�]�NFԉ����0L�c�xǙ{b@��m�Paգ�7(B�-+�#�q����y����.c��w'�=J�8$�C?-�3$9켤>v^����Y�UqB_���
M�TRv�Z�Eg�P+�� 	�$���@B���N��@}�V��~t>�2Pb�q�H�U��}�ٻ����{2��:�To����@������P�N�X��MӜ��&E9&x'��<�<�sC��n"�� q<`������?~���?���[�i�r�������?���>�dk�������_}�V�����o���?��߾��:�����}��p��\q3�M�NnK���[�K��7�@m�҃�����:�)�<s)�Vܱ˳�6�k�\�"�;�N��l��O?����~��~�����4r]^��STC�UІ>���5p� ^�5�7�r`;�������٬������=+��T�]�r}��:�uW������VZb;��35P�iP�[��y��p���(��K��a����RC�ęk0��Y�l����#甜V�[��W��Z`�`L��/��W+ 9��?}�ﺵra��jMj���kUc~J&Mf2ir��(�����5���}l��r�V��S��}�X?��S{�z�簕�G��&n���>._��zf
ϣH87=TgyJS���꓊Y�wv~9�-�%���@�-�h�QE�ǉ7�l��,�y=6��ݹ;�1�\�-h��r�7�WK�(Xw�)*^NՄUMh0�&4^L]�T^1��f��B����m�~�}��⵽be^7q��o�1�BhWk}W�v0C�z�u⢉6���L�X]`o�6�'?�N���2�p����_Ac��s���7�U�ƭi/5l��m�e��K8"j&ȶE�[VvNhLZ���R�uk�JI��2Ǖ�uX�DN�C��(A�%~�,ز������A��我C��R��=䲻�&�n��nh�;/�ٹ��r���RE���t�B���W��,�Ӹ�4Y�@�����Ʉhu�����)M
�Agc� �.���b�D��(ǎ�wPDQ�9
�݌�m��@\h4� r�����2q%��gф�'q��8�ϲmc����o��;ϥ�w��q�����;��"���q���I�?�1�����y�n;��ԍ� ���b8I��NO�ĉXBb����I��cS��{���]�[S6:=B8�y�i�v͒_2Z��vӫx����s��P?��O�g��z߀�3y�h���q�6��*�y ����v�,i��A�hg�Nj8>Q�=�۷��vr��xЍZ7�7ARI�@g��a��@∹2$q(���f�٫DIEA�jp�"�����s�2�<��q" �v�s�+y�z݂���V,��:8��OU�~�f�,Y>�˳�7�+� 3�m����gqt<��3�I����@�4�lG�%dA����~*���җ_����߿����>+��&\��t���y�܄dHՈO#@1/���U�,�,�V�B�A�u��E�����`_:LiT��qฑB�����-�n>=��!�:>�K}g�*:��R1���Pa!�F�"L��l�մF�r�u��76'h���x�����r6����@���Rj��\�g~�u�y�    x���g����j��1L�k�@��V�[��VV9UlYXXX�DC0��`��A�����$�ǜ9\q�a>���A�%,�y��n��V澷�8WP�4���n%�Y��~u^)�%��0>%~a�Ks̋q�О���'
F���pl#w�v����;�>z��(�ȉ���������'���"u��?��Y�������^�Ϻ��{ٺ��{y3��Q�C��k�ɏ^�'ZS%5Eb-)RiJ*�*g���SlZ�twW��{��l�^I�+Ǔ�o���yӕG�5(Me��S�xc��AjZ��O���U��K0# ���zAB�"������^B |ӄ �n�;��lY}����4��cC��fV�be���̬����FD +]�j3g�L�9�f�7��S�r$_���{���w� �j3�n�lh3��be���̬��&אKQ��ffг�iE�3ZDӶ0� q�T37!�ʵ�TE��m��*k�$K���8�꯶�{֤cM:֤�j���z̲�l^��*'�%Md�cJn�1����#*��wzPp�C�Ck�Ck%����2��m��c(��2�y�s<��#}��$�%��s�b��x.	�s�b
��[D�v�u���B/&����V~Q=+��-�,�V
���%���z�I�p�|��ٓ(�a�ƀ�D!��ĉ���(��I=ٌ��o۴����Y7�f����5��`�m
:��@m߬<9��EXpR��Qϡc"r<�KEf��H�H�@+��)&dA�
�����S���4��s79ے|S
�N�Tlɶ �
Y�`����l��[G�;��ףn�Mݽ�DjC�Tbfx��{@1b�!��5�ٚ*�&Z�V!��u���Z����Z��jm�Ӄ���E����[�&ch��6�mQn�	{#�\u�:F���1$��F ��X�+���C�}�F߇��6$n�̝+4���]���^�\c�c#�l��bb�`9
6WQ���q/��1`��6ln��m�{���I�"��������X��K��f��m'uZN��`&���R�3s<sse�MB.#��V�m�\�4G�1L�#il0*���X:$F�ÄL���I\/d(�<C�ϴ�^��_��'�ïw�?7f^(��̊�a�$���a��^E�`co��D����F�v5�kV�z6x�G�㴿k��~����U%����P(u�X^+c�u
~;i��ʊ����Y�w��|C�����)�@�ZFU���C�f��X���ǃ4�o�<���J��'w�\��?� �W,�n���G#ܐe������E�+�J�/���- ]6?�0P	a��*#7�uP�+�Q��8��X�GT)M�$���n9:E�G��G�i���	:J����0䤻��<���wH�У��Mq0������88C���ݿ��9����knM��]c���X�pӐ�l��k5��߃�3�<��~�)m7��/��R���#p~uK�]V+F(�#��T��G�׉����[#�
���$5�Iię���E��GSR�ı��n���,�T�f��<�����^��2�k2u^�N:�NOc���X�~�y�k�@���㴢p2)\
i.�����X-5���{��'���������^}uV>|Q��FW��_��(J}�p����b��e�c��G���|2�3 m��Q���m�Ǐ�1\�ӧ̨DF��h2�=��?d��-b-bw����5�j/�Daω��HR�'�R��R�IQ���ح�=�Gz�������}��	��g���é��W`,�3�|� ��ˊ�,N������fĬ�6V�@��?�)�������6G��*�,���Ņ(� 
X]���%�0�L� �BG
A=9c����58!���C)u�h�/N��͡��}ez#��R�ԫ�����|�{����cċ��(T�T�x���/�����n3vk��L�:��Kiҡߏ�"���T��d��$���������̭��SK_[��_'�H֜%Jr5C%���Ҵmu��%��#�	���J�D��fEwL |��Y��������>�we{�I�&�yS(�/]X�L(E��D1h���$���v#C����7��'��<_B��x���ϯ�M�m��W�\+[��m uA�jFf��֒a3��.)�p�	����t��f�*�q�{���Bb��I���jMO��`��� �D�0���L���2?�*���..f�d�0
1�6_VN�Y�^4�r�=#�r!�a������Z<F�\��=�cVMn�W2�
~H��&���ҦW�&k��P�]�p�<5�6��V��?��zgz9���;���z��v��s+A�AnX^=9�ż������i�=4Smj]f�Pl���!-�c�؂"�������ղ�����bs��"����F�P�J#�DQ1���h*)C������Ґ���{w�|/��|�dalW��8+X�s
�V�R�RQ�z*���ܪ��Ğ�H�eKP�O��JߩUU8�=���0����m(���UX�0ej��G&�oa�m���*���%T�Pwj�N����Eu��{�K�lu��6L�Zh�S��!=��F�����+�s�1�X9���
g��zV��*�04��-�r��|�ͷA��S_x�w�q^�C��^���Ʊg��o���y�<����~i̻����?,�)�|�
��c��<D�d�4W�@�M�?�|����_w�t�1Z�6l�6F����'�yՂR�[c8���Z�{�;K3��X�*e�ԇ�9Q�}���A?��~��/>���_�o���?��o_��,�Om��P0hz��}^،y�q�-O���'h5�*>� ��6�tz㈙�!OQ(9fyZɎo����0��?{�Gߚ
����~\�N��Y�.2e��JVcj�n�}mj�	s^+���*�aF� T!��'�6ņ�f3���m/��\�K�o�q��@�A�`�� m��[��6�^��1���W�z��W�z�Z׫�@r�]�覚�|�7USC�����n���՝ Z���ܕ.x5�����n���;�TM~G�����n�]wW�����6���_7����n�&���x\��[7�mwS�ꋱ'n�&���	\wL�F7�2<���jrY�`��&s�uR̫�pjZ'�ҜTM�W,��`ѿ�N�e�X��j�N�&/�^l���\�LW��];Jy�nD�^ld�n�mp#
0����^o�up~��6�-�h�E��׭��׷׿���N�כ|�\7���E���Ne��u�Wv�1/:e⪺ZUfML3(�%��\�k0�Wxcj�C���_z�|X�+Rw_�q���9��ʇ�v!�|h��~��a�\��岿���+��@ꪋ���>� 3=15I��T�O�B7T+��1���T�O� ��O����x~�O��C���v���\a~(ڏ��r4T����͕�&;Y_;�%[e}�@[Qh[[�U��+8(Y���<� �W�q�&�Z a|3 Mi��5�J��M �X#H0*�6�S��x���L�#�D׺j�w�z6x�G���A��X�[s����b�`R�U],\�Сݑ���	� q�1�=!8��i��4����0�U #�`������E�����XW�|U�$+������R�W���n�bš���sO�(��)!MCSh�5LX�.K�:<��Q���D�����B��&��{��j�����F�� p����ZE^�������ptA���(�nÏ}�8L
בŉ�Bq����pvy��P	>�SD��O�۟}�o������-2~ˤ�]:J_�q�|�:(���뫵H�	8r9Rx�8����j�gW�ણ&W����\]]�ٴnX��ފ�譛�n�#IM�6�۱U��>o%T�Sm�g��6lo����KZ<�]�꯶'�������߹~�����"�֤���Ԕ"�A٧_�VwXٷqٷ)Fk�G559�o�s`f�    ����
�5c����?_�:����U&��{�)�巶�S�L�y��8'u�����m ����PƵ[����,�q�xB�$wd�
'��&<!�ؓn����jx��Ԟ�E��G`m���	:� �=��tk�G�ǜ�8	����L8���؍#�7����C�D�(;��	���u�w/ �q��n��}�U�k��?G���4��{�.za�+��e0<�b��g��� �=5�<ˇ�}�SHe��h)���p����x��k5��߃7Vf~�ENU�wƛ���OӛGi�x��²?J���)���f�p�z��q��	d� tUނ�a���G�K�d<p��6H	��I�F�O��eg�-�,����B�1t�&�\&$M�p�5�F]'@.�����8��m�V`I�������$rrG0F	�.��p��D���L�2:R����t��W�&����"��؄%!����� s4~��nt��(u�N{�ݾ:������#n�r<�O�qN��1���)�g����p�{xGǣA�DˣN�y���������^z�+��;���5�,�\b�+�W�ڡ�LB�9*��4<�,��%#k��L���S�r=ܐ9ܜ<��׳���:�et�s�(b�M7b���@��p<%T�����1�J�� �����������Ҕ�y)��h}a8W;7_�>fD0��� ��Z�i��ifye����D����̵a�-c<�#�q=J�!l��M�C��6�y1Z���zfw���-w.�7�)b�p��-s�o�ps&�����Kk��x�ٖy�- o�O�����1�2�����bׇ��,5��/�|�.*�����Q�n�lZW(bN��̂TUnj�U2��b[��"b��mH��k��Z2�qC�?:޴P[�,�C�n�Э�$�y��&F�D�Ֆ��������z��i{�p��n���#�~�j2�'Z��]SH��^���Zʅ��qeI0A
���04b"0I��S��ʅ]�j�/+D��x=9#^��j%��[��V��U�W\�_?����W9�/�x�#�J�z�M����b�f�����jE��j���7ކ:�l��#��L�3&���SH�0��Loީ��[ݤ�5�󥘙71^w�a�̭V���=�o��}Zs&_��vw.^��a�;*0n��ةZ�[ݼ�5�󥘙^(ה��������s��n�+r�Z�o'uZ��0s\S��xf���#k0�\%n��$cW�\��[�Ƕ�Y- ��o5"�13�
���/�z��~ݳW/��P���mW��>L�H铚�7���_�����y|�K)���?H[����w�nӁG3Y^,�5����b��@V��x�z6�*�5�o�D`os���_�#Ɇ��x(ʶrV�`�tq�iY�����3gG{}��������0E���S����_\-?��=��1��!�gA�3�xSei�L0�$!#ϑ%�I�S!ܐ4V�f�J�"� �9�9����8�}W�ėm�[�s
iԌdpaS�!��wI5��:�dpiՔ/�db�m�C<�/]�枂F2Н��s'�H��k��1O	��W��0!$OI,e��IC7��/L���Ͷx��zl;���vl��:;�p����q�8 �"�j6j�]`�\���Z�H�T�<�4��*�Mp��%f���[l�B���_6����:�}^�����U&�,!�s�u\.ʿ��Ϗ��2�~�c���<�~�'�O^���~����^�7K�����!cc+�"�qty���:�o���0��X�a��"%�/��{�Ǘ���u5V=4-�E�*&�Ȯ�U��
��u��Jf��P��N��d������SM��.h�غ�t���g�&6�c˲<; �MX6z�F���u����u�A6Ճh��������u�W�66|�����Ha5��H�H"�>U�}&N@�}�J���8rq���	�ʐ�G\���g��S����\4k�9����ޘ�AQ(:n�UL\.��/[`��P���?�	Z�o��%��V�<r@���'�I���u�,5���S�7����}�'�uX��$$t0�J�����]�/����)(Ry�(��C��koQ]s]S(�M�=�J����G�R�uM��[v%uM���6�I\�k�b=&/Ə�xY����i>�J]�:h�ei�$��Op�?��G���/>��D:�y�	�;�#�ya��I���m3��-mQR2�3�u	��Fv�_Nը���,�/�OgJ-��)@��{㨧j_w��d�� r���<=�O�n9�*N�����3�%�ڃI˵�vE����$rj��ֽbk�rƅ-�ն�<B��݅�Ċ�<��\F�`%�rl�[�F�{��:�r�H_	)Q�#%\�ll��x�W��`0AF�uCy���d8|� ��LHt?~�K_~9�] �gh62Ĵo��OL-��P�]O4-���#ʰ�tQ��(�J�c�8H\_�1A��ۃ��C�"/�`� c�~�ӏ��x��hp�8F���ǣ����O R�;+u��.�'�~ʲ�;���4>;'�E<������uU�W�[�'�E<<W��'�J��ͩ3H:�9양F��O|X�X��G���#	�q��
V��0�h5����L���#�m3vk�F�?���BCڃ���w^�N{C0 ;_~��O�1����:yQjT溌��0ǎ�f݋+�D%��I�??N�8dw��_��U@mh�x�x���g���p=����	��������ee�/��2��.���F����A:nF�2<A��I����4ag!h!�)��QJ��%2$s<�)03*�aFԑQɃ �	*p�bl�k��8��3�*lT;<�+�W@�3�}��P�qG���V�i�H�,�!��}����}��x�珺6�e��g��!˳]�Y��҃~����&�8�-#U������A.�[��\��b+4��"�D`2�&���8�/���°Z�4�Ob�u�M__������ wQ��B� ���Xp�0����Dj�%r����f6}������_d�[v�T�D�ѿ=����2նY����5�ޙ,��v�j�CM���DP$� %�y�;	]'��'� �bhW���o��)�3�AꜺ�6Fxn���K@�g1R��?I'L�%��ɲ����NA����z���H��&�'����NA�dyU��N3�0aW)e���D���K%W��>�} ���W���NA�*�P���L�Y���t-p��)Lh� ��c6��}��+v͎�i);Z�~eQ=��h�d�z��6�1���{����X!K�H�q
�g^���A�e {�-�{;A߂�d9@�k�T%�<C�[Pr;P��y��)UG!ez�ر��sc���p�+�-anQ:4�^)�	ru��ح��bvD�!!�fy��y|ֹ����b]<II��q~���Ӓ�S\ݧ��Nq��O��8+�2��q�Q+��w��e����gqA9c���_K}0@��s��c��߇���(M�P(D��tm���n���KN�d�bb�:�Ns%ZPYP-T��� �X]�A$�� 8T��0EJti��*sC�zQ��c���M�Ǉ�iNn���AQA&��]�,��p���58f\] ��wH7⪏�,�,Z,Zf���Q𪑃��39�>s���aL&���A~��<b(FH�MH�W��*��!O�ۆYۨ���0�I`��%�m�u[f10ah�ifm%s�j�š~����
�e֗��|;�.�d�Y�m��[����F�c�k���m득7h�3��~v�ij �	 �T	R�uQ��츷�f�Z˽�`��1��u˅-����fm{�\-�8Y�v/�$Vf��Y"/��)��a��(ŏF�Yj8HpccGʄ��)�N�E�����$����m�v��3ɳ�"��H��Q�8a�x�N�a
,Y��t�\^�h��*�^@JDpy�5�n�t��    eI��=�6���8�vh�I�	�;2�����ŒȤz>/;<j�SH[�g4�r�xZH[������)h43��)7�
b<�z�{����@N��p$��F��Ի��z&��:��yF3�IcnC���`�#��O�쐲����WR6Y�&��憫��LT3�./�dӡ4���tߧU�ͦf��-R�J�?}罧���Ͽ����T/P�Ü腩��j;'��l��o<�`8�� ���F�x�}.A��'	q�~��a֋m8|c�z�0���_գG U2���6��mɦQI��s�t�:$�K�8pD�\�E.r|?R�#"�Ɣ��$����\s��A�������KI��S0��8�tz!����c��Jʩf�|���O���[^T��k��ܻݹ��,����M��Vxp��)��<� ^��^x�@&�sj�U-bT������e]�+�jw䁚�٨����η�0��3���ј����^�T\,���C�s�I����Z�����_A�w��`��KUЬ�jQU�����ALmƷܱa}�ahE \����޺��14��HZ;�j\Ѐ�b0��rDd��0��Ux��n����?��?(}�����2h�A���_j+�g�d� ��7�;��@L�ě�&t/�7L��Z�)7a��e"��6�;�3g��q�����k���:DRwA��<q3��8>`��i?�y-�w47Q�W6r�;��2���уW�v�A�q�	6h2�jvWx5_]E���SP�"��W����6⹺?�E�@�(��8��+!	�z~�T�u�!M����Ii��ƨ��c��'��4��H0�T�H<%re˦U�4`��Ȫ4�e7e��ע�܎�4�r4H��Tk�Z��%-�U�4w���V��զ��� g��@�˴�kj�SKk&i"\t�\���"�X�R,N�9S �5�=�2��fA�#¤Jem��O�E[m���������e�X�-Si�F�1��j�۱\^{���O����߹~�?F��X_�V��@�B^�P� �	��r#���P���/#���N�m�v7\;S]�0�(9$����|�_]q�����(:�{�2��rs�B"��AT�3
�̭�3Ɠ(@�Ix��Y��q:^BiBc�����t��$n��(?B�!G��Ļ�+�<�;_�G����zZ��(y��{w��Kh)z�N�y���0�&ME#��Su��9�[Y�sJ�Q:�ɭ����6��(+�d�ޡ�M���<)j����2P��4�j�S yD�&�."Kw=��O�#�1vu����G��7�~�ݿ�p�;����"N�Wn~ؕ�DJM�A`�JƜ����'� PS�n������q�.4�洬5�<�Y�/�F�ɍR�?�M)�C���I�e	$��ģ�e�8��I���J/����(b�M7b�����	��QB}�i��:k����l���.�D�;�"��'Şt<B�(DI�����fl��ﷲ�0�)�t�����8��I��O��V[J	"8���y����UP���`j��Uy���h;	�´�n�-#yL��5pK��[m�+K�E��J���d�Rm6V��]h^ҷ��sW�^-�Z�����<�c���?�n���O��dky�f o����b�5���e�yweLヷ�%�`Y�Ⱥ�VK���3z�-�Y��gBrq�	C��J�|9��,�%��ԛ湷6���P�pLW�D�ChU�xwZ��I߰Zj\em�3�wH�Y�Ӟ��⇄�=�8��L$��O���d%NKZ.W�A�J�L��2F$��jz����$��c�Ԡ��k�;��W�5O�1x�f�����e$t$�+"���N�I�</p	���AJ����F0+*	��a�s�C$J�OUt�S?y��~��Ϟ���ߤ���2�85���yi]HÃ�K[Zז�M� #��x+{M��"�WO�A��
�	�-��8|��ɒ�N�5y 8�����
���d9*���U��5Y�T9�zL���V����E��e���\�1iL�s_�2��w��������p� �c�[�+��Ptp� ��S��܅ ��(P+Q�I�
97�)q���D�������nt�/�*�N{�Ю~����/�s(? �'��R7����NS?:N'W��?�G��sp��?�}#=�����j�ҀB�I��X62�e#�X6^�ecrjh�E�E��PW�s��.0�$�X���4Q�®�a �ˀ��#��v�[�.�$�$�� �#�c���:� �:�qr�T�b�4*�xG���#3��˃�νbdО(����fcp�$�h��z�D�����R\�:�x<c�5���{�F�~�Q)�s�4��Jና�W�<FChZބ��Ir,�J��h�h�9�
炀��.f���)+�T��;2ıCY�{�'
�,�c+��`ڃ�4cԘ�0���ŴSy& ���`E�C-�a�)	w���������?�Ƚ���(ˎ8��)0Z2[N�/�a���;�Ũ���a�[�v`��Tv������$��o�V'��?�0��v��a��,�Nv�ۜ�Ʀ�Ub�q!΅�zmñ8Q �+|'�2� b�НĎ��N����;��ح�ja�T�<Sg�*����{����ո4��j�q����=ǐ����샗z߀�1y����^2ɝ%hƩ]X�-���E�V��qm+FK�:<����#];.��(S����f��(��U��!�JE��em�p�,j�0��ݰ?.n�h�WW�n�ȭ0:U��1o��E"�{2�&�F��L�c<��p�I9yV� P<M���[�
���sC��t�h���Ξ�A/�3��X�?3:�Ӎso��Y�������8J�:����w�_���]�''���]U�������}{U�y��k����/�E��Y����0�|�D��H��JĆ�Q����{�Q��U��Ӝ
S��a� g2bi<�6����M�q����_&��MP�<��2�t�Tea�����n:��ֽ���y�$�ؘ�\V�\��4u�/��* ����A���rw�:�b���]眒A���;%_�G�EշX_��5	��jNNv1̣[�P&E.O�~ҝP���� ��\}�� ���I_	^�(�M��FY��f>Y����N�B��Ls�,�R+h*��d9!���vV,٭c<H�e��k���۹��z�p��h�n�
mvK�d��,�� $�xzҁ1�zVL�|�۵��)L؊��pm�fml{�F���"�ͬ�ή%p��t��+�jӋ<M�eD���2��w�j|+��`����
��moe!Q��Zc}�F�`*L�$\�1��P���E�Fm]���'o����:���&~��"��nͺ��˷k�|��f��]#�>��9.O��@�e=�X	\B��D]Ú�5��d��v����ѹ��5{��f�T�O�������x�vG(��s��7�[�04��H7W.a�������TZv'�����z�0Z.�׶�r�Qz��8%f�p��ä;2��a��!�}a6��u�|0~w��<���<	���z��*�M�T�p�Ei�~[�"M�0��.+��-9��5�����w����*IOm�s��N��n�l�df�f�>�A���YUXz����R=~�����Kj�#ftI������{M~x�@����;��ַ�3���pՕT��ݢ�	�p��(P�i2�s����\ؾ?+*�勤�����ؙ}�0����@	�ҥ��{Z��p�s���ϊ
>�7Z6T.�ǫ��5p�D�M�����HC:��x��c��_�����Y�
[Â�F��i.O��~����[�nZ�3gJب�^��z
�[�����&Zs�i?���~���_���R�N�M;s!�v�S,(�ci�-ˉ[�[�K[[L��w�|߭a�U��n�"��4X=�l��mQ������b�`�����r�&�����[�g�E{X�T<(�R�]V��bmp��w?�d5��˭����y��-V�n<�������pn�v�    '��3��^I(��"at��ם�=&����Rv����`�<t6���h��Dg�ୌkˊݚE謡4{�g�M�1�F��Ó2�OL1S�Tx<k��j�o.�ݱ=3*�����i������t���A�ITy��m��{�h�����z���x���O~�O?���������o���_���Ma�;�L���Bw�evH8��ʓ����Є�Ɉ����������?� �����w��������{��ݷ>���������n�,8�8��z3��)�Ǌ�HCi֒d�d��es�6rTi��6'G�{G��Ae���=�@x�ߩ��e%�,�nI�a��� �����d����G=��w2Xd�p�e��7��8��^����u��b�А�j{N�gϩ�3�b{�î1�}�ٳ�o~t������t�̧M��|n�1��r��|&��i86c��1��n�7ּ\ӝ��-�.��nc]�Ťa�6�tA��m�
�lXuo��ݿ�����t�#��@��&��DF���^��*������b�s�=��e��W��n�u���{���g�v���s���iV<{�ۛ ��lo�v�c�X2cEc�.��r6Fh7���!� �`	�1B����q��V��6�d.��Ar fF4��(�&p�/���!�����R��Ը
VA�`�qB�.N��"i�*Z���:\�'�{�5&�w��VE�`U���}�r��H�֘�_�l����h�ɻ�%p��C%4�I.\�t�P
d�����?�'��Ԭu��O�^?�D�O��ݫ�������W{���g�,DNn�4n ��	|.�0w<I�#8��� �q�~��X�I��LT�J��0	<�q� /`#�w�8t1�P�$f]S�v�~� � �#.�>d8��^*	6��'�ҟϏV,?t����J1+�?z�D��3�����Eϼ�y�=s�y�s��}��9�<{f��׿����}�~�Q��/>:���~�?��3g/�ֳ��˗o�2|������������x���������z/�_�s��uc0t	%��|���p��H����+�٦Q�%��20�SqjY|�-K�L��oÛ�Zf������nUŇ1Gn�$*`�������h]Iky`W�Z&4��1)G�=��9p�Ei� � 5�!8�lp�.t����m�е��Ft�T�P�h�Xe�W��I�Ӱ�g=���0n�����0j*ܺ���߰�Z"�95P�Ռ*��USPx�m�E@QRx���.���~𷊛��8CW�ɴ ���� ���¶�/��B� ;��%SWC�g���M1a�H!r��!����w��O>�׷���W��ji4�c25���ʝ�xbsԲ4�l,��(�����Mh�n0+�(���$��Z�_�z�F몿�r�Oy\�80,3Sm��G\+K��~����Ƀn:�o�"`2f؞k�d6=���c�=מ%�_��_�?7����ɛ���g^L�=�b�__�??�/����<������g_$~�b|�G��x�^�ܰ����I��~!Б���ģ�c�T���������`_��8\�o|%�>�;{�����_$�{��/~��"��_�������W����~�K����ek��jY���Ul�U��k��b1�K�M�5À�@@U?K��2*fxSUm>�������?��m2L���L;��`�b&�Ԥ�&m��D���Js���N�@'��XL�=�1k�~�#B��8$��E�$�G�uX�"��#�?"BnL�bR��{�����z`_b&�R䵈2*���?]�~1�Z�g��W�W��P�7k�
�Ɉ����"��q8���I�:R �$�s����˹6cW/�2U�qt�	�:9G�C&˷-D��-Dݓ��gUQ��},��0��I��K�A��]_��;G.GR?8.�6?X��s�P�y�	-7��?��Ã�ا�z!s�4�z��Dฮ��G$Fi�BmƦ��?=;P$y$�p|ĸ�q�aD�H���CN� �x�)���0�_y̑_zq�ƑRոd���!�"G�Q|�����Rm�d�pй{
I
�r֝V��.�Ȝ7�ᷧ����hI
��Q�qf ���	�8����i*'�l-8~|�����R��/M_	�4�)�8���;A!����L�M�!�[��?J�����X����}6��q�{: �Y���7�.;4���R��GA;M]����e���@����k��U�N�w|���Τ�����ߦ�7�!��.B]B"r��B�L$JfGQ�>ƘD\0!��=FG�;��i~Q)����_7n��fY�Ť+�7½X��Xu4��h�bG�G�V��rZ Y -Hŭ|8ܐ��y��r[��)ӳ,lM8��pP��/	0���'v��]gw�Zv]qB��g�P��kE`L^�r|X�������'�L^�mS���&�)4?'��ndS�_�G���3����������:�����83k��Jz����0��nI�V_�E.O�~�^K��,������^wiSD�R(�@�o"|7�.׹�>Y���O�J����A�z�b�����!�%��"�W=��<��2��5�b�-]~��m��Pi��"��]�@��,ߗ�<��P66=^{��ެ~�U�՚�Ƈ�K�2�����)��x��J#U��\��;��͏Rk�\�]����X2-x��Qo��7�^.�0�c0γ�q^?�^�Ѐp��8p|���B� a,�W�T[���*CG�J�Nl��pº5u\�+3����걖��^����b�<���b���k������G��a��Qw^'E'�t��жr�؈6"�mĄ'R8\J�0,'p1u8c	�����f�ְ�xG�R�i΍�����"z�(�X0�<�ܽ�b�~�����p�S,��xy�n��kn^��� 	��~6��~���+�=�����D�,���Ƌ;�Y� �;����Eec�ǟ����~�g�}��O���ny�q�=ݪ�m���J�Ng��^sJO0�b��W��1W�j���agk�Y�֪kؕ��m��O���77���,In�M����m(�m������q���*��|��ƥaX���vn�f+�U��g�X����i��D��M��5���m��m�<n��[�`y�<�~P��7�v��l^^�&6���m��������k���R��	l��HEg���Ec]Qty�3�j���v�v���!�A��-NDO�5�Ea�u�t[�_`����b��sq�u��͂
.��G��1n�v����:�o�����Fr 0i�ݹX�:��fA�0-�S��j�k��ɾ���f򜆯U�9꣉'�:�m���7�~�ݿ��%w��c2���0?����'f�D���m� �A��B �A"3BJn�*P�>�-����ӿ�p��]��ՠ �b������u�\M uqn
 i������Ͽ�1�  �Q~����Kn�͍�1�l�K]xf��<��z ���{����aa@��v��v�xH����ҭ�p7�|%��?���0�.�����`(�q=ֽ�sQ��i���l�ޱ^���0=O�,�A�L3��Z���w[�az��M����8�h���5��A e��ڞ�Z�0���㷞��?������|����9��g�����ߺ~��������i&�̪�D�<P���5�m��h�#`��ȷcF���(���Y��V	���x	���^��TA8�I����P��������g�Ó��g�y�W�i�T<}�/����'����[?��ݿ�m��.[��&�t��wd�X�?^�����r��<-�?K��`�,��I�QMCeؖ��t��O�S��V[�2�,	�	�l��,�A�.}�}��䣏���;,2��8�����6R�)����w��\�m����k0��k�V]���Z�`��̳V�5a���<K�7#/��fl,6c]Nz
&^���ko4�����
O�8�5�m0Ͼ�sP	��믽�n�LX���    p̰�H��J�u��0̟�i#�VsXW<���������� F���H�$n�%sS4q�7MI��$��33����9%ЫX��^Yȼ��7��������85�J.7�w���+h̀ƆVN��;s;�^-�挼Z�S��r�o�Z\�V/��AZ�^�RS��!��b�������m��m�er�������`v���ᦁn�и���<+(�ڒ���uY8�ZpC���%�Ł��	7/X[�[8�4q��欠�%p7��>3W.�����.0�!d�^�o��C`?n�
�W������F�l֠�q��ڮ�`X#�5{��+�v42+��^���
�ٍL3��+��\�]���k������SiU��^�w�
��u���f3��|��(q����u�8�� ��8���]�>��ǟ��.~��{����y�2�*'�Q�� p���I�")qXR���S?���f,�ّ<9K+��$�ǉ����R����up�dBi(��uM������$�?��������b��=�+���Q�^q�,� ~y <��(�EO�'���>�׷	�uo.
Ƨ~��D&S��F��W�C����x�d=��p�zTN���r���d+X�����8�#=g�����Ψؠ`�&7+�֍_W��x�м�ct�.Ů��D��_���j�2��ֽ-�n՝w	g1Q��ȩA�)�LNR	7I�>�C�;�$��	KX�n~������<�숋#��:I����IJ)f�1z��O��h��������g^�<��9���9u�>O��=��W㯾��?|�}��|p����{�L����7^x��/�|�����������%�^�7�_�қ_��/�_p_x�[��]�F����k��H�l���zBM5Km���@�t?�ֱh�h74�9b���6gA��j��bh|WQ��7V���&m7I�Mrz7�I���`��Cr9Q��j��u鬄w�+}{�v��}T��$yEz�X�V?9>���T2gv��#�& ��h����M˥���.L�i!M��&��M��Җaq䤠i���������,�Z�rz�ԕc
�6�
�`ަ�P���$��$p�b'��9��A�R���>}�ݧ����_}��?���K�Zf��x1��f�[���'}�.�Q5��u�!����a�^�Sb_�^^��Ό͉d��kJ�
�Y�BQ6�b�Z�v=�]ϭ����uq`���vvۭm�'"�1��&���,6���ݾ�G�F�^2jXɤ�z��|�L����N5oh8_'�m]��$0�%�L���Χ��h���㭙�7*��pf�FB��VEzC��BzC��:�o���@�3TS!��5��1h�ٍњ�{�������!��ǫ��Jϲ)�g9�����bK&S�����#n�Ϡ�9�����9��K��J��	�
j2g#�[;���`h�S�	լ���nA��e.�E���1�l��\��ҡZ�Ŧ��+�u�(�μ�5��e����b�f�׎�����I�����B���|�+��M�#��fn��Ik{��Gk{\����ذ[�nE�7������df�t;�-2(�a�&,�ɖ�q58'v�N�{�Ȃ�`|���m����wu;pX��&`n�!���ٱsv�v���E܆�G��:��Jk���b�M� -8\C(��4����9��l�0�1�� !����-S��-��b{C�[�j�k�A�����L՞u��Q�� (�vHk��vȵ�!g(�v�Mh7�6aqZB��k������g�-K�~ h�5�Pwo��3 ����oO,&�!Ć��jڞK�~����T��{ �ty����6�W�?^���A[1����YuM��IL�Xs�R��n��
���5x�$V�T#v���|��������������_�Q�v;g\�|��!k�M�֒�����߽���ο��,
��5��@"#+��׿��O���>}��z�a-S����1�x5���| �0����ۗ������[��'/��0����(�����i�[� �"�f͡mE��W�ZS�:���!J��g+��V6�'�Z�.nU��*���v8I��<�8Cđ1��QB��k��9̱?x�V�?��	\����lR��ë��+§,�\���"�~���b���﫫ͽ����G�n���!
Z�+�N��j�^�&�uMݥ�G�BES�g�y��u���ݪVSП��P#az|�ʻ�z;�{K���u��ʆR��k����(6�wM�n7iio��&=�ܤ��I���4��i�0�$]ib�M��*�+�@���i�"��+n[C�^���5�YC_	`��з��>�>�,��+�ZK�ά̕��FDS��S���/E_{����e�.��1^�\ӈ9,�:"aD4�.=����ݭ������A��0	{� &��l��M�����pDڝhw�݉�܉�^�2ϐ��\]ոYs�V2a�o)�� ϐ=ʄnN�M��m�cIR�_�C�3d�2��*w:Q�4�y�����2J��[.oSnhX�ԑ.)�P��#�ڹ�ɻm���k,xM3E�05�	����w~��g�5���ҿ����R��7?��������K���d/�E58���kUK��i��]�,��Ƭo���3_�a��PCd��^�u��T��m��^�~7����m���G΀�:�Xu`�ҝK}�mW� uk��4i�����ߛӄ!��6�w�C{�7�u���=�e �PC �����^F��f2�{KC{T4�lh����2�6����`S1��
�Mx�]��y46�Csr`��l����h��ذ[�nE�7���,�ؐ(�'�NoYÍV"��Ā%��cC�,g����k�^/��6$�aC�0��`����K�:�8�.�!x������k�^/��68+pS��GlG��	˶h2i�3��:�L%m�Y��nZqp,�E�om��f�������[�ۀ����zl�|��p^���`�w��88fHCp�ػ5{̌�!��V����;,��!^��$�wL"!�Vq��$�OL�&<�~lcw;&��i��٘�[�肱���v��$�`L��Cb�ͅ���-�n��C~2+�'��gZ���/��7�ϳ������[�E�ї�R�HBޓ����EM����_O��G���-����f���ߞ���b%��}�yZԯ��ZZ.@��`�$�Y����b��˷l�а�KҪ��L�7�gw�p[�e���`���8ry���,�s���<�\\��A7p��A�l)�fwtC"�Z_Z ��O���g�lß7�\�v+ڭh��F�bqr�����]����Y�I*��5Ŋ�AB�.>0����<�*{,M�X�~��j��#��$-�
��^d�m��PCf��C�og�A�&,���ji1�*�i	Up��"n����
/7�ں*�f6n��C�JÆ�+u �s`rkH=~����.��f����\���|(�����+�������o?��_j�6ۻ��*��g�#�g�ݻ����?t��ߝ�2j��7鿶Zכ��4���/t.�K.���^��SŹ������겿7V�\��(�氹*K�d�[�'�O��mT��J��ʅ`�dM�6``�N�`�e��V��j!�V����� I�m�5��ۤʕ��mM��`�e��6���$UJ�ܲ��{�T��I�L��Ʉk�*�:�R��5D�ۤ�=K��`e&Q�T��I�̓��<i�*oiR��$o2Lڤ��I��`;�s��{▸'$�5n�q��
����-�utm-��˛�͑�U��:�VuVm�{�=�5%n@�cO-_��P��V+���ҕ��9�uK�B�2j�9�P���NrT�3AM��Bvԫ��KE��xvI�Tp�Ec�V���4Sq�i�s�F�V���א�"&99������Ɯx������,Vz��+;>D���S�"8�]CN��:���d9W'x�_��f���o��u������\    �T�p�XpbTFA�)o�	���1���]�0��2)_�k*,T�|���8�۟�[��k�{m~����vZQ=�~�D�DjL�S^8ה
�-&��[�������H��{��1�9�)�k贛�_g\�q��ϻ���7PPX-�m�PRe�4�;E���Pi�u��Z*���/7��y�۰��>۫��悧�q�P�)M���N�d��ML���pw-U6M��S�0a���-lq!aDK�L�u
	��l��{�Ӟ"��	���8�bgè7�ǛPK���}�� �4�<�`r�2*�ؿ���K5I�J��2���@���[�l�՛�:a�	#�;�X�N�[�M�������Q3��ź�( ��0X�Eq���iu+�ƽq%K���+�-�e�1ͅ�z$AA�N�0O&��q$FL��|�c@tی�Ye����;�G�*���8q�0��;^���L(E3�7���Q� ��/�>@Ta\�s���>��'�*?��#�����'r�~~��/7�&��c8�z��W�������K
9�K8�z����@:A� �AD#Y�l�m�n���=�LV�QU� c�$ӑ�X��5d��Sl�V;X��Pz��%��q��o��@C��4~���T.�c�3?��ϥ�Ͽ�>{)=V��p�[�J-��h���4lo�K��Z_>@˜On~�� �u{�貵t���+%����\��C�%��]
OJ.��;LzHM��/
\�%nB"�MՊծJC�C$���6��4!B�<dk��տ �>Q��+M��I=^a>�H�;G?��=���0�RuW��Ó�W�b&'�l1YK�by�W�~}A!�J>u�Xz��۞R%=��	(S�!v�|�$H�_r��޵Ir�:���Hrc�5����5}aKA�2��f��H#3�UPe&�	d[�Y����7�5�M���ז쉝�$s��Sv�M��'�{p}ܲ���Q�$���s��y�s��j|)�Բ%��F�n��j'�*gӑ,�#}2R�� ����CP lfh��4�җ�V>e�>�7���=ہDk�{ۿ�/!�pF�'��{���FZ�)nT�P4��S�	�V��Tч�tf�Ek&1c�8ŷJFDM̒��k�W|��ǟ����Ώ��G/����������ѷ~����<���~�������g?�?��W���W����{���M��)�ԩ�9_�8��t���-�p�[���+���,���JJ%"�׺�>j�<�L%-�%�tm��gÉŶ��HT��!IC6�[se�L�S->�4�;�t{֑��۪~[o)���YG	N�H��_m����Na?�9�������3��=��]×�b��ܕ��^y�)�|e�)MUe�5�S�k��R^y�o�����~Y��C��݈_~{b���^�\����o=�~��;<|{�yia��o>\^|���3o|n��M��K�Y��@����߿5ua�������)�yh��d���=���2ek2�dٞL��y[�B�(s.
g/�$	���P���nM,g��\]��~��2�	���h`���t~�&��匈H��.qa��gO|s�%�P�\ �&��u�.j��0�%�K%_B��HS'�!c"I2���&�{��Ͱ�����3e��d���"�Uף!uӠ_ys�J�Mx��`�����N��U�=N�-{�`��u��hp ��8��ӄ�*��#mĀ\NߏM���Puub·�.�Ceb�Cc&��H8i�2��I�gS�'�賿����]�������x���+$�s�6'sk����P��=4-q:T'��H�uU�����O1H�����{qyb�Cu'��\Z#s4�X��0ՙ�k��x߼��cq̶DW�|<�^螆��Śϟ�'wr�����TG��������;P��'�v8��F��k`b񥌻���S^:��=�GF]�����|:?P;{jgO�.v��>����G�o��/	7�1x��}�������>~Ш�<7Q�p����	��&_�}=�=�ں���WbSl��'�E�.p�aH<F�A���x���S��6�������7��0(���!��!�3+����A�@a��΅t.�s�~΅��E�4�;��ӄ�
�*�&1�E���~�PO3�Q�������Q��";os��c�������$����C�Kl�*.�5�� ��}�G������������������T(�cׯ&���BZ���e�u�/�p0W�����륬@�Nl�d��^H��z)+�95ʔ�L��2媻V)�uܻ���򴛸j2���j��Y(�ӣp���jc��:�CU�R �!�\Z`߼�Wc��G�~���t:K�ܱ����i͒mJ"��oJ����0����񕎍_�H��=iT1���s�a�K}��tmp������e�S^ͼY�g/�>�ؗ7yj���-j��.�����P*)�l|G޸��Ԗpa��7��ADlo�ŷ�#[����~�u����;�l6]������ˏ
�A�,;��.�#R�:�f��b��[����
�U	���6���&��eu�.�n�	��$�Ģ��fw�����~�|�ı��8$��fHLV����Dھ6�q�8�� �9����A'�$�D���,B�S���;����pl1vV�	xy{g><�)����Ϗ��O�{
��q�k9W���T���a>�A�I*	<Q���ĝ5�A�U1(�;�`�Y�`�\����iǝ5�9�%1'�;�X�Y���\"꣸��;ky�K�wW:ո��D�$�H����~BM�e
1�/ĸ���!FIvВ��Z� ��7���M>��o?��W_|���_����d�f�1?��U�r�	s�<�s���Z_�+�,��|R\��/��O�?��՞�dasqh,�^�Z�_xG�{���0���*�f%�?��~�翽��������f���0m)��"i�6SfCe"͇�i�C��eKWte�t�nr�`��/�wF�m��v�T�^�(���)�-}4׌;|����?����&�����?�ѷ�C�j*8��|����T'�<S��ddk*'�d>�OG[�Mi6�����v��|�~�H=K�Э\�NE)r��,��F��jv8_�h�;e�S&{u&{���]����������{]����չ���XXQ��K�&�A.�It��as����4,�99h_�����S@��ԁP�U�xa�J�ZShM�5e�kJ��xb�
:�T��:PZJ�VgP�f.]o0s������Ϋ2g�������{�����g�}�]g�Ih4����b2
��<4���'~p��o��͆���� �yϱ�
o�$�u`����\S���)MFp�m��L�t�9/8��)c|+y{8;����b[JMl���t�՟��9We�|s�7J%�����E?��R!~���\ݤ�e��Fz�BNM��A��V��:PqJ�^�7���;-o|���1��c�Q*S�t��"5'ŻX��.6W�}U�]l���G7~ܠ@)Ų���4�TV�����`�����s�n�5ai} 	m�"���>�����������^����^�_���n���?�a���������R�m$5���M�kf+3��i�m����~ܖ�-�)��]�Kv�%�X�';^uqn�ub��_|�k�~þo�r�逝Mg�!6 ���¹��4u���
�ߋ:�#�xϼSo��Wbܫ!��"}UN�Zn��y��>�{��.�u�@+m['�[J9}G.�Tb"ܥ�Q$��&��w1�xa]\��vW1j����h�*e[�23}`� ��Ti�L%m6�L���"ΧCc:W��*�F�n�V2;��;@�6��k��#�,��u�u�q[6o��[��wBR� �]��~ML?��~�{�nz��p�޽��}v�������� ����?���~7l����ǋ���o���?�������?�ß���<����?�����w����o�-�����{?aw~�G    ���v���~�������;�Z���~?���w��������~�~3`p�����{��
+J���Æ�����nTA�X-I	h�
���r��	w��!G��>��v���*�T�W@�Y-�8B�x��{�*n�G�]펺{?ڱ	���y(���k�/��s\P���U*�ο *�"�e̴�#���^P�v�T�A
:t4�v4��(-�e��]e<ЕQ嶹�#��/���2F+��e3���9���t�-��|��?��Њ1`�L�	�En��z��~"��X��ZQ,�i?��㇣��m}��7��� AC�1�_��{��~"��X��ZI�:�9z�BD�.�.�Q�T� %B�ZIh7��$h��;^��7kk���?��������?����Q$������׾���F���w���e������?�������櫿��O��YA�|��}�H�������k8��[a7����y̸1 �c��
N�_PeBl��d���}��J��_|����>�>�1��G_���jX\�����HO�ugJ0Sj�>�ne��q ��JJ|Ӭ{�^�v�E�Lv�z��s=`2����3��w�`��b��~�����[��?��'��O{Mز�V�cϫ���A�P+)7N-q��+g�� ����1�r�7���2���^Rל�J��>�K�T�%�� X��u�r��X_A$X/)�N��O��2���^5�r�7��2�P�^
��ɡoF�|af���f�Q�YA�Y/	3Ӊ�月!�S��&�|�mPF��Kb�Dt��ז��U�F�@�q�~��;� ߮b<"ą�wyP�]�|D����r��]�rD����8|z�^QRZQ!�kk�+�]�2ʕ�V�at�������'���F��,��g6��sO_���������n�i�\Pw|1���3�^��_=��?����'���Y��	���(f�m�wO��UC���*(*�?AP�(���N�f�L�+��5�L`j6R�RS}�t"���pSD���jP�7���OSl��å��'3(z���m��0�U?5'��g�|	��6�uY@�&x������1��ɳB,Ԩ���9N&��J��u����O/A��,f˃܎g�b�W��0$�u�M�sC��,fq�ދ4n���K�G��˒�����dI���&����)BgXy8�g��6F�h��,kד4�w��ږ�mI�-�nɒ�}mK�_Vo��-U�?�ߘ(/ p����T�軿���]f��`j��l>c�%CŚC�R��b���|2��S@�DɚKCs�iCE��CK��&+�=b�5Q!H`(�a�����י+CS�͙f�l��n�����4���y�L���c�&��4xk��q������o=��~��o0��XPU3�E_˱C����>�d0�B� N`���e�)3�hKCў3�l��`&34C3ui:�G�V#_l
�B�Q�+8
�TE������ws?�	~��H<��f���E�<���+o��������E}��ݻ杻b�8Zw��
�埍�8ʛu*�c��#����-׆��!83�H��>{B�����ݿ���e
�P�g/f��o��sK�񒤎F�NEQdC�F�p�)�P����Tl�m��ei�4������^��ͻ_���c�q[�o��-m$�t�V�۲qK�u���/d����NLt�p=�C���Z�5�?��n�Y�t6�%u�N��2�h�:Tg�>c���ĆsNI{�d�p��P&8��9{���hӡa���u8�'�)ODK�um:J�6M���I}��q[4o��?R�[Z&J�黿������u��ԣ�;���V�K���8�Ndy>T�	�}diCS����̞k"��Ld|�����F�Z�\�����-��I�D�n�㱱8?���D�%�2��e|-�$=���D�'
a{�ta�`a*J-ia���D��t-<������x��(�ֈEI:�y�D9o�,���x��� �=wlа7ס77�r�� �zJz��~, ~8���"�0Hs�3�mK�B��%I}I�ʸ��s��Or�'i�&���������0�m]	�}��7��m�:{�r�Y���kHg��i���;�(5�b�4�=���R�s_�m�e�"�-�"��6	�Os��3Wk��O����G���K���{�	]ӓ������;���O��]{7l�d/-6���nȦ���?*�viyޕ�����&���q��aQ�����k�2�u������ҡ�9�ƞ=]�	���}q��x��\�L՘EQ�[Ն��6NL]���2R�i}��� l���� K�I�E��*ߒ�Tn��O��dC�/��cg-����,`�0���+k1v ��a3C�������3�Ì3��ɦ��Ҷ،7Mq�d����^	j""��.�2��Sx�o(~q�6�K�m�`�
��Ȝϫ��:�<����y|� �'��9>�C4pD>�>���U�f��w�� ]żϛsk� S��<�A��'
Q�J�TR��d�|�{�>����{��s������wI�<rɓr��I7�^��x�`.��h*�l�Nf�sfӡ15�h5es�0��9h�à�%��ȵ��ɍ�����
�xŒ2ug�pVg�(���C��[����]�O��P%#��r�)A�X�=�.\/�!�I=��|`5)�V�3�\��p�}��:�EI���ʴ4����-|���Sh~�u&�.�J`q�b�:�&�$nn&U'3�d��Jrw��\��w)�P�����҄��[����d��gτ�OӽW�c��z�l�l�NOv9,�$c
�)�X8:�pu���.�Ȗ�|Rf;��w�v�`��������}|�T�wE ���r �D�t]Z�Xk1C�	��*��f����쒌) ��b���Uo<���&���䉍 ޕ��%a�8�²F3#I�-ţ)�a���0�T�r�{�$���GkWa Q
��9����[���ǫ�.ُ�[_� ��ݷ���㖡�������>��|�fNF<|R�VL���\�2D+S��m�	&�����,��§��`��7�^<�-�8���
��~j�� 9 9W�WP<�^p�'��ڣ��b-d�\�V[���a��!��\ڠuV;���f2��42C }*I����b�|$�%�G�'�s�p:?X����Ld��f�x^P�b����!^�ٟ��ΰ]��5���W�c�H�c���n�j�c�`�1�={����_;��ޥ�]p�O6�5�!f�
FS�)����X��%�n�$s0�´�ӞON-� ղ��a���N�m}V�ԃ��z�RbÚ�L���H���VA�χi�|�#���8>���;��G��kz�}>	~�n�¹���������֧o�d��FB�6b��J:[k�ZՔ,96�x�.>�~����_8+ޞnt��鑛ɳ��Gޣγ!Գ�g�7��R���@�@ΐ��)�M��j�Ć����8�j�ɇJ�k���8Ipvz*��TYR*D/*���ֳo�	\�(p��g����}ގmנS+	{��Wwcظ�Wɵ��Ux�+�zI���H���d$�}O˾Ɉ5����D��p?�RI��M��W�DRA�$#J$1��U�S!�8	��=�fdL7c6�) L� ��C�ٷ�ZՉ��N�Q�D��)���|��3��@O!#z
Il���Y�#r�;d�}�(hdD{ I�L��L:��!���x�4Ȉ�A��yL��l��2Zkk�dg���{&*�������1L�lx%�ix![��^�\�tx�:d�÷c2fA� #ZIi��Q��$
0gfNWZ�'̅��C����5�}���v�62i6�º�����f�N>���m��5`�e���VŎ%&�JwyK6���uJw��Ƣ���]cH��`�_zL�L���I��U^/%�������o�ѓ�2RIERkxvi�\��Q����h��ڙ�as2�zt�U����b�y���K�����c;���e�Kh�t7
:�	HZ    �]�q��$�\���D ��<��nXH����֓,A���	� �HF�\�w�^uu&ly�O\Gs�#h�?-#�HU��g�̔!:.�}���1C���1��>�K�뤿�~�K�ȸ�Rz19$ŗ�㑲�#1��T�x	
&H0�ma��,K�حN _�1@J_A(}y�l/���d�mN�^�a@^AxYl��#L2�O�d�C�N2��,W�\����$�j�jz��k��ZA��e�F�]5g�u�jz�΁�(@�*�++52睊�ԫ���	�=(^�xe�F�]b�|8��n�Gk��7�*B�Z�T�x�8J�	��>
��PĲ^#.����i�Y�Nt�N`��@�Hb��
J�=���B爹�&��f��{OmB�k�5��T6S���VtG�����Lm�
�T�͞z���`\���o}������{��I�90�$�
8X�`���-iRb=��_��x(��}��h�~\��p�
��XV}t��7'
>۷WC�jD�ȕҾ��e@�i����g�n;��J�؇)��쫊��J����h=n�$�� �h����u*�֔P�c�*!ݽ���"����ɯ3� �uC�:�Vɳ�Lj3��uj��D�5�l53$��C*Z�'-�{*�٭�U���V�I: =��s�\�W\�4�A!M�=���+ܙ�l
����,MZ�~��.��IM%S����I�bWC�]�����y��)4m[�m�	���	Ĩ��F�ε�.�^n�	��&�NM��6E8��i
r����k��.[���fa��Z\Y�'�qKjz1YK�K�������'d�d��!ٲJ]˪��>ϿG?r������<�+H	��D�cs����@v�#�0��3��f����_�Wd��R�4�����+�*p�����"��O�������ӭ0������-�sD��Gg�}x>����b�a=g:�7�qlu`�5�aW��SzZ:�7�nn��$��:²�u�Qr؞L���T���H{�O�i�4����.V�Nx<)�`Lzc{�Y�
%CI��j�*,��ǐ����n�d��5h2�A=�#�ܪR�a3(�	��R�X9��I9W�*��g��_�-�;#��_���
tDT��5~�ه�=ƙ�<d:"[P�Z>��A��q&��2Τ�@��#��j]���/ig"��fI���ʼj �����`G3>��G'����F��Oҳ��	��eG+u7ge2���;����1Vڨ�1��������@h��7�c�t]���Eh����@�589 C�#�V���.m��&3&���SkbM��ote{���*}zX�O�/�AE8��#jbJ�v�i�����p'~>Jя�Hgkg6������$hqg��br,�/�d�;9��iO���@��@cMj�Y��$mY���~�[~�[!n��rgeSW�6���n�/�j �V'�)�����x�&��y����ƚZ�4.3��v��p��灐6��n���[�E�Gw7T�<i�d��k $��ʐ𞎕�5-�b��;�y v���Ra����O����0D?�s!����H_#}S1��t�H��}@`׶�$ �{-����Wɷ$�W��	�Sc��{��vk�dm"���QM���^��4բ��M� Lv���J5*Ukx���/`= }0aۅoK@�����r���L@�Մ1$�\M�r���kZj�޲�	�|���DhK]��\�@&�uC�:�V�@+����5�xl��/]/����]��I�/���sv��~�O52ȁ$E@�u�k5���Ѻ����?�3
������ZX{��*K��~*,I@-�FU����X#�DI����X���r|�������
�+IRA�sIF�NrEȦGm�d\�j"����d⩭�a�"e Bn��������[�h��ں�/����,+!b���5��A�i��wS��l��7��|�EX�j��H���"%{�G��}�?~�Z��u���s�t������U6�8Z!<�'�wիۗχ�>WXݞ��_�G������}�m��P��b��R�nQ��	�;n��᏶R
��>�m�J��;o����pW��Nr�d�c�f#K�<Rs&�لь��f��p������N�F>܊^�w_�yc a�Q�ل�#ͨ|®�YN�7>�k?_��ҥ^��S�Dx|C��Pb õ�*P=��A��<+�����y�2xoee�Y����&k��^�s������`�	�"̸SQ�zr.��'#}'�\����9����!7���㹖��[����
~��'J��A�ڂU<N�vaB��(��"d��6ݽ�NY��O�e��\Ds#-�՝��𖭏	�m<�X�����Zs�I��9=w�����{�$Iz9�M�Ky c?�Hp�"z����r�����s��`���dW�xxL�1���xm:~7`nua�K�/S}	�ĕ���L��k� G�5�/����Lux�w_�a�<W��J���d�"~v�N�� �J�K�c�~5�#��K	7\(k����Bd�#�j2��m�Ѭk��� ��H�D̯7��.�2��o>�v����p7Hօ�	�_�����AJ�`������7࿗�= C���Qܩ�p��T��!�l��>�]K|�kŝz��%�	ܩ�p�f�A�b�b7]��0��u��x��P}N�5I�5��E-�EQ����w}��q�) 3EdLf�}g
�g����P*XBjB�u��wc�:[-k��eղ�jR�gp������6����~d��4O2����\l+<��Y2�	'��#* �dR3�wB|�Tj�r�K�\,I��$fG�>Mcǳ�
l�$W��֊��Dq!���OL΃x�t�zA���=;�����O�
� $D`j5�tϷ/��v��>�A�5
r���0�^�G��zC���kv�PA !��M�Fn�O Ԙ��j�`l�@sK�m�;P���?ݓ���z0P�R�2VG���=
y��W{ME�,���,��>�B�n���,�euT�{�zϧ.w]�RY.���(���v|*����* �w�� &W�L�MM��SUweޯV86�'��k�M���d� 3+3vՑ����Og<ъ�f\�5�������u����q��[�炽�&{�������xB��3ab�W������L:�����Jvه]�1��)���Q]�����JuU�	�^|�J��W�#��Fl�vT%�V�Rj�R�E�Ri�L4�ܽ
����r�vU���>b/%�� /&D/&�%�]���ڷ��Z�?���۾-|��*�&��^l�j?�2́&U���EnU���D\o�'ઽ�S�ȟ�#���"3����������,p=�7%o8����[E������}W�׀U�+;!����x��=� |Q��/��(��T?_J�����nJ�I�٤ɰ�Y�hf�fR�mkIʔ��d�M��
BC����[�㏹P@���ķ�BV����(��r�S�Y��`�_E� �(��r�R��a��p��%u�8���d9l�s:S{������-ئ��!{+?�Ã�6k��ïʆ������a)�)J������+g��?=�	&�����f��U����x>ai�q���]�w��_�w	f{5��p�2����)�$��8�'3��R��� Fd�8�ߚRQN$|���] ,�x'D/	a?�c'1)2籚3�@�+U.�I�|��%�V��'u
=\A���m���:!S�Y�`�4@�5��@u+�-j��[b:�6�~gQ��$X�+R�q�r&i
�,�HN�tF����ܭbV�|SDˎL̣���[k::aG�-�3q�$�ʀɝ�����J����}���Yb��+W�	|�/�%����K���$���TY���s_��M���9r�$�ே����=r��灂�fk+��{�>�5~�]�dI�#6&�\��*n����I-�:Srs�    �ck����v�?����� �P1!��<�UwmY���m���lzd����-�Q�cU��]������	�}2�?iY�~w����\��Ŷ��^��7���rϞ	O�Ν��W��~\X�O]�i9����R�3@R�"�I���Zs�Pk�'eք��7g�O�{0��0��mi� �~wD��GH*T$�^JxZl�yms9+���Oh^�j ���Rɸ񃊈�TԈ�wk:����k��� ��
�?H����,�7f�T8�f�;�S(���3��	��*��s[�$���4!ڹ��B�����%(�ƨ��^o�Q��o��iW�${�=�12I��z������^���B�}��`�5�}���4o�G�Q̈́[��xe�%�F��ǖ����\�L	�����u�|
�>�����9��V+���o�1�����㺑?p�?����Q<�`6�Ǌ	L��0��v��)�y<w��Qy;��-�@^bԜ��j�a�b�[�Yhp�`�� @��*��3�C�қ=d�C�J2��/��XkXH�r0q�[�k�j���¿Vc�`.�6�`�`��ن��v�����2�wiy�Ӆ�X��$g�m��4��Ѐ�ߎ��]�T��Ͱw2 w��U����x�1��(� t��3Y[�',�x�3S~-K�/%y��Ҋ��N�ȮGo�d�%�!��,�n�*���v�lc����&�3���+'w�';;���!Ժ,�nNP����ܩt��K����ӻ�pאz�R�G@q�:>�`kB�@nI�`�����(�-p��V1�b�� ������*y�!�;��t��]>�w�(x�4�;NB3r»���%tD.!k�n+�Ʌ:���Ѡ'�zu[�+׻�gyV�n�;�Gx�<@��#���- nZa���Z#a��3d�TR�"{}�˾��6�n[͑����5)���~޸�[x�4���=���[`�����~�h��J��A�m�dD�B�$fy��m���O�VQ9�>&72^GɕQ�n���[�M��<sBYX;(���O���w���Ã_�o'�T����ƎQ6<�@/?��.O��Er�����px�v���ɫ�����8C)����⤺_�_�/߿��F.!
ɑj��W�&�WC�e�t��4H���bx���Uj9=���7�J�Y��Ӄ��UȻɻ�޻���:��P��QqP��of�&�c�d,�^DG�"�T�-ڍ��uU!���̻�y���Ev^�L�����߆���W�@��)���*K��&�4:"�Q���M�Tmw���pl��%�\��BQ�Հ%�;�I렴#�ۥw���@�J���h�t�U�"��A�` %�����!�&��[U���k� u0���U�i�fE[�kI��$G�����	������\_���'q<1ln=�KX�g�J�ݠ��%��Z����\[8�{& �B��
sw�*�o��(B�z��O���AJb ��(�#�`/��@�ӧ���{<�����Gއ�� �ڋA�a ���o4�"\���rڲ3X&��c�nP��p�� xh���v��~����ͳA
b R5���x�/��1))��K�m�@b���$�� �]����9��j5��=���?��>�D��9����Ǘ��sWB�᳝5��3k�|9�꾶�d��2L����ຄ����K9[�k��.{8cky	� ʐ=��?�g��?�������P���A�;9�J9]��,�9�������{�=Yg@�a 5x��K�N�n��\�m�f__<���Nx)�4���ϽP'���-d�w
NX���5����������>�B鷽���[Z��5ެ���_	�������/?}|ճg�
�u�h�S�D�{gz�-��0c6�a�����<�`]&I����O�O��a�Z1Պ��V�B*~�s���̻����!\GR��`n��u�?1vf��1nJc��]���>�ō�~�����1ݍ��j��RuHͫ\��n�9=w.��H���9ŝ&a�Ǳ *Q�*�4��I��I�����|�g�y����	���M��>&��QS�O��F��݇sF��[���3(�L���Dq��A
}t贗��^���u�O��,�>H�B�ݧ0D����)J���o���F�Zۡ�$�O��৙3��k{�g��|�+w}!\9���A\IA黴�=�$P���Hի���ɱ�>Yl��a
vf�%��o\�X=��M0 �w�y2@�d"Z$5U�!Q�r����](�M�*A�o��%�.UUB�BE�TV"��%(�LD��U�WB���
M�RJ�p�o��M����P�|��21ػuT"���B}�#r4r��e�hLDG��zM$wuFj��$퐠k虠�0u�V��B�����m��� ��K��7�^�4<Hb�)��%�[�G�5�L�%I!���I����7������J$�Ÿ��b�^~$�C�^�1^{pmB}/�1��!�>�V�rRi4h�Y����(�s~��7�cO����a���F�pQ3�<w��i;w訷��	���lYOF�]-�v͆�Gϔ��%�3���"��������6'�/�
�_?"I2���R�Yo�rMy1���׶폭�l��L�g9.M�('C����D��D-�Ӧ����LJq��s�q�u��7?��K��qS�j}e��u#��Rݯ/�RkWg���l��(;q�e^Gn�:�<�b���_V1�p�BN����8�p����0��+�^�Mk5V��^��-!���;+!^�R��ԙ�3��ב�����Q���Ƞ�I[;:�W+��ΡN<_�G�z�D5)Y��|�zw����#b],����A�׺�+�X�j����C�J5_yT/�L��ևޓ��`�@�!"�].Wv�Qe��m���L�_[3�"��g]vDj���;Tuz��7��v}�+o��W�魱9�#�&���Q���蜀*�@�7b��A��Zu��Ȱ���<�1�Yra����0��C�^;a�4g�`�����0C����$9�EX7������^�l��1=�(D%x�ϏV2�i:� ����r�y_����B�|_�����i;L��4y��Q�_�OQ�G�y���5.��Oo�d��6x�2p��Z칧����A��o�,	d��ق��.�1־%|��^	��2��2����
�@F�Sl!xh!Xan1�|-}����w�~�{���^LǊ^��P�������q�B ӧuk�;�t��r�+|l1��\�n�wnO/&��m��w���6#Y΃��8~�Ï�R�>wC��gá���e�Kx���K��?֙,�o�-w�oKkX�����������g۟κ��ɳg/ֽA����y�s{q�>G�S�D�m�����eX��*6�1_g��	I�d����9�a���a��	_���Z��Q�Z�{en��|��Ò�'7�_&xOV���`y����ʞ1Xֶp�����O~&�ǿ5u��d����٢�}2}ڗ�/�_�%|����:(���J���->�TOZ�h��pC���O�����gj�����2��,�n�L �\�^0X���dnš�~Y�#ÿ��;j��FɷZ��a�����Eʃ� *�z]����N�.�����}-�ԟ�%֮���Y�3ۇ_�f�i�s�s&7���a�A�F�J���5�.���)����k�����eT��COx}y������vp�{mv[��f���5~7�����/q��w��C���~�v�Tc�W^����������n/X)��_56M��}[��� Uq��;�n5]a!���i�LCg:�Й��4t��3�i�LCg:��&�rdI�^�%��
�H1Y����Y)2I�c{�;Sk1f�'�%��L�>(�EQ ��2<~��&<�����K��U*�:휌>����/��֋w$Q�7��'�Z�L��    >ޠa�m�0yf���)"霺^Z�pZ�._�gft�|ſ}���E�<3�׮]�/.�y�s��EC����|_��u����B��C�HO�>Y 	SD�T�Fy��¨�L��?��3=���3��9g+��K�ׄ�A�V�l�&��j�R_}�	��➌	ȼ��;�˼�)�&�%����\*7�+f�G�]w1�m�{������<����]����C�S�f�K&���Z�K���Y��.����=����eP"���2|��7����u���'���tm�ST >k��KD�G#�#�#�۳jT��L��4���|۝�w^���$�dۯѐ))"���XZ,kyI�#)�	�Y�-�Z�G�7���}u6d1� b�dA����yi�g]FHymȣ�
y<F#��A�Qy���_��y��d��q�Q-,Y����v��б�q��Ɵ<b�ܪ�,�7K$�P%$ՐK����Q���E�Y�T�B�L	��i���X����f�e�iy	L�C��V�������27�,���y���p��V�s6����>]9��0	;2�칵Y��+��@�7B��^k����d�ðG2�@X !�C+��"6sc�h��������\"�bB0/*x�{K�M�ݏB~��'��V	�Z�r�M�:3�r�>Y�+�Oy�jv3�C��}\ �*!t��J�E���a��2Tl"��M?�v�	υc6u�������RM�H�Tn�/aX�HTg~��]V�;�z�aw��
����nfyi�r���
�[t�Y	�.��-	���r���}���kyZ0��y*PH2R�ԔZ�P�e��:�N3O��{��{������i�|���9�\�x*�~y�y�%��ӎ�����h�^2e�@�����^��o-Ƒ��V���~��Q�aZL��Ab�q���^lQԷr��DLw���ݷ�HF��>)�O!���/�UO���}�5������dd �"#\����G�7s���.�_�dG�;��ïʆ;c5O��8HTH�(u����la�
�{k����+�:4�:<a�Z0����/��GP�d�0����GP�>�Mܚ,z*M�1pC2��F�]����k' ��;\n��5�mC��Q�%�N��rd��1��2�:���l?�;l�{�*��weO<Ƿ� ������n=���h�6��3�Np���G.2>�Hl�K��,�{���P�P`/��P`���Ƅj/���R䅴��y�l�,s� ����N8pm����\����q���d�CY��CE�͇���6��4UR��^�������))ENI�-6�!pc���i\�=����,�}��"ٱ��Fo ���g�;S[��K�F����酺ʘ�=V-}�~m���x|��Z����}m-����w#��g�2������TT�r|?�d���+�M��,m�P���g���ݼ���ҟ��p7}��?��p��9�9��W;u����ˁ͢+���Ӌ���A���½zJG�L�ʨ��?�����]]�x�7I�y_�o�� �*4Q�DAō�(�]h ��@)-�������Y��$���vK�#�S=�Q�O	��W�\f��ˬ������sv�����-��-JQݢ��6�F�^����Hl��,~�X��,�N/��/A�b�<�E<���ڙZ)�ueh����`�ug��ug�� �;E?( �P4|�@c�����e��6��a��2�!���Q�<Q���ԤQ�gF�={�G���9��x����L�i�d܁@E)
T�'�����cz-l~O 2꜆����
L/gM7�g�U�
K󥠣*�i��h�bG=� )=�fD�� �"�����ǅퟳ�?;쥃	����N�(���\�Xf_�������ڷ�0[íe�u�3�7��.�P�)�yl;�t���f�U��7ȓ� B�B�|�f�YЂ��YJ*��d���	 R	��
2�]���\��l�ǬP:�ɞ�̦ח52Š�X|��Mf���{w�#��a�Q�"��B�2�Qݺ�Ä\��� ����FՋ0?���s2�d�^�U�L��dB��y��lz`�[�g�fX��u��a��طb�*�G��}���� �PY��J������3���k�%�-TDn!*��RtCҧ�\��C�m�Nnˎ�*�b!MLEl�)�]wo��@M�۩{{ۭy>y����d] ��Z,���8Tl��6K�������e�n|�7*��S�M��g�������	�ѝ�F�D�^j�c��s`�IFhXTD�"�7v�45u�ݨ"��a�Qz���v�J�6�7a\�ә;c߆��P*�P����Ϙt��i	d�}%\@�j}+��3#N��lt�nL'������	��-&P�B�J��Ѫ�&5R��l�b��!��$Wg� c��C	��̝@�j�*���% q݀�'��&�;B�Hju�Ǘ���>�V�	D��9�V�F�s�_n�JK����g8�ʚ,l(k��LH�˲�H�K���Zl�1����I3*x�,\��\1�.��8��Z_4�e/�b�h�?�2a�d��!���H��=]71N�%4r���<u���
Ix�j�֍+2P�y3]a�m��=u,ݳF"Pf����O��7dI�_�%���j>��͒�!��U�\P�#�����U�7(n�0�+7��]ݎ���6��&4�Ś���N= ���M@7��,��9(d,Ո�#��e}Ĳ��r*�@3Mtז*X�|�����
ſ����!�W��ѹ{�k����>86���:���b��.�P9Ͼ|��^O�G&Y������u���SaZw���J�t�<ho��e��-@�nC˓����W�#��\#����4��n��0f�dTM�#4��Vk�ʌGi�Ud�3L2���ב\Q9��eO�=v<�w��l������S@|�f��$U1pHGg�&<=����I�zyJ��nm�`��}���`����di1�Ú�������D���$ �N���o.�$.2u��� Մ9a�=։�ij`��Y�C�A.��Ύ�"вB�*�P�昻�e��kZ�=,�������J��d$�j D�R��$o��	g�ڙhU�U�TO�G��`k�4	���hT�Q���+��u��N�&����l8��Z�U�S�J�/�.��fv^���;�]����J߅{�;S��|�|����BV+J)'��7R�:�E9�$��i���T?�Z�4�;p�A� �(�@2���B>�9o�˵�%��u�>�3��h�n�O�[�o�p��;��]�횁��}Ub�j�_U�%t���K1|k����� �Ϣ��0E\8���X+��H+�M��!l{3d^�]wS�;ZlS�GcG� ѽ�뽧���:�&ثỏ�{�Շr ��,�5w�r�Y�F ����s[.
�'�ݵ��Ix�nւ���K�U�f���9
{���`v�k5�{����,��qWe��_�_	E�����E1J��L$D�M$���g���K��h�N7������|Ga�dr�㘥&bb�v�&�wl�@~c"�uT*�-3	I���Eh�&�@�c"��\~�X��Tu
4��7���D�?�T��F�$j�����n.gǋ�|���� �0��Z�A���V{�Q@�!���D�R�/(3I��� ��_�!���Ddj*���.#v���Ҿ	��{&YRF/ɲ(WT��iLu�h�U��L4W��m�h��)VY":�"n&2@"QBD��&ogn<��=���d3�,�8M�d�wlQT�$Ř5W?�D��*��B���U�ZLn�����`�m�?���8����Z����w.X�����L�A�Qd�%��eV�Ҙ��z�Ō$�*���	�~w��� ��Fiԯ�&Ĭ�QU���y�00&�\ˀڄn�I�Z�@��^U+{tȯ��/7�    ��g�s�kM�[�O��k�蟼��K����s��EC��bF�}���ו�3����ְK}u���Z蚠�����rO^O^s�>YdXe�&��iёAajEȄ[C�T�'�&��(�D���lIV9$�$�I���4��3/����S2�U�?�dI4��p	�5����>�A���&�.���*�4n�E�!?܄��z�i�\S�,!cr��&�z4tǤ�xG�{M�g3ק���\gb]�`6F�0�R*��C[쥼�w�e~����?��!g����~�Y]Ė���t0����ܟ��᭣1ǛKkm�|���>v���MYyۊd�uts;��H����a������P��S.�!K����q�9Ē6�)��e#�Ѻ��W�q45lV�e;��i8����u��zG�
=�{�E2�@�%"Z4��?��������b��W�"�9q݅mz�ė��s����!�����fag��t���9&��敛3�1�
UH6�q�E1ޚ���cw�/��=���!h��4���`ɘ�����Fd��h�d> ����4��S�J~��%�Z��P@��J�
 gv ۗ,91�C�m�(�`�f48�0����Y�Wl�����Z~aǋ,�������>DA�Mم7�W޶ÌL~cL���1�X�e��Ȭp��Pܿ��]׈��7��B�(����e�ix�Q���$�P�-�׾am'��M�~2?��HD�D:�.-�� .����:߁�p(��M"�oқh�
6�fm�uw�]�o�VHD�Bz�]�mԍ��G'o�!/�NBo������'�T�V��VD6xMV��5sܽ��j�?nXMz�3M�����ip��KNYbߖH��$�1����
��*��R�11�:���p����<f��g��y�q�	bK˻� �.l��Һ�&!��=�Ė�L{r�MF6�!$D��z�Bk�
��xc�Y���R]W��5d]������|{a��/��+�?g�Z���k���vRӏA=� R�D���^ �ڽ(�܅ܥ��Q��(0t�A&C��b[�l�r9�+{�K�ߐ=��w���!���3' ws�sM�j+3�c���]�剘��o6H���=�e��ʞx�Q�	2���L�,�#�����9ӆ:���F1/�)v`<�6���J�଄8
-�.��q&�i� B�?����	Q��坼*,����/7�b����F0��� E0���n	�c���ܫ`^c�r�1 C)4bOㆬrHVI��;$�.G%4QyvDb�(G"�Ďsk��P�������P���,�Ha���aQ Ib
 
��C�D'����Ð�O��IƳ	�RU�sPq�^�Y�ч����k���)y1N�����< ���^L2��Kޱ�:�d��*�$Ld�n�����r�>�5c���?U���u��
�	���Mk-�$/����m�:"�1���Z��$ӎ'l�СZ(g 4���Q.���byiy�$߮�Aݟ�THF�BF*�˧�7���H��Y�P-��3�Ȉp�(o/�l�C�H}��Z$���|�Ȉ`�PK�õ��oȚ�˴£�ӷ�h�����R�r�H*�Q_k�@�F��+���=D2"�0R�Q>ͻ>��mۏ?:�^k�%0��^�0�H�
#�2�k�t=�*��&��dr�rk��TF�R�,W���]���܆�h<��&Q���·���n|ϙ�»�^���u�P'�ܫ�p�&W6�5e�#�M������J��S��]������+W�9g�/D.�T)|�᣷YԴ��j��yÞC��|a��Է�|��u��s��IF��2��)k\�ml;�UR�i���y��G�cT��{2�2�˚)/+�fo57O���m��Qx��).(���酻��w��a�d3x�	���R������O�4.�@�i�d���4����W���4� g��pw?7�>�F:�={�]�O�٫�5����f�2�X�V�ˍ}igm�S����+�ɦ'`�d��� ��)7��x[I6!W�k�+;l*�t��H�!���u�~�/������µ�v��e���v���Ov��u�7�U�:�D-`��4�$?Pq?f��K�
�l0�FBsҗ�-�'�;�s�@(�����I~��}2�>W�g(�>�4��I;޷L����A��`j��j���������0u.�}��x஗����É�����өb���WG���B)�(�Ѩ�p�7PT����+�ۭ�Ы�OPG(Eu�>�Iv�2}���M��õ3=Bhmx�/7 {µg�-�Z�G�G��*�'��*��u�����vp2�4����._-r��Hn&��4aH�

���w\�;-�Td��v��L��������aE�y��_ZN�o0��^�\����^�M=4] ��y����J�G�*�*�/�3*_N}/?�=3��=3��;�[�I������_�~d/�pۯd�W��F�t=>�yY�&[?�`��"c���fI2�)�8_{��L�ϐ?/ݕ$dg�S���
�`����"�$ˢ�+̡.�xn�3P��EșIIig�N�xzn��z��v���t�KU��M��hа곜}]�|���Ab�%�(�XTfE!�Pvn�ܮ�X�}{��;鈦�	��-�XԢ�E�w�*s��{�f=�M�v�e��0�ې1����yWa�y�n ��X6��G�� 	�Z����~U�a�q�h�7��l��=�{"e�N��!jQ������h,^��⾎v��?O!��9�Q�E0�\]K���.���n�5��Kk����'���� h�{6H@TD"6k���f=Y�+��^��}{����#��Y�9p/�9�b�HFM4Dh"J��������������V��$�`�q�Nȶ�k�h�8DL�!M���v.��t����^������M$�%�����.��Σ`�j�p�i��k<�x�*܀��j ��OE�֥�����(>�����Y��9MS��ֵ�h�Eh�4K}+�,�25���Nx'�75�+�<5�3������0]8l��.�fB<>���ɦ�����;�;�}'��LP�h�DT��{ǜ2��mUX� l���@�kI/�Ͷ�̜��r����ns�!`L �5��fq��wÐA��s����Wԛ1�k{b��	�n<(]Mop�N��<-�WW��N,]pmr�M�����J��}�����5�>6�*�88���¦�I�#!��d䯆���@���[�n�Z�kk�d	�B!�Nk�4)d�V8��A�h��^��!���eө�7._������w�(�����=;)�z��r�X�؃��d)��H	�Qyl�̫��+'������^	B HҰp�x�7�d�3L4��z���ʳ��򳈮��8H�5>��FG�HRy�dj�QE�j����#P_��BJE����UK(����� ��a�QJQ�H���P��jn���]�<'���sP���D�75�%`s�������O_8�|�Mp�����?��	��W�`�~��'#,:�`�R�U��]�u��O.kRxJ��a!��<�^nO�_Ċ҇�P�����=k���_����i Ź������n���q�-�����	���~�?�wg�'��Ù=�k����8����!O!Oi8�.IGJMH\�B+�:w�j�K-aڽ/�ZHG�BR!n
�]]���kӛ�r[�%��tD-$�j�bW�xy!�u��'�;aڣ/g`,WЧi�1��;��FW��f�ۃ���
��ԧ�xS��z��a�8�@=������}~��rX�V��ff?��!�䎍gKJ�Y�<ˆ;�x�"'sv�}gh��#n���"��׎��XHf
P��
F�zd5�ګ9�>����,A濉�Of�L�fBN5�v=e!�=[w�"���:����0s�|`zeaiab��/z�l�w[$j8�a�C�:����Ř<�9[�l��U�>PV��`꬧;�r��W���H���R+��%��^�a>-���ҁ����ROA�    �[=�`���<�Q��\5����k�ܲW�da��.&�M����"�;���o/�&>�C-ɽ�.d}�(cCw9
J����UY��xC�au��ښi7\jx��SW���HS����!ޤ8�R�2Yt:t%Uɸ{��d�ՠ̔0gz�ŧ4�_P�l��Z>���Qݲ�lJ�6�^Y��«�Υ4lZ��$�=r�.�ߑs�su�\�dB"�jU�G l�kUN  �%s���@d'r*w+g�P�3�)U�j��K@�;,���@&r*�*�ˣ`S!�&�����
�ì;�<)/7��N������bc�ΠO���&FW�UiY�tT$&��Z�?���¶V��_|�h'���hB��@.��&B�*��u���#ZSk�%�_���4�RI%A�\�1�����%���(b&B�)�(7�aLU�y�$��J���r
+�"r�ȣLG�������$`>L��P��}�M�`}��`Z�!�a"��ԝ���f��aV�{ ��DxE�;�R��êEJ6�s�.	xI�U��38U ��#�ۙw�/I�I�U��C<<�ʎd����$�^�%>���l&wz1�[��5�'�&����Of�/��F塾�/BAh�P*���K,��՜��]�u������e�}F9/�w$QajM#9g$-��"^SE+�}7�0�"���֬A�d��JRvS����l;a�wc�t*�@�
�p�%��cO.��@D~�.�|�����{����4��V�#�a��VSa�9+�y�ė�=6���ٓ���HX�aф���`�"�����a�<+%t�{����c<ka{�ھ>ɧb��.ONANQ�MD�My��J`����b�>�gឹ��[}v�oB�]���)s�9���ՙik�.\���&�����I7[���&��=YOF$*'qh���χG:�I)��4���{�)�d�k�#	�g�\ݓT�����^�:��ꤐۅW��Ո�C�NF��vm�D� :E�rmϝط�2��� ����p�P��|�tW���,��~fz�"�PS�V��5a�us��ϕ%IY�$��,!��')�����w���=�7K#g?I�dv��O��^VwC/ˠ�=�ʵ�i@����ٳ	sy��i�\�J_�\�lZ"e։s����a��
�c�k+|�g��~͒t�q%���Aj!"R�k �H-Ĭ����Z�t�$e��q�G�!�r����سg��1f����cz�rDe#��
sYDDȢr-����r�^�^x����_ܬ�d&�m����B���������%�w�x<È�FK�0�ݙ������'��>L� ��ѥ56�(�o��x��^�z��<͖:OZ��g�G6dN׬�\�$�����X��z��D�B��n�ьX���$��S�gB��u��{���n�
/1 5嬱��� D�PÑY���n�-ᓘMxWV9,��35��X����b��I޲P@�c��!�!y�@ɐ�H�4�n���Ta��]}J� � iR�ƪo����ɩM2���^a�i�.�ܽ���w����L�pFxH���f��~�AnN4m�kl���@s<x�A�?vybM/�ˏ��'�è��l�����B�����/I�
_��}���ו�7r��/�.5�+k�{�/f	�m�j���_#x�)B�O�����
 g9��
C˪����N+���~	�4�i�̲�bi]�us�V�2{�B���MDDmZ*�,+�Z�����
Aܡ���IBLZ*�,Ӕ�STg��5�2�_A@%!j(-U���(�ިB�� ���A�#!�-����j(��hK�4��2]��X5���iRUYI��"�!��$�ߙ��C�P��_A�!U�0"H˚!$�G�{@D_X�	߬k\�/|]�����J��b,s${�A�j�oO	���W6��ZkA��)�O�PRH��BU��x�$	h�� ���TPTH��B��r������ƻ.�]�vMN��P5�l=�2ئ�2���aؾ����պT�?���A�&���:��兄(/t���,� Q���s�	�D�JY3g'�W����w�$��2����*:�f�#J�֘`���A#!#	]�b�*b�I��xr�.�9B��Y2�pй*_H5�r�'��I�o^m>���@	!#J�R�S����&'1�׍���A.�>�D��"�M�O7+x �	��I-��e�_��w89�;�!�~�>�	p�9��r�d� ��) *k�!,q�M��[��V̓�h��:n�D���  �쯀�>بV��%�qǓ0��̒�(`�e�6�E�'٥F����ǁ��רV9�LOD'�WAf���,����F���dV#ޱ#�ۡ��� �����k���2���u�SQJ.{��s&���-�<�j!���k��f����Ћ}	]��Bg˰lkZ흵��^pw��6��n��L�47��Iʹ���TM��t`��7��͂���^?�v^�ۭ l�Q��@&'�kG�^��Tzϣ�uEAFח��iqf{ӵ�f��r��(1�a��.NHv���*�kp�n36hfm���DWI®�~WA�]sT��-�;wx���
�]�/Aw}�VJAX)3e����O��"j���<�<8q݅m��pǗ��Yz��=Y�,�-x�����sv�s�/$�d�i�]�/
��0�gwLf9$�$#
80��̔��!�t��.�p/k�����c�=��YZoؿ�c@�����~t�	bL99�����lj�Aߣ�U�o9�Y�T-��k`�T��3�JQ?"6��M��0��_׃��f�t|?l��k܍w./�n�SK|�����?r����2��8�Р��Q��A$�������&s40�*�$������ڷ���d���h��v��s��̧��&����L��0�f��6�
�2���r��׮%H�E�Te�}�fJ���c��o����� ]���q#��0S�0ݕ�G���ni%��O�E�=�ٳW�v��/4n��W����s���SL����j��/"{K�%���'��TDd`r���B�(��e&.��T�l��@E�f*�A��2�)��>'��k��)��I	R�"�.×�@���K�9�d+���bһ1Je:H
i��(���<]�so�Z������N���(5t��d�CYI@�E@�(��!��I�rK���%�;�v��hEi�1��h�ҀDx����Zu*�@��5���h�U
�� �����xŖ'��{�ޢOK�������^eD`n��@�kE"�q��6�2�*�+���t����ѓ�o}~��
��?ر��@;k��mc�U����^f��e���ɾ��Z���l�]{;��Z�55Fk�$�U�Z��r]�U�|(?��_��(�>���)�m�h�#8��	Uj��(A��·�(�	���Z0F\�����Ǘ���A�S��6���z��l�D��$�:ff������c�z�ڙ�(g�ܻ�����eT���؜��{!.��ɥ�����3H���w�!�O�+$��/V�rPl�
Q�`w���?Wֱz�q���-9�i��X�����TQZQe���?-��7��e��Fcs[�����>�EZ��"l��m�۠J�U�������1��Ϛ�sU��f���r�~���m���8i��IL5NX��2{��0⬕�0��T���KH��w�nY��\��i��ְ���J�����^���jH%�R�F5�:��g�[�Y�=ݠ�@d�Ӷo2Ɓ?��@Lnm����"km͜�H���3�bwy��G����^?Eq�l�!iy�B����d�I�h
�o�n�=U��9גMOǦ�X������T�;����[tU���m'����vv�Ľ���a��d듷u2�A-�#jI���T�?`������8��J���B��������b<q?�"Ca������A|k��V�גV����`ϾӞ�#� �@fs*T���Q�    I�8y'�ì��7��F�m����o�Zץm��J��lS�&��Q"��n-��P�ꈢU��ۍtcTŦy	 ­R+
::�щz���.���{vL�O�m�T'y1y�xq2_��KG�_b�jmTll�Bm[�G�bK�[Mj�Q	��,�Ff�_=s:.�qIM*�Q��~�����8�tDG$5��F���e��0���Kr�k��A���!Kvw�^�@xiIi�C�,�{<�&ܭt܄_��4�Z;R�JS<�k{n��U�l�E����?�K4.Q��93������d7j�Tj�:� �qݟhZ{4��1 ܥ�p���$W�7
�Ʒ��1ڣ�"��ӧ�28���!����m�����G�R���]�1�G�ȶ�_	�f^
ܒ�pK��D�ʣ|�v�d�� ��/�'T7�,����d�}&U�/�$s56���6���E���>�8fj;t=���m��������ͤe���PA��ը*֮6�+����?䂛H.���{h���x���ϱU��	2��W	�^M�{�S�Uj��c�/�l��\ǳ���Ɉ�D8`9倥ffd��f��dOzn����4C<b$`�M���9F�ui=Y�+?�������������!\G���.�I&�,	'�fWG?�vuٚEO(������Ԩ�!�
�ď��6�Z�`�i��i]���O��w?���-�5*'�U�͔;�V7�Z�|1-	i��t�g�̺�#<Э0��0N"���?���i��a����8{���̜L���՜�(7��9`�7��K�pWg��?�k/3$3�\�>�!8P3P��4�|��q6a�/�iʝ{�>�$������&0��ỏ�^�� C}���'�W��5��F(z�Y���6�/�n�?$
�LD� s�!d��WH�z�ph5�	d&"s����s�v^����w�^���ɩI��3RԸ|��;���P�k�����Ě^$�[�O�l���O^�s�_�os���/O/5��+k3ʫM���N�'��@���j�j=�@�bbR���yw���!L�m� �0��R�v��nG����O6�o2���$�F�lD�N��ٍ�+t��O�v��x7"�P�lc��H�ݠ ��M��d�XB� J*����dF�Էn��-���ц�ʜ0�f� [4�8��Z'�uZ�	W�酒J�0�K~:����	ޥ���f�;��g&�l�����`��c%�X$�_��B��7��C����ܸ�RkX������)���߬p|s�tf�-6@^�x��?¬Yx��9��͇QM�L�O�$#K���p�Jʝ���yU´n���x�%�|S�D�M�+_рm�ک�]��;� �k���۲Fo��bk6{��女:O�5�[W>��ӧ�&�ٳW-d�=u"�l��vw4؛�0M����Ʃ�2�{��ߒW�x�Hf`�E�%VGU�R.ي4�-���[��=p�"���b�@���5�����6�� "�/�+ͻe����ް	/4�0���w�9M~B~����p�T���|�D��BX���#�E��V�*�%-I/�/�%��_� �."ܻ�T�6ӑn�CQ,�ۥ�[/"l��Vi0˦'�a�UKf9�Ut"�P�*g٬F�n��o�>��0�j�61Bti�f
�W���-Y�^":
0�"���F%Q�`���:Ĳ�i�D� K'�;�{�
�H�Zݰ���K;�dܺo6@w�ڢ�G ^��;�yՍh��5�l�zkA�5�CA!!�-UE �O��?�V����ϑ���~�2��T�e�d��CB�Z��@�sެ�[�!����z������$4����	ߒZ��U7��o�*��7���O�fU��_���$Y��g�ݻ�8�{�����n��XO���{i $�� Ig/�ӷ�3Mtw�����se�E[2mɲi��(Y��kY���"i�}�5 ��~���zeUeUW�T�� I[�tVvvVDddf�/"!�f�Y���@�ʄ����)�<;���=���W"�=�U�����_,V�BqJ����ˡ0�e7��Q�,3���?���O}^fN�~t-`36à�usuf	�!�����ʤ�|���:`���r}tC7f�`2�ݩԄ��v�i�d��lg�E��������9+iJ��\AT_�{�����J}��4���$_�(Y g�ʰ�p�X��������!���>��y�w��Dn���n�����E�nW�hXq�dn�^�*��U*ʼt{-u��q1:{Y"�G�����KI[�Յ�/ǿ&����߾-����#����hrZj�b%�+0v���\�J4/R����شu@����1���#��H<�"�� )��Z�(�?���s��hN���t��(���Z����<i���y�}���@?T���N�x$�i	'�&��*na��i�V<8i"�9o�}'��ʀJ��xZ��n�5��7i7 H�2�fkA�&FpLr�ˉw׫pU[f&N(�l�)�Z){aK�ĺ�/y��I/i�Y�
{W��۝1��	�R���|��ؗ~�m��7f�~�x�k b� ���(�Йa�M�6�U��~+�� ��2���jGl�1��,
�D�G��RDr*�
�4��29M�դ�L鬉�y�U��p5I߮���F�]���KsW>���A6���6z��u}��:���߻���/(��d����RgәR�'ϻ]9�7B�|���Vc�j�v�N=�~t��q��^�������М:m{�I߫����uP3|�|!���}��~�:nv�N�|��C�v&��!f	5�xt�Z�c\�T������X��Ľ��Qm�a�g�]�jv��3�3����A�R�U��N3uf�bB��A�#�d-�([����οι�xљ���Յ�SK��[�n����u��� ��X@�å��8�]���E"M Kh��%��V����- q��;������aɭ�:�8�����=�8�4l�* v���c�7�48[��-����� YX��<�A�q��)���:e\U�k(��v)����3�wpKxXui���,L��?GѠ<s&*2ǓY����>��?�O�B�9�0k�a����Z/nS���
��/�	�SMx:�����P�V��� HX���ŵ�jyJ�-�~�Y����W�?4F`��$�c�D���Uv6���p��`�����Z�VOn��٫&Cg`2,�������Ƚ�l�h}�|X��dmǼ�%��u=���谖�c��ËX����hi�CKs�Y��G�3|�֒�a��r�8N#㜼�p|�:��j>Wf�k���X�*�HeZ�E'�(��D4s�	zn<���q�&�L��$��~��,�����;��ϩ3��v��dV�=v�jJ��$��1�>�vY�JM9Q4ޟ!�!�$��?�p�&Sڍ�ͭ�ϝ�Wn��X�2))��C�S/e�;h��/J8����ǭv��
�����B[��Xgx�m�ZS7ߤ��*�7ۜ�;�rE|H���O�"t�i��g�B�t�Nr��M��8}��׊ �GQ�s�l%[�c��1����JYu�Qab%c[�N��zvʖm*�w��s�Uj�я�:s�hˣuNd�	�׶��8pq�4$J���.�=h�A��h���T;��r��� " �����������:jQ��i�:����[�&�36U��[DlR�qW�<��\Y��e�t�����%L��`�W!����/Z�^P��0?�ɴZ���Q�%�̮��Έ?�T�%�vm$�_AV:�_�:���e�L~y���H�w���Z���� �GL��<��)jGpf�0�_8#!	����>x'&�D���@�&c�ɸ;�)b֞������Z�Dc0@4��aw�E�g�8e�JN�.� c0�6;\��D�=wB�$?������ �H�ɿ����d� �jJ������ht,����� 3AeܻN��(�sBP7���hz��3�%ֿ�\�\޸�    ��ol�`��l�.�-�<YB甧�~d����>uI¤1Oo���*��v�'_c �2�,[�Ѕ�C�'��-�н�C�K�NvIl�x�a[Z5�Q�
#��Tc{`1k�����l(����-?�w
 �������&#Q�0cF3fK]2�4oG<���4 ��v�'_c�"3�(2[�ɧy�	2z���	ݯ��ɨ#�l�K�&3x�ê���̥�@FdKZH'�ʌ(o@�+�6gR�IT���{��Z��9��;:@4�Y>���x���JL_v9*^";v��?����=L�!S;���nU�w�[��G��c8u�MtR���feB�І��3�0�'��:"��3�K�-m�:]/�TG���c�BeM�$L?-#a�m&����,�ʍ����(�eO&��Ҥ���Çҙ1b�Z(T�}zY["[șҲ���D@uHPt��<����s�*�)���0��Es<�1�(/c!�x(C|���������r�C&�[z�#*�%�_dS>��{�aE��.��՟�,�3�,<;J^3��ȑ�& 7�`�����,B�$��=$x�LHgJ@"ɗHaR�����#���k�V��p�I6�Zx�n���a �.��?φ��AZv�1k��D��w��:�&r�kPI6����H�����6����)/� O�a�E���"QCKE�Z�a�h�//���M��[X"�&������D��b�c�l
s��;��ډP�h"f����iz�LI5}ouuE��v�u� �T`�2ݓ�i����J��H���ǫ_̑�D>s���H�@F�4�B�	t��Dx�{� �D��#��"����?�Gq����`8�v+�K_�0��F��$��CF�Ut�j�I�ˬu�T~.� c���&�z���*
�!�_LBM�m��QL��_�17��4�P#�_pA?N<�'����c&sF�C����b'b@��jYJh��Ȝ�a;�U����L�|ܜ�)M�d.xEi
R�	� c��}/N;���^��@ m�)�r�_`�x�����~�2�
=�~
�U6'4u�i,�9%�eJ����<��!�9�D�ל�gwI�20>�,��ŏ� ��8$�;x����?9�n�_��L� Ê�� �g�2|�i��	|(�����b���7�ͯ��ͯ��ͯ��ͯ��ͯ��ͯ��ͯ����cq�F�j�-u�����t�g����z�� hSZ�	��qs�~�)�lCC_��V���y������<,�4(aK����AG�o#��JIR1F���3D��(*����ǃz?��"���z�PJ.+\V��6���`w[ꔒ�Hp��	�"!'_t-�"��Pd[�Ry�AbD��sOyp�l%{�p7I�@j�HmKV�@�:y�ᩗ
��d�MV`��%޶Am�X�.Ξ�dO�� ��d���R�x�m��N�T8�7$��j2�_e�K*�:/�ϵ{&����X�ÕM՜�}ڨ�C4�Ɉf�;�p�i�M�;����o)�hW�Z�iI��b;/�X�˯]��Қ�e�l+�[-���bo�n�����<_�i�	�V��+��&��.�KL�� r&0�0���V�՝ ��+���wnՓ����B�T��yr����w2�J�c��m��xꄇ�+�i����t�+�RJuy�����2� _ ���w	�3X<��/qG�,�y�K�jN��R��U�l�җ("���d8�݉3�sɕT�i�)��,j�鈎�#Ѵ%�2}K�,8�d_�+��k�}�����'�~��_w�/ ZX��l,qO6s�;�"�6gй3([e2�-,�B6�x6���q =;�9����ra1 ���Q�D}q����Π-eP�� va�`�o�����`�^����b@/�nԐ����:ޟ9�"D�4+ɣ{��+�'�i�V2�.,�B)�C�>����i/��AU=mb��Q'='�z% #ݸR���QƝ4H��kN�u�.@",$B� ���[�����y�_NȞ� 6 �PV��YN��r:�#�வ�Z�p�ʫ�h�pߙ������h���Mr�[j3��
�8aU8N��|� ��j�G�����i|�6�7��IyU �:�	�%��4<���7�fx�(���5�2�y:e=ј�=������9Q�)�൳^;���ɫ�x�sH�B>h�:h	��Ij��f3|nj�sSVu��2��M��UՑ���h�"����N�MI9��l�oN-|s� ��U���#��T]�<�g�n�����[�C{����FO�pt��l�D�W��,�e����/j�/����_�t�1i3�j�To�3�����ÌO��ɷ����TYb8!��u�f����ǎ��˩���c�|2�j�$o$�(��6��9w��;id�*+�4�-˚N��X*������@�� ��������Go��%��%Ɉ�1����9���e��1�-ۀ(������W�����Q�@�h�@U�aX� �?��B���F���K����£��Vu<`��HZN��$^�gx��'��Yc�0�@��u�H��՚S�O�����|�v'�X�F��(N^N��K�����kڣYS#/��'2'`_R���v�n'�ls����x����j���i�Ҝ��%}�ZX-��&w���=�K�����2é�)�ܢ"���)�˜�+�C��,3͚�ɕɠu������i�IV��+4��>3���pPx'�z�F��э��1�<����E�֣_���Q�ᒃ_~6HŨL�A��%�X���M�W�~eM���d���@��bAq���sj����7���mI��K����P�3ӏ(���ʏH������zT�������?���3S(��k1��Ҟ�	�fG��,3|�����ˁէ�p���v��+3���������	E�|9G���j�婶�\�8�w͈iN�^�<�2#òfwA�r�v��9_�s� �����R�.���	܋��?]a��u���fMi<��vB0�$P	BאǆӲ��5���_]�TW�Kr���J�8�Eb��֥HJ��$���i�s��[���y���������X��bt�N����7�ȵX	W�Y�ɺ���׬0��	�2R�lg9�Z��
�KD�8.��My��ü��i%��)���w9��;�\��q����NQ�Fu|��}��z��`���4�.�����*�sV��dM]��x�����E�Y,$�P=}j='L.�\F�UFs]� ��	�)L@G7"�?������.Ѭ+��.NG`mS���qr�$�]�G�0p:U��%-3�\=�M����8�Eh/��w����dV�u���[O���?�N�++B�U�˚,��.pMB֭\.���Gr����ЩZ;}��$㻀&,����f��'�7�IW�4�>��3�[����+�S��V�GN���6�/�B�j�t���%m�4hC����T��:���̍u���a�0X���|#���z�k �
��۫y��W��3A��L��\#ؚ�����VŧZ���v.���P�Q<m�;E�� �i��[��j���A����ݦ:ɻl((p��뒡]�6XG|G9-����Y���QT�Ў��	�f��d��S]!om�\?!! ā�-g�|�&|i��EB��*D,K����0���dm��3&�H?�B�%�K�*��k1@ʨ��!��+�c<��Y1��ӭzK��@�r[4��3t?�gw��1�-�.��^@���''�Yā8�P���/�K�wxa!}a�	�|w=N9΄sdB�Z ��20+����Ĩ<&���T���_/��ʆl���Q�Cm�a��>:G��G�0�S��?}�wz�o������x"w��s.9����5!A8g��3�����5ZD261���[l�2���(b_d˷ҍ%�|m�i�|?�&AD����,F]P����������D��e�pg�#��|�@De D���;ѝ<}� �`8���    d:0 t�2@��vkeR7m��\�9�:� 6�2`��vGd�?�dn�fs�(���W�}�l��1�̓?.��r�-�Gp���������G������Α1�fE�4?�L�xp5��Zv��w�S��8�Z/`��X�[
؁�����F׃8�#j�E���
��[FA�`&3x�OȖ�(7p��xw�������t\ܳ3@�쇘S԰�x���NC߸qMQ���9����Y[y��ڰ�j۸��z0CԈ^��>J;��<s��U�K�b3���|~.� Q�I[��;��!Zc�.�^����K�/���X����SZf��5�𶧼����i�"�& "4"�.x�s̲�y�=<��� 4F���1��V�����z��7�ǿ�p��v��ޔ��x���-
Γ��I�� ��1�
f�adVe*���	��>�5ʌw�`�v0(#7j����
~^����|���%1�-iQ�s�CΪ�gU�� ��1�&�������麷ݷ��ٜS�4���Qs¤2Au������e:X�ށ�_� �N�ƹ��]8��3��S�೓��oɫ0'�F$0:�aR�F��*+�(�ϐ?����z�Л fj��F���~���=n�e�yy�y��]@���I!X`�%5�@��3�v��hL��x�mؗ8A{�b�.��E�ua$U�!ܢ��q4v'�aFZV_^���̪z,k>�$���Z�z͙	7 ���l�ܛ\��u�O�*|�8Ηh�6T��zm;u�Izd�(F���/�9tb�DAc��<Xw2vC'<:�?��w���F�R����	P(�	ϙ����i0�ԡF�q㪦����<N�=�xw=�3�.���h2���W�3ǯ	�He������~�^
���дDb
��<���;洫R��:�^�����<e&��E<�r�ˍ/�~�[�Eg Q���ʚ�FKP��-��q^wN�3�� U�3P%V�*�pCQ4ǯ1N�N��l��T\ײ3�SN(us9SZ��G������c>��z��9�u��! Rt"ŢҺt�E�Ə��f�u�)ڳ+�vIUl�.N
@PT㖋'ř�b�CR8lP�73����d<K�hW6�z��깡>�̎����9��g80��T�c�כTK���
d�^L���fi��z�B���镡(}%��Q���}PbY�;e�K�*����TiZ�k�����K��=:�cQ�h�䔒$jH
8U(�PGP�(|6��ㅉ_j>��
������(�30kZ���<{Cx6���!U~���<0��o0���})�J�C[E��U��3�u*zˌ��qc}� g�3pV��ʝM]�=�?[��]H�'e���K���R��Έ�y\H�ɺ^��!�&,k�UF%Jf9����$YP�H*�j9�=ε��FS*�J�JݛSQ~oN��)����9�xp>���2X�����s�Q<���8�G�ـ�2�)[j?�։�{��^��z"ޛ/��8: �*�jD�uI�t�	��y8�b�~�v���tkU�vJ"u]�~��2"��ڽ���9!(��]R?-�T�����4��=���I��=pDGdHZ&��6Κy��o�]��q�-�IYĐYGɒԜ�l�x��y2����9}�|!7�8[i�A��i��ymp�lG�% n�fPSf�|�w\������G)`�� 6����:l�P<-����v�%_S �2�+� 21n�mmY�E��	�))�� ����Yg3a=2qN�pg5A@�d ����>։.��x\��	wV�����I�Ȅ{�8Y/��2���g@�
�=����/|.�]	֑4JЎ�+�al��9�(r:� �1@��ʶ�s8�2�[�S�,��d�x�F8��������a �"���\�M[�3ٰ�l�*��K
\Yfݕ��Ts���qc��y�8[�cI��̬���j�o�{�&�`��=98�̺#ys�)6�5��_��n�.��9�����;�u�J���`��',����MV�݄��ht��	Kuy���)wf���U/N����T�F¦/�C�Z>>�)��y|��6B|0��JB0ß�0
<��/���"����>d{	�4���q���a����`=�8W��+��獥�]���~�2�<؁O5�]{�\[��|��/��ߏW�{���4���r�*���9�-�KVݻ�w����
���u�]q��a��Ie1�Tv�y���e���E�!��b���R+آg�ŶC {��p��
"�,-��R.�eƢ��@g������ ͠�M2�"�7������J�rZo
/,��]�X�EYi���,��� ��M��g���ڊ��8Y�xR��F;�P�w�#.�\�+�Ϸ�[,����z�K�:�8�H�5��X�SlI�JYo����z+`��8����\�&�q�$���ۛGIVd�3c��/��,L�l���8����![|���q�e�ZSv�p�g6������� 
��,��0��Y����qj�������+@�˂3�?^��-��}�Oo<�����Ӂ:���8���I�rS C`�026����C=JG���-��L%+:��X��.P-AN���7r��Z3���+��L��;t�5����ې+"/��48���ޕ+X���A�{�$IGG�Z>>�T���@�� �<���8��	�Pp㉏B�w0р*9��L ���g���
������Z�Qܧ��_�X��h�ݚ�����
gV���3�;c9_��/�����B�(�"j��J�w8���;�Z/����p-����^�Z�l�#�Ӷ���B�(r;��� ����m��K4��B�((){�e��`��з��kԷ��Y>nEm�U�v���덕���Bi^RIj�
"2yS+B4ޟ�W�����>�P�.IC��$^����ts�5�hdg�j;HNg�<��<�׵��W�%��y���J�������ӷ���!g��}�U��~�v���p�U%M�KY1��}��׭�lꜸ�h^U�f�+�;��^��>�i�I8N��N��}�Ȝ݃P�cv4$��N����j��z/z1!�jTy�ߎJ�����K/g����\+����ܖ�(A�1�Qx8��S�JN��.�(�#�R*������m=Xq�t��ADYZ��Fcj�	�C�n?�t<�� �,ϫ*7�ڈ�4��cA_N���&�_�&�k�����������~Y�X��|��Zw���	�!��+<�2ˣ��0��e��cV���Y-�	��!a�M��W���n�#[|!��TfyM��&�R�T�F��wIf�mkG��E@J����.�?&0���YDq0}v�د�O�%Q�ɇ�?�C�t䅈������T�ķ�r���4�̦����'q���>
S �;8�g�c��L-hౖYk�@ժ�T����>��S�oʦ��@�S��tJ_��N���I�g|�Y�tOO�1K2���7��y<[~��Y�P�lr41k+@��%)F�z���7������/R1-1h�4v��0/x-�Rj�2����Z�x�b����l���^�X�)��~(	�0��e�A�WA8�~�)���^���/��������U}��b��O���W)�I-�^���U�"-x����61�[���墐xu{��َ�З�}
sR�bW!r�f�m���Y�E���v;+wpfl3����-ШbV,�Q�c��~�j�Cۑ���<�W�yj�,˷�I�nR����*]�[�v�����|"'X�.@a�4���ւ*�*vU���<;>G�Ԑ��0�ں�;����iz؛���R���j�4���6n.W1飠�'�g�]�j�^��Ϩ�l�I5�Sr�3o:S{�mk������+�QZ��F�$��K�(\R��Ku�/�P��I�.&�8�]\�����2N�3	�(����
�L=�}�    ȼ�VM.9�V��DPXH�@",��7W�:K],^ڧэ��%ɗ� B+p�2>,��YtGs�l	G������(�Ų{����p}����Wq�C7N����8���C�B\��h�dY���;Y�B��$;[�d�V�N��f&���2l��eh�G�Bu���'��]���1��@3!	@Ka	��8��pa�M�5������
_�!}O�|3���G!���w�I>����\M �Ga!{��#/V���:�����P�0z#��S�ݔK�_���ADr��A)��*����#,�">Ad�p<��N��EUo� �"�����B��{G9m���G
���e6_��W)��'�@�,�kE6�!��,&�"f_�ؑ4%!L.���c��{n���ê; B�0�T�ß��}�ޕ+�J3�P�ݻ(��dיϯ�W�rt��cHGE6ֵtg��mCiTο�ɿ|�RJe!�t��ֲ�� 3�Q�/!K��ͺ�w�(&#j��Ht�J߲v�y~�[�O��%;EE�ip ��k�e�yy�y�/^���,|��t��&�n9�޳�վ���TN�3�� =���zKu�Zn�hUB�^��nmD>"g���V�ǎw0�3��EP~?|B�����.�i3�>!��TH��:�68�7N�lq��PY���R�AP�;�cZ��kωb���A��~TbWSX�6��c�ö<��� ����B�Z$mG�$N��� HT�D�;m�$�e֐����=�rR����x<ű��
���\8I{#i.ʀ�P�j~ }Y<���"1�&�qȌ1�%�)��J�3��|U��k���n�f�ʕI�9���{�$I�˧ү<7��r�n�1�� ��t߁�����"�-)+g��fi��M���$��xr���t�8�� 1
��RG�Lj�+N���y�,��n6�y±y5.N��.�0�,��\�����hY>'N�N	�v��o/@5U���!���5�^��>]��ḧ́b��©E�'UI�<�U������A脇�M)uS�e����d{C8�. ����t��I7
�K5�"���65����m̤qT1�_�S�x�S�Wo���&�#�D�$��� 9�CL@�	*/=]nZ�9e�&���X�gCi�2�� 7{�L�"�d������Xj���s<rsˉ3e���/'�tk,O�Q @��,��Y�Ր~tJ�u2Ҡ|oK�A���8E��Vѐ��n��O��b��h�?��h#��!]�;�>�O�C��z[��n2�,w�s.^d.���Z�??'Y�L34�yZr��NO�,p2�u���m�8��f<g���/�k{�D��i,�4���!�3Vf��t��W+�oD���'��B�k5(� �wf�/#υh�@.k_'��`G-f	yws4�����Y��,�$x�5���hW&���Ҹ3<��LN�[����n���c�A����)�KA0�0�' ��0{�C�H4��r"pro��� ����F����^���Zr������f#��L�)����"/�W��79*��(~���dC����t�o����ڻ���}�&xN�x���%���8~���:��n5b��L��~�++(�s�`��ZOּu)]��"�:/<��O0�� Π�+
$B��3p��ֳP8�7G�|1�_g���F3d�1㙏�?�|!oH7״8��M�\��ǯ�|�f3����gO���X�}4��Cz��-��PG[t�{8Uwur�9Lc֒���B�}&���C��A�@u��K=|���E��z�K�.�����g��P��/��r�4P]^@w�1�1#��s�}k_|�A�DS!�V�@�'��Dlפ��q�۠�e*�����i�r#Ę-��p�`L�1	D��8u���t���a��ߐv�6.}I�q��_NiW�ȻҮ@�9���(���0���]$8!�`:��%�5�V|��wi�#�!���P��8��Y�;3<꽃1nJ���oVh*LIfO�@�����. �j�+:�b6�+�Rt�*����Rg�y�̙����
hJL#&m�;�7Y���~� <Қ�4g�0#_>�&��$�35?+aV�e����&
�	��I���B2ܸa�ׯo�`��q�<����,�8��X��{��*�UQ1r���s�A'�x�� �����J�����l:�:_aj��p��<Y�ڢH8���t.����Y�
Sot����ST�#)����:�a�ޠ
;8>�*��`��!`!¤��U�V�
W�2e!�#+����-~ֲ	��(�4vW�<�UK�D�u4ѶM]4d4RM�L�O�:N�͝��`����hή���>��Wup�uH�$LLBƩ�}�����Tmɓ�	�Dm�,?�U@c�%��( r�9�c�qW`�:�����oE�bH�ݓ�σ��Ŏ��"�W!B�ݱ��Z)�̰��Q�I_<��DLѐ����0	��k>J�g��S��8�vxŭ{�8.�ⴅB,��c�Ap��5ʚ�nύgw����6!M���]�~H�!�7��h,E���p�1�P�>=�?�p�>��� 7@/���ghz�=�/R�o
��ie��$�;�p�
�X�a��A��<�5�o��f0XhKn�s����l�.�U���8�VB�:K�FTi��Y��S�Hkuiz5�2����|���X�3�D����Ca>�j�?��u�;y�]'|R��xꄇ�i�� ����J�������?q]�~��2"Uv!�M�'��_�Ltptܻ]�u�t��B���u>�#.�\�y�7@�,��՜f��(xn�{�8?���"$��B�X���bψ��E������z��*P=��IV �bW�LY�*��.�}�9�Θ��̍a���@�*n;%l���	���zcY��-.���x��okkN�yq���W��L\�2���Q<���I�H8VG�.����i���1�}L��j.A�@o_��S|��s��,��e��f���!�},N�/E���:�-�H&[8�|YrON��b	��)���-��/~N�kN�N֊��?�L�j�$5�v,I���Q(�j�ܡvs��&����6ɱ+pƌ>\��?�r�o
��7Y�}��S��d����͹���dͩw׹�r��Z��I�m����~�?���p=@�t��ٳ���d%����E5�#�������*E߻���mc���q癘��e+`,&����t�-�Tͳ��x6
��s�*�	��1�Ǣ�bL�A��x�(�V+���?����E	��G��2g�1#_>�$�XH�Z��2���uU.�ŐS�ϛ�����U��]&�~E�t�>��4]�0N�b�dIZ�}9$�^i��q��b
� ��`M�:�D�,>�ST,��':V�����{�wΐ-cH�� �`�5u�P��ʽ��`\��s����A4�ƻk�@�b�7	""�b�����9�qdF�����N�9s�\�U�U�s����(�:K�ae��7+�륣�ę�/�v<@3��7� ����p-� ��8a�}>Y�p:�[I�6��sbC��D�r�|vf"���jx�z�E	�yIU%�� ��j�f�B��iB����.M�3�21�K6���x։�r�ץE�ө1)�[�}���_Z�=�zDk}Hs��������,(��5�ʂ4D]Q�R6���&*�	()��dOkC�{�>Z*5`����u	�砠�d2���͹ �\� ܴ	!R%"�M���&ݰ��sA���:ꛦ�זo/��;��G��Q����2�0�:;xȻ���=���f:1J#dM�6H.�&�J̺4�r�`=K�����xBm#�w��[xJ��0����J��	�|�e�ڐ�� "ƠL�ͬ�5��y�L>5�өӾ$9��SD�_pI26$IH��Q���d櫖CHS$����"�2E��XRY�}�NJ�R�<Xm�p3�Vs�zT��    q8����R�B:9J�dM�!^w�������`b��C��V��J�:�&m���P����o�A`6zsY�_��u�p3����X��*7B�RQ�0i,��aZ�csfκ������VO{c�+��`�ܟ.���6SG�`�)
�;���	c��ΰ*C��1l�r�-� M�C'��ޤ��K���Ƙ{P�%���X._K������V
nU{a5(㳦��%�0W�^�m6��Xj;I}�@��B�$�῿�ѫ_#��
Z�~Ջh���u���vN*[6�\��K
��������9��]��0��O�	N��������_n�x�EB0� @^gw�p��c���Q�G �~�:2?_�!ujN[�ss�q�NΆ�i7N�n������<"%|`͑�93��x�|�*~œB �h���{��Z|�Ҧve�,r����#ۮR}^p;}����q]��/a}<��!a⁃�^|�<$_	��^L���x��zo�' "�����Im�R��6Cu�;�<Q�Q"���P���l�����9����ת��4���(�����wp[�a8	<Yn�>�qI�	~�=��4��L�g�)�HIXo��M�KCH6�xq��.������ʹ�,8J�'���k�D3lu����3G�t8?fh8��[��j�7?��e?�v�)�x��/g�Ӏ<ub��]$�P����� ��>>$'������HL���/����U�ԁ8m?�O�T_ƙ��̔Npc��뒡]�lw�$8r[��%7��X0L)��B(�U�WL��ʢ�A1�F���*��\���#r$hdq�9gog��z�l2X�T�lJ�-���Lj�qb�Ճ�o2�[h�������7|^�a�
4Z�_�ttDI�m�������$��W�6h�7����)��-�M�:@�h]�&�:�C=P�k<�;��u��R
�������F��MrŃ�e�W>�\;f`�br��K���Qb��@�����x��K�*=(���I�.fS��]�zf!ܢ�H�X�!-g�'g�Y�"f���L�J�)��>�5�)�xD	�9�̾tRc�����Ѣ���rr�Z�V�L1oZ؊�B̒�>��n0���"EIp��W{��cQR�g����Eg<�Ɂ�����q��. _A��tG>^��m�f2]�F��a�3�QYX��vsƷJ򸕄�K�&f���y�p�}i��)���+_:`fW����W���h<�����b��_���Q��f����������d]����%(휶��9���As+4��1�x��5k�C���at��x��焝��Ԟ�����<�|�;��
f,\n��.C����aI���{�.4��O��P�]s�p�fL�[���غH�3�zW o:Vjl!��a�Y�(�X�%�i+-{y�uS�0��Dɬ_���m`�W�M��`�1u\�9�*��QŭU���7�^]��#�<�_�:��j�K߸�����3H-�mn�j�q���Af_���x�������{mֶZ�Bq@��Й�ʹ+�d�M&����}u'"��Ck;�TL�G���)�*v�;Q�R7�t�0���Lޒ��m���*��y*��j�yeD�Hw���z���<H�xw�E��$��E2���tA!�SR�)Q��l�ϥ 	�l��<6����X=��\m���l?b�������~u�ӏ(E ���#�S<>��~��:j���؈�fq��1�Χ��C?��"�|>BYo!��L�/��
$�\$� ���1��;�M���G�9���c/i�w3�o�{��&��ac0-�ͦe8Y�����ᣵK�U�$w��N2�N��j�v�ع?� �3ʊ�B�V3�t���>W��fʹ"(�>Z c�WZ�ЍK�E�y
qQ.b�N�]=~��k�����~��<�ٟt����r�&�/d0cjf�9�8/#�!w�D����ygv(Ɓxuv(@o�]�!߸��;x%SES��U�p��9����|���vD�*I����8P$���S�����>j�ATk0�����>S^ȓBh���"�*�eCV��.��i<���Jiz�9W�E���HN��:[�g���H����Rk0Q&��Y�ؒB��2iIw�!��0�
5���qa]ғ��TyR3�?
b�lD���5�BAu��K��J���7���S�'���(���Rk0Y��,.Ҹ�$-Pqи9�� {�@����k��'�+��W����b��g�yj6�%�59�������T6�dL��&-֦��`��L�Q=�gD���\��Hԅ��~Rg��7t���}�zW���(��s+/x9#�XK�EQ�g>�=*[�o���7��N]7q�Y�.0���1 �:��,ɍ���ΐ�lZ�=��m+P��김|��7�f�;A�A5��^FKG��.t��}��/�E�9�)D�}�T�3�1,_�`����eIY�դ�#��jB�50J��>,��x����1�}��\η�ɷ�-eK�%]��KEX>;L �;qfw.���4M6EɒdQsLGtt��-���[�diX���.}��ɉ�8j�iVA_�\[��(ٮ&j��6�Q�5k���9B0����R$E��e��d�)������?�� ���*��J0>>B��Bh�Q<�cRF\W�}�����'�~��_Ž	]�� E���{�@�����Q2t]�\W�3sQ3l��Tu����6,���%��r�Ke�����e����:H����?>y�����o}��k���o��|�s
̓h��2&R�G@Ĝ����o��J�$�% �B&KO��%�I�n����HĜC�E_T]����c�B��;�0a�:h�������F7TYStqd�x���A�UY�"I��8�2 9;A9���j��'���+�e��-���rtd�?RlB��K"�������Z�T�ZW��*��4��p����W_{�'�����������|�������x���_�����ѳy��&,X�6�r�ƣ\VdK���eݙx~���qG�#뚨���W�f��g{��J�nJ#m$�ٶץ/�1�~"ޛ/\�3�,nf+"��r(ݿ�1�1�񦞑�FA�a<r������_�8�W��y>��T$�s�ڱwdiG�wdeGVwdmG�wdcG6wd�v���M˶M[�TID�=¯/!�q=I�lS7��;�	��0 \[�/ �M�৩ ?)��^�dH�@|؝i%�4���p��^�h��8ű��X��G�Z ����;>Q�f�d%�W��r��mz���VS�y��5���@se�^�ܶ�_�ۦI�]��tW�ꅂQ��4o�"Eo�5�[ۦ��Ф[L�YRT7��z���z�'�v1o�#Eq(n4P�ئ�)�d���KfJQ���7��27���i���a��j���/�?M|�}�n�\Nc0��l_�3�M����5w����Y�f���ۊ�Y�����[�$����ܶۥ/˶�\쥾���-Yݓ�=U�U%�a�5�Q4<A|@F��K�h�H���=�t�qM��"���${O2�4uW��5�,Ɨ!n��H�G�ES�lQ�MC�-3�6��VM[����T����ß�\~��o�j6{�$��L���1�1e[T�+cB;�h)�h������C��c�.����	���lц[�嚾��LSqτ�/ߊ���Yu1��Fx�9������_�:�}<���y��lٖ�Ů	β�
��o���o|���|��7N~����͓_���7�
�ԗ_�%A6]�bt��o��j�4U��=����I�<�}QC�':��D���\��"R�̋���wwP�z��s��� Y��
�0��l����1!N�������o�E̞���!n��l�����/�<1[t�l�U�#5:[4Y�d���5,�+cd���S������9��^�.�@�t�?F�XM���H�H7,���YR�V39IG���Rq@g%3s�p�Pu
Tz���^�if��-ru$ZO_�*�3���R̂A�r�N�J�Җ��2P�;H���M    }fQ���#�H�e���N��(�h�Dq��Nxxyp�C���t�~�� D@��_��0�1���9!x=�H�K��Xh@3D����� �dp�����u�;��ĢGoTo�[�_��'��O�df��NͳK;��w��Bk#�i�BCT>*I���)V���)�¶裞6���G)�*i8*ҀC*�Cv�!{9�J7������ۭٓ�H�ބs�:�V�`tv�2��;�y��s�3�VH��3m�TyRA�W$AI���J�$��rI(YJ� O�$���)jY�t�&�x���Ѝ��ci��G������B��VA�M���%�;{r��q�$�ʓJ���$� 	K�B����)	dq7H�9-n󂱴J�J�]����d�T-X�.giV�{㇫�������:e�y���b�����D�V�i7-7�¸�u0�dyyʋ3Mtz�����u���<E�����϶��3��e�ߐ����F�V,fm9��~���#=��H��cB��5�d�:�@<��O>z�����[&,��o�0��,��fA@2CY���;A�ĩ_W�Xe�������׿v�_׳�1� !���řhNv0��LC*�to��[V��h��D����%Sr5�q�h��-j�b���Y����G�l!S�\����}��w��G_������Y&\�u�R����*���#Q鮨�,Z���&2d��F#ͤ=�~��G��a�]�����i��ϳ7���e�-].�9-v0��� �/Ke�W�CW��r���o��0���-���[��cOy�t���>���d����Ah��Ffj��o��$��洔=����Ⱥ�Hz��%��pͼL3/%^���%`�>#[�T�B[~��$�O��$��,]ƶ�)�IU�9'e���2��-p	�
�h�]�<=�:8+e ��L�T����;��W��r{%b�@�	}�
7�Tuc��:wbn�ū83e@*�L,�\���z��q��VJ�*�M�*�"nn���^&��ɹ�����)�Ae�S��?"W�#K����V�u�i� :P��� �U�AG+`�f%�Y�̓����д�K)�@e�H�r W!홫Xv��n�ר�~�meg����E܋*��|�4O&tk
a:�����{Z�Q�- ��T敻d�.���&*����뙢����4�V4��GhT�]���o�������o�H�� ���tS3dkK�[-�TDk���pG��5ΰ3�%��jJ�l�1�k����"_�l�5�6E���[���tI�u���WM����uƟ�DӒL|���eҷ,:#iY�V���N��Sr50����]���۹*����͊Y.�(��!�޻���[����ʏ�SLm:�S_j�B����~!\&z��~�U�$Yx]�����cq���庥���5��S�]Ӳa�^��N���o���˳��������|��������}��w���ￂ�~���O�����ۿ��[�n��ÿ�ه�~���ك�������w���gr���Y�����?�㼉}��o=�����_��?�2��7�������>���'���~���?>�������>�۷�8��o���~�?��/N~�����������ῼ����q����_������o�.�Ï��`*��oO^���7�>y�����G�����������|�_���g�����~�dV����NN�����!<l>퇿���?�z2�$�v��{I^C"ܪxP�@��[G�Ά5�!���b�A�!|�԰��b�x�8�#���"�w��e��.=��&:(�E V3(�7�z��p�N�:H��R"e�$��V�.���X�,O�08KM��a��aCh��PZ���%�yg���ҫr��=��bx�J�6�|B�a�ݫ+�气�@d��PP����"���#'?�Ǉ������zD�9,%
�Y5��ii�9\���jʂ�)��yd���/���������4�E�ʭ�GR��R� ��0jm]����BixU���I�w0a�&� �?"Z���{̈́�`!83�
�d9�v�����x&�&�hw����%���}{J����3ʳ�^�����K?P�}�_h�����/���;Ӄ�l_����w���8EU���˿7	"2����ۓ��!k4T0��d�k9M�{l���O��/~��g�7�)�ӫ��j�p�CTE ��h(u�k
�4L��T�0�*��k�*'N:>�����ON����{���W�������׾���x��?=|�'_�6�;y���u��?���WO��O~�W'?���}�}��[�}��}�����h�j"^מ�~�sMD�g�jJ�b�9�h�T;w����U��'�\S��8.԰�d]Sa�N����N��o�#������i��Ul��ŦܨI`m6���,b˽��(�C�A�|�w�4Nw���x�z�Ժʅ޳\4 "u[���f�d�7��y�o<����jm'J��.iV����!��1��a�L���W,��t���Y^e1_���+\����b�B�UU���.��{���w���a�ۨ�[�ZU�3�����my��ph�֞�Ǘ�Z�䕖��_:}���O�9�Y��]��@ty��{��H����H�P�N�C",�����(�$ϴXoC��2f����HG�k����������d�Q$_wJ)�Sg��|���=�᫃�@q9�Ò�َ.c�7�.k�[k�dQ24,�&�D[C�(#�;�a*#'�Lt�K�=e�6їR�3C�5$e-�{���$kWNƧrlȅ�7������p��r��L�����7�Kr,�M�nXuC�EݷM��\�EP5�V٫���ޟ��c� �A�*5|���]y��5�%I�"StTE�<y��#/6pB!K���g���r��}d_�T��.3e�V8��PK�Go<|�I����1��;^->>�?>]|�/Z|�{Ġ C����PT#-�|�?OtGA5/��� �C8i�'�{���ƺJ� ��!��W+1��)�~��k������������ɏ���'����*Ꭼ�������X{�.V7h$���HV�^���X��)0���7������3�	�	O��!��f{�)��0Km��U]>l�V�A��k_��F���b횒��e����lQ�0ɕ��W��4�2����w��������?y������~�ڃ��.^z/	�,���y����O>��?���?;��_&=������5�k��{��F�GY�QE��D�4-Gqܑa�qב�d���Q20�4��s��"!۴m	�x��4\�E��� ������cZPk��L|�pm;Y�k|���(�(�tE����4Oÿ狊��f�1\M�D�6=�T�WI�8�p8Ę�l��ö�
9���x
�y����h�̆d�#�w���h��s��I��[�ތ�� ���:x�p�;t7#�����h7}�&�,9�s����X��HEa�ϲ���F-����Tc�����^�&K���̆�1��4��[����vA&0u)ll����&�؝��xm}�b�_�ؽ����`]��Ptv)Q{K�u���[[K4�]Nch,�i�H[��R�V"��˩���*�[�醹�TΧ�_Zm��Z��.IE�&�]ʒd<w�]G�����[�d厥.}�o� gj��S�]]7�w�R�]զ�]	jW�׾��;�9��OO����7�Z����|��u|�pe<�5�v-MUG�	&S�VU��=�v�����2�+��6���K�4udoJI�Rc6�:�̘K*�:��f������o��ȲJ�2�5�k�r�F���ʮ-��m�x�-0nd�,�&7@)Y����2X��V��W��4�)Μb{��OP:��*5�1��#�"�	/)����)��*8AMт��iހ$,���g~��8�Ʋ_�n|r�����mI_]'/4KN�#�E�Aj��0k�*�x-����X�}Mw�v�f�/0kD�v�.�!�+��WA��X���X'h��^�D    ���'[��U_�DrB�?������̟P���|�W�XUzy�4Ƕ�)�S�P�U���ʶ�!�H��tp	�G�����$2�D�d��$сD�c���===���3��gj���k	��
�+�<V`�Q��Q22�)y������_�W��3z��� #�$���aMۛX�=8��X�!5}wnpR�ccёwrE*jw�ɼ��{�:5wC���(�[�\H�ʌr�TT$3�9���C�Ҽ�,pR�#��0�<(��[�&~����vN#�������Y�fJ�Z��H���k����ھyet�as5�h>��e�1�>��![�\G%�t}�UL���ҷ���ptG�,M�M��/I��#�����5�f�"ݒL����]�b�2~�e �[{�xH�R)��G����?��&��wN��'��������' �7�:������Op�������:�y��B�;����?��=�x����]�?�9�����i#������{�o�M�=�}WI�<y_�/?%�f��d<C�1T��{�b�f@�Sr�[Ү�T囵>������|z�O<Ao=XWy�"��4rQSt����y�J��4�3�~㞹H�����I:�K]�I�Z�@��.ޱ�A5���:��/�@c�	פ��y(�.Y����f����f�іlK�C�Sy��R�.y�b�c�%j�e���ɢi���(��i��̀)9QB�e��7r0�u]�(�:�5���b(p�@���ܟ�w�d�\Ϛ%k���DK�Q�eKt� �Auɵ})�B^s&�o�A(Ȇ%ْ.؆$��D�KG�!����˿ �_�/�v_���@����GW^��}���0��M<@)��f��V�m�Bǐc;��by�}�!c2z�!�r<C��h�.}Y[�Zc'�=�Ci��j�"�Ψ�LPl��'k��I�rS�id��v�8�]f��%�U��"I��<���ޕ+�b�J���=K��+N�+]����J!p��������u��8��U�=a�^f�o���Yhlr���y��ۉ��6O�p��p6M6��m!��m?��YfDW!�N�iD�h܃��.�H�A��xu��h;X�ڲj"�D��������"�4��mM�lم!�2���Ba��Ȇ��'��]eI��[��'�{2���|���Q�����7���s9���螐~^��(E��X�y�w������>�;$Q/ԦFXP*1���,!A���Ҡ�|L!���4ʦ��!b��͔TG�����M|�4u�aF�f$�;@3<�P�W!��z���ڻ;8�~l8��*�+�C�]���B�e)�"۾�Y�%��'��g*X,�S�>�e�ٲ]�u�ȳo��m�[�ٓG�����0|�I5���[��'��Y�7��<ɖ�(7(y�"r#̟��u4����q²D���x�w��3[8�e�Sa��$p�-����	c�!�%s ��!I�d�=�aΕ޹��:M�����cmӱ�~��>��O�8w���0m6�!&��\�n�7Α:sZp攫{�"��~_4\�5��AO�Eߐ�HwMð�^�����[[��! �"�=�SHJ4�-��2�f-&k�$mO3�Tu׶���ʳ���t[�L@HH�
e�{ЦN)�c�N��<����IO��փˋ�,���řD&��tb!�FL���#!] ��@~�T��kc!�	�������<^2���	t�Z�U�H�=�R��UtQ�L��UOVe�!��"w���9X24I�lSU�E|��@�"�J&w]&�L�iO�v�^]��>�2nݢ���7�^�~�x�4� ����$.��l�GݣWu�%C��Y�Ɨ0��lw�x��ʊ������ȗ�غ�㋞�AY��x�n�|H@�8���W�I�ȗt���IƮ�%��+�d���pߙ����5n7P����_��җ�>·4K��<v�歯4��N��E��xm�����_}�Y,AB��_5'��@Y����2wK%�/C��Olr����2��Q���"���*� t���7]��d�U�^DO�e�t�oȪ3���{㓹�h��[�)'�������f��t��}��d�?�w�;�7ץh���&D����n�A8F,��4�����KD��d�O��?`��l��PHk=�O�
=)����\?�W��y���2r\ѶR�#��]SUm䫲�j�HތTI��Fr}ؚl����C ��tCw2��2�֭I��t�d�K�Ta�
����@B�PH�}'�(:�?��wg�Co���|*�6ܼ�iA������ș$V�������˵`6�Ӕ�T�R��!n����Ox�_P%���B�k�b����Qi��/���^���"���}�6��l	�}jP��,���4D�e��_���+������>���a��Q��wy.%%�ȿF�^˼9.M>eNӼ_Lb�Jgڭ�����sυ�<�B��<�����ɭ�ߊ�IOMp _�OG�R�MG9�H ƛV��=���4�K��p �>�I�NכIA���ޘv-^O ?�#�G�I��X��5�裑���@�8��OFBr}]I&�FW�,{��Z�ʷ�p��Z�	���u���zN� x���m��}�}4'�`6��Wm~�B7�D9��@�B[^/���n�$���+���|�n�H�F��1� �^�)����Q���}��|���㺏fwZռ�Ith|�QF�tKV4[�D_Ż�曐�2���i��=��7���VމMC�#��EM�,��H6�;�]�t-��t�O�^� /eyO3�3m�$�cZ���<vw�X�cL��ZOEs�L1��De����nAp��d��|��qj�G�L�m�a0���uc���I����E-]�=ǰudgQA]�/�i�:Ro�@�pB��cG�#�~��W��@;�=M� UU�'a!�[�dO��D�V�����Q��4����3},���0˧n���",E��0md�q�IT��I|>V�]US���H��Y^�B�`�Sj�	Y�/�xu��y� �+���I�H��6{������H��*H�,�]�+��HuF�#ˆ���.�j^����}O�v%[-�M�*O�׮Sw�����m$��)b4�� ��L�ś.��,�_߂-x�"&?F<ذIc�Yj�M���"G�:&�#��`J6��u(�o_�L��m�dn��a]k�u�E}�"�����iuj��z�����j����J^XL]�+N���W���$ ���u�X�6O�5�0+3�B��������E���829��<��o_�K+p9��r��t�Q�)�+�LET%�lI�h˞':��#SA���}8pL�0da1r|8�㳑�O�H1G��+�&��,u�T�,�d�s<Kzq���g	x��ȹ�||�t4�.J+y��6��{p���a�Q��
�'����#��'oFw�;`J��0�\:Q�����Ǫ�O���ߕ��
38#I�T�]�H���x�H�cJxgrE�5d�k&�ʀO�|_�,��%�ˤ�I��Y�^�<��*������	�I��0�fo�1"Z�`�4��{I�4����F��U�Mep�nC�UZ��㠋����h'LJ,t�?6��[�I��H�����}ޙaM-� ��;mR�a�9w��dg)n	�5�M��$�De|+�S��J{I�W�w�-ͅ��\�ؠ}��T�����$f�t��o�)Ʈf��G�?NٙZ�G�4
��gG��6J ���G�'rQ*�\�F�g`�ƃ����kwqw�"�,��<W5F6=��DY��*X#��)����qfWi��܄S���)햤C����e������IY|X�J�t��Z���$�m1Kn5�b�HD=I��8�� ��,���L��$��$�l7D��CO>I��vH�e��O�Є���;a�n`��dė��n��t�����#'�Gg�D�@��v���=��~��`9�P��#���S�uhڒ�;���n���7�����)��av�O��;S�~>yy7n@�'���a������������!hje���H5    g?x�:Z:�łw���xt���x$d������<��P�N���i�?Y��C�~d�|^�0���i�8���/S��
`&���W��Ϻ�A�ŋ!z2m��;A���@�}A>�gO NSj�;{����.������h����J^�,�y��BX�&���	�X|���[XΖ�X���U�6W�&n�o�E撟�au>���T�y�Xsg�r�O�: �V�L>���{�6I�2o���e�%3�dMFf�qd���뵊�0���XO"����j�0�<c_�����������+>�.�~����
oܑ�ȬȪ�����@l��q�w��O�����Y��}��}�/�� ���Ɛ�G�/��v��!n�H�k���B��|��~�����z�viqKg�ۤA���@��ۿ��k銢����Ӆ���`K,.��?�,���O�I��n��^w�������O<Q�_��4i3���3s���H���N�N�D��t��Nڳ	�麙^�p�f#��8�����侇��u́ۻ~�)���5�%�� "q	?��@�̕d�zI�K�^R����T���%U/�zUW��ުj����Fʀx�tDLE�-�jbdZ��!�ni��,�ߪ�m�/���p;II.Z6}�j�v`a���خ�)���ȷ˰gc�-�u��zkQ��p�Ӫm)*�}UU�5R��*���j,4� �Ь	I��E��n�2�3�&sN#�r�>� �L��m��]�*����w�>�F6*�����;��`�^=j��uqix�^(�[�GVnm	L�Co���ZB�F��%�N��}3K'9Tr��84�æI�����9��Ld����B�6�q6�E�P�ϥ��!Rl#!�F�o�F�zaS�]biXC�e�]恥����>���{�t�
!E*�3
)�ǀ9n�]#!�!�`�7��&ʁ:d�m(�A���A8�O��,��@N=�H�,R�D�T���<k�� �n�X%�T(5����+���V�`�����(&��hã��ߡ���ڼ�om^� O�_	Z׾Z|1l[[_9�����r��o<���*g��կ~ŭ��Hx���O���Z�?X�UU=���3�!����]�Fzg+�^���C��M��v�µiÅN��C���_}������Wθ_�ʙ��l<�о(TO���qt���LV�hg�b���m�Xl`_q1T��E��Ew� �a����*�rx*�ب�g���۽���,�+��\�n�Q��%Ff'��C�O��e����N��qE�F�.|������ո�<X��w*T��V>���T�8���=�a�&T\R~�C��<a���R�iQ��4�K.2�$eH��
	|���0R�Mb��9F�מ�&1�sK@�%`����#'�|�z=o"�U��5������j�*<�-��
R��.�C� ���� ��O�O!"�D��l�Gr�d�{2���s�����֙35�6Q�H���Kz�봥V �Ԏѯ���ܻ�]>�a ˹^Ͻ�h���;��V���w�/�%D@RmڎR���ʠ�&.]����"���U��SO�6���F;�!�$	b�\B��ʝ~r��>qA;K@Z�zQ��Id9CBz�	�Kq1��Cc�p2|(��tt�9�i�L��Db�c���"���Jg u���T�
r<��-�q�e[�^[GdRg��N?N�`�4�~r�L�ab4'�Hڈ}�F�>�DFǊ�r�l��a�=�c8c��^��Eō>f��wW#y��E���$�1�KF�%�O$��J]��<��׫jѳSC^��LC|ά��%3X���ppX4���h���!�]� �����.�5w��;�VϺ��ȑ3�6��iQ�dP[NXT<~��8�"����='c5l���昶i��R�
2��).e%ľ�{�����Z�g3V{�0�
��"�����D~��Ҽ�9ARd=g��Rȏ��p;�#�&r����7��Sa"�g@�ت(�f�!ۙ�(�!����R�*Ꮚ��FS2���&!M�e��	D"&f�Į�E�����g���WN�Tt<2Ϟ�~�0�fڳ?{gl��%[56[�DR�٘��&��KBU1�R��R�ˌ��z=Cc󂾗� 06������VWmϛ�.7�iꊊW�a;|�Q9�-B�%ʽD(�X�i��%sJ�s�"@]U�V)�_.�XX&��jk*d|���"�v���\�>�M�#�U�&�<b8g' OGy����5�0`��6��f܏�ߤ/���[� "'N���x�۫y�ҳ�#�p7�Ɍ�}�֠MH����&8��f#��Ac��zw��.�}r�w��Z���듓g����M��W��Y=]��>�s쉦r�~��"|�����Q��R�J��H��z�>RY��Յ�j*�!u�*N\��/��0Ncܮ���Yy4j�.��];�|�O9�r�S�4Ul@ÚE
{��`�t�1��������$��~٧b�Ј}*�g,�P���
�F��c�V��
�UZ���dM\�'Ҕ�i��}�D-u�>�5[,Im�p6����yc�����m2#�1��n��[^�	?l��
��هW��*FT��M���d5T�qΈgQ�#�t"�NDK�D4gR.P�@���M�b�oR��MUJF�w�W,5��J%,Ǘ�4Wn�>�xS����}{������G�ܕ���n�^�Y��Y�]9���t��;�>!�$`Ds���Jqǰ�h��Q���`<M��*�3�貪�ʯ��T�l3�eZ3讻-���C��������4z�$��|����G�����=��]�߫Eߎ
�<���y��#�����W��p��3�ǩ���M�6��{��/^����x��w�t�L��]��D�Q��6إ��z�:�n��kA�c�X�	H���kq}J���hɷ���8�2.iE	$�<�,E���E�<����d�OsfV�t�e��Ȯ�X��ڬ*e�d���2 w�a�Jf5�V*��[9"EO��#޴M;+W�\�r%���ts�7$N�]�?aF��1 U���-�(`4N@L0e4�����Z|����5��^�6���t XU�c�Cב�X�g���ڷ�����ۺbx�,�,x�Vt��!��0��*��+��*^�tH.����j�	4͜��"gfVAiB5�b+�z~.���Bi���x�.r>f<�B�_$v��	�0�ʊ�F���+����Q�x�%�㗖&�hΥ���{���N�H�j�i�'%DI����IT_��CHE�'�"��U�3�zl`�[�U��4 +�%0�֋_��xC�TA��(-QX�V��;�;/��/gmf��.ZpDb����P*QV���j�_����p���Ŷ��L75��;$v����g������*����1�U$�A:���n�}4�R�u2X�����G/�[�^�MT��skĖ:{TXRu,�g�g�>7t�T��o{��A�8�� by��Yi�t�g�� �G�,���pw�
[~>������'���1UW�[x\\5ik��#U<�?��V�]Kl�q�@5���9�B�4�X���W�͚�M���,���1V>�U��d�'������h]�n��s���ࣈ�>��N��o"��5X��(�cX
r�����w�iP�*����n=m�7�ު�L'��g���9ָnKr�h��r�����n���XR��<(3ٴ�4�7�"=5t;��8�|��=���Ԣkɳc-#	L?Պ�smѫI+��-$�tBPR㊴�ā����Z�"B�ۧj7r7��p[��݇Of��;:��4W?���eqD�Q����C����h��9IKԲ3``K`?p߂h�V@n ���/���Ѐ��� 0��G药A������gS�s�9��S�35��Ys��&sT�F��6�3�'��(x6AF{�o@�������VY�fa^�vRy�����J9)夔�RNy9�*�ో���嚦K "� �$U��@W�f��ohF�VL]_��)TSt5�UM�A����K#����G�B    �W�j@O,�zb?}f��pƏ�:�"�W��>}�e	I �<�\.�����*�����u�w��Esw�3��3�
�(��d�sU� �y�N�����ꁢZn�����o��ij�V��x�+����di��\��ë��.�y�?8M��c��x���`93��tq��&v�w]K�!����FVHe$�-v`9������M�=�(��ҹQl��a�\��*A��M���T�������"�u�
M�NS�')�t��$Ou�=�n*��3_�I�JTN��Z	�Q���b>x�iP	cQdb��}�O�&F�J���E�^AvôG�\�B6a*N�"	2�M���)��u���:z$_w�8(�OC��� C�$�G��N���ɷb��ũ�����0�?���j�Һȝ��J0�L�cs!/Vi��RuV�E�����|ߤ���Z�"�b�ȧ;��9�E��j.2y_��TU-�j:9��Q��.���<zn���qx���Uq@[hE90H�)^X��<D�PQu�����x�������E�LkjTy6��#TH���(Z:P�\����jj��+stO��KB��L���5z�l�u��U5CS}�2t�A	�"L��V�zJ"LU$��T�O�|��Ǫ����T0��p8�~ݚد������j.A%�c4��
	�roؘWT;��Up::��Ac�{4�3�3�
�'����KT/��O�!Ս=�P�>�+Uv��j���;d֩ҟ���(߽f4t�4�Ը�f�5��Si�:_��d�T�q֤���!�=n�z-R�k�(>V.X:���,u3x�F�����(������ۿ����-�,��j뱿� "�Y�e9�bC-�ٳo$��ޠ	t9�^��]�m����5��(�s1���]{���{����>%l��O;)h:�7�p���if�҉v,y��+\��lr2��_�u����Sy.᱔�n��>��'�m�ID�~�G�|p�4��ٳgk����>p�M�+�||�� ��N�岅��	�c�寮�WO��OF��z�z�Ta�I�7Lף��\�k����(ח�1.�\U�'<�#~ƨӒ>��>	�̌���S��J��{��ct��=²��DA�6�<)����ӵ����r냶�5-\:@X���V�X+l`��t�6g����3~
~-���J�#,�����G��(+*p��=8�{s�Jn.��Q�vZ��V��A��n�o�Bt������0GF�$����b�B����n?'~hG�P0���ײ�ȺG�������<������a�d��[l�ny��xgtO�$���>���㶄�� �N��EH��/��F�����g�Ž}%׻��%�{�Y�Ņ�CQ�Odь��B^\�mk+��'r	)�����<J�^��R��*�T�J/U��Y��K�^��R���J�����B篨h6�_�`5[�4�i�� �i�
���(ɹ�,�bc����s�U()Z��@@'�]biXC�e�����RH���r����|4MB�*�35�e�h�
2���㓫v��8	p6%wk��^�W�L�I�j@�}��:~{��[��q�����zc��ey�I��!�~`�a` �WC�����4�6��wM��}��O��J��w�s�rA��JS��m����fw��H|f���yI��rB�tqH^���xn� ]7�R2z��)�F,��0�t{��,U�S��17U�n��w�!�%����7+�.x�x��ng��	�n޷�az���@�;0�u8���,�렧Ӈ������ez�:�M@�t~��p��t�oV��#�S�ͯ�pp��:8�DM6j߂RU�F�/�Q������$�qg8�u{I�}-$$�\�*k3^[��ȧ9�+o�r�Lg��@a z�H)@�s��[�30��Q�䨝�?�|����oHn��6��BB+uqhe��)��%�U]���������CM���w��4���\���+n8�)�Q�hRv	����Kɵ�Z�"T�~&j������F�m��>I��=����|�S��ףb}Q�`����K< ý�EL1j`e�:�M���;b��Ô�шpI��*�K��
�{�o���?n�a��a�:/O��/��nw �����
N\��?ɥ$��ϱ^J��AҺ8H:p]�wTKq�P�k��Ǥ�ҵ��B+ԝ}�t���ҟINq2f��R�ˁ��˯����G'����j-j��o�V�L�j����u����H	oĿ���ik�,�3��K��'�kz���ǴK����hSs��qѾ���7�?��8_o�ߠS�5v!R���0ά-�4�c��3O��g����a��
�A�@��DcY��r���֠�wש��/��V�t�F�Q_�RaE�h��G_g�w�೎m	�{\�\,l&yQ��X^L�	���8���6,.p鹔���� �x��[��o�q��J&*=Q�r}r����a�o�
q�idv�����K!�3�?�.i=����8B�h�v<5P��l)�c9�f��Qh�x�u��g�aPW�PV�rI"�tʊA�1p���qwI�<ndBt�.�.&��_��]�>R\?����&r|�cc�F�i� U�3���Y�F*��9˚�8R-5���P�N�2A���䂐3x�3�.f����ѿĲ���⹔���ba��2Ѡw�BO�U�3Ѡ�R��0U�����u�dF1�3gj���f��K"�m��N��������N��k`*��-5�v.�(�p���ow��tF��4ɝ
��DjԾ���-�f7�R����؁.3��<��v��3p�N����x���Z�
C�M- ����qP%����v������69-�t�yz� �d�����Сd�P��R[�O-�ɵ����4�U�Gu�~��O0�ȮR,�N��$m"M�#�V2�;r�]�ס�Q���u�L�?蟮�i��5vlLߌo�m&�3���+i~��s�7Z}����)����h��*�¯�Բ����4��Bˑ�g���B�ČZ�X~��ѻ�1��ʏ�دNlqK3Bo�I�)@k�^�B���F������Y�
���Ձ�����,�9�U��{��x:T�A�W)^�x��U��	j0x��b�xb9���ŷ����k��#�C���@[,�Y�?��5C[�f�^�\�sĜ���ZuǢn|z��T�2����b�`�SNΔ��.A���ž�U��-2��bv��axљz�E�^/����w"�L��at˨dd_h��q'u�<���]�U����!�oC-gb���b7�<�j�������lF�B�4au�<As���3&h������ZZ�d\:ԥ�i?F�%%�`蓓'݁�>�.����j��ԅRW�'�]��zO�d�Iڑ4~7�.C��W�_E$H�*4�B�H#K�����7�C/��Yn�i3�k�qe��;�t/��&�I�����q��;ʚ��iMj��q�J:q���䃧���B� ��(�hq#�]d5�bʤc��ٳ��;�k�i�_E��M8sA3i��f�����v�6
$/sC�Oů�Ծ�=L�>_<ŝj���e�Y���8<Ua�o�I�����/GC�sk�śc����UY�����1Z�峉<=pqH
|6�We�ݒo���C.��7�tsOp�Ǵ�ᶂ�o�Nd�J�Ս�V$N�@ߌ�4�����R��h���}��B:��}��B��|��~�����z�viqKgҡ�n
���Q3BgӘ0��i�'�$_H���ᘞ���9I3���hJ��Ha4�ǝ:�H�qY��	{�"!p!]7Ӌ��l乞�|!��Q���p7��4N�Sa5T��W
�����D��l	�W,1�{��Ws6y��0N��X,v�E2-OS����j�nH��b�c!���Y��L��,��od��8��X�q|��=��ԫ���TU�nm�Df��^���ڦ�a�X����z��9����p�;�4x�ծ���G I�q+�;��*W�0��b��t�5cl�����$�n��<�]��    ��{d��R]����~���	?�ʕ3�tw�O�{��\��=���r�w����2�A��]��EW�PD�Eg3Zt�'[tx�a��,BP�(�s}#�+�I\���<�&���EW�YΑ�CG�1�}8�$��v�
��-KgGd�L���C�ͨ��=v��C�_�4s��9���@rϦ��������;P�T;���|��qnE��*����p���q.��`�o։�j`XT�@�9tI�b����ᦜ[�ټA0I��e_�̇��xbѱ�[��!K�WR�2�>�x�个b�K!WUL�Y���W�a8W΋�8���M��pm�б:���DC�F�7��U�͸��dy�y����w�+�F��`V�p�9�Fo��ڼ2�Y�
5Xz7(e6�M�Q�"��c�|�Wzd� �q��'\aA��v~��8� ����T��#��<��+���wO��ΗN�i=�����5!Qw��I�An�g�O���kA��n�6�jV���k�h�Zs�8�=(Ŀ>���;��5�	SJ���~Q�{|�0Y��܀���.o�9�<�q�6K�Yz��k�Y�9
$�ʬ��~��4#R�t��U1LG(R*z�T)��T�=�)��blܦ��pC��r�EǪ�~��LzBZ"R�<[�7a�k���_�WA�Ӵq�?i�`Lq?��{�]���8eWw�7�b�*�6"��t&���|5�1���ܷu��4�n`����>��C��bc�(c���<�p8Ƃ�!>0WQ�Rƪ��卷��D{�M�]��d<>lv,�q�}�.߲͜�G����{+���Ӝ�kd�3a���f�cñ�(�{���l����`�&�����z��0���Uy6g�k��[�y��&�vӃ�͵��HTfu]G�y�FT/;��V�l5fj+��T�Zg6��N-���ȵ\�t��`˥#	,�%+��Y����Qj����TH<a�)��x`[C90ŹhB�ˉ�}�e�~ ��7��X����&��X�|�����3R��\_��r�]C�f��8���tbi�4K2���6�:�c�J���亖J������0�B:p�Pe���ج³�ɗ���[���b�X���T�L�j`S�QO�����X%���I�b�T3�������٬��P1kVf�gT�s�I�ӝ����%����O���jt�dazLTUg�#�h�t=��^��Kb��k`�&�F�s顀��

�vHw������3�Ο~p��Ov~��_ pNM��}��;���G��H$W����]��ݟ<��8��HU��	4�I壪#�U[��@�L,�V���M�߷���R� A�FI��
*o*��ǳq*���7�ĖY�`?
s�q�H�\.�!i���8��[~�ZT��20��#�������Н�:�G�cP_�]K��|#.@?Պ-�\[�j�J��ĝN���8�!�8p��Z˙��>U����� Ȇ��?�>|2k���ѱ���c'�������هrS�ҁ9Imӵ��	�����qz��|,}��_��.4�?����ӏ���:�Ϸ�F�M��L@��GO��Ԩ�Ț�Ȟ6��z5�g��螑>�>G���2��#y����0���(6¼�3�����h��hr�5��*�L��d�/�Z.	r�xL0&��� hΓ��%J��f�P���a��9jh��H�m�Su��b5P�N����,��mс�Xw��I١³���F��ֲ�;�MEGb�*�D��X�܃E��㪲���E��lA�mF���������ĭU\R���֐'��S�%�������Q�!�6@��Z�lT�g���U$��0q �)��U�|�4u��J�Tuq�A�X�F_��e���wW_��e�EY|Q_��e��6_X�E�dW�P>烪����s���&`�0�F�������&��&(Ӗ+�6�w���U9q��O�gP�=q�i��̊ŵ�)E$�$(3��CTu���f^�
�������Sp,�bk�ۊ�$�ɭ/L�/ʚ?։k4w�̨0���ζi��R�
�7<O�;�j(!�-�34����{m�:�`���ؖƮ�}���#�����GRmO��4]�팀Xl`_q�~���<�P(u�a`��^��s����a�������������^'���N��	1Պ5�(�i�A�*
L+I�sP��i��9T# �e@Z���#vN`dq{Qf韈U�kJ���|v!���� ~�eU��tZ���{=����k�  ���,_P�M��
��~�	����5���^�H%z3��$�����aGx�Sh7wԄ-#�(ۅ��":�!������
����DGd-S��뫽�p#�4u7��������lM�}F�]��#m��'����IN���)v��X�q��n��l��mS�r�38�MdM���9�h�t�v����b�<�U$s6^ {' ����U,�4MA��:�";ӆ�9�sN�%�$�7]M�͛i�iQ{�4�f�C�*Vg���Ƭ}ͦpY�b�\-Kǜ�0��B?�p2�^�8���U���������<_�d�Ǒ���I�
�6;q��y;�������"��v"I� Vlĉ���*���k�|���ʰ+�{\�D���5��`k�v����48����bM!:��!�|�t��ky�����6�=6���P�;��#����r��5�n��tp�Щ֌�Ɔ��ov{A396��|�q�>���3��A�G��Q�7�C�=��N�>d� ���ց���,���V��
��7[�`��BoBи�nֺ��C���[errX�����F=>���~��FZ�kɤ�N>��q߇�3� ����Rc���a%q�Iͱ �g�s�d�����^�iV�"��N4t�{���Ձ]��)�cT��IXB� �.P@�<Ԫ�4Cc+?�s0�v�s5y<��\Q������r~����b��k��Ѥ3A�{�E��^8]����W�e��Ut��Kf��vV����t��@TČ��1h�m�_X��{-@�1wc����|�A0��Oa��c���9���R�{��z��#����%w�վ~1XhsO<Q�Vwc���ϵ��>ۈZl��V#8���n���L�@��G�ҥ��%;/z��s��_�#"4�7��-%od�-����(3O���]͏�䇿�kA�.�l̜�*K�J|��
��t3�'�A�iJ�^L���kҎ����0f3�sQa�7�R+ۉ��nǅPl���|<�gz�|�ɇ.�����<��˅l�o]ϖ��o �āY�C.��I��둸�ݢ
�R�%�:��u}�ڵ�G8H�rdH*�y���V��=�t�֝���
�
r������/7����s'=S�J��W�3:M����r��s��R���de:Y�NV��Ge�d���t�NAX�f���p��[b��U��)U��T(5�\&�׊���Zq�*�g�c`p&�,� ��< ��<��kM��< .�Q"���|��p�����~���wo>�����~����O�T�r ����Է_��ۿ��Ϗ���wwn�h�g�w����߬K�A�Re8|*�~��j���= ���Y��a#d�����i����Y��9�MLߖ���=��!u�{H�C���=�ٜ9mºl�X���]%M�S�S([p�y�፯s�X�EA�lU�t�F��;��?�$J �"�����K��3��m����.�(⪷����,(��;pS�˄_�d�R��TD%%A�n��O'���r���p�`b���*$ Љ@&pt�B�ra @�(Ƽ�7��+�^QQ�'�=�I�3l��T��8)�\,��Oӵ�q�Mz�3h��l%2�Ʌh�R�>�'��q�4'勂L �'H�q�0��g�6I4t�),R��b��5"�=.�܁lcu*t�F-5j�QK�Zj�R����j�őq�Ӆ�J�AjRc��2k����ʩ!�	�ML�N4q�UcAN	'$g��Xc���b�@q��1%Ji:6L�>$ ^�ڬ1��|��K\�'�V��    +���ȴ��-M;����	(�6���b��r��È�z=I?Y��ן�{����o��������~�����y����~��g/��z��ǿ���_l������޾s��w>�I�G����3uQ���@A�{'�c��4�T�
4�z��.�J\�zYOKgW�|��Y�F�_փ�GO�Ӵ���z���0�����_�777��
�1/	Sa����J�Ҋ���n�bã����� �}b� a�Hdk�g�f��V���N�>}<ruֆ���ed��hE3��
��c-u=�x:"����A�΀L̞�8��-9����Л[� .*Z�'+��@+��7Y��֑���怄�S��n�k��A�?{t{%�TM)A��t7;
<�/��KЈ;��j7ndk������ng��NX9,(Lp�9��G˵z>0m4�e_�>Q�|���A�Ӿ�
�b��H��)�P_s�a�(죙摘45����i�9	����LK�0ȣ�IN�˹Ў�?�onnb����$�%�.�tI�kH���0�����{�2�"�S$ZQ�Umh�t���q��Q��6�|&��KBU1�b5��@�*7u�v�����#GW=O!���*�I9Xב�:�Ǯ���@��(�@ ��@��-�����谞{��[������/��y��?���c������ 5�9H��k��|�� ����� u��3���ӝ�U"S����ߗJ�T:��q̕)Mg%M9]S]�b��w�g�ݠl�o>5�s�n|�ʞ˸���_�ܾ�w�����O�y�e����ݨ��G�3�i���g*9N��9NǞ�ս�u�N���xK��o��AUT(m�x����a_3B�KK$Ty�^�r���U�o=o��������Ԫ۠��5�8Ɯ���ҳ��5/�����;�BOKN@i�:�S�3��&0�%�T�&�[NܭL�?�P���6���~���}�$���!�����{�K�a���}Q��Aʸ��9i�V�1RI�K�>i���XF�ow��md?>�1�Zw="4C����ö�q�F�4f�E�q�n�f��"�ˎT|�6��2Q�{���٫��O��]���Ϙ�.�����T)c�������Wkuh'��ް��,J� 
�}VQ`�Z護��X��U4�[[5�v�_�)�l�P���k� ��+��n^хE�b�l1��
�hb|��x�g,�����vg�%�ہ&]�,w������U��?Ts{$�IV�p����#�MB:������UQ��Z�������~��Qc���)_4l��{�@"���[<'�_ٿ66��cVڃ\���q93S���:7��#솰A���Y�*	��p�a��z����lZ�xU�`�M�Pl��.]ԍ��1c�f��$�41@���� �j�%4]�N����o�q��m��d��k�\ݽ�ҽ���~��G��{��ݥ���G?������~���?��go
���X���g�����Tխ�">�\�3���-Q{S�U�/=�d�qK��ڮ���u�=8�B�`�����[��C�6����9�*�X3f��m  ���mJo��\�Lnϐq������?>$�p��s�<������.c ����<3t���=�ܭ�&Ռ���Nߊb����?A��,6L�H����[�t�E�G%����D��"��k�Ї��&U�Y#�n�U5O���S���U���_��Db����2�pJv|�ׯ���/�&��:�װ�q0��)�yiσ�!�E?ղ���*���6���l2s6�fj;�m��}�{7����{K/R��j|1sT�� �[%�x�:fLJ�D!�dM7�8 ��*���L��7�_a^��������m%zdٙi�=�������2� �.�!�ټY����������&)�0909���l�B�(�)G>W�͍ɶ�#cݫ�{f��]3 ]�K�5i�>Z�oP/�����%����m :f��c��]����ڿ ��@Nڿ���Pٿ ��pNڿ���� ��.A���{�q��� ���"y��[ڿG�<\�Wi�>^�op^���oi�^z��	p�SgK��Q���u;%X��[�7Ճ�fp�Q\!U�AO��M��1(~���*��n�<	'�+�b5�f�P_g$�Q=+��w��647\� �=��t�I��ۂt"X���N&��[�t"��6<k����&��N	L�I�>�oqN���dFɵ���;6v��	f VWu1�vJ�j�r]CL ���X��� ;25�t��k�	��#S#Hא�q�Tz�Wej�r\C,�,S#w�K>���k�]C,�J�FXZ�YN�����5�� f(�x%z?{�~��Ğ&��c�1�Ě�� I�;��e�����)��t��T_qB���mت
�����$D��+��ȸ�F�XV����Nh(��-�C���!R;@�fb���=f�����;A�!zk�?�P�@[�7I���ZQ�����/�x�,��_:8-Ȳ�0GY�_:8-��Ӕ8�ޝ),��}��9��LS�*c����*e`�`:*ӥ�!u�TF2���q��%��a���P��F�i���	� b�� dMVY�U�d�U�U#�!��ʢ��(k]e��t&�����j�ܤo�A��U�?�腻�ޒ~p#~pK?a�2��Qr�NX������GwC��|g�߈c��]����Ûۮm����5~=�.*�B���Z@��F�ME|�����J���v�{k�J�N�R2CΈ,޻1`��[$`T7��?0��@a����Ru'%3�},	�H�F�(*�(�ZXmw=���	�#ݖ���u$�#a)�Rs��������'5?)t��'5?��I�o���򴀔g"��HHH�e�y�;l���i��i�k�Ҷa5�]'n�[Q������i��%�i�D����ck�J#��ҹ���|�w_�����}���w>���ח�Mn�8�̝9v:��*e9��[Ö���ܥ�.5w��/��.Ut��K}��~�(��AP��H5M�iRM�j�Tӎ��&51��IM��� �lA��)M��%�-�lIe�)[��������4�@5�TӤ�&�4��I5mY�4�UI�JjU�\O����&� �I%H*AR	Z�$���H}F�48�ҁ�e���M�M�	{T:\m��cSP��t4ba��������~����������v�h�����$S��"!�^�OI}���4�
Q�\��hD'Rq��ڢC�ZB/t��u�PsY��8)���t��Jr��jw#�"��#��h�_���Ὓ/�{���w��{�{	��� �d:�E��u�q.]Q������0�g݇��4	���l���K4��E� {@�����X�a�9�`P�7�D�H���������cI.��	���T�g�%"3}=�/ܠ�i_O%dQ�&">?���vX���q��t*�V�cO�iO�P�~���V���J3���ӚՌ�R7e��X'�4"pʹm���m)�0}Ŷ1R� p\ݢ�`�I�Uy�����9�t\V>�oB��
��5�U�

��o�2��0ᰮj��A���UsEG+�ݰt�_�q�Í`�go%�#ھ����4t�K���s���d��Ot�����W�K�ߐ-��x/����_�P�jO=*��������߼�����RTt Zw�G�\��g/ֹ�q�(|���Œ^,�	ػ�޼'�c~34�C+9E��pC�*bo��g��K�.h�yz�u��M.��������޺��y)���9�����[f&b:r�٧3�}հ�3q�I�r�7�=E��㮥�]&�ro9f{�tϱ88=YHJ�}��	*>lMJ�%=Ed�1?����cڱ�u\��l`\_��D�k���1!�����I��U�]8��+������2���b8<�ӧ�C�R������y���Q=�״_ĸLv1�ȶ��Y�Ф^�I�qO�{�+�q��er􄡅���@�|?P0
�\�C��
Tl9�k�	?UyV    �O3�!�!*:��x�Z���X1SCT���Ο?��.�9��ŋم����"�	B* c���;?�h���ӟ;/�}�ǔ������oS��^�}�_��~�w�ʝ���y����k���_w�����ޣ���=��ݛ/�fw~��ۯ�(z`�������������G���s/0/L�����K��uNZrę�tp�fː�=5-��0k���K9ۜ�dp��˔�=%-��i`�26��]��xޓ�16�C�]8ԝ0����PlOu����9^�����8Z�z	;Wyv!���5��`4vF�J��t�056wr�ڏ�l�m
�\O��o(�IC&�`�� �`W5}���_�>F��8*?4|����}�qm뺡`�r�Dq}l(A��ڎo�p&t�8�U�}�4�v_1u��L�m:H��I���T�K���R϶M��񐫅$�"}y��X���u�)&Sc2��B��w@K�O���O�O��3�~jJ�ϋy^����-�.#��ʲĩ�i�u�ëk��������jxuX�u]�D��"G(�?XN�PUE�m�u�����U�꼈���q��V�"�.\�����Gf�Y��8�@$��Ids���^A�vXB6����5�)�|��ۀ۴%��G�:�� C]8��'b�x^�f~�+�i�M�J�Ij�����Ƴ��X(/�B�!�C����n�jC�4	�pPK̻E�e�����U�%��Z�l!	�Of��C��	ɘ[X�.u:��]BK4t�R��e�kO^[����'W� ���yO�� �;E`�14K7�Pq=�S����i�s�V��.�X���"�Q��X�pCU񼘞�+�aڈ֟�o`�[�P��������4M�8�E
v4�t�Td�&���!�P������*r\��<�=U�,KSCU��=R��C5U�(�m�׵\�7)E��~��u�Cښ���3�j���ps�>�4l��*�bٰDjO�UF�*��6�ӧآ�H`�]��̴æݽz�vu�Zm^�Y��8���*<��Z���п6�vMh�HA��gQ_�X��ca����I����k�][S����9�uHXZ���^�مh-6U��[�R�eE��4tU����������4p0�_�q����?��>!ss@��s���v�Ν�_���w~�c�Y<^��Z���n>����_�|�������|�WE���6�C��v���X��+	�g�Y�|:��'���29�r%�,��\/4M�7\DT3Ė�����R� Е�	�p���A���L�[��,�Y����-�V='�5���.�� �����q�al���馂1F��QZݪ�4�p񼑧w���+�Qu�Y]E�a��
�6]Y��Ѓ� �5��C����t�+�(%�i��P)�h�k��vL�0���+�(��׆��j���SRf!����cɃlC�ډ⻈�H����P��5U_#������)~���y�f��Ȣ�Q�)z@X�!�O���t�p<Dw1�P\�4]i.
u�5y�Z�֪�]MI���#�qTx"�5�j�����]L(=J�@C��z>��'�$S߸��6Q����mh�XV�h���:��g��h#e�B�e��r]e�T���j� �K�T�r��M�߷��;�N�ly:���p����'�;%�4���8�uU�^�E�%�]�m4��]kXؘ�	�Y�qð�:h�tp�K�V1GT�Na,��kն��e��-��:$�
���Z�E7U��=�|R�li���y���0�h�+P�� g�,9��&	/�hՐN^��g��q!̭��0ǚ˵VL�Vxj�xa�T}O	ٞ{�՗�)\��:F���10�l`��\T��J������M2�>R~������u���l�`�47���~�������q�<��<&�*���u[~��2F�4Xai/�k,;_�����d����N*
˩�(q��Su�z5m+�����md����p�)��m�=��w
8*?}�U�^w#�nr��=�ޯ:%�Zw�\�b7=�σ||q�1�RI�R�'f6'�����{����۳��q�*�]�P�x�?#�.�J������o��/�$�
��hV6���!M�Q����Ju0����!�#���h��A�6%9[]�0�u���WY�����5w��_�׽��jom�n�h����+l��?�}��Q})O�Bv��J�Se��8��H�F�l�FsH!�fvi#G-8��Q�ZL�j�r�G�� �A"4&~'��God���0�H0�HM�o�.��p~��A2��|p�	����Dl�RjY����Z�j�烣7�tb F��<A�͂.21��t9�GjT��e�UBa(�뢥�%ũ诓�f�v�4;݀��������
i)��2��@5��T�9�2/��]�9=wSĐ�`��,��^���gv��� ���s���q,da���Yh��΀�s<�=a[�	 λ�!uL����I�����8&��n�%9��SZ�'.Cv`Ed"o�{�|]T>&�j��1�]�(ʳ�.�v�Y%����0c�� ~�O{�a�� E�ߒ�B�y�YA�+��X� K�KJM��"���5B��}��R�8�2S���	6�w��y��XH��s
����8PA�s�߆#E��˜�����멸��w_�`��ow?|w��������[?����vn�r���A9��~�����>���x���F�/�W�v󙺈��j����`\����_4-�y�>������[���͆綂a��B��J{S����!VK��ہ&���2�f�k��;�x��P�jS��۫Q"�k������G��tj׻Ú�	࿽��nQݫߨ�ۀ�'n�S�u�~����QM�ݸ�c��%��?����أ#�z�@"hs؆���[0��a���+`͙��~���[o�`�b��01f��+��|��n�un��M���8�U�Ĝ��(9�O�g��A?̦�0&��0�t�nT��t�p
��� �bM��iw}�	�ŌP��٣{�Kq��~������{۷>پ�Z4W�����Ͻ���_��l�{/�ߣ��я�.���g�������~�ٛB77��{�ٻ�~r�,�����">�܅�L�g�T��� J�%`톻!(]�ت�z͍^�x�t�|���U܇س��m.���sFU�1f�6F� |��J���eg��y�v�����rG���!a���s�QUf0g�f3 L�K`B�5�Ԕ�݌-Z�Q���7"�L�1�;�7�*���O�U6��
��1�C���6(����E_����j�m�x��������tJ��8���l*�B���t}fW>0پ�Q]���7v�����K��aݩ*۝s�S�6 �� ��޲�d�ֳ�3$�'a����`0�%i\?��u�\�͕���am>� l�c�ތ�MחҸ~0n6@�F	�/M@��d�j������G��4� �%�4<�,�	�p�(�a�\�笳!�%��)t�E�ul@��DX���ȷ([�@�QK#���8�C%8�4�-f�e�q n7K�vi�[2#��͔-
r|��)��W��w�k�p����#��4K��C$���CT)�u4�h{\���TR���$@��0M��qu�eW=謜���w�y>A֗oZ2�cX��Ĭ�R��P�$�Z�{u>�˲��g�:�P��#n��6K �%��Jֱ_�w����|�IF�d4�8�m�ݖ� �/�׭pZ/v��	���YCג'��*��-|�<w �	M|���D2��̫+ϳ˫����d�r��Ew�.��*d��<�f�..��5���(�0:����4?��O�0y��J]��#2�t
!�D�v\�Og�x�>e@�-Q�\��d�.��N:��[%80{xR6�'a)���"d��9-K�SF�~<I���i�%	��:/G�fkN�L��O��ȤV��3��5��Ɯ;���:��`�q���������4KS=KM�uVy���j��v�+���    ᆊ��T��W4{CE\���΋?����~����%�Kv:�f�*��z
6<�3���تR]��ī��ӌ�9�*+��+�d�%�P���:�6�æ�ݞ���M��c^$�ږj(!1J>]Ul7t'���@�Q���=�o���	64{���A��^'kC��_J��'gO4�֗v
[�����k�qN��?V8��qMU�)� �he���ۡ�_���a�%b�	���}A��ח9R\� �tJ"�eN���)p 	�5u�ħRf�Z�˞�K� YpJ ;��Kf�:���4��N�˩��r\��h�;%n�2[˲��.e�M�e�$)���r�l���Z4ry8%����vy��E�NvJ�d���X�x�ttc�d�9^m�M�`bK c���H�x�t&��9^�k�M���OR˟����O��N��2V7`�K0X�,pT�t������eG3�޴�[�_%��tF9N�(��PGJ+���Y+�� � ���f)=m�'��)%��{0x��W�=x�q��c�v�8hWڃ�=x�m $F% ��[{0����2�`Y�e�  � Y�,�{����`eT+K���k1ƀ�<W�,�T�0C0��`��A`�f-ƀh����t��(b�m��@l�ITMJK��Ko)6 ��J Oi���#k4 ��d��%Re�1 o�J�Vi<p��5�Z	�*m��~t���(c�(�V�U� �m��.��c ����X���(��p�VK���2� k%`�4�^��h�V��J��Q3����j%H�4�[��	�^��J��Q4�� M�%Ф4�,;��W��S��H�)�� �K�Pi�F�E��l�{3
�n����һvɍB�މK7b�m��V��(�(�	@�>αV���h���a&���8�^i:DF�E�M�{��W���(�(c�	p�>�9X��E�P�d�L�F�Û(�4����(t�,�����&�e3	-�Th>�'��&����f� ��e��$$/!��
�[��b��.+�O��d�X�hi��K�4i4_v���h�-�h>�S��� �����-�i�8�\i2Z��t&�E�!-�x�8�`i2:D&�EYm@�q	,MFKg2Z�)�0٘�Z,MFj2Z�����(���h���l�6��F	Z,MFG�>hNl����d�d&�Em�P�IYb��h����m��Yb�X��KCdo����ls�f�}"�S����9err*��	�t��v�.Cz��C�Z��!���[nڛ=��<�O��ۣQ�I�d�������]JI	K�4E�ļ�������um����u�pe��̤�h[���)��7-�^d�5���VP/�����5���! �l�`ʥ���;Q��M1�ٶOW�4�������g2ڧ��Iؚ[�� ��TѠ,ވ�Ϗo�7��SӰ��,��`����ݍXP�b��� �i�x�K����G����]���l����IE��KQ6z�u�w��Ydm%�uq��v{��NPl��J���M��.m��V^V�	̂��Aw��)�uf�!�>�{s��u7��/v�|΁|t�S*�y�s��cR�'f6'�����{�������YN��r��.~(O<��mV�'n�u'ם\w��Rm�C��h6�3��&b��?F����3k3�1�H��ިͩ��!�������Y�����˥��^sn����p�븭��V�ƍ��4#���z韔������_t�Ӿ� O�DB���S{x/�
�?�H�,�&i�*o��^�eT�{��:����ع�G��y���ٰyW�
�~tF�N$X"MM4���O�}�zvO�0yޏ-R6����D����QB��]����(�H0;�%f���x�#��I8�th��)`�l,KoR��@K���
 tL�{�2E�j	�Z&X0N#���ɐ��&m-��1rL��1'��������]��v�V�WO)Ƀ�9�-��V7[�Ҍ��썽L͞(�q�V�����zc��3�����w��C����vY�=ǣ�g�02_3 uq\w�t��H&9'�8�ĉ�A�n��h��^�-�C�%rh����Tђ�i��p���9�`tL!J�/RFWK�
����i�f�)�J�D�X?�0�h�/FA`��D�H��
�)��#4�t*�k�Ă�/,<::!Kӝ��:%��ʪ�2[�$&;bٺt]�/��e�c�G�1����-���.���T���Ҳ�Rf��u�FVӖYp�|��Jn��,�ɧD�O8!���%I�y��%�)�gj�996�4�D���M�T�6����nb�3�W��p��gl�.���1p��K4�L�����	'��7�%�8��i���q��iY���ltv�* ���1��3Q�=�N�2����.K--�<	�U8�Q�.�b,���!0�%�"$���;�r�y�����;x�YN8O��Sbc�pޱ��4�rJ�ˤ��b��Lj�k��:%خLj}h�Z���N	+�Z��ֺ��S�ʤ��3����딀�2��Lj�c�6�ř�T�6�B��V �b��ء��Ѓd�Q�ԕ���޸�ỉu��F�c��:%��2�?k,)�Z~����(ꔀ��2�
�IR��U���De����S{J�����ѬKT���SYJ�����Ǻ��%����"?���̤/p����0�H>a�4�X%`�2�(R���i����$n�Xo�՗w��A�nG�}���H����������WWNZه��AЫ�J:K �� �X��.97H �����Ѥ2��>J@6�QɉP���W�;�&�k������1D�#R���2A�b����y>0�y�`D�yG��N�7ީ #��1GM�z,s�ʬ�2�������y�]%�|,d��%��S����E�g#Q&YV�3�E�5���ERIQ$EQ	!�D��H����a7�s���t!�gYVW�"���on��m.��$
$�u��L�	x�.*''7���En(��P��Ǜ ��ʅ�:o,��
)&��ϑ~��(���`s�3]T�J� ���V(����&��(yz]HK��P�����&@c�S3hL��	��
��([�Ӧ~�2��!��"qǆ~��0�"�����U\�Y�����m2N(��Xw9��tQ1VB8����rBŪ�\��!��"q�:ʙ�(��<�u=�R��I��8D����_��delS���� ��K!�ؿݜA{��K\�x:Y���&c�˛.oXM��
�d:�������k�k
�PY滶i��43������p�*UsD��f���e����8�-���fp���m&��
¿U�·�]lF{y��5in�M�je�V����8�D�%�.�u��/Y� ��B�V"�K��[��b�*��ㅬ[ �b!+����ҩ�u�T,�S%�~��u`X,�a%��4S:�n�EX�D֗iR�!�6@��Z����G�m�\	���?|�ko�j� �#ap��~�.e�����O� �^�Y�C��c*�a�N����`���x�6���C|SA�C]���@��ad����o(H���C[�vC5����+�ӵ��Uh�z�R1�/J�l�����ߖ&N�ϻw�<��0��_'���X�0����b���;F~�0��*��4+Xo6��4�+���Lgt��q{�����3���L6��K"Y�)_�~�':��G����������߽���;z�7ߥw�=����?���/��K�1z����޿������������d��^�}�۷_I�����O�|F�y�޺��K;���o7�{���
km�������?�p珟n���}Zx�����y����s�ί���M������}���_���i;w������移�������ǻ����v��U҇_��lS*}���+/����+?�y����՝O?���{Ыg���ޟ�;��z�/o���E:��Ww����wo�t�}�C�!�l��(<���n>C�:�ϭ<    �����8�h�!B�����$P�A��:W֊<��'kT��Ɂ�):��#����в<&��s^�N����֤ln2m�qHۊU@c��<o2mk��!KۊU�S��\m2m�JۊU@U��<m2m��LۊUpI�JR�ɴ�G0m+V���*)9'3t.l������Z%5�TA��po���&�n�\���C5�Gja�W�d���?���5�6	�Ԯw�5��{5����Q˷Ș����R�Q1Lv��)�7x07��#��|��=�t��ك.Hm�n�pf�=��!��J�R��p��[3�B<~��n�lĦ��KU7�1�ﷻ}ֹ	��BM=Z�|�謒���SE~��2.?����n���O<8��˒|����͚�ܻ��r�F��1i�G�X�����k�X֤�.]���U���ST���c�aVI�
J�v��iz��W�����DL�������-��Ha�+ �i����"X��ӑ�I�G[v�n��� xp��?����[�l�~-Z�wo�tﭷ��{a�ſ������n�e�{t���^���Gw>����g�������~�ٛBegn�t��wo�������*簞u%͒�� �K���d��`��!#;��颎T�������w�}��J$�BXd��G���6�q
 ��8�U�r��z͍^�R� �7*1�_���G��!0����9����30%�Htk�@����r|f�xkZn#or]f�0��[�*_3拒�&� ��K�[Y�i�
0-�V� ܵK�]i�_�����_������k�E�k�%��4�/f�e�E�f�%h�4�/��~qv\`M�֔���h�� �tJ�Ki�?r�5���Sɓ�ҝ����&� pJ�Y�u~,3]a�%���580:%FY�u
��sg�I_��E7O`S-�����_�~�g��٠�MhN�I�)1�J�E�xd]5��9%�>�v�|�4��8%[�tXZ��y9�408���E����"�C�t7X&w�Ey��`�p&� ������#��9WKw���!�G�k0�%�q�np�|Kt&���$����`QN(:�(�%���Q��0�%�C�lp��Kt&\T�e)�Q1��`^���� ��t�		���l�5;�,t%-V��4��s/�����9��s�g�'��X8V��Sr���%*���!c �8C$���Κ<���[+�T�AnԪ�H3�n݁�r�� ��\rAʂeھV��DU��"#I�<eӧv�pQ$,fd�r���ܠ���Ņw����}�u��4���oqw=:���?s����ʭ{��?|������7H}KREH��� �E��H��J%ը޾,A��0�9UH`�D��ԬV�Z�0曲$�,I.K�˒��H��~f�}��$TVZM-�V��˕%��2g1��:qa�.������W����|U�,_^���t9���DE�լ��Z,b?�버��x�R���	M5YuzT�N?��dI��iJ�c&$4�dE�Q���$��%���+�:��m$D��Ra�X*l� K�/b�+�>�@�H9�L��S�u<��$��A�h�VE�閐���e ꬉPg�eRB��G���^�)�-�)H�+�!
8���*��˓m�f�M�F
ȁ��F�����2 ?�D���jͪ��jM�3 �ִј~��6¦����)�6�b�6V�k;�j�*q��^�Y�ʂ+v#kE��j̥b7^Q��i����T����F�������;�J ����tnuS�KJ8K5����BgGUl7t'���@�Q�՘.64��q���G�1v]�Q,;
�%R�3�1I��c��+Pդ�������ͨ�T�m(��i��t���l��_���W�'aTpE�nm-}��Y PW���[c�a#cd�֫�p}�{O=�/��N�uq�S��:����Fqwbeal�F�vm䩬����3ӒO'��ӄ�������z�]�R'T�]z.K�\��A��ww��x��޹�]6�����?�c�n�q���'��o��_�u�ayW�kaXς�rk(�`Vا��u�~2�Xt�5�����*��!�@&�Ii�r���oF��{��<,�<��PR]�j�d���L�b���碑�!��I��g�l�<�OW�$����^+�|�!��|�㗣�?��{?�y�7��y����5�Q�"}�'JN�n�E����f��X�����~���/��W���7���~�&q��/���.�՗ndLd�x:��޵�m�Z��1E�Cr�0�ݸ̩T]�s���{�>�>�*�_���&9���T5�U�-�N�ؖ�Jlǹh��$�4R�����'��� M�3 	δc+.`��W�~��Ց���	�	á���1��V�plu�
M�;�b����v�^kxV�p�K��lx��f-�A����/�_8�� ��� �:�tK]ƬA<�LU�.V5_�\�J�V}�2M]2-�G��u���<�Ε��gds���j�&�ų@�������*�	C�<���{n������ؿ{3av~|�ߪJ�v܋A�J�i�� �r �*�1�V�Lb#�ɰeK�$۴}�wd�S=Sue��ܕމ6��l�K�}d������n��� B�	e�������"���mpMK�Y�1:��,���s��, �C$+M��%��_�^�_[��lI��袆��s�g>B�[�!z��_��Y�1`0����M�c ր�d9��]��f����k��2k(��v���a����[�.+:��p�.RY�u�2u��'Y��%�UM�l�5�w��ڹr��:&�)d��x|!�h��i:��F)�!W�!Wc�Vam�g��6=��,a��i���q�6U��am+�LE�{p��J����mOB��;�mZ�w��($/�;�~�Be�	�~�`�IL):�O�L
9͵�Cmɗ=GUuU����P�s�\�)	�2YS��g6�$h��-������_���z�2!�0�P��:"�/Y�lK����T�f�!_Qe{����OY  bc 	r(+AN� ��if��G>�J��X�D�eƲC�]�Ɋ$k�HX����=CR<ϵ,MW}k��]�s-k��JJ3k*ZS�UMVgd��o�U�S��<ں����Hyj�nPW�2W�UBm����!"��]ۡ�CS���1cuAcFt	uH��%O�~~�d�P)ZȌM�b�1C�3�IH!Y)"b��X>��Pj��&XZ急�� ���׸�*��Q�5U�4�Ns���R��s|f<zC�!Ϊ*F更db1zO?~V�LT���mSyNf1�S�:s��.܏1�\t�w\�K�^�k�b$x辶��hU����ޣp�̀��:[Q2���=��:�i%i�b�/�:�,+�76�u�l�@��pfab�oE���!�g���}+ľb�
�o�̬S�}+tȌ�Y�ž�ܷB�d!�U�Z�[q����!�ge�}+ʫ����!��d��V�}+���̚�bߊҪx�}+���(�طb���0�'zF��Em�b�y
�.�ذ9���a�F�UUãņs�_���*1I-vl��V��Gt�)R5���I$��Uڠ�z��˾�WF�����DRM���gY�%#,�qm��L�#Q��5[Y2��Iɚt�dt!S�.�F�#�j,�8�$� ������'���?~���,�Z�e�Sb�?�!�aaM�-�H�B�v[�d�1-�bٓ�`�k`�TȖ^Eh6A�a��WqXc�P��U��@�2le��>,U0[��QT)���Drߖ�ʖL�2%ٗu�k��"�٥@e���|��s���l�s��A�2��P��6j��ex`|�DD�`|�`�g��6*���v��ͭ��C"��i��2q�7Q6�&���4�{�MƟ�IZfQ1?�9�3��"�8!�	r?���R����MZ,$r�X�T/`�����#�A�!qHˬ	��_��9^sp�'t����A�����A�XH�AB7���~d>(V#p�í&�wND�G__�"��:�Ndxn���1F=���m&��XU��eb1٣��b���!������h�+*�e����    &�G�azV8�w���UL��������}~��~��Z@O���jAf4��L'YZw�*]ˮ�k]�3V0���Q@�ʩ�n��5Ǌ���PNg��r���j�Ж����4[�[Qn�f;]^��z#�{$�q���c��2��f�7^8t�Y����� ��۽���۾����%�U�	M;e�1+9��NEH��L� ��oc0Į�fc�v�a|�ډ[~��.ɢ-X�§��S�FR��v�2Nʨq��&�i�Q;�:��̦%c�*��2� 2H���H-��p�ƒX���?��~g���2�e� ��N&9��L�:�7��e.*������`g��_�?{��\lG�H��AJf�R�U�5�xҀ�C匎*���h8�V76�3�E+V�[��*���G���b{݋��Xy���b5\����S�y�ngu%�}Jת5V����j%|IJɊ�r�2K�F�X��ʕ�!��5�z�g�Dmn֭��)�i}����-~�<�~}u������] Bߴ= �N��
jӹU#>yP�����%áJ%W�2]�F���M�.~l5��7��a��^Q���Η{�~�w�9v��=��;G���@���ͻdm���`�t��u�ڦ&֢}��A�p�ÿ����w�~o��P=�[o>����+W�׾ݻqgo�w�W����Y��~g��V��/��x���K�~�i�f�o����8�g�鳧��*T��yD�F��U�j��QM`U��j�ݤb]�\�f���sG��K�s�v��.6�U{D�����?�3��S�5���>�b��e��s&9-�)�U~DJ��P�I]�1���������>���v~�$���i��i%/����Y�G�~��%�N�f;-�����ǻ�
38�Uw����%��S�����Y�G`w�xU:�nQu��NϻN(;������Y�G�k_KU��ú�'��~�5����������ˣ�[t�/�m?w�F�9}�`Tp��[c"u;�~���f��f %�qޮ�D��p�V����7Y����s*|�x0��G�G�C=
�]��G�tW�38�� ݏ���T����mpg�q<W�% 䌡aͬH�۟�o߉5=�Z�$o�9�l�Ȇ���c��L1Hd�C"�t��@a1�a*��&�/�@�LZL��3]3139n3b ���D�L8h2���[E:Pٹ�r�i*�j\xO��t�Q� ��%�@�1H� �IQB�t,ҁ4`��E:��i0G�ٸH:Z�@�����"蘦i@K -!ҁ�b:�fR�cN�F��t r�M�5	��@�I�TrSpM��M9�&��M�5	�)�d���I���}���м�&r�M�$��r���T�c79�� ���R!e��pQ�x����E1���or(&A<��x��%O��,�ǣ�D!�z�9L�����^�R@��p��+�}�l�/�\<�Ï�|��� �N��"Sv��1Yz�`NK͜�+�� KO�0�" �x�L��W�A���XE@�L�y�`d
�vV�`�WA���aoEfyc0�W�C���ъ�` ^�*b0�6���U&V�1����@L*bR�`�^��p�G�1�#����*~T�`�[C��[�,b0%�������*��P�}�h�yEk0p�
�c��r�������*�U�`�c;�NJ�1�c�!�ު�p��R�`Я*�~1���!@���U�`�m� ?�r�Y�9�1Ĥ�!&E���`P�*�z��g�z/z�z��ܢ�v�����ϥ ����:�>J��^-����"U�E�f�ԙf�� }�8�A׻Ե���L|"mw�j/��P'����K�f*h� Ŭ 3�	LY@��"�\t�j�\�0ё��ׯ���%��S�E���3�ˤ'$pс���r�,.e�`t�.�c]�\F�L����pg�.�\&oFRsH5� ��.�G��@�	�Fx4\���JOX��X�Ry1�+�9���	.�\*�X`,X�R;���h �s�
`��R�46 ��.�"]�2�3p����,.p�|x`"x�%r�������&/`�&�.�U*�x`"x�;���h�&"�Sx4�h�&'��	EQm��B��NN��@b-�E+MlO��95+~ez���->��A{��n���ņ��6��V��˕�Z+�+1���])P!�� �9Z��0�F�����WM\���uz��(� P�����/�x?�1۟h_skIKkZ�v?����&���3�V����
xσ�M��+�^Λg$�5�nę���tx��@Q9x����&�K!��N�\s��>R���2�'�l��K"L?�Y�DM�����P�Sw����䧕��Qy6�U�NW�ǥn��$������ƺ��KBe��J=�w���zD��7y�_�,�{D��#��'樏� d"�U|[ºiK�m����:�5�p�u�J�k�{�c}z���0��@z�mb���l�X�*�$�s4Iq��#��#5[��ޥ�*�wH
zF&kX[S�Ud�?�D�o�����ŶOW�dmU1Uh�5�k�!�aaM�-�H��)Y��I��q���P- ����*,ھ�)����Y�^���~��5C@� 5�sUSp���v�ǂ$�d�_���VMWF�Vu0����*��|d>���L���z3X�XP�O�{ݵ֦M���`�0�*��s�V����]��$�ڵ����zFI[hO92��m��;�3�ɘ�d6v�j�D���l�!�[�W�x·���SgΞ�AA�ۖ�\|8KzRrEa�z�1��_/9#5���^�~ƽ s�����£�Lg�y�T�ls0�����"&@�����X_o�����o0����Y(\]�N�Y']�a��Z�m�]��h�ڣ߼����g���P7�s�k���}~+��FֵW?���N��g��s�kn�q��;�k_L�ZkTm���18!�:�>��n���~��k���'�䍲u�Zǖ4����H��p�14��c^�؞Qk�6�lH�����f�� U�?{V6U�;��	,��G]��.�<�L��)R�H�3���.X]�������ݰj�+WV._�[�өq�7�֎��&@�=�0 �*E1(�7@ʺU�G��T" +el)@�`���p@r� 5qJ� ��p 纵oLOg��@>*��8|�j˦�a�-�go�k�
�
��v���n�c�,u�֗�J[���N��/V��Ŧ������ulc�:,ݱ��L���р=*�4�&�mN�}]�l�h{2pn}/y��	�%��ɰ� �o=��
yF���W�W���'�u����z��xof!�������W�O�!V73F�A#y(�xJ��<���`������� �5�?��醍(�ؠ.k
��ҩg���SD������+��XB4�yk�)h�s�t��Ʒ��klaBM�\]C��jrr��)p݁W1���=	������ҍ`ق[�P���72��b�5�2\i>g1f�`�OY�"�ט�*�J���o�F 5�ܢ&el�R�j��<��r��N��P8��,�	H-~�L�Æ"���|Z���a����IZW��sF>Oj��N��|��Y���Yy]E�E0��NҺ��,�ğ� čQB\QH�|�<�g��;�����������7��^ܽw��}��ٽ���`/��(�������T���WFZ�> VX�Fk���f�Z�5<+~��o�h���w��~�������{���Ẉ�u
1�<�J2x�`�Gؚ�}�S�(�9���l��j7ӱ�'�|�)3�i6�js��~��P)c�
;� ���w�T��Y����)B�
)ް��#�<��l�qc4�r��)���,�Bg7�|�T�lS��g�FGZ!�Ƚ��f�D��Qw_t�i�>H"�m*t!i��38E��m���R{nK�Œn�Qܦ>�ȑAD��ڏ�Rt�%���õ%K�mɗ=GUuU����乶2�}Y}FAk2YS    ��3J�G�VWI�`�m߿���/��w��J�y�2x'���HEE�*&QuDl_�lٖ0�雩��<C&������I7�
�;�5��0Uk�2-˶���#aOS$�pd	c�3��ds����S�]A0���y�lՖt B��h��B6G.܆��6H��!zj.S�T z�^p�,��R
��10Gcb���\�1��Ģ��GD�L,؀X�H�-sPw��XM�؝���E�'��z��_Oܻ�N��K��f�П�4������ASr��p��fmd<*(��?�,]Jk-ox�
D�̌d21ވ�F�7b�Y|M���9:�� 7���Ⅶ@��]s)*^�J�y*^h*�̌5���Ő�~�+^ht�y4N&*^�G��T��謋*4c=�X�s����p��O���Q�T�>��B�Z�B�],�R-^�:PSX�F{�c!�BJ[,C%n�dB07�N�0��Hh`$��ډ
93J�r
���<�P�@^�eM���,��9��*��C��k%g�Z�b?E���L����*x��ǹ��~&�J�����~$������Z���d��I��<D-$%#�$��ʐ�� ��ݥDv����y���C�T�S";Od�8;A|X�Q��<A]E�Guܳ����U�:UvO�Nɜ�f��uNx��,�X�,Wª�K�B)�g*Ĳ}Y���Au��Տ�v~���������'��oW�L:=x4P4��XXH���р��#4�:J�<�B�,-C�u��:�Y�ڈ���l�����x<�M婎w�Q!�"��P	G<R)���B�=��I$�4�Ǎa���nl��&e���H'�X+������2-B���M3'8n�rdp��jV����t-<������`2�ՌlY�2�������`gk�s��(�ᾌA$C�L24<�s"O���f9K�'�Rk�^�ӷ��й��`���{۷��~��ؽ�"zFE���2�{��U�	V�eu:�mx���-6��ԣPC��x�]k��[�c���-it�oU;�Awp$ޮ�r���D3�k8�n�İ%E���=�I��ɒm���],�������> Db9�H%�ZC��We�\�
u�d��'s���ZH/��om��G�.ю߰�gK{V�F�K���W)t���@1U�=�e� ���-��gQ�9�� ���~.}�^;���8Tm^��m���F��X!(<�j�kN-Tl�Q|ߢ00ltBeiy�,i��c��eW�+�N�Ó��A�J�(Ms|���-R��o��ײ��!e��� ��PPEH�4���j*ג�|��GdzB���0ӽ7�{�����Ow�no������B�em.�*�s��+V���DVm!Y�Cy��Im�и,R�"��;�ܼ��I���2.c�-��(��)��/�z2Y�֐ə�$���v�7zo_������c�%4�WJ�^�P�_D���n6�뜐�Gt�)R5���&�WW%÷\O�}ٷ�ʕ<�V���G�5l�ʚ<���0YS�U������7?����&=~x���~���ã�^����`+Av �{�l��A�UHȘJ�ښ,��|dT��������U0�@N��y�l����I��i�j��֭Vh�!s�>[dn�A��lt�����������_��h4�ro6ʺ#[��@^�2��h<D�2�T��(g(��8�z��BM�����J��n%��Vΰ�Xmo��Q+T +�-�����Y���E�k����\�.�{ũ׼F����n�>�k�+�K�Y�d�r�rD��H+�/��':�� ��0��ҿ?=��3C�67��,�N��m��n�u2����������m�n�[yB�0>w�25�nl�� �ԝ���<�k�Ҡ�CQ��)�p&C�z��*��z�Tﱺ]��?V���l���\��cM�3����;��H���~<�!f�b�?~�?����(z�"z`<P��3y,wS�=\���)D~#0�����a��8�ů�˜H0>�5��D��kC�"��pV�oM��E���;�� �c�(~[�\���h.+U�@+���I���X�H�I�8+�V3cy�ٲa}� X8��+"X�fG�d2B�N"o��hG����*�{�r��f�*�.���b�cVa�N}���� �܉�r���;���~�d�L����IH<�="_+hy����D��<C��B'�`Ҡc��ƌh�89�
g�
� yPw��{��)E��nB"����� �@Wcs
�:�i�����E�Wz������߼�Ŕ�C��D�Qzy&�*� ���^����L���/"��j��o�no�?{m����so���Jo�>��&�2���`��������C+�A.��u<\ 4 
<�$W�(,Nz���o� �����k7�~O ��;��o_ݽ�ӻ������8j��Q��·�<vƯ]��q����V�̼��|6�T4`0�#�0caR>p�>x��F�"G�hp`.8�)"D�������aA�� ��p8&��&2֖7cm��:�~����t�Tl5��7��a�^Q�<$K�E�e��ښӹۇe ��ׁ"$��]1b����һ@tѱ��7�/7�}���[_�������g��G�{�j�ڷ{7�������u�;<K�N���ٽ����/��}���fZ���h���7�(*��Zy�,>}�ԙ��B��Ww� ��p��0	=s9 ��eW[�&��8�.�9���6��i��\0lx�����l��(�p����)��՛)��$�3�i9/$H����2�s�&q���
B[]��u�}(���%��O��N+y��^�xe��(nI5
}e;-�����ǻ�
S�³t�.AW�b:��X��X �4��aoD���D��2ո�΂�{��ԣ}�u�Z��w�s�Nad���f��0y� �N�0w	s;\����f�U���9D�}�-���-��*�_@��Wy� "O�%�����{�A½P9>��:��y���!��_.B����Y���� (.�Cq���%�/s�[1���8��[Y6��/o��J��W"oeYR旷b���I�y+%���VL �t��ԭNg��3NX78�������ko�߿��BN��������p���?��ލ?��ޟ?��yk��=��[/����Y�����Q�'4]?���>��`����ŋWm��nF����=�b�Y�:'�G����R=J�P"Ȝ;w�ܐQ�iܜ�8�V�p�b:^��8�1hƷπ�]=k�n�0-,!�+Y�T�Fr��vbG�ч�uf�قJ��Tl�"f����V�c5�Z�����(rq�Ģ+@������<n��&��z�bb��,���jb���,��q
��D�}o�}/!ƨg��1;;:\�=N�/�݁(�hdU��	K`�buk!�p����U�RO�<.y=;����W�
����U�SO�/��t�k!�p����U�SO�9.y�:����W�
������{�P�.S3ez�X�018i�CR�W� I����'//Ś�)�$����*��Lg���	��W�Wk��ME�\�5n�< �ap򢓄���U��Y4ta9�ӻ�ǽ��D�7����Z����N�bi��Y,Hܦ �oL̗NݞF%�緎|����m��Pa'ZT��u�heQ�i*F��}d[�2$_Ǯ�˔,�i�2]�(2���;X�������������������B��{���ȕ�G���39IǢ�K��ђ|�`
MN��(��xؔ���� chrr�E��cX�EW�s4'�r_�C�]���P�����|��2M��������넲�)�(X�O�@L�bRT�9��}tXFs"�(����r̭��� �h�6.�}�Zu]�O`S�UDC!�_B!���v�<��u�&�����,#���P
�f�ϠI4qx)2_<P�e|�P0 %�2�E�ls������Q38h�8�>�#8�]�J	
��*
e��G    ��T a���ʀBPL,%ҷʟ��<@�&n�(ҷ�
��f����C͋	��`���뀦�I�b^UR�e~���Q2�"�l jl-��m���޾����Վs������b�Ǡd.�3�j\�m�|Xַǫ�R�w�7]��,�Q@Y���-���jc�s���J��Rp�J�͍/�qht���A�7r�2�[�R����d��U�.r�oy�������_ߥ�����;!�+I��g�Vl��?'/�戳�7�i��e��xs��-ze��������&V}�i�N�zXT���]D�;F��y7ˢY�3��AѲ�"(_g�}���-w$
��F�q�j���)���P.[[	���sO�3���f�4������fXa]�y��O���UY}�\3[�ïɰ&���#�Y<-1;�LU$_G���p���&e��?�&���?�&9�����
'h(6i�d�ۤ�$��u��U�R0<�b�|*�#�c&>`�w�J2c��cG�,�"�����P���
/��]dpt_�aΚ�{B\\� �-�D>B�&�P�=+������a$W��i�Mк�$�Sm	ӓlEǒ�,���lG����ZO8�&�_��+}U�6D_�MKXE�dz�&).6|�����T!ѵ�*���!���!}��U���������A�
zF�����F�~Tc����Q<���������0<3R^����� ���;�@T�
�ɮ9��9�X�v9UH�߫e�=p
	�w���&� �2p�����5T^�^�t�����x��M��y�I29�G��b�BtR͌N���P�7�%���vZ����pF�h�������4���oa_�I�.����#�<�<��Ã����y��ь<E]S�U���	$ZY���2�Q���?~k��5��*/6�1?�mX�x�R�kkX%�%��KŧZ�d*C*S׶}��;0{S�0��g��U����.m^�d�w�LE2	�%ű�F�E*�դZ��_��]���+q����An��n���˽#�ރ�������{���V,ZԾh�TT����2Aˊ�2+�$��ά��l���g9�a͵�ϟ=�o���s�kw<ؿ�-T�wu�#�8a��(��DY;U.
9���sȨh{d���9�it���EGC˥��K�B)�g*Ĳ}Y�.U�k�\*�~�����&k����YD����U�T���`/��W?������[�۷{۟�^v7V��O�gAu�}F��E c��jܙ�h_P��F��f�[޵�)���m;���%��i���bh����� =�d7�$��l߆�I#Yev��:=�����Y�rV�Nz�$<���l��\�ԗ+U���"�M0d��=�=_	ː�ޮ@�H@�D�=�6P�95l����%��'���6ri��j좺���[�;�ݻ��������Sx���+���Gj��oF�S)4�d��?��: �G�Z8����hZ�,��8ت�b�r������HɊMVRkFK'�wz۷B��o~���c�g�λ��Ww���������*8��>aN!$�P�s�*�h��!��:�q
�������;1&��W�/�aB䨀���xb�`�8��,�%n�/st���'j'X8���с�&k�	'��~���`h���NpI�1?'X"���D-�:,e�ɧLD��#���y���~�&`�I.�O���h��[J��,+H�%E��&�:��$weYA�/s���L&PȂ�Yg�sr`�I.�X�8b�Nt��g;A�Z���x�0��D6�Qv��7�2�/�%��H��t� �X�M���R)�2��$�&���ܱ��4� X�{K��M�� 2�C??X3�µd�V�"��v$l��d�H�tW�4�U]ɬ����!��	8k�BN�`��#ϴ}K"�iJ��dZ�#��c�H׉^�2�'A���� '��Jl\V.r��qN�9�-a�,M�M�^-�|SL3犿	�f������:���Z����D��j ��t;�]�l�AOް.���㭇��Ze������U�/R��I�����o����PP�k�3<��ՑU�h��yz�y1�*إ��Z*(YW�n���;P��]L	ĩ�]e2�`��pgHD���j�d;�+a�w$��dŕ�n��4�乶2�h�32Y��5���6���IŽ���*HJ�����)p����_O�>�8C�9s&9p�8{�lr�)hA	d�m��l�,G�[(4z}E��_������ko�^����I����-{�^����݇���ݧW��U�j1zA����7CS�{��������}����V��w�@B�
������i�J�8�<Y=G_���/��p��~~>�WG$5[�00��>����|u�=o���\tO"�˨�Jh���w�m�J�?{HǷ�2�C)]���7]2!����jzWz*��P�fٗ����a4}q�d(�V��3�+�����uߘA�TQy0�8�"K�ņ��f�ͬsX�m[���)��qIy`A=���;e��y�а���x��l����:'�/e���1l�����Q6<,ғ�,`J��L�p9��r�� %�Y(�x�Ɠ�Z�3Zы9��g����r��h�j{+~��BE��]���Vl�{��+/47W����^q�5�����n�>�k�+/�Y�pv��Y^��"�\��N�C�>���A��5�z�g�$mn֭��)Pi}����-�#��������`!���|�6P��ܹ�#�2č1�w��N�r:@�*��T!��U��w(���ڟZTu��P !ip��{���+LT߅�9�mjg-ڣ�%��>�k��/zw��v�7� ���Oz�\�_�6�
���u�;<���������������z���3��̰�����ݛK�#n剳����;(��A�x�����-����GX�-��j7�X�ř��������k�6��i��\0lp6l�A����ѼX����f�Yהh�������ux�ϙ䴜�`H$ �٘��ʝ�%ʧί���>���v~�$���i��i%/������ ��������:}6�Em���.�B�?�O��t�)&�z���y���఼�gP���Vj�s;=�:��|�6
V��S6p����*�햇uNT	��k:U��/,�O���w�|�u����Ν�(7�o�
��
�o����s���j�2�<��y�����އ�R����4�$�2�
�P�J��58ܭզF��M	�B1T�T���`
�p������,9$e��1t�PuNUMD*&Ґ��49L��ˈ����2��&�-�Ms�q�Hm2`;M�)�q�2g(�w��S$4-�>,$��P��4Ǳ�"2[b����YC�՜�
_dɕ'Kn!锆,��aiE����!|h\�C��q�+�ٚ�V,�(��y�����I�/EN�Bs:��W ø�S�ӱ�a~�Ŏ�93W�������p�"��d9�׫
�bbUQ��QB�1� ��J8L���8z�~��9,��ꘃ����BeO��#�(F���L�;��)0��� v`��!E2�H&:��D��簭"��xf����*�U�?�N̛W��
ܬ��fE0�L��y�wU`u�+�y�	��+����U&�0%�y�b�6�W�н"����0�
������E��*vV�J̛W���L�O]��Jh9��E��*�U��^�ߨp���P�щ�"��T$X�8S���	�! �T� b�e��t1buְ���vLj1gR+b�"F|Tc�L�0g*'b��3F��#�9����)�7���i��6 �}�	��+������Zs���+������ZU����:��X���y�xu���Tk-Ǽ"�:0&D,�:&�z��*��� �Av4	2��q�Av<	2��q�Av	2����Av�2����"~����"�0���qK�[���$G���(�ң��C\T��E[Z2�t^LjM�a)��2Z    �y�g���-l��[��!��8��ȅ����� C�81TA�j��R�XP�aA5~<�q<(��?��8&	&��L�hqL(�0�"NR�8ɼ�q*�0��_^j� [�8l��Ə5N��TP�ǔ'@{b�)��R[�yQ��R�aJ5~��q�R��K5~t�qB<i!���/t�_��/E�C��B��tU�JT�8<�cU�J��
�Y�n��5r`ψ���8�:�t5Ʃ_焢(��]s�K���R�͘��F�jCp��ta �<�f�oH��ھ��wt<hOr�͖ۼؐ6�&��ي�w��ҧc� �pۃ������@�A�Q!Fϰ���v��vׁ���y����o�_q0�f�N��[KZjX�J������57�C@?�j5��������<H�٤�ʳW�{#���� �ap:<�t��(l����ߤ@pc)�@H�\s��>R��2��|@����d%3(�����P�&(W󣜚���s�E�O+Mu��l��Z�+��R��yt��wF��L� �ޝ���{��7y�^�,��F�|a�t��]��S��
�tI&�*Qԓ���S�uG�,��J�k�w�Yڕ��V&=���&&�/ɦMR�%���I��!G�=h���w������>��5E_C�*��O*Q��-� �'w���gdcMFkD]�u�g��ZEw��|E�][�0ƺd"ݖ����*��"6�P�\Y��ӟ��?~��Wlڕ�up�P��*Z]&��iD�ɒa��d����Ry�x�7������i#������:�c�7����<�NMۯ�څ�K?�t��ku�R.f�6S/�C��i)jbh�t�h�ڣ��O��b�]�o
s-n��3�a[<#:xҌ����g���:�Viz��Q��as�g������utt�~��u�EjF��q�u|(�������urt�~��uȓ��QW�����H�̫���ΙfZO�߱��m7��Il�~p8��e{�yݿ�۽�ۡ��yڣNt�n��9�ᛝ
_���k�w_�Z�GJ,��𒩳�$��xR]�I�3�a@w����t��;=GН.t�`@yb����ҙ��tg�)���3sݙB@7,t����N�;U�a@w�h��v����m�@�4�UA�1߇�O!�hf��HZ�`8�էΜ=�5�2	^#�0������G�~��n�/���#����K`�x�&XALڅ�4�6U2|Ǒ��)��U2��Z��)H��1*�4� ���Ձ�h�6�N���
mE�5� �%9�*+�a� ���_�U����ܻ�2p�a &����Ǻ�R�w�];���	�hH�*�|�T$l�H���$ϐ��lY΀���6��+���gdeM%�̭"U�ŧ�5�V����z���>x�ڛ���BJ����}~���;T?�Y���t}W�Ő�e�eO�M��vl�ce`��\L�N�t��>�L���t]y��".���)�mM�0v�R]�V=�6n/$�f+f���N;d`�?��H�)!q�) ��1V	2f)�'1Z�G��w�����ݻ��흦�� N��L���;[a\9ئY�����t��rv*�ԙ+l����l�e��u�R��˪�r���	!.��)�9�)���	�f���TsՔg;�i2N�鉕h2|ɝ��B�DU �� ����2��q&����9��M�*��f9��`5R-�.u�U�~m��?|����{�{۷�������A�r��8o�z��9�F-��}e��a_3s����ٮ�k�j�Z��o�h���w��~�������{���Ẉ�u:��:���$����@i���Lr�1�3�F�V�ݼ�~q"�~JÌh�����»W���dz�9���L�E����y�`��d4)d6�\���^�����CL������7cq��]!��gD�n� #�YX��u�Z�v��Y�b�a���]��ߗ��IR�]۰�/��mk�T��Sm�Ͷpm���0	�9Ι�]�ڐ8��C�)��vɇ�ۖ�\|8KzRrEa�z�1��_/9#5���^�~ƽ s�������o��"��wz�^*����:�/+���Rt�a�-�X�|Is��_�LS�LK���c;�̥J�k�Y"��eB�d�\���ڪI��&�����Ub�?aH�p)y�������ؿ{�g7��̿U#\Ro:t2�����4���D2lْ���i�i���ȶ�z���6˧��z�ZkTmjz�K�F���Y�SNL����޵�,k�g+[�r6��H�h��T�RѬ�TB��!�+�LNO��ᦂ�#@+���Drߖ�nڒi[S��#]��r��>;贡� to�����S��	I���L�C�3N�F��2�*	U��畃-��b��;�����NY�UJ#7�)�)�"W�З�����1�FN��`��n�E��'OI��o�Pe(���&xW�
�A�A�1��V�xсP����فU�#h���k	i��t��(�']��r�r��C����ޝw����b>�4�q4!#D6�	��N�k��'CV���H�n{�d�ql�r�8Ɠ��ʬ�`ݒ���k�M��d��a&���:����Epv;���]��V����W�=~�f��ϭa��.X�D����Ê�(��$��*Q�I����;��Ǖ���f���`YrM[����dQ#+9�n��lٕg�����1�}6 ��9@�����u�:К:���*��x���_�[�o��{�v����W�ؠ/�}�bԏ}rj ����D�dD��z�Z3���� V��n�b��g� ���'iN�)�T���,��F���0���R�暬�*�c� Ti�`L��0X�,��#daf�01�8����v������\M��
IIH�E��s+�_���ĘDpUG��������w���:�W&(W�25�M7� �&�U�u�~F��f�A����A�ݽ�-�}�6��l���|�l���`\LC�e��Uz�Ǡ�V���1u��'χ��Ss��>���,CR�����1����;��죯w��裏���r��Ϡ�YK�@J��(�QdU��)�I֐���6y�^]��<~xm��K]�6j����7��PYS3!Y�K��A��'26��w�>л�V��$ P, :�,1ZU�G&	Й��w%Q��eg;��PuW��HDq<�$:�Y9R]�3}GS�Iq2ER%ee����۽Ow��������������l>G���Gt�)���J�7\J&X��پ��a�:{����O��$:r��)��{�Vxj������������k7�_��q���7���{���[/�����o����<��Iw�7ê����׶z�Ӌ��}�轿���������_�޺���K�ow�ѫv��m���ս�_�/�۾k�	����{[T�a�����W�y���+�)hl����k��?���i�/|��7_�}���+{���~"�z��w�>�mx�������7w�q��������/�/��_�~Y��/���[�5�������;oQ��?�������7z��:8�{�PK��x���/v��awg�>|���������A����M���/����~ ������O����������޷o�bN��[�T9���-�~( ����OB,P�R��z��勽��an{�u�w�ޣ��ѻq����NZSo�����S��^۷h�l;�p���S�N%:U��*��sH����q0�d�K�%����e���S�Y�D�sc��$(|�H7���s,1��f+&w��+���dl��&�{���L�ImM1V�i�
whMVVM-����Ű�&��M1mS�d�e�rL��X�d�����LD\����
U�����Ql��l��/�ix��W�d�Pf�t�"�d[�'tڻ�����"�h���� ۝��|�D.l�f*��z�T��`1DB��"��h����Z�!��-�$��q~�:�^�Wb��#�|�T*���J�B����>�L�n���/ڨ}�c
�%�<o��    k*ZE��<�NB�]����)�\��۔���J�)�%��@��1�尠�Ȗ��.nd����U���v��	�Ğ��ط\"��K}ϲh{K�G\��=S�H���U�>3D�)�TY��)֎��>�zf5���b=�@�R�'����n�H���!�"Fۃ�������N�<����h{������EY9�~5���m^�ꣾ�aGۜ�M.l�l�M�>m�G�� �!У7�)��.0n(B#P(j�"��d��5���1e���g�0��By9-[$���#fb�bі��%2L\�D0W3�����˜涁<����m*��l���+�)����Z�|��`n
��n��44��`ȸ��ރ���^��˃��V�6�q�iph� ��L�y�	��e���[�J`.B'f��I�N��tOs��a:U�m���D�-5t~nے��MW�%[3l	!ŐM���*'m���J}������x����� _l�[���:�{�Q���f�>�$:Ѳ:��ͶK�1m��>���^6N^�ޓAl�-���E^����AƵ���=���r��<hː�AP
�k�Nͅ,�(�f�ރ�oZ�Z�^ka��zs��T�n��{AZd���Z��E�n"pp0H9YY�j��#��	��W�q�W��^ ��I��Qu:`�ٸ�omֻ	u�C:B�mu���o�y��wt��n�=��vXB:}£��po�(y�N���ٍ��9ɹ�i'��~����Ku���A���d��t��|��N%(mX+T��O?�٤S�k�n��{�����S�/_���ݝw�������[`�"�e,:��lA��[mC��3Ե}�B�#H|��Z-��!�h��m2
�OW�!�+g#�r6<xK.�6/x�v-0��)0�s�F����x���~V��f�E5B�\� �$��Z��=�D�j?7�p>����8XH�ؘ�.foѱ�J/k�Y��7�g��@���RF8 5��N�Eģ�yƹ*}���B��V�'�v��yF� ,��&=ԯ7/VCtQ_��Q��ZT�= �SO�����s퟿@�5O]�6W1��6��6ZPz ��{�_mI����2��E.�:����m%/���{��vj��pΝ;��y�7	ʦn��t��_{���xP��ǡ{au�/47����	"�%�k�i��ۂ1N	��Z�װ�R}�a(�2���CP��A��;'����%���S/�rW�,��,��.��F"�߼���	��f��e``C����n�Eqq^�r��O�]������l5�0^I�Rn�4~���	��Ҡ�}���������c�Ax��A���<д���g��_x��3������/@1�����fK��{0�ʒI<B�p�#�e��^�y�ƚv'v9�_����_�Ѻ��U����w�*��t�B�h����W��i�E������1�D1�\o�k���u��Z1��]�[TmN���=��'U<��-�	��%a��%�����c�TԖ@�6�������#d̃[���"�H�.�B��� GO���I��K!X"�B�$`��CIG�Lt�Ǿ�kj>6�}����U��3�nͯ%�=��K�38�e�˜A|hcXSɎ1��z�p��p�� #?�Od�"aT�#�aW2}Lu�O���w]�Ȋ��>Ԙ�!:��f��<°�2W�UbK�g`�""��]۱eۋ�Y�sme֕;`_%�P�o��﫤����j�S�rǣ�k�7~��7��{������b�c�&(�!�=$Y�F���x�M�����[S�bJ�U��QS�� �����DnG>��d9!sh;�<�t��M��%>���%B���{߾}a��[���}�sv�1���ô;[I@�GU}1�`u�� �։mz1|Y��7$��9q��m��*ϵ3�6Q� �Q3�O�e�Ѫ�k���p���y!md�m�i��l���H�m�n���)�*�B�ATWV$�RT:�z�d��,MvTO7lم��tlz�C_�F�b
�Y�A$K�4KSTK�3�u����1VS�,ݧ�jj:�T_�lk�&k �dA`+C&+�{����M\���d���d��2Y��6�_X�̶W9;�{���ي!�WQ�� �ua�r����*�q1�*�!�g�k��0�
�+P?k�^�N��|��cRl���,Ӣ�S��i����٪�~`Ӌ�e�	���&*��A�x�c�щb�=_���I�%����R�T���/�Vj���rJц �jԩ�O9�ml��� ���]R�T�S��S���1Ó��x"������)�9��0�(�����|��1��1||B^*xU��<[2�N ���H��8��	�j@% ������ShY�)�<�)TN<��� O��>���@�H=��R���,�?_Z����̟��?�!�)�8	��ְo)�U%��-:�ɪd��'��a"���j�L*�o���~�����7�~�ڍ��a&�qb�ze9Ѧ��	~Z�Q���b���H�sJeC��G�#c�(J���0S+ǵ�����8bj������ao�,cȻ�n��k�V��I�m���8f2�dM%��H�ݩ�0'�0#�r�[8t8�koB{�mp*�ots��qu�c�v��{K�򶃝q鯜�m�q(�%�C�)��fݳ�{�m�k{��ֿ�۽�ۃ�N�mk��2��n�_��������c���`��݁J�cO<�����A��	�L�ܹ9oaK��n��k�|�Y��M)�ߕ@O��Gz�|��j�; �f'l���A-�@d!�\���Fd�3�e��c�9A�t�"�i�8�͚�W�v	<U	İ	++�uU����a�9|&9���g�Ø9�Tr�0��%�5��O�����6����6������.l���u��gw��"�(�l!U� ��%�Q�j�υ��>�t�kl��w>�<ĹL=�����Doc.�'=����L�:�2�d��1��'����8��`�e��c.c%@G>#�
�a����ʆ�iǄȨ����@8b��xTr���.~Z�ܤG�ƼZ���b��Eh�3��X�]-�},8�Xh@���fTQf�(3�8�^i��]�Yv�=�1�����V����~��hu�X�K����v�l#Yk?��B��s���C��]��j�P_W��=�t֛Ou�6���P0��5���d]$%W&�q��z���i�He�{A�"��E��7v�a����V)1�oȴL:��:�����VsZ��L��4834���nm�3���dt����*�j����J���K�UԼ�e�ŪE9U�
/��zF�yv�04�+���̠.����j���u�77�U�_��r�r�;�[�\�ʕ���#��m1����d�!֐��鮘��ni���f[1Hְ`~���cC��ߛ%�~�,�7�K�*ӸH��o�"q���r���iV�X�Y�Y�r���|h)��������	-+}Ḃ��/#"2�C:o�YZVV����왈:;���2�vX/�V-�hY�$V-ɩ�(x�d7�H횳.�[/m�C�ݠ��/4�֥8��w��k�=��\�>�2��3H7y�u����%����5��ņ�e���o�C�S!�҇<uy�"�)B�"�)B��
yBDϊ��p�,�2�<*Z*ZϢ��eV&�Υ4+��!�QցdҳH&b!Vb]��$���XyĨĨ.�����"F FuA�ob� b��hY���ĨĨ!������ F1*�QA���5�5��Q�feaaZJ,d�Y<~� ~���7�x6�R���p<�Ҁ�W#+�Ud����af���j@꫑��*�kA]�z	��II�G���ey�3�pG��^�t�L��0!*a�"t�Hܘ�8j��(�	QCDA�wĄ(�)� e����1E��Q� ����(����(H�� &DALQ�1Ed9T;UĄ(�)� "
#� fV���[ $o�;    �aS��.�Z� ױ_�Ad� ����(�!� J1E�8GA(
�	������(ІQ�ڵn����5i��F�^����>n�,a��iK^ò��Ӂ�+�^ۨE���{��&Pp��˲V�L)l�Β���܄���t�t���Y�P�y��-��g���ljc5O�=�ML!BeP��L�!y�Ή��Lz�ps�������oI�v��nm^��kX����{�fr�@:��|������o��a��~��Z��Q�����V�U�������L)��>���<xH(���9'�Yu7[���h`�?=S��
mY������j{j���f;w.x�m1p�㍖�Q�l4� � @� � hH�P5���bZ�	h�"%F	0&V��L�
�p��n�[�f�߼���������_]"��xLT�8}�<uZ��F���k6v�ꏃ��7�]��d#
K�(��W��.s�z�2H>��!tBB1\�6���N��~�����*"��lPH���d���jCNE��?���O�G�J�4�����	*�#�Cl.'�#���b� ��d�h����ArX����9	!9Qp�>,V+�JF~$�]NB���_9xH2r���!���H�����I�r��t��Qp�>,V�j%�Y��H#��$�f:Nf�Pʥ���T,^ě�K)�������PL�@$�ރ��j��L�ҿ�������/�v�?>�޻�r�?�S�->��K׭��V�ef:�Q��X���*�e�Mx9��r ���T~D*:y����G�o4/D��E���܄D�rd�c�4U�e$�@���c-�P���\~�m��dD;��� ^Xay�z�b焆}K!�*��oIؒU��Or}�D��}�� ]�ڣ�����{�v��y��/WZ�����t�����O����!�+�f��sbL�?��(-���r�(�lpĵ�����@�Luu�C�q6n���&�)<��p��B���B��] �(��
���j��c�,h�Q�v6���P�Y�>��o�HX�iw�-]2��K
���Kd)����k�"��,):�$�ʲd��?\��fٺ
"m;0}�Z����Q����j~� �����L��D�q�|(�7��Z�n=IV����Z�ڐ����̊B/��+����%�`�T�U���g���}� }i+����x���rr�^{�[���\�+g����IE5���+OSѮny�=�� Rs o]Y�v[kO>��!��k\���2HވLSU4�R9ن�+T:�#aE�$�x��(��(�E�Lc�1z�����^{�����+�c~<�'�2�?�����̿U�*�1.��͋u�=�U[Mj��oJ�9S�ʸ#8�TU<�1��LLU�I�OA�-Ôeݑ=W����`)�q�,,�`� <U�I��=߳,ِ����2{�d�ĕ\�ȦLբ�?.�'�=�J�&pׅ֏���$4�����h�6M`vz����L�K�k��������oU�����,�+�q
X[57k;��g���g�H����S$���S(;x��!��@�hUˆ <9|�0`R'c�T�u+�!��a/Z�.���l�P�t�=��Ί�u/z^c�������W�z�NT;�+�6�S�V��u��j%��8�qEZ�|��sG��i*�5Z�<z����O���̐���ͺ�:*�o����C�D��}u���Y}$�f.�D��6[��a|O�;�=�z��\Μ�qu�(���W9y�Ow7)�LN�0�G�H��߬��˷ �I��ރ�vwvz��O����#�Ht7*Ν;���yQ�f4Ǖ�!2�_5�A����"���/��ZVH��LrZ�	T0$�k�PH@D5�!���?������ ��������⌡�`Ew.@���]��A�,��:٤` d�@��Y�d��dmt���K�A�lbj-��w��dD��[�=��|
�j+6�U,н��B�e�`.�n���:U�
;�uB�����l^��D�YmKU�C�uNT	��k:U�/x���7?������-��ܬ�D�F�y�`T�
� `��I��T�u�S&�q½P��l�\��9���C\l�ݡj�O��A�e]%T�S�c������� `~��ɨ���RX��-��P���4�NV��nѡ��l�vyę�S9ի�Fզ
xn ���B���~���PPg��f(��sfnb
��)<�,2�e`S<��N�D��=o��˼�9H,�C����ޝ��o���!�d,c�<�d6� ���H8΢� ���At�p�C8N�A mB@e*�S��@�!�kD~�Qͯ�`!1�B����_�!��9�5�_s�k0��c,�kD~M�aN�M�U̲Jq1����``M0�5iG+�C�s�l"��di�J�!0Ɯ�pLʫ�_9O3�70��9�/�/�0��W��8-��iE�ͼ�m�n�&Cx��	D��b)s˱"v'����հ҇L�pId[,.�b1!4���m!�����	�� 	���2FS�x� .J;��pc�\`���-���n_4u��� &�X�a!:��f�S��j�ݤ�_ i��f���sf:�.	�Ρ��)2}4sF��� X0	�ƭΌj%�
�xU��NY�T}L2\���_�o}ѻ{���n�Η{�~���棏?�r��۽w�v~�{�:��}�����������������z���3S~fѭ�(�vg�鳧�L3��&<��Lµb'� ŨN�p���@�(�A�ŵ	+:feT2M3w��!2�FB`������~:�+�ͳ}��C+���8m!c��hd�p��u����Q���c�@�1P��&-kS�`'����7��5���mp����b�_��������э�@���M�崁�I9�g1(V���ٲ���_j���m�h�L�q�
��|�q�t��O�i�4#�����)���@��a���0x- cř�.F���k�W`�d�k[�?��e���?����(�=�(P.y.h�c9�Z&��'Ɏ�K�h�dX����]ٗ{%ϵ��p`M�@q���Z��mŗd��V�%���I��!G�=\9���{���*�wH�����!eM6Vud��r2�ss�]�R'��2���5�W5��$�z�T��������g�l�w���G��>{[�s&ks��i�A����s&91_��4�������އ;��[���{ok��m]{t��?���������g���}���k��~�_?���v��������ᗋ�}�����*��H0�Uё/[cU��#ё��/͵;E*g�DXt$��!e����n�q���������\V�\V�|o�;Y�/�-<���+:���wX�beUV���z�;?��d�6OrP���P�)�*)�oH��U���aC34SW�G�_�C\�6c4 �Hma4+[:�0��af(��B���˥�������N�]E�y|����"�ق�1�΀0���
�5��!&`f"�-@��o@�Xg"��ۭ5�wN(�x#��6N�V�ī`YŃ���^��˃��V������8�V}���S:sq�y�	/�e����J`�ybI��j��8����p�'9U6y&zPx"�0�:��dۖ<_w@\�dk�-���][��ƕ~��
�;�z@u7�qaJUk�T�le#m���b5��-I��������Ǘ�\��^'{��E��V֊�$U�+ьFO�{  	p��C�����h4�����u]����%#I��ޒ��������翏?��������F�Un�6p��fM�0�B���F[v�ۭ�Wk�����dlu亪�]ի�>�c�'=x��Q�O'��03�"d;/�į7�u�*��\`f^�o�6Z[��͆�D9ӑ��J�d[9q\/��.��7T}}#�L�����q�ǻS �q�-��f���␢��|���բM�e�U���y�g�u��;���
 �	��0ɢ]��5�/D��^?;&�}���b�q\��H^�A��Sv���r��    ^��qw(�m���Z|�����멮۩�{�����[���n�?���o��{}��{~��G��,#��Yb^B����wwhN��jzs�3�n+	�	r`ֵR/
��j���3�T+�	o#ޒ��U�� ��� pNn����	Q�.���j��#��Z�{Wm�$1�ѓ�+�^���%A�h�}���0�*<ǧ�iu��4��l�g\�A����de���D)!&2n�`\u�z`Po�k�i5ԘW��[L�v~��]�*�L�N=�H�w����gϞ�<{�-1g�I�|��=���G���6��H�0�ח�^E��-��8J�#�����ի[�%��\�e|�@�5�q�]�I|0��#A��ڄ˰~�Lk��Av��4�o�� �����V-�K�f
y�S_�����Q�Q��;>;0�Q;��LJ[��$���¡41F�:���D��G�^��൤��K�8�f攠�#�,2��h��Ya��,�Q�RN2�F�����z����:uwC��}mӋ��	���כ=y-X��&Ϋ/?|����2@oh^���q[~�[@d�?�WCc5�yc
���H����ο�p���;s�<��I9?oN� �I���� ��� Ș�z�@̧� ��Bd�a���&�5Z��P��ܗTxLC�B����J�|��m���L�Ƶ#ǃ�]����l��-��hz5��4b��P� O7~w+�*�=��`���uOh�CpT��9��k�KŔ�<�/��I��Ն=}q�7�=�F94���t})@��̄�ij�M��\�=AuI�h�.�^c�����'`�">����XoΟ(�!��!����^�ѐ'E���N���J�x�D��WJp��_)]3����vC}G9O�{'��>��cO}��7�^+5�WT�ʽ�:Q:��im���Y��H�< �S�?r�[O��P�˙I�U�*��fnD����<ŕ"��-�@�a�L�T������*:�����g�CvBZ�],ny̲�F���\x�@�w�8�-��A�.1��B3E�&��\_�0���Ғ\ׅƉik\J�.ST�Ĳ]�5�\��䞥� ��04����'9p�ͨ�<�P��$���I4ǲ�[�v�d��`�t�-S��,~z���R:/���Yi�XJ�ъ)�R:��)錙Q�q$�s����wv�����/,��^�1/e��r�,�̥,/(�8�pf-e��	��r�[,kn����K���ޚXڸ�N ��C�k��2 ����SF,�)�c�K)�8R�Ơ�5�])�辔.�9Hi�W��2^!��NJ���ҩ95(��R�o+G�m�Ӹopͦ�g3��t�m�o$�R��F)Hsn�H���1N@�*[����	BK�йIl�DQ��e�ܐҔ�k EL^%u]���1�W�P��ڳ�}���0Fm��
Q�V�]�ȨǍ��	�~�l���%���#�(�5�e��}p�fN�01�gm�^��E��z�ɐ^�c ]�g����ҫ�>0���0�*ӫ�U�5��U	�����ٯdqO�e:��mO~��*X!-�@�*��<Ċ��Z5�c0:�ښ��y��	�� V2^;�/Na�Z�>u�B ��bǉ�G�eփ�/�Y�>9?����O?�}���7?~��a��矽t\*M%�ģ��?�<�b�����ޘ���9�8�vE.wK=?�>)�aX�� &��J��V��9	�t�P3g���&���TQv�~s��6�o4ɔ��z0��:�W͖B7WA��4v�i�,N2e#I�ih����S̻�x���j�c�b��p+T|�n��9uS9[7XZ'ʩ�ԩ���ǟ|�䐽"t��}����W�s�����9�I�r#�^rŉv����v��U��E�Vn
�p�TW\y�!�d�>�!(�>���*&��*�&U�ŭr4�ƟUO�vX��`|K!�"��Sl�_��KA���%^
]ѥ�ѵ��DxJ#HGeh�� h��lu�8�%�
�(E��8")���#�����$�+9d.��P�9�p��t0~���H��O�Z����LM>l9�.S�F�@sB(�3�UfZV7��)2U��t�QIvT	D	HS�m(��h��޶R����VI6=��Sru��u+��>p#��7Kф�V�9�[PQT����4��vڒSM�Ϗ���C�>�x$��-dgc��Rt�b��?��w��,3qpR��&����08?w�<1��24���hu�;Dǁ?>� ��������`����;�����k:���>}���/޿wo�����O�����a\$���Νfz���,�,����S��vCy�j,��,0�s1�-�$E!�Oz$L�����B�ÈȮ� �ع�{����8mܰ��O<��D�^պ��0�2�M`P�O@��u�I�PL]�ԏ�����cEc1��H6c۲�*�l�����fq^�%��1ۘ2��f3�(����H�6���/���tk(篪��o�����z�����/x�(u^`!T�SF���
�1����J��[�9��r�b�h]�����M	�@rXSƈ����0=#�"����Hn��BQ�����m���,�
�����ɣ���VKF��)sz����ʊ��/��sJ�A7j�f́��J�N����&�M�r܄���ؼ�dҍ�c\�[᱙G��`��;lRf�)�[�����,|.�eR�D(����/~}�P¦����4�O�r��1��i�Y��3:Y�1g�(��,�\�}�ŝ���!��v\6��i���z�cr��q�Q2�m��&(�ѣ�g��͈�vj�hL�T�lCm��>Gqrv���Ҳ�d��cȣ�V�J�'fڱS�����ژNcF�?{�$,N�&���s&|<-�C�g�: րlb�<9E9���:/A���9ͅ%��A�x��^��4��XB����g�8rz^�_{�Ď�q=k�%	G�8r�q�̼�$���C6���pD��#������1ˮ���g����Auv�mn5z�vCi�r�`	��}P� �(������b���� �O�n��өz�ƙ�>͚V�Ed:�֩42n�kk`_�1�)����{s�&�Kx�1���<�C����Go �%��]W��|�k,O�0��ʃXȳ)l�ϝ�P;���Y�7^�9�<��7��b� ���wq. -z�?0��y������<(��y����):����Y�yť���y��s�/8B�{��8=!08��xV�/��C`��x(�s^��^)�أ�ƙI���0���9⎍a��8��!�,@��ݬU��x/֘Ѽ<j)�Ӵ��c�����xϊ�Q�x$�WV�!gZ�?"~�%���D��ψ�Q;։��I�T���-�r9�I�w���=�q��8>�aOE��v.�JH���p�F�hI�U2�����Y��uZm��=|���|^�U�[N������:}��y���<�i���4�ݩo����u���f��:
i��I�/fd4fv�-;�8xb������~�{��;�dF�9��#�+ciI��Q}����/��5�|��4�9n��F�����ƺ�ٵ�"*c���5�YQC�XOd"�)ڢ���?��mzi���X`�E�{:�@�İ�kE��i�pG��ɶy�ˍ��Z�K�@j��*{�SY�mlm:MYoGTc�ZSn��7�މt��@�p���?B���أz8[xf�EO�1Q�w�j� :�N:�^����L�t�����9WU����l�,���<���A�D�	�'��
��
���GZ�,:��3�����HI>&#'��LtB G$�G���d{t���������?���������@˜�c��3���u��f�dq��,�9�G�Y��Y�U���䣳���i��Qb�Jq�R)������D殁ēt�}��bB£�����Ggc��"˫�̤Y�L�̤�j1���nRa%�;�2i  V	  ��5���Y��5b���:̤�kQ����y僽ۿع�ӝO>�}��w�^[����wn��ڽ���[A��z�ዯb��3�y���տ=��K���wu5���%G�כ7�6�M�݌.���'��䯟��S�+,���5M�8EK�SM�ݨ7�@:�|�Вk^;EG�"vj�ɑ6�NQ]TM/=�����%�&'Y��x6T���v|�	϶5�=�ْ��p���e�E�P.�'�p����X��bV�]e����K���W����p� �Ԗ�=_Q�勔��_9!�����Փ')3+�G���vU�{��:�qpCjܵ�	�']Jl��\�DzmB�(�Tst�ո� EtS3=�0��<�c�b	S8���X1�0��������g��ʗS�gN_2[�����+C_"��*
r2��QƎ���5��O
��3��E(�D��b��#��rP:�=^h����-�|�8b��B���V5櫵, ��'�J!��F���$�I-GR�"�<E�`�.Z#��V�(�$-�$�&�G�������{w��jKwo�-�)�X��2���{��0Z݆�����[�>��]���f0A��p������z̧0e��[BӨ�/k]���"ĵ�:-|YY��/��
� =	B�ۦF}�ڞ���X��׺���� 6���ŀ�@�*3��Vl,A�v���N�{�ӺZǊ�վ�	|fMS6ju,�W���[��&ٿ0�6P�+�o��� 97�fF��+�W���^ƥZ�ށQtG{����2�vf_=�{��K<]�f��τ��~��IA�g�~�ZA15�kg���ؠ��R������LC�L�4�:��ԁ��yP���5
"P� �*H�6��k�bT���3��ͭM�M�1��?����ݗ���쬷���^=E���S� ���;���O��M��Nw|��5�'��W�o��ɼ������3�U���_{�k���y��_?��g�y�)rn��;K���鯷���H���3���� Rc��0�kR ��e����U�x�<��r'������*���-��X�
{��)�j�r	(�Jٖt�U�E�f�<\C�L��ѫ�ynWtӘ	�*׫�WK<+��'�u,Γ���Z*ǘ�Z-��9M�ｿ���ŗw߾e���F3.��GJ�����J6����,i����L8 �8�Ch_���:�Q��r�������U�*��B�Y�yE�z��E�LU��������9,i���Ա���'\�I�dLc�Q,X��h"�GцB#�ԉA9�5�c��#J�yƎ���ԏa�R��B����YB�lJ4�@m�L*��f�+�AXU]0�L���7@�!�2���sC�Ζ�)���ȶ��\ �"2��a��P�`z�u�V�1�)���J��8�9��S3���("JĤk�lWz� 7����_�"E��!��~��Ș��X��T(3�w��Ð8l�8�O�X��ʁ��|7g*߁��f���O����o��ޏ_�}�C�i�K��l)2 /�����ԇW��,^�,�e��Ҋ���x������?}%�oj����������*	*<��P����G�͎�Y:z[�`#1�bf?K�\��\S�*�*��۳B�U%�BY:���>��{�����Z�O���G�����?���K����g/?v������]d��x�v>|�>|�ӝ7?{x��`M����~nʒ1<vxVCq۵L͑&�]Z��0ba�!�<�d4�N��s�i�QeV��3��%#�)�<�����}���߈1��g�v>|�������v.����-�.��W;����G��ß�z��-X�=���n�\d��b�L�,N��Ӓ[;��,��t�e0K����:פ�K�bR��h�E�(ix��j�k�<�h
۾d>a�'kvuB�M�!ڎ�+i�m+E>�>�nu��B,�?h��0fOq<�<��s7$��ģ��+�`_�����{�O>�p���� �\^O���l�ڐ�Ь�Õ@��^*)�%q4Ϣ�Iaٚ�m0w�횺��9�(�S}��g���/|�q�/4Il�V��I���{C"���"A�i!��j�b���(_II,M033�	��ఉoqC�d�|4�x)����!ͺ+�#]�{�fR����-Ͷ��@g��]b�������w�����JI��Y�?E��$�E��{w����'�l�����%`7 �=L��)5�2���e���l�K}N��!: ��LZ)�=}t��t��@CTuV���-�첐v�̔!0=����~��ҳPE�5j�1����D�L��~y ]�ĥʗ�������      ;   �  x�E���1���S���23I&��hc��6?,����$C�]��RAA+����Z�5̌�߅�s�=��F����L���ƎMFqTNtR�������ˇ��9���ܩw��C<8,��RC��������,3�5Nqf�KRj	�R��������Wm=e<,��#6x�Q5^���AY&&��F��[0N�����������)c��@=Y�n��q�11*�,���e@rn;3h��L�<a&�`>���p*�2�O�iS�!V��i]�y�
��Q��cz�XV_� ��Ӻp�53z�4���(�$�q*�"���!i
9wkt*!�������c��-T��M�� ��)�k�{� јjÑ�H�0VZ���V���� �a��	&�\g:���ؓ�DZ%���m��zma ,[��C�KN���9�uD}N���6כ�n�����%      K   �  x�Ր�n�@����L�3�0de�c�jɒ��`#h�O_�j�u�Ut���G�ޣ�����w�c�S�^�.ݐ��r
-�O[�L��p~���߶"�k'�w�;ϪS����&�XDA&�
�!T��*y�95�����(�)��ژغ�"¾AKB�T�u����������K.�Wl ��w�0�8�L���1O�e�Q�Tu�,6+�;�ˊ�9�*q��N�������"��7?|x�.��}�ؚ��ȶ ��7z�V�2�>9E�˸x+�3�حڥm�t��{s����}�ų+f���>���E���] %>�=�����Ǐ�!<�7m7y�ɚ�Nf����U�?./M�����?	A����j1�U �TY���      M   {  x��S�o�0>���]��?��X��ip[��q�ƛ�YW�JC����!!$� �	ہ?����-+lLcB(9�~����>?{��ד�ݓ�������վe-����R��Kn������)ye��8�8~�L Z�R3x�xA�C��U�En섕Z��^�<R¾k?|��ūo;������ϓ�΋�eÇ9�ֶ��:��� �(f6,S,���H'�A��1g��k:�nf�MiiZ��L�!аZ�L�C��k%���g9�#�T��/�7��T��c��g?t��}
�TD97�,��6�6�9�fܦ��R]3N��6^�aWOPTk���H�d���$�)vR�ᙯ�<~V�c?~rt�~����뻣���ɛ���^�,�z�s-����\-4h�s��m��L�p����T�c3�6Z�>�+{A����34���/Y���[�� �"�ͯV�7��ic����z�%ׇ�J�S�zs�fDfF�iOHg0ӓ���\H#5{�fT�tg6��<��·��(d���i!����f�Zſ
�C����E%a��^I��T*�RI�SK���Ī;yw*?U�`6��7�%��*P�c4o��X��a�h��`��
��T��      U      x������ � �      X      x������ � �      <   �  x�œMK�A�Ϗ��Cn�q_���&1}1�F���}v5&�uc���RA,ThEz��P
���ď�M+��RZ(sؙ���?�)#a�H �MY41���.^������oC_=��q\I&4@�:@��XC�%'�'2�#دt��n�}g3[Yٷ�V����B�����}��:ի�����t�8-)C@�)��( ��Jh��,���G�oF7�����󗷯�D��qA${�n�M� J��n���I�p���B��g��m-Дn���R��l�Z>1��LjPӅ�LU���ǫ2��ou��Rq/SS4[�s2�G�����r�,���I�>�3�"׫m������#1j ����p��4Db�h�k��6v�s���w'����c��)�#�@@��`TJc��ۏF�/��ӻO�4�Q�3N��xaD �p�q�3�s���O�Z�1ahKL`e:`b	b	�\$��������h��lB�!�(��+@��@P�
G#��B�Oc���ĩC$�,<��a�Js�{!�oǤ�p�t�����;*�#��z�n6���ݵ|N/oo<�_�ǽJ\���a��9.���uXʵW�U��Wn����i��1��$��fA�lx��s�y�l�&qa�b�,�@k�s̀v6�JC�`"�"
z�N������Nzjj�+����      Y   �   x�u�Kj�1���O�}Q�%˶z�� PdK�.���?n��a6̃ua��0f(}hL��P4L!q:��3�����2oiI�\H`U�P�v��H��&�.؜�׉^�I�z�<,�V�D���:
��[��['�������V���V�G��m>#��h����q/"�:�      O      x������ � �      p      x������ � �      r      x������ � �      }   �   x���;N�0 k�ۣ��=�qn�t�8v��)kV�HTKIç�.C"�A�8 Ҕ���D�'�A���w�[������Πr"N>U�;!�&Pn``M�Z��]"
6�,�Ҽ
��A�+ӣm��Du��������e��]����'q^�a���^KS\�
T���3F��������u��gݰ�G�����s9�������f[�5׫�/��5R��Y�      u   �  x���=�1��SL��U�*�T�lRn�"b���@D���D�6A$�av8�v!f�-G����=��(͊�ŁT30d�\}ɩU�ꇲ�v5\<�U<5@���@�����<�Vep� rkG�	���=������RD��!YS��4���i�����*�ZA+9��DP���3�ś�g���i���������뻯owo������jE��Y<j� jͦ�#�`�p;���ē��3������qB��FKy�=%� �x�K�[���j�V���!�=������(ĉ{�dq2�8R����s"	�kn
:~�dI��d�!�D̜BDѮ,��'aj�aRO�a���Dt�2?��ܽ|�����ǻ_7��͇ݫ�!GYzB�8���xd�g頃�GM�-���A������w�(� ����V�Z}��c�����b/&w�,Zﯯi������")p��%Z��j�ڸ�قϏ�����yf��!�� y1�V��:���      t      x������ � �      l      x������ � �      _   L  x���=n1���S�7�)R$�>��� AN�2@���]�̉��"A��=�Pš��e��&<�Bń�])J�R�o�K̯mmVg�	�+S���jf�97��7Jī=��Ṅ�<&۞���k�q&��e�qi�ΣF�ڶF�&�d!w_hZlX'����f���w�e��n�s93�˥�?SH���g�2=K%0рi�%�y�t��E�L�`�ј���p�K?�r��vౢpk�S�:�%+�����?~������o���hF��׫b�.@ZÛ���{��c��/��ƀ����GdȺzCJT�z�,����b��"��|���	 
�      i   K  x����� !�c.�S�$6��Q�a����ԯ�������&�h��Ft�!$.،�td�3��;�M�.�M(���	��;]H��h��M������t0:
�������Xp�<�*��I��lZ�f���£�q��o̦s�2�c�D���E�!�#�'�k��4��A�&�K�QԻ�wSW���u�4���#=���'�i��i�jv%�lC�7����#���D(���ts)o�5\u;{�ݠ|m&.���j����r�n���+=+l8je���p�;#C�2x��'�xg]�O�X�Źǽ+0��ݑ��M#�Wi1=�~�����=�      ^   �   x��νMA��x���O^ٞ�㙩�d~@�AH�T�D�J��/q�W�ӆkBPZ�F[�;�Ԍ�j޷�Z�ۦ[_-�d���Jy�H2�V��Ħ�8���R8�ã�9=�#��#f���Ϗ��/���r�t*� ̜(���m�S�C�3��"|��k4V���$f�6�<��i�6��^�&��\hg�u9�}�Ľ\�      g   t  x���MjUAF���¹ԣ�����-�� .@$B^Pш(A��S�������܂u�Ӑ�G�Q�S:ا"�)�A�9��TT���<�'y<��(I��V !�6Z�&:�k]&B �\�2nI6��u:z�� wH���bB��ԣ�����{u�����dy��}����~={>�̉�k��J7�;dvF�X��P��{@�-�F��M�a��pv��,�'���֜%V�@j���'�W�~xqZ����3�
�(�!B����j�>��*�UԲI���K���XU	R�j�����Z$���[n?�X�_�^^�T3Z5��&+6FP2SidH�|������#)M7��n�������ϗ�o��h3���b�<      a   Q  x��Xˎ[E]�_a��P[]�~yG>�/Ȧ���.��DQ$,� ��;$$Ċ-��!���zFgwǶ�X��n�9]U�NYtU��/⍪�)%
��)���hO�YТ����065ʒM��j�H�ٲb�!^Q��^K����lW6mT6�kK����:�Kp%u�Ⰰ<�I9ZC��mI\��f)7K�fb��[�W����C,��;fr3>�˴��^��#6�AS��b42�Dg2{�=q�!w��b�<fr�������b.5i�uf7�3u�M�&��A��;jz5:3h:m������~��KN{#�b$�ft e9�ڤk�|Z�Y^1m��0��C�|v�5����h��$�q���ޝ�%�19ҍڍKk�~���ɓ6����_�����qWR�"�\���6j/(�V������c�	jq�sW��=�c�<�>M�|:=�&��B�C��n���ઓ�%v��j�@Y���-�4��Ô�و�A%��$'������[>8�	�cm&���EE�zqƵZ���.�?$L���X	�G�M
<Ll�K�Fb���>�=��r�3`�K���/gBwb"kd'P��}���� N������<R3h4t19�`��ʠ�[���\h��P^�xB�s�CO{��wo~���/��������2bKJF�p����f��U��I=��I�c���z��������3��X:E�G$��e�L8Ȑ�ⴁz'k&�4��:�Q���!Y"�}��\Ŕ���'��I�4[_�/�:Q��M�:L�R���s��ak7V�!�{lcl��>�bD�*�W�U\7�B��S6�`��0A���{�ۋ���z�|��z7�X6��!'�ZFK�ޛ���t�q�9��(	�~{Q�W�zq=$���wt�<�8�D�a�c��<�{K�@a� $E���j�ﱴ������l�����N�'	|�7t+k�����juu1�!����4ьh'��q��NXC:˖�"Lz�����b��2�S�P�А�Y�A��c��ncLg���pl��n��m��ͅ�5)�h�!���05��s�� �AyM.�#|���w?���������h�G�T�+x�)�. ��nr��H�Z�&J=8�SS����}���yǲ�8j�"�\��
	�Iq�	AOl.q� ��I|�11�ٕ�|ơ����������_������>!EC�ɔ'l�ڜ+�c�{�Å9C����[�%q��O��4ō�5ǇOTpL�Ϟ�<^��&��&?}o�2����҈�ғ���l8��	�[���G���y��͍ۓ�r��b4w�      o      x������ � �      n   %  x����j1E�ݯHf�C��G�F��1�����6�"��0���G�"kJI<8�Rr�LX #�%W���P��݇��PZ6Q� -�m����s	m����/ ��f�}&c���L�uf?E�[�V���|�_���>�Z�Rc1j���� � At(� 	kyG�g+،<����p,�?\������P	�F �A4��d`5{����R�?�:��"�D�KZ�:�Bɚ uP23������:��#�t��n*�D[|���
wxj�Y:j�Ak�~A~��=Rq����q ��̘      �   �   x����0 k{
z����?�3�qg �
$-5���i���t�I�B����FJ ��#$b$�Q5�f8��d��i�F/@N2ȀA�nR���ޱad��#j)�u���=��b��^���3��t+�c����܂�*k���+�      ]   4  x��UM�cU]����K=�֭�o+�S\��i�t���ٺ�av#��q!ø�/u;�º���A�cx\BxU9��9u%k�0��I��!���c+D�0{��.��ӓO��sd10f-!� ���T���{㉐X_ �32�B<��`x\��g���,1��ۗ�ܾ~}8�޼�>����v�����n2S�Vr��1K����[@�0p˃Ʈ�l����}�l�kuj)��s �� 7g ����Z�8�u+fġt,��!DnLk5%穧0]=���sm{�`�-dC�C:U0Z0��P���y����W������r�PyV�$*W`�쬨
��\T�f�tu���QB��fc,�He��!Y�ߋ��l
q�:��v�u�	#BN-�(�yN4��(�ąh6�����z枞�����mm�) Y?���G��"O\+���*W�L��b�ɳ�b�������Q��	�Cp7s�OX�z�û���/������o��M.J��
���T,d�z�S�Tq��r�����},���=�D̮݀@���=d���f��� MiW�77��>,&��>Zg*'[}fGf��7/ƒ����9��l.�뾹�Xo��|��_�A�����%M���:q�DQ3Q�8�r����Z%���s�,'��,4���J�?�-{ɱ��>�Xj��`z�0�R���ϭ��Pw y���F�P�ht{`'|_��$ҍƫL\Q7�4ѣ��ĥ�鈞p�7q�q&����Ïǿ69o��5��%(�̍	I��U�Nw�!��K]�w�B��B)�f�_���!�Ü�W��|���E����#����%�d^�V ��.      e   7  x���MN�0���)�G���8�{.@Xر��q��X��h7�	h�����64	Y�
$Bp�J��Fo>��,��IBe�4��Ԕ+锠
wf�� ˭F�rB�E���>Ks�r�3�{����%=�=�XyD�!<�=��k���qP�&�x\.�e1�gW�M<�LIb��mzD�Z���I`���йӶ��%e�{b�TH�DO�QJ��].�^$�J��Av<�vb�D�כͮ4���~�l�����\�v�[{�����㮸�^����~{}E,�N��i?��y��j���K�����O�8�Cɘ�      f   �   x�=�MJA��u�)f�HU����s7�{ � "n]IH�/4��I��Wp�>���F�1Ę�d�	�� >xFb��z�OB=U�F/�*��{�gUR��U���E#� �%37�tZ�:�X� Y) �)f��J1}���{�-����#�}?>���>�����ew���y�����n�ۯ�s5>_̛���b3���i�?��JO      w   �   x��λu@1��or��|vI6�?B<BU:��c��������&�fBc��ta*��֦��K6�&�v�nWK���of�-8�_M��fՍ]6��,
�}����9����F𽼤A._�\���M��|hL"�|֝���p�F%��K����@��T�V)��':>\6������}�K�      `   �  x��TMoG={~ł� �z�U]5�!��ds�q,Y+�bɱ�B$����K !!�p�#.�(��_�]�)!5kBl��wf��TM�z�^�� d�w%4*�bTu�&cƵr5����'O��>�"4Q��;�\oL�}�5�H��4���ukֵ;_=�tL0�e�������;�{�ǿߛ�|>�����/�0�6�&��WŮ׊�w�G������c�U� ��l;������ �jXvq}kv���F���)�\�QQ�»O��N�Ǣӊ���]�i�c9"9R`�**Z+ϕe)�V�b�x1P0ص�p�?� �hʘtR�I�� �p��UA#-b�4��t`��'�7_�R�/E �I��2�^Q�^h�FJm*9��H�p�{_�7A���[D��m��R�O_�~������_�GO���xo���w����8����$������!g2)�՘��`�`������d:�:Iuk{�w�����S�o�d�G��9��I�Ҟ�˛0
��۝�i���9뒫��tCd�d�7�T����	<괜B77Л*n������R�ϐ'��6ֲ]��f80w`��?0*t�A��-�v���O�GNlra`��W �#�����lv%ll �V�A��qw��v7�4*�Wv�N�@vIޤϘA{.�����l�^��8i��,�����H�%e�d5�Ό.�L)�Y����h��`�eo��
�f�6M�/��      b   I  x���;NA@��)B������vp .������"� �	!q �D�HtT�&@n��	=򧲭�7P����A$[�P.Q{�up^��P��?V�^@?� >�(�+ZG[�(F�: ��$��]�~��B�Cu��J���i}�����z}^�ܯ_��ok_}����'=9��C&�
�[��"nP�w!�(����c�m'�Ѷ���'@V2HB�*�ԖbΦ���>�1������V6�Ӿ/!^������g���<�E�bē����͈m�5�sh�,,y���#�������Pi��lf�{��VB���Z\���h4�^���      �      x������ � �      c   \  x����J�@�ד�(��ܙ��d�v�X�$S�R$�.,m�RKJQ��.jWJk��8i��+8!�k�;����.w�'�'!""�cI���Kl���r�Am�6��ř���f�61���!d��Tω"6aڠ����,����QQ�V��`�Tf�h�p�d��!n	bR`_H���6�8o:�_[�
������yn�՟x�p��-���E���*��j�^��R�k�H��0\��A�d���f����].�z��G������D���>��V��${Xi���9|�6S�{�����;�c��u5)�l����<Q��>�L�<��L�N܎۝��6�a�J���      d   }  x����JA�㙧00P��>j����Yz� g�AA<��P4��Dp#W�q�]7�W��;�i��꿺��̈́R�U0�B
�s�p�H :q�&�I���Pj�h �Kd܀�V u��V�	#� l�b�iNTKr�@T"Lf**�:B@g>��Y�3aJ�~�4zFr���7rg��U4��nE��BR'e\͜���a�i:8^�{����������d�xr�_�LF���������`:8.���-��i���a�������.�����9۩j_Ջ[�[�v�n{�n���w��z�(m@=��*�RB	-����4]]��6^iF��u�"^&-n9�^�2(@Y�"ʈ��C�T�P�#ϑ�P6@��~%i�J��ŉ��      m      x������ � �      j   �  x���Kj[1��׫���D�tΑtu��4���n%1���&�+��<v�I��R�
�i(]NZ����q8���O�/Z9�sV����̔ LKa%rޫ"�mZ>9CR$ƍ#F�����ʄ�u�T ��&@%uE�MB���?�)DE���F��< 
*~���pW��|8��ih-;´�%%��EWgj-q��;��R��g�Kq{�̰u:�^^�tw����]����a�������߽���w}O�\�� �<?o����x�,Fp����	ML�uN!F�a��.��L��H�*�L�I��	�y�L�M!��C`���e��փ(�������O߿��yo�b^�d)1*�b��<y$!u~�}V���岒�m4ּ�JTf M�Q���g���(�u��A7UT�y��O��#����O��߬�RW�W����![��z�'[�icm#^�;M�f�w6����Ƿ]ᇋ����E-1�"��2!����YR��K�G�'�F����o      {   �   x���=N�@�k���X;�����i�� n@�ҀR�Ѐ�����`�T��RQ"��޼���6Q�PL6�����E�Y�]���V���e�%��#�Bb`�-��-`�^��N
W��' -�1QaC&\(?WL��?����qܮ�����|9j��ql4Y?��s^ڮ�$J�����e�1��rd�j���(��v�8��a�>�ꩿ������x�:�-��� /�vk     