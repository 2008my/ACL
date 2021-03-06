TRUNCATE `permissions`;
TRUNCATE `roles`;
TRUNCATE `role_perms`;
TRUNCATE `users`;
TRUNCATE `user_perms`;
TRUNCATE `user_roles`;
INSERT INTO `permissions` (`ID`, `permKey`, `permName`) VALUES (1, 'access_site', 'Access Site'), (2, 'access_admin', 'Access Admin System'), (3, 'publish_articles', 'Publish Articles'), (4, 'publish_events', 'Publish Events'), (5, 'install_modules', 'Install Modules'), (6, 'post_comments', 'Post Comments'), (7, 'access_premium_content', 'Access Premium Content'), (8, 'limited_admin', 'Limited Admin');
INSERT INTO `roles` (`ID`, `roleName`) VALUES (1, 'Administrators'), (2, 'All Users'), (3, 'Authors'), (4, 'Premium Members');
INSERT INTO `role_perms` (`ID`, `roleID`, `permID`, `value`, `addDate`) VALUES (16, 1, 2, 1, '2009-03-02 17:13:21'), (17, 1, 7, 1, '2009-03-02 17:13:21'), (18, 1, 1, 1, '2009-03-02 17:13:21'), (19, 1, 5, 1, '2009-03-02 17:13:21'), (20, 1, 8, 1, '2009-03-02 17:13:21'), (21, 1, 6, 1, '2009-03-02 17:13:21'), (22, 1, 3, 1, '2009-03-02 17:13:21'), (23, 1, 4, 1, '2009-03-02 17:13:21'), (24, 2, 1, 1, '2009-03-02 17:13:31'), (25, 3, 7, 1, '2009-03-02 17:13:38'), (26, 3, 8, 1, '2009-03-02 17:13:38'), (27, 3, 6, 1, '2009-03-02 17:13:38'), (28, 3, 3, 1, '2009-03-02 17:13:38'), (29, 3, 4, 1, '2009-03-02 17:13:38'), (30, 4, 7, 1, '2009-03-02 17:13:42'), (31, 4, 6, 1, '2009-03-02 17:13:42');
INSERT INTO `users` (`ID`, `username`) VALUES (1, 'Admin Steve'), (2, 'Author Aaron'), (3, 'Joe User'), (4, 'Penelope Premium');
INSERT INTO `user_roles` (`userID`, `roleID`, `addDate`) VALUES (1, 1, '2009-03-02 17:14:45'), (1, 2, '2009-03-02 17:14:45'), (2, 2, '2009-03-02 17:27:23'), (2, 3, '2009-03-02 17:27:23'), (3, 2, '2009-03-02 17:27:05'), (4, 2, '2009-03-02 17:27:32'), (4, 4, '2009-03-02 17:27:32');