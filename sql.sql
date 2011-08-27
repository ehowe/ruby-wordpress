--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('categories_id_seq', 1, false);


--
-- Name: categories_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('categories_posts_id_seq', 1, false);


--
-- Name: commentmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('commentmeta_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('comments_id_seq', 1, true);


--
-- Name: links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('links_id_seq', 7, true);


--
-- Name: options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('options_id_seq', 110, true);


--
-- Name: postmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('postmeta_id_seq', 1, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('posts_id_seq', 1, false);


--
-- Name: usermeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('usermeta_id_seq', 15, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: development
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: development
--



--
-- Data for Name: categories_posts; Type: TABLE DATA; Schema: public; Owner: development
--



--
-- Data for Name: commentmeta; Type: TABLE DATA; Schema: public; Owner: development
--



--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: development
--

INSERT INTO comments (id, comment_id, comment_post_id, comment_author, comment_author_email, comment_author_url, comment_author_ip, comment_date, comment_date_gmt, comment_content, comment_karma, comment_approved, comment_agent, comment_type, comment_parent, user_id, created_at, updated_at) VALUES (1, 1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2011-08-22 21:13:40', '2011-08-22 21:13:40', 'Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0, NULL, NULL);


--
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: development
--

INSERT INTO links (id, link_id, link_url, link_name, link_image, link_target, link_description, link_visible, link_owner, link_rating, link_updated, link_rel, link_notes, link_rss, created_at, updated_at) VALUES (1, 1, 'http://codex.wordpress.org/', 'Documentation', '', '', '', 'Y', 1, 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL);
INSERT INTO links (id, link_id, link_url, link_name, link_image, link_target, link_description, link_visible, link_owner, link_rating, link_updated, link_rel, link_notes, link_rss, created_at, updated_at) VALUES (2, 2, 'http://wordpress.org/news/', 'WordPress Blog', '', '', '', 'Y', 1, 0, '1970-01-01 00:00:00', '', '', 'http://wordpress.org/news/feed/', NULL, NULL);
INSERT INTO links (id, link_id, link_url, link_name, link_image, link_target, link_description, link_visible, link_owner, link_rating, link_updated, link_rel, link_notes, link_rss, created_at, updated_at) VALUES (3, 3, 'http://wordpress.org/extend/ideas/', 'Suggest Ideas', '', '', '', 'Y', 1, 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL);
INSERT INTO links (id, link_id, link_url, link_name, link_image, link_target, link_description, link_visible, link_owner, link_rating, link_updated, link_rel, link_notes, link_rss, created_at, updated_at) VALUES (4, 4, 'http://wordpress.org/support/', 'Support Forum', '', '', '', 'Y', 1, 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL);
INSERT INTO links (id, link_id, link_url, link_name, link_image, link_target, link_description, link_visible, link_owner, link_rating, link_updated, link_rel, link_notes, link_rss, created_at, updated_at) VALUES (5, 5, 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', 1, 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL);
INSERT INTO links (id, link_id, link_url, link_name, link_image, link_target, link_description, link_visible, link_owner, link_rating, link_updated, link_rel, link_notes, link_rss, created_at, updated_at) VALUES (6, 6, 'http://wordpress.org/extend/themes/', 'Themes', '', '', '', 'Y', 1, 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL);
INSERT INTO links (id, link_id, link_url, link_name, link_image, link_target, link_description, link_visible, link_owner, link_rating, link_updated, link_rel, link_notes, link_rss, created_at, updated_at) VALUES (7, 7, 'http://planet.wordpress.org/', 'WordPress Planet', '', '', '', 'Y', 1, 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL);


--
-- Data for Name: options; Type: TABLE DATA; Schema: public; Owner: development
--

INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (4, 4, 0, 'users_can_register', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (5, 5, 0, 'admin_email', 'eugene@localhost.localdomain', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (6, 6, 0, 'start_of_week', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (7, 7, 0, 'use_balanceTags', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (8, 8, 0, 'use_smilies', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (9, 9, 0, 'require_name_email', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (10, 10, 0, 'comments_notify', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (11, 11, 0, 'posts_per_rss', '10', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (12, 12, 0, 'rss_use_excerpt', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (13, 13, 0, 'mailserver_url', 'mail.example.com', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (14, 14, 0, 'mailserver_login', 'login@example.com', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (15, 15, 0, 'mailserver_pass', 'password', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (16, 16, 0, 'mailserver_port', '110', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (17, 17, 0, 'default_category', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (18, 18, 0, 'default_comment_status', 'open', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (19, 19, 0, 'default_ping_status', 'open', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (20, 20, 0, 'default_pingback_flag', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (21, 21, 0, 'default_post_edit_rows', '20', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (22, 22, 0, 'posts_per_page', '10', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (23, 23, 0, 'date_format', 'F j, Y', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (24, 24, 0, 'time_format', 'g:i a', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (25, 25, 0, 'links_updated_date_format', 'F j, Y g:i a', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (26, 26, 0, 'links_recently_updated_prepend', '<em>', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (27, 27, 0, 'links_recently_updated_append', '</em>', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (28, 28, 0, 'links_recently_updated_time', '120', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (29, 29, 0, 'comment_moderation', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (30, 30, 0, 'moderation_notify', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (31, 31, 0, 'permalink_structure', '', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (32, 32, 0, 'gzipcompression', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (33, 33, 0, 'hack_file', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (34, 34, 0, 'blog_charset', 'UTF-8', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (35, 35, 0, 'moderation_keys', '', 'no', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (36, 36, 0, 'active_plugins', 'a:0:{}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (38, 38, 0, 'category_base', '', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (39, 39, 0, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (40, 40, 0, 'advanced_edit', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (41, 41, 0, 'comment_max_links', '2', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (42, 42, 0, 'gmt_offset', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (43, 43, 0, 'default_email_category', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (44, 44, 0, 'recently_edited', '', 'no', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (45, 45, 0, 'template', 'twentyeleven', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (46, 46, 0, 'stylesheet', 'twentyeleven', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (47, 47, 0, 'comment_whitelist', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (48, 48, 0, 'blacklist_keys', '', 'no', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (49, 49, 0, 'comment_registration', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (50, 50, 0, 'rss_language', 'en', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (51, 51, 0, 'html_type', 'text/html', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (52, 52, 0, 'use_trackback', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (53, 53, 0, 'default_role', 'subscriber', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (54, 54, 0, 'db_version', '18226', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (55, 55, 0, 'uploads_use_yearmonth_folders', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (56, 56, 0, 'upload_path', '', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (57, 57, 0, 'blog_public', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (58, 58, 0, 'default_link_category', '2', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (59, 59, 0, 'show_on_front', 'posts', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (60, 60, 0, 'tag_base', '', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (61, 61, 0, 'show_avatars', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (62, 62, 0, 'avatar_rating', 'G', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (63, 63, 0, 'upload_url_path', '', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (64, 64, 0, 'thumbnail_size_w', '150', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (65, 65, 0, 'thumbnail_size_h', '150', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (66, 66, 0, 'thumbnail_crop', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (67, 67, 0, 'medium_size_w', '300', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (68, 68, 0, 'medium_size_h', '300', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (69, 69, 0, 'avatar_default', 'mystery', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (70, 70, 0, 'enable_app', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (71, 71, 0, 'enable_xmlrpc', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (72, 72, 0, 'large_size_w', '1024', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (73, 73, 0, 'large_size_h', '1024', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (74, 74, 0, 'image_default_link_type', 'file', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (75, 75, 0, 'image_default_size', '', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (76, 76, 0, 'image_default_align', '', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (77, 77, 0, 'close_comments_for_old_posts', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (78, 78, 0, 'close_comments_days_old', '14', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (79, 79, 0, 'thread_comments', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (80, 80, 0, 'thread_comments_depth', '5', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (81, 81, 0, 'page_comments', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (82, 82, 0, 'comments_per_page', '50', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (83, 83, 0, 'default_comments_page', 'newest', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (84, 84, 0, 'comment_order', 'asc', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (85, 85, 0, 'sticky_posts', 'a:0:{}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (86, 86, 0, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (87, 87, 0, 'widget_text', 'a:0:{}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (88, 88, 0, 'widget_rss', 'a:0:{}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (89, 89, 0, 'timezone_string', '', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (90, 90, 0, 'embed_autourls', '1', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (91, 91, 0, 'embed_size_w', '', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (92, 92, 0, 'embed_size_h', '600', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (93, 93, 0, 'page_for_posts', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (94, 94, 0, 'page_on_front', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (95, 95, 0, 'default_post_format', '0', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (96, 96, 0, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (97, 97, 0, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (98, 98, 0, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (99, 99, 0, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (100, 100, 0, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (101, 101, 0, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (2, 2, 0, 'blogname', 'RubyWordpress', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (37, 37, 0, 'home', 'http://localhost/', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (102, 102, 0, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:21:"secondary-widget-area";a:0:{}s:24:"first-footer-widget-area";a:0:{}s:25:"second-footer-widget-area";a:0:{}s:24:"third-footer-widget-area";a:0:{}s:25:"fourth-footer-widget-area";a:0:{}s:13:"array_version";i:3;}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (103, 103, 0, 'cron', 'a:2:{i:1314090824;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (104, 104, 0, '_transient_doing_cron', '1314047628', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (105, 105, 0, '_site_transient_timeout_theme_roots', '1314054828', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (106, 106, 0, '_site_transient_theme_roots', 'a:2:{s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (107, 107, 0, 'current_theme', 'Twenty Eleven', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (108, 108, 0, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"3.2.1";s:12:"last_checked";i:1314047628;}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (109, 109, 0, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1314047628;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"2.5.3";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:0:{}}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (110, 110, 0, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1314047628;s:7:"checked";a:2:{s:12:"twentyeleven";s:3:"1.2";s:9:"twentyten";s:3:"1.2";}s:8:"response";a:0:{}}', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (1, 1, 0, 'siteurl', 'http://localhost', 'yes', NULL, NULL);
INSERT INTO options (id, option_id, blog_id, option_name, option_value, autoload, created_at, updated_at) VALUES (3, 3, 0, 'blogdescription', 'Just another RubyWordPress site', 'yes', NULL, NULL);


--
-- Data for Name: postmeta; Type: TABLE DATA; Schema: public; Owner: development
--

INSERT INTO postmeta (id, meta_id, post_id, meta_key, meta_value, created_at, updated_at) VALUES (1, 1, 2, '_wp_page_template', 'default', NULL, NULL);


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: development
--

INSERT INTO posts (id, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count, created_at, updated_at) VALUES (1, 1, '2011-08-22 21:13:40', '2011-08-22 21:13:40', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2011-08-22 21:13:40', '2011-08-22 21:13:40', '', 0, 'http://localhost:11000/?p=1', 0, 'post', '', 1, NULL, NULL);
INSERT INTO posts (id, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count, created_at, updated_at) VALUES (2, 1, '2011-08-22 21:13:40', '2011-08-22 21:13:40', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:

<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>

...or something like this:

<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickies to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>

As a new WordPress user, you should go to <a href="http://localhost:11000/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2011-08-22 21:13:40', '2011-08-22 21:13:40', '', 0, 'http://localhost:11000/?page_id=2', 0, 'page', '', 0, NULL, NULL);


--
-- Data for Name: usermeta; Type: TABLE DATA; Schema: public; Owner: development
--

INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (1, 1, 1, 'first_name', '', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (2, 2, 1, 'last_name', '', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (3, 3, 1, 'nickname', 'admin', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (4, 4, 1, 'description', '', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (5, 5, 1, 'rich_editing', 'true', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (6, 6, 1, 'comment_shortcuts', 'false', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (7, 7, 1, 'admin_color', 'fresh', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (8, 8, 1, 'use_ssl', '0', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (9, 9, 1, 'show_admin_bar_front', 'true', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (10, 10, 1, 'show_admin_bar_admin', 'false', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (11, 11, 1, 'aim', '', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (12, 12, 1, 'yim', '', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (13, 13, 1, 'jabber', '', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (14, 14, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}', NULL, NULL);
INSERT INTO usermeta (id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at) VALUES (15, 15, 1, 'wp_user_level', '10', NULL, NULL);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: development
--



--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: development
--

INSERT INTO schema_migrations (version) VALUES ('20110819152456');
INSERT INTO schema_migrations (version) VALUES ('20110821174040');
INSERT INTO schema_migrations (version) VALUES ('20110821211704');
INSERT INTO schema_migrations (version) VALUES ('20110821213554');
INSERT INTO schema_migrations (version) VALUES ('20110821213921');
INSERT INTO schema_migrations (version) VALUES ('20110821214736');
INSERT INTO schema_migrations (version) VALUES ('20110821215521');
INSERT INTO schema_migrations (version) VALUES ('20110821224536');
INSERT INTO schema_migrations (version) VALUES ('20110821225412');
INSERT INTO schema_migrations (version) VALUES ('20110821225836');
INSERT INTO schema_migrations (version) VALUES ('20110821230241');
INSERT INTO schema_migrations (version) VALUES ('20110824223008');


--
-- PostgreSQL database dump complete
--

