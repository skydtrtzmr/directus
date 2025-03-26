export type Articles = {
  content?: string | null;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  knowledge_points: any[] | ArticlesKnowledgePoints[];
  sections: any[] | ArticlesSections[];
  sort?: number | null;
  status: string;
  textbook?: string | Textbooks | null;
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type ArticlesKnowledgePoints = {
  articles_id?: string | Articles | null;
  id: number;
  knowledge_points_id?: string | KnowledgePoints | null;
};

export type ArticlesSections = {
  articles_id?: string | Articles | null;
  id: number;
  sections_id?: string | Sections | null;
};

export type Classes = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  institution?: string | Institutions | null;
  name?: string | null;
  status: string;
  students: any[] | Students[];
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type Courses = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  sort?: number | null;
  status: string;
  subject?: string | Subjects | null;
  teachers: any[] | CoursesDirectusUsers[];
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type CoursesDirectusUsers = {
  courses_id?: string | Courses | null;
  directus_users_id?: string | DirectusUsers | null;
  id: number;
};

export type DirectusAccess = {
  id: string;
  policy: string | DirectusPolicies;
  role?: string | DirectusRoles | null;
  sort?: number | null;
  user?: string | DirectusUsers | null;
};

export type DirectusActivity = {
  action: string;
  collection: string;
  id: number;
  ip?: string | null;
  item: string;
  origin?: string | null;
  revisions: any[] | DirectusRevisions[];
  timestamp: string;
  user?: string | DirectusUsers | null;
  user_agent?: string | null;
};

export type DirectusCollections = {
  accountability?: string | null;
  archive_app_filter: boolean;
  archive_field?: string | null;
  archive_value?: string | null;
  collapse: string;
  collection: string;
  color?: string | null;
  display_template?: string | null;
  group?: string | DirectusCollections | null;
  hidden: boolean;
  icon?: string | null;
  item_duplication_fields?: unknown | null;
  note?: string | null;
  preview_url?: string | null;
  singleton: boolean;
  sort?: number | null;
  sort_field?: string | null;
  translations?: unknown | null;
  unarchive_value?: string | null;
  versioning: boolean;
};

export type DirectusComments = {
  collection: string | DirectusCollections;
  comment: string;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  item: string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type DirectusDashboards = {
  color?: string | null;
  date_created?: string | null;
  icon: string;
  id: string;
  name: string;
  note?: string | null;
  panels: any[] | DirectusPanels[];
  user_created?: string | DirectusUsers | null;
};

export type DirectusExtensions = {
  bundle?: string | null;
  enabled: boolean;
  folder: string;
  id: string;
  source: string;
};

export type DirectusFields = {
  collection: string | DirectusCollections;
  conditions?: unknown | null;
  display?: string | null;
  display_options?: unknown | null;
  field: string;
  group?: string | DirectusFields | null;
  hidden: boolean;
  id: number;
  interface?: string | null;
  note?: string | null;
  options?: unknown | null;
  readonly: boolean;
  required?: boolean | null;
  sort?: number | null;
  special?: unknown | null;
  translations?: unknown | null;
  validation?: unknown | null;
  validation_message?: string | null;
  width?: string | null;
};

export type DirectusFiles = {
  charset?: string | null;
  created_on: string;
  description?: string | null;
  duration?: number | null;
  embed?: string | null;
  filename_disk?: string | null;
  filename_download: string;
  filesize?: number | null;
  focal_point_x?: number | null;
  focal_point_y?: number | null;
  folder?: string | DirectusFolders | null;
  height?: number | null;
  id: string;
  location?: string | null;
  metadata?: unknown | null;
  modified_by?: string | DirectusUsers | null;
  modified_on: string;
  storage: string;
  tags?: unknown | null;
  title?: string | null;
  tus_data?: unknown | null;
  tus_id?: string | null;
  type?: string | null;
  uploaded_by?: string | DirectusUsers | null;
  uploaded_on?: string | null;
  width?: number | null;
};

export type DirectusFlows = {
  accountability?: string | null;
  color?: string | null;
  date_created?: string | null;
  description?: string | null;
  flow_manager_category?: string | null;
  flow_manager_last_run_at?: string | null;
  flow_manager_order?: number | null;
  flow_manager_run_counter?: number | null;
  icon?: string | null;
  id: string;
  name: string;
  operation?: string | DirectusOperations | null;
  operations: any[] | DirectusOperations[];
  options?: unknown | null;
  status: string;
  trigger?: string | null;
  user_created?: string | DirectusUsers | null;
};

export type DirectusFolders = {
  id: string;
  name: string;
  parent?: string | DirectusFolders | null;
};

export type DirectusMigrations = {
  name: string;
  timestamp?: string | null;
  version: string;
};

export type DirectusNotifications = {
  collection?: string | null;
  id: number;
  item?: string | null;
  message?: string | null;
  recipient: string | DirectusUsers;
  sender?: string | DirectusUsers | null;
  status?: string | null;
  subject: string;
  timestamp?: string | null;
};

export type DirectusOperations = {
  date_created?: string | null;
  flow: string | DirectusFlows;
  id: string;
  key: string;
  name?: string | null;
  options?: unknown | null;
  position_x: number;
  position_y: number;
  reject?: string | DirectusOperations | null;
  resolve?: string | DirectusOperations | null;
  type: string;
  user_created?: string | DirectusUsers | null;
};

export type DirectusPanels = {
  color?: string | null;
  dashboard: string | DirectusDashboards;
  date_created?: string | null;
  height: number;
  icon?: string | null;
  id: string;
  name?: string | null;
  note?: string | null;
  options?: unknown | null;
  position_x: number;
  position_y: number;
  show_header: boolean;
  type: string;
  user_created?: string | DirectusUsers | null;
  width: number;
};

export type DirectusPermissions = {
  action: string;
  collection: string;
  fields?: unknown | null;
  id: number;
  permissions?: unknown | null;
  policy: string | DirectusPolicies;
  presets?: unknown | null;
  validation?: unknown | null;
};

export type DirectusPolicies = {
  admin_access: boolean;
  app_access: boolean;
  description?: string | null;
  enforce_tfa: boolean;
  icon: string;
  id: string;
  ip_access?: unknown | null;
  name: string;
  permissions: any[] | DirectusPermissions[];
  roles: any[] | DirectusAccess[];
  users: any[] | DirectusAccess[];
};

export type DirectusPresets = {
  bookmark?: string | null;
  collection?: string | null;
  color?: string | null;
  filter?: unknown | null;
  icon?: string | null;
  id: number;
  layout?: string | null;
  layout_options?: unknown | null;
  layout_query?: unknown | null;
  refresh_interval?: number | null;
  role?: string | DirectusRoles | null;
  search?: string | null;
  user?: string | DirectusUsers | null;
};

export type DirectusRelations = {
  id: number;
  junction_field?: string | null;
  many_collection: string;
  many_field: string;
  one_allowed_collections?: unknown | null;
  one_collection?: string | null;
  one_collection_field?: string | null;
  one_deselect_action: string;
  one_field?: string | null;
  sort_field?: string | null;
};

export type DirectusRevisions = {
  activity: number | DirectusActivity;
  collection: string;
  data?: unknown | null;
  delta?: unknown | null;
  id: number;
  item: string;
  parent?: number | DirectusRevisions | null;
  version?: string | DirectusVersions | null;
};

export type DirectusRoles = {
  children: any[] | DirectusRoles[];
  description?: string | null;
  icon: string;
  id: string;
  name: string;
  parent?: string | DirectusRoles | null;
  policies: any[] | DirectusAccess[];
  users: any[] | DirectusUsers[];
  users_group: string;
};

export type DirectusSessions = {
  expires: string;
  ip?: string | null;
  next_token?: string | null;
  origin?: string | null;
  share?: string | DirectusShares | null;
  token: string;
  user?: string | DirectusUsers | null;
  user_agent?: string | null;
};

export type DirectusSettings = {
  auth_login_attempts?: number | null;
  auth_password_policy?: string | null;
  basemaps?: unknown | null;
  command_palette_settings?: unknown | null;
  custom_aspect_ratios?: unknown | null;
  custom_css?: string | null;
  default_appearance: string;
  default_language: string;
  default_theme_dark?: string | null;
  default_theme_light?: string | null;
  flow_manager_categories?: unknown | null;
  id: number;
  mapbox_key?: string | null;
  module_bar?: unknown | null;
  project_color: string;
  project_descriptor?: string | null;
  project_logo?: string | DirectusFiles | null;
  project_name: string;
  project_url?: string | null;
  public_background?: string | DirectusFiles | null;
  public_favicon?: string | DirectusFiles | null;
  public_foreground?: string | DirectusFiles | null;
  public_note?: string | null;
  public_registration: boolean;
  public_registration_email_filter?: unknown | null;
  public_registration_role?: string | DirectusRoles | null;
  public_registration_verify_email: boolean;
  report_bug_url?: string | null;
  report_error_url?: string | null;
  report_feature_url?: string | null;
  storage_asset_presets?: unknown | null;
  storage_asset_transform?: string | null;
  storage_default_folder?: string | DirectusFolders | null;
  theme_dark_overrides?: unknown | null;
  theme_light_overrides?: unknown | null;
  theming_group: string;
};

export type DirectusShares = {
  collection: string | DirectusCollections;
  date_created?: string | null;
  date_end?: string | null;
  date_start?: string | null;
  id: string;
  item: string;
  max_uses?: number | null;
  name?: string | null;
  password?: string | null;
  role?: string | DirectusRoles | null;
  times_used?: number | null;
  user_created?: string | DirectusUsers | null;
};

export type DirectusTranslations = {
  id: string;
  key: string;
  language: string;
  value: string;
};

export type DirectusUsers = {
  appearance?: string | null;
  auth_data?: unknown | null;
  avatar?: string | DirectusFiles | null;
  description?: string | null;
  email?: string | null;
  email_notifications?: boolean | null;
  external_identifier?: string | null;
  first_name?: string | null;
  id: string;
  language?: string | null;
  last_access?: string | null;
  last_name?: string | null;
  last_page?: string | null;
  location?: string | null;
  password?: string | null;
  policies: any[] | DirectusAccess[];
  provider: string;
  role?: string | DirectusRoles | null;
  status: string;
  tags?: unknown | null;
  tfa_secret?: string | null;
  theme_dark?: string | null;
  theme_dark_overrides?: unknown | null;
  theme_light?: string | null;
  theme_light_overrides?: unknown | null;
  title?: string | null;
  token?: string | null;
};

export type DirectusVersions = {
  collection: string | DirectusCollections;
  date_created?: string | null;
  date_updated?: string | null;
  delta?: unknown | null;
  hash?: string | null;
  id: string;
  item: string;
  key: string;
  name?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type DirectusWebhooks = {
  actions: unknown;
  collections: unknown;
  data: boolean;
  headers?: unknown | null;
  id: number;
  method: string;
  migrated_flow?: string | DirectusFlows | null;
  name: string;
  status: string;
  url: string;
  was_active_before_deprecation: boolean;
};

export type Exams = {
  date_created?: string | null;
  date_updated?: string | null;
  description?: string | null;
  duration: number;
  end_time: string;
  id: string;
  paper_prototype?: string | PaperPrototypes | null;
  sort?: number | null;
  start_time: string;
  status: string;
  students: any[] | ExamsStudents[];
  title: string;
  type?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type ExamsStudents = {
  exams_id?: string | Exams | null;
  id: number;
  students_id?: string | Students | null;
};

export type Institutions = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  name?: string | null;
  sort?: number | null;
  status: string;
  type?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type KnowledgePoints = {
  child_nodes: any[] | KnowledgePoints[];
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  parent_node?: string | KnowledgePoints | null;
  parent_nodes: any[] | KnowledgePointsKnowledgePoints[];
  sort?: number | null;
  status: string;
  subject?: string | Subjects | null;
  title?: string | null;
  type?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type KnowledgePointsKnowledgePoints = {
  id: number;
  knowledge_points_id?: string | KnowledgePoints | null;
  related_knowledge_points_id?: string | KnowledgePoints | null;
};

export type Map = {
  id: number;
};

export type MetaInfos = {
  id: number;
  name?: string | null;
  pages: any[] | Pages[];
  posts: any[] | Posts[];
};

export type Notices = {
  content?: string | null;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  sort?: number | null;
  status: string;
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type Pages = {
  id: number;
  meta?: number | MetaInfos | null;
  name?: string | null;
};

export type PaperGenStrategies = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  is_template?: boolean | null;
  name?: string | null;
  paper_gen_strategy_chapters: any[] | PaperGenStrategyChapters[];
  sort?: number | null;
  status: string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type PaperGenStrategyChapters = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  paper_gen_strategy?: string | PaperGenStrategies | null;
  paper_gen_strategy_items: any[] | PaperGenStrategyItems[];
  question_point_assign_strategies: any[] | QuestionPointAssignStrategies[];
  sort?: number | null;
  status: string;
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type PaperGenStrategyItems = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  knowledge_point?: string | KnowledgePoints | null;
  paper_gen_strategy_chapter?: string | PaperGenStrategyChapters | null;
  question_num?: number | null;
  question_type?: string | null;
  sort?: number | null;
  status: string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type PaperPrototypeChapters = {
  date_created?: string | null;
  date_updated?: string | null;
  description?: string | null;
  id: string;
  layout_mode?: string | null;
  paper_prototype?: string | PaperPrototypes | null;
  point_values: string;
  q_mc_binary_point_value?: number | null;
  q_mc_flexible_incomplete_point_value?: number | null;
  q_mc_flexible_point_value?: number | null;
  q_mc_multi_incomplete_point_value?: number | null;
  q_mc_multi_point_value?: number | null;
  q_mc_single_point_value?: number | null;
  question_groups: any[] | PaperPrototypeChaptersQuestionGroups[];
  question_point_assign_strategies: any[] | QuestionPointAssignStrategies[];
  questions: any[] | PaperPrototypeChaptersQuestions[];
  sort?: number | null;
  sort_in_paper?: number | null;
  statistic: string;
  status: string;
  title?: string | null;
  total_point_value?: number | null;
  total_question_count?: number | null;
  "triggers-pqfgnz": string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type PaperPrototypeChaptersQuestionGroups = {
  id: number;
  paper_prototype_chapters_id?: string | PaperPrototypeChapters | null;
  question_groups_id?: string | QuestionGroups | null;
};

export type PaperPrototypeChaptersQuestions = {
  id: number;
  paper_prototype_chapters_id?: string | PaperPrototypeChapters | null;
  questions_id?: string | Questions | null;
  sort_in_chapter?: number | null;
};

export type PaperPrototypes = {
  course?: string | Courses | null;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  paper_prototype_chapters: any[] | PaperPrototypeChapters[];
  sort?: number | null;
  status: string;
  title?: string | null;
  total_point_value?: number | null;
  total_question_count?: number | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type Posts = {
  id: number;
  meta?: number | MetaInfos | null;
  name?: string | null;
};

export type QFillInBlankAnswers = {
  blank_position?: number | null;
  correct_answer?: string | null;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  question_id?: string | QuestionsFillInBlank | null;
  score?: number | null;
  status: string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QMc = {
  correct_option?: number | null;
  correct_options?: unknown | null;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  mcq_type?: string | null;
  option_a: string;
  option_b?: string | null;
  option_c?: string | null;
  option_d?: string | null;
  option_e?: string | null;
  option_f?: string | null;
  option_number?: number | null;
  options: string;
  sort?: number | null;
  status: string;
  stem: string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QMcBinary = {
  analysis?: string | null;
  correct_option?: string | null;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  option_a?: string | null;
  option_b?: string | null;
  options: string;
  sort?: number | null;
  status: string;
  stem?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QMcFlexible = {
  analysis?: string | null;
  correct_options?: unknown | null;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  option_a?: string | null;
  option_b?: string | null;
  option_c?: string | null;
  option_d?: string | null;
  option_e?: string | null;
  option_f?: string | null;
  option_number?: number | null;
  options: string;
  sort?: number | null;
  status: string;
  stem?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QMcMulti = {
  analysis?: string | null;
  correct_options?: unknown | null;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  option_a?: string | null;
  option_b?: string | null;
  option_c?: string | null;
  option_d?: string | null;
  option_e?: string | null;
  option_f?: string | null;
  option_number?: number | null;
  options: string;
  sort?: number | null;
  status: string;
  stem?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QMcSingle = {
  analysis?: string | null;
  correct_option?: string | null;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  option_a?: string | null;
  option_b?: string | null;
  option_c?: string | null;
  option_d?: string | null;
  option_e?: string | null;
  option_f?: string | null;
  option_number?: number | null;
  options: string;
  sort?: number | null;
  status: string;
  stem?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QSpreadsheetScoringGroups = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  scoring_items: any[] | QSpreadsheetScoringItems[];
  status: string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QSpreadsheetScoringItems = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  item_type?: string | null;
  scoring_group?: string | QSpreadsheetScoringGroups | null;
  sort?: number | null;
  status: string;
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QuestionGroups = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  questions: any[] | Questions[];
  shared_stem?: string | null;
  sort?: number | null;
  status: string;
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QuestionPointAssignStrategies = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  paper_gen_strategy_chapter?: string | PaperGenStrategyChapters | null;
  paper_prototype_chapter?: string | PaperPrototypeChapters | null;
  question_difficulty?: number | null;
  question_point_value?: number | null;
  question_type?: string | null;
  sort?: number | null;
  status: string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type Questions = {
  analysis?: string | null;
  answer?: string | null;
  date_created?: string | null;
  date_updated?: string | null;
  difficulty?: number | null;
  id: string;
  knowledge_points: any[] | QuestionsKnowledgePoints[];
  q_mc?: string | QMc | null;
  q_mc_binary?: string | QMcBinary | null;
  q_mc_flexible?: string | QMcFlexible | null;
  q_mc_multi?: string | QMcMulti | null;
  q_mc_single?: string | QMcSingle | null;
  question_group?: string | QuestionGroups | null;
  review_status?: string | null;
  score?: number | null;
  sections: any[] | QuestionsSections[];
  sort?: number | null;
  sort_in_group?: number | null;
  status: string;
  stem?: string | null;
  title?: string | null;
  type: string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QuestionsFillInBlank = {
  answers: any[] | QFillInBlankAnswers[];
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  question_text?: string | null;
  status: string;
  stem?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QuestionsFillInBlank1 = {
  correct_answer?: string | null;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  question_text?: string | null;
  status: string;
  stem?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type QuestionsKnowledgePoints = {
  id: number;
  knowledge_points_id?: string | KnowledgePoints | null;
  questions_id?: string | Questions | null;
};

export type QuestionsSections = {
  id: number;
  questions_id?: string | Questions | null;
  sections_id?: string | Sections | null;
};

export type QuestionsSpreadsheet = {
  date_created?: string | null;
  date_updated?: string | null;
  handbook?: string | null;
  id: string;
  status: string;
  task?: string | null;
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type Sections = {
  child_nodes: any[] | Sections[];
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  knowledge_points: any[] | SectionsKnowledgePoints[];
  level?: number | null;
  parent_node?: string | Sections | null;
  section_number?: string | null;
  sort?: number | null;
  status: string;
  textbooks?: string | Textbooks | null;
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type SectionsKnowledgePoints = {
  id: number;
  knowledge_points_id?: string | KnowledgePoints | null;
  sections_id?: string | Sections | null;
};

export type Students = {
  class?: string | Classes | null;
  date_created?: string | null;
  date_updated?: string | null;
  directus_user?: string | DirectusUsers | null;
  email: string;
  id: string;
  name?: string | null;
  number?: number | null;
  password?: string | null;
  status: string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type Subjects = {
  date_created?: string | null;
  date_updated?: string | null;
  description?: string | null;
  id: string;
  sort?: number | null;
  status: string;
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type SubmittedExams = {
  actual_end_time?: string | null;
  actual_start_time?: string | null;
  date_created?: string | null;
  date_updated?: string | null;
  exam: string | Exams;
  expected_end_time?: string | null;
  extra_time?: number | null;
  id: string;
  login_status?: string | null;
  participation_status?: string | null;
  sort?: number | null;
  status: string;
  student?: string | Students | null;
  submit_status?: string | null;
  submitted_papers: any[] | SubmittedPapers[];
  "triggers-9cuptr": string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type SubmittedPaperChapters = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  point_value?: number | null;
  score?: string | null;
  sort?: number | null;
  sort_in_paper?: number | null;
  source_paper_gen_strategy_chapter?: string | PaperGenStrategyChapters | null;
  source_paper_prototype_chapter?: string | PaperPrototypeChapters | null;
  status: string;
  submitted_paper: string | SubmittedPapers;
  submitted_questions: any[] | SubmittedQuestions[];
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type SubmittedPapers = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  point_value?: number | null;
  score?: number | null;
  sort?: number | null;
  source_paper_gen_strategies?: string | PaperGenStrategies | null;
  source_paper_prototype?: string | PaperPrototypes | null;
  source_type?: string | null;
  status: string;
  submitted_exam: string | SubmittedExams;
  submitted_paper_chapters: any[] | SubmittedPaperChapters[];
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type SubmittedQuestions = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  incomplete_point_value?: number | null;
  option_number?: number | null;
  point_value?: number | null;
  question: string | Questions;
  question_type?: string | null;
  score?: number | null;
  sort?: number | null;
  sort_in_chapter?: number | null;
  status: string;
  student?: string | Students | null;
  submitted_ans_q_mc_binary?: string | null;
  submitted_ans_q_mc_flexible?: unknown | null;
  submitted_ans_q_mc_multi?: unknown | null;
  submitted_ans_q_mc_single?: string | null;
  submitted_paper_chapter: string | SubmittedPaperChapters;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type Teachers = {
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  name?: string | null;
  sort?: number | null;
  status: string;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
};

export type Test = {
  id: number;
  name?: string | null;
};

export type Textbooks = {
  author?: string | null;
  course?: string | Courses | null;
  date_created?: string | null;
  date_updated?: string | null;
  id: string;
  sort?: number | null;
  status: string;
  title?: string | null;
  user_created?: string | DirectusUsers | null;
  user_updated?: string | DirectusUsers | null;
  version?: string | null;
};

export type CustomDirectusTypes = {
  articles: Articles[];
  articles_knowledge_points: ArticlesKnowledgePoints[];
  articles_sections: ArticlesSections[];
  classes: Classes[];
  courses: Courses[];
  courses_directus_users: CoursesDirectusUsers[];
  directus_access: DirectusAccess[];
  directus_activity: DirectusActivity[];
  directus_collections: DirectusCollections[];
  directus_comments: DirectusComments[];
  directus_dashboards: DirectusDashboards[];
  directus_extensions: DirectusExtensions[];
  directus_fields: DirectusFields[];
  directus_files: DirectusFiles[];
  directus_flows: DirectusFlows[];
  directus_folders: DirectusFolders[];
  directus_migrations: DirectusMigrations[];
  directus_notifications: DirectusNotifications[];
  directus_operations: DirectusOperations[];
  directus_panels: DirectusPanels[];
  directus_permissions: DirectusPermissions[];
  directus_policies: DirectusPolicies[];
  directus_presets: DirectusPresets[];
  directus_relations: DirectusRelations[];
  directus_revisions: DirectusRevisions[];
  directus_roles: DirectusRoles[];
  directus_sessions: DirectusSessions[];
  directus_settings: DirectusSettings;
  directus_shares: DirectusShares[];
  directus_translations: DirectusTranslations[];
  directus_users: DirectusUsers[];
  directus_versions: DirectusVersions[];
  directus_webhooks: DirectusWebhooks[];
  exams: Exams[];
  exams_students: ExamsStudents[];
  institutions: Institutions[];
  knowledge_points: KnowledgePoints[];
  knowledge_points_knowledge_points: KnowledgePointsKnowledgePoints[];
  map: Map[];
  meta_infos: MetaInfos[];
  notices: Notices[];
  pages: Pages[];
  paper_gen_strategies: PaperGenStrategies[];
  paper_gen_strategy_chapters: PaperGenStrategyChapters[];
  paper_gen_strategy_items: PaperGenStrategyItems[];
  paper_prototype_chapters: PaperPrototypeChapters[];
  paper_prototype_chapters_question_groups: PaperPrototypeChaptersQuestionGroups[];
  paper_prototype_chapters_questions: PaperPrototypeChaptersQuestions[];
  paper_prototypes: PaperPrototypes[];
  posts: Posts[];
  q_fill_in_blank_answers: QFillInBlankAnswers[];
  q_mc: QMc[];
  q_mc_binary: QMcBinary[];
  q_mc_flexible: QMcFlexible[];
  q_mc_multi: QMcMulti[];
  q_mc_single: QMcSingle[];
  q_spreadsheet_scoring_groups: QSpreadsheetScoringGroups[];
  q_spreadsheet_scoring_items: QSpreadsheetScoringItems[];
  question_groups: QuestionGroups[];
  question_point_assign_strategies: QuestionPointAssignStrategies[];
  questions: Questions[];
  questions_fill_in_blank: QuestionsFillInBlank[];
  questions_fill_in_blank_1: QuestionsFillInBlank1[];
  questions_knowledge_points: QuestionsKnowledgePoints[];
  questions_sections: QuestionsSections[];
  questions_spreadsheet: QuestionsSpreadsheet[];
  sections: Sections[];
  sections_knowledge_points: SectionsKnowledgePoints[];
  students: Students[];
  subjects: Subjects[];
  submitted_exams: SubmittedExams[];
  submitted_paper_chapters: SubmittedPaperChapters[];
  submitted_papers: SubmittedPapers[];
  submitted_questions: SubmittedQuestions[];
  teachers: Teachers[];
  test: Test[];
  textbooks: Textbooks[];
};
