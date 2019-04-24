/*
 Navicat Premium Data Transfer

 Source Server         : dev
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : subscription

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 25/04/2019 01:35:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_activities
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activities`;
CREATE TABLE `tbl_activities`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NULL DEFAULT NULL,
  `updatedAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_activities
-- ----------------------------
INSERT INTO `tbl_activities` VALUES (1, 'Academic Competitive Teams ', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (2, 'Art Opportunities or Clubs', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (3, 'Community Involvement', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (4, 'Cultural and Language Clubs', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (5, 'Government Council or Board', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (6, 'Hobby/Special Interest Groups', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (7, 'Leadership Development', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (8, 'Media, newspaper, radio', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (9, 'Military ', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (10, 'Music or Performance Art', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (11, 'Outdoor Expeirences Clubs', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (12, 'Religious Groups', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (13, 'Roleplaying/Fantasy Clubs', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (14, 'Social Activism Groups', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (15, 'Speech and Political Interest', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (16, 'Sports and Recreation', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (17, 'Technology Enthusiats', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (18, 'Volunteer Opportunities', NULL, NULL);
INSERT INTO `tbl_activities` VALUES (19, 'Other', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_challenges
-- ----------------------------
DROP TABLE IF EXISTS `tbl_challenges`;
CREATE TABLE `tbl_challenges`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createdAt` datetime(0) NULL DEFAULT NULL,
  `updatedAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_challenges
-- ----------------------------
INSERT INTO `tbl_challenges` VALUES (1, 'Adjustment and Coping', NULL, NULL);
INSERT INTO `tbl_challenges` VALUES (2, 'Anxiety and Panic Attacks', NULL, NULL);
INSERT INTO `tbl_challenges` VALUES (3, 'Attention Deficit Problems ', NULL, NULL);
INSERT INTO `tbl_challenges` VALUES (4, 'Depression and Mood', NULL, NULL);
INSERT INTO `tbl_challenges` VALUES (5, 'Eating Problems / Disorders', NULL, NULL);
INSERT INTO `tbl_challenges` VALUES (6, 'Identity and Lifestyle', NULL, NULL);
INSERT INTO `tbl_challenges` VALUES (7, 'Insomnia / Problems Sleeping', NULL, NULL);
INSERT INTO `tbl_challenges` VALUES (8, 'Trauma Reactions (including PTSD)', NULL, NULL);
INSERT INTO `tbl_challenges` VALUES (9, 'Other', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_countries
-- ----------------------------
DROP TABLE IF EXISTS `tbl_countries`;
CREATE TABLE `tbl_countries`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iso` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NULL DEFAULT NULL,
  `updatedAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 249 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_countries
-- ----------------------------
INSERT INTO `tbl_countries` VALUES (1, 'Afghanistan', 'AF', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (2, 'Albania', 'AL', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (3, 'Algeria', 'DZ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (4, 'American Samoa', 'AS', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (5, 'Andorra', 'AD', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (6, 'Angola', 'AO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (7, 'Anguilla', 'AI', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (8, 'Antarctica', 'AQ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (9, 'Antigua and Barbuda', 'AG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (10, 'Argentina', 'AR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (11, 'Armenia', 'AM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (12, 'Aruba', 'AW', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (13, 'Australia', 'AU', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (14, 'Austria', 'AT', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (15, 'Azerbaijan', 'AZ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (16, 'Bahamas', 'BS', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (17, 'Bahrain', 'BH', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (18, 'Bangladesh', 'BD', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (19, 'Barbados', 'BB', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (20, 'Belarus', 'BY', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (21, 'Belgium', 'BE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (22, 'Belize', 'BZ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (23, 'Benin', 'BJ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (24, 'Bermuda', 'BM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (25, 'Bhutan', 'BT', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (26, 'Bolivia', 'BO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (27, 'Bonaire', 'BQ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (28, 'Bosnia and Herzegovina', 'BA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (29, 'Botswana', 'BW', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (30, 'Bouvet Island', 'BV', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (31, 'Brazil', 'BR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (32, 'British Indian Ocean Territory', 'IO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (33, 'Brunei Darussalam', 'BN', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (34, 'Bulgaria', 'BG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (35, 'Burkina Faso', 'BF', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (36, 'Burundi', 'BI', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (37, 'Cambodia', 'KH', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (38, 'Cameroon', 'CM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (39, 'Canada', 'CA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (40, 'Cape Verde', 'CV', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (41, 'Cayman Islands', 'KY', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (42, 'Central African Republic', 'CF', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (43, 'Chad', 'TD', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (44, 'Chile', 'CL', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (45, 'China', 'CN', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (46, 'Christmas Island', 'CX', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (47, 'Cocos (Keeling) Islands', 'CC', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (48, 'Colombia', 'CO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (49, 'Comoros', 'KM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (50, 'Congo', 'CG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (51, 'Democratic Republic of the Congo', 'CD', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (52, 'Cook Islands', 'CK', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (53, 'Costa Rica', 'CR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (54, 'Croatia', 'HR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (55, 'Cuba', 'CU', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (56, 'Curacao', 'CW', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (57, 'Cyprus', 'CY', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (58, 'Czech Republic', 'CZ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (59, 'Cote d\'Ivoire', 'CI', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (60, 'Denmark', 'DK', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (61, 'Djibouti', 'DJ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (62, 'Dominica', 'DM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (63, 'Dominican Republic', 'DO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (64, 'Ecuador', 'EC', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (65, 'Egypt', 'EG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (66, 'El Salvador', 'SV', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (67, 'Equatorial Guinea', 'GQ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (68, 'Eritrea', 'ER', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (69, 'Estonia', 'EE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (70, 'Ethiopia', 'ET', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (71, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (72, 'Faroe Islands', 'FO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (73, 'Fiji', 'FJ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (74, 'Finland', 'FI', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (75, 'France', 'FR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (76, 'French Guiana', 'GF', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (77, 'French Polynesia', 'PF', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (78, 'French Southern Territories', 'TF', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (79, 'Gabon', 'GA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (80, 'Gambia', 'GM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (81, 'Georgia', 'GE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (82, 'Germany', 'DE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (83, 'Ghana', 'GH', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (84, 'Gibraltar', 'GI', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (85, 'Greece', 'GR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (86, 'Greenland', 'GL', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (87, 'Grenada', 'GD', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (88, 'Guadeloupe', 'GP', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (89, 'Guam', 'GU', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (90, 'Guatemala', 'GT', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (91, 'Guernsey', 'GG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (92, 'Guinea', 'GN', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (93, 'Guinea-Bissau', 'GW', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (94, 'Guyana', 'GY', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (95, 'Haiti', 'HT', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (96, 'Heard Island and McDonald Islands', 'HM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (97, 'Holy See (Vatican City State)', 'VA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (98, 'Honduras', 'HN', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (99, 'Hong Kong', 'HK', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (100, 'Hungary', 'HU', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (101, 'Iceland', 'IS', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (102, 'India', 'IN', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (103, 'Indonesia', 'ID', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (104, 'Iran, Islamic Republic of', 'IR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (105, 'Iraq', 'IQ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (106, 'Ireland', 'IE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (107, 'Isle of Man', 'IM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (108, 'Israel', 'IL', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (109, 'Italy', 'IT', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (110, 'Jamaica', 'JM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (111, 'Japan', 'JP', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (112, 'Jersey', 'JE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (113, 'Jordan', 'JO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (114, 'Kazakhstan', 'KZ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (115, 'Kenya', 'KE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (116, 'Kiribati', 'KI', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (117, 'Korea, Democratic People\'s Republic of', 'KP', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (118, 'Korea, Republic of', 'KR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (119, 'Kuwait', 'KW', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (120, 'Kyrgyzstan', 'KG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (121, 'Lao People\'s Democratic Republic', 'LA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (122, 'Latvia', 'LV', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (123, 'Lebanon', 'LB', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (124, 'Lesotho', 'LS', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (125, 'Liberia', 'LR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (126, 'Libya', 'LY', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (127, 'Liechtenstein', 'LI', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (128, 'Lithuania', 'LT', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (129, 'Luxembourg', 'LU', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (130, 'Macao', 'MO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (131, 'Macedonia, the Former Yugoslav Republic of', 'MK', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (132, 'Madagascar', 'MG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (133, 'Malawi', 'MW', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (134, 'Malaysia', 'MY', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (135, 'Maldives', 'MV', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (136, 'Mali', 'ML', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (137, 'Malta', 'MT', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (138, 'Marshall Islands', 'MH', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (139, 'Martinique', 'MQ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (140, 'Mauritania', 'MR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (141, 'Mauritius', 'MU', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (142, 'Mayotte', 'YT', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (143, 'Mexico', 'MX', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (144, 'Micronesia, Federated States of', 'FM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (145, 'Moldova, Republic of', 'MD', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (146, 'Monaco', 'MC', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (147, 'Mongolia', 'MN', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (148, 'Montenegro', 'ME', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (149, 'Montserrat', 'MS', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (150, 'Morocco', 'MA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (151, 'Mozambique', 'MZ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (152, 'Myanmar', 'MM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (153, 'Namibia', 'NA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (154, 'Nauru', 'NR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (155, 'Nepal', 'NP', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (156, 'Netherlands', 'NL', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (157, 'New Caledonia', 'NC', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (158, 'New Zealand', 'NZ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (159, 'Nicaragua', 'NI', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (160, 'Niger', 'NE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (161, 'Nigeria', 'NG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (162, 'Niue', 'NU', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (163, 'Norfolk Island', 'NF', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (164, 'Northern Mariana Islands', 'MP', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (165, 'Norway', 'NO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (166, 'Oman', 'OM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (167, 'Pakistan', 'PK', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (168, 'Palau', 'PW', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (169, 'Palestine, State of', 'PS', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (170, 'Panama', 'PA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (171, 'Papua New Guinea', 'PG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (172, 'Paraguay', 'PY', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (173, 'Peru', 'PE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (174, 'Philippines', 'PH', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (175, 'Pitcairn', 'PN', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (176, 'Poland', 'PL', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (177, 'Portugal', 'PT', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (178, 'Puerto Rico', 'PR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (179, 'Qatar', 'QA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (180, 'Romania', 'RO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (181, 'Russian Federation', 'RU', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (182, 'Rwanda', 'RW', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (183, 'Reunion', 'RE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (184, 'Saint Barthelemy', 'BL', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (185, 'Saint Helena', 'SH', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (186, 'Saint Kitts and Nevis', 'KN', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (187, 'Saint Lucia', 'LC', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (188, 'Saint Martin (French part)', 'MF', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (189, 'Saint Pierre and Miquelon', 'PM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (190, 'Saint Vincent and the Grenadines', 'VC', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (191, 'Samoa', 'WS', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (192, 'San Marino', 'SM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (193, 'Sao Tome and Principe', 'ST', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (194, 'Saudi Arabia', 'SA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (195, 'Senegal', 'SN', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (196, 'Serbia', 'RS', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (197, 'Seychelles', 'SC', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (198, 'Sierra Leone', 'SL', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (199, 'Singapore', 'SG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (200, 'Sint Maarten (Dutch part)', 'SX', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (201, 'Slovakia', 'SK', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (202, 'Slovenia', 'SI', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (203, 'Solomon Islands', 'SB', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (204, 'Somalia', 'SO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (205, 'South Africa', 'ZA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (206, 'South Georgia and the South Sandwich Islands', 'GS', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (207, 'South Sudan', 'SS', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (208, 'Spain', 'ES', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (209, 'Sri Lanka', 'LK', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (210, 'Sudan', 'SD', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (211, 'Suriname', 'SR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (212, 'Svalbard and Jan Mayen', 'SJ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (213, 'Swaziland', 'SZ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (214, 'Sweden', 'SE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (215, 'Switzerland', 'CH', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (216, 'Syrian Arab Republic', 'SY', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (217, 'Taiwan', 'TW', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (218, 'Tajikistan', 'TJ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (219, 'United Republic of Tanzania', 'TZ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (220, 'Thailand', 'TH', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (221, 'Timor-Leste', 'TL', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (222, 'Togo', 'TG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (223, 'Tokelau', 'TK', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (224, 'Tonga', 'TO', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (225, 'Trinidad and Tobago', 'TT', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (226, 'Tunisia', 'TN', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (227, 'Turkey', 'TR', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (228, 'Turkmenistan', 'TM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (229, 'Turks and Caicos Islands', 'TC', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (230, 'Tuvalu', 'TV', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (231, 'Uganda', 'UG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (232, 'Ukraine', 'UA', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (233, 'United Arab Emirates', 'AE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (234, 'United Kingdom', 'GB', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (235, 'United States', 'US', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (236, 'United States Minor Outlying Islands', 'UM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (237, 'Uruguay', 'UY', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (238, 'Uzbekistan', 'UZ', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (239, 'Vanuatu', 'VU', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (240, 'Venezuela', 'VE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (241, 'Viet Nam', 'VN', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (242, 'British Virgin Islands', 'VG', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (243, 'US Virgin Islands', 'VI', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (244, 'Wallis and Futuna', 'WF', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (245, 'Western Sahara', 'EH', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (246, 'Yemen', 'YE', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (247, 'Zambia', 'ZM', NULL, NULL);
INSERT INTO `tbl_countries` VALUES (248, 'Zimbabwe', 'ZW', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_majors
-- ----------------------------
DROP TABLE IF EXISTS `tbl_majors`;
CREATE TABLE `tbl_majors`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NULL DEFAULT NULL,
  `updatedAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_majors
-- ----------------------------
INSERT INTO `tbl_majors` VALUES (1, 'Agriculture', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (2, 'Anthropology', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (3, 'Archaeology', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (4, 'Architecture', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (5, 'Aviation', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (6, 'Biological and Biomedical', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (7, 'Business, Finance, Management', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (8, 'Chemistry', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (9, 'Communications, Journalism', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (10, 'Computer Science', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (11, 'Crime, Law, and Justice', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (12, 'Earth Sciences', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (13, 'Economics', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (14, 'Education', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (15, 'Engineering', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (16, 'English, Literature', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (17, 'Environmental Sciences', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (18, 'Family Studies, Human Development', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (19, 'Film and Video', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (20, 'Fine Arts', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (21, 'Food Science or Nutrition', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (22, 'Foreign Language', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (23, 'Gender Studies', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (24, 'Graphic Design and Photography', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (25, 'Health Professions', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (26, 'History', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (27, 'Horticulture', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (28, 'Hotel, Restaurant, and Institutional Management', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (29, 'Human Services', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (30, 'Humanities and Liberal Arts', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (31, 'Information Sciences and Technology', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (32, 'Kinesiology and Physical Education', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (33, 'Landscape Architecture', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (34, 'Law Enforcement and Correction', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (35, 'Legal Professions', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (36, 'Library Science', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (37, 'Marine Biology', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (38, 'Marketing and Advertising', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (39, 'Mathematics and Statistics', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (40, 'Meteorology or Geosciences', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (41, 'Multi/Interdisciplinary Studies', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (42, 'Music', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (43, 'Nursing', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (44, 'Performing Arts', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (45, 'Physicial Sciences', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (46, 'Political Science', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (47, 'Psychology', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (48, 'Recreation and Parks', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (49, 'Rehabilitation Services', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (50, 'Religious Studies', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (51, 'Social Sciences', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (52, 'Speech Pathology ', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (53, 'Wildlife and Fishery Science', NULL, NULL);
INSERT INTO `tbl_majors` VALUES (54, 'Other', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_parents
-- ----------------------------
DROP TABLE IF EXISTS `tbl_parents`;
CREATE TABLE `tbl_parents`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `security_question_id` int(11) NULL DEFAULT NULL,
  `security_answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `verify_code` int(255) NULL DEFAULT NULL,
  `country_id` int(11) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time_zone_id` int(11) NULL DEFAULT NULL,
  `card_holder_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_number` int(11) NULL DEFAULT NULL,
  `card_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expiration_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cvc` int(11) NULL DEFAULT NULL,
  `plan_id` int(11) NULL DEFAULT NULL,
  `end_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NOT NULL,
  `updatedAt` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_plans
-- ----------------------------
DROP TABLE IF EXISTS `tbl_plans`;
CREATE TABLE `tbl_plans`  (
  `id` int(1) NOT NULL COMMENT ' ',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cost` decimal(10, 2) NULL DEFAULT NULL,
  `createdAt` datetime(0) NULL DEFAULT NULL,
  `updatedAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_plans
-- ----------------------------
INSERT INTO `tbl_plans` VALUES (1, 'free', 0.00, NULL, NULL);
INSERT INTO `tbl_plans` VALUES (2, 'monthly', 19.00, NULL, NULL);
INSERT INTO `tbl_plans` VALUES (3, 'annoly', 180.00, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_schools
-- ----------------------------
DROP TABLE IF EXISTS `tbl_schools`;
CREATE TABLE `tbl_schools`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NULL DEFAULT NULL,
  `updatedAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_schools
-- ----------------------------
INSERT INTO `tbl_schools` VALUES (1, '1', NULL, NULL);
INSERT INTO `tbl_schools` VALUES (2, '2', NULL, NULL);
INSERT INTO `tbl_schools` VALUES (3, '2', NULL, NULL);
INSERT INTO `tbl_schools` VALUES (4, '3', NULL, NULL);
INSERT INTO `tbl_schools` VALUES (5, '4', NULL, NULL);
INSERT INTO `tbl_schools` VALUES (6, '5', NULL, NULL);
INSERT INTO `tbl_schools` VALUES (7, '6', NULL, NULL);
INSERT INTO `tbl_schools` VALUES (8, '7', NULL, NULL);
INSERT INTO `tbl_schools` VALUES (9, '8', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_security_qustions
-- ----------------------------
DROP TABLE IF EXISTS `tbl_security_qustions`;
CREATE TABLE `tbl_security_qustions`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 => set, 1 => deleted(safe delete at project)',
  `createdAt` datetime(0) NULL DEFAULT NULL,
  `updatedAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_sports
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sports`;
CREATE TABLE `tbl_sports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NULL DEFAULT NULL,
  `updatedAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_sports
-- ----------------------------
INSERT INTO `tbl_sports` VALUES (1, 'football', NULL, NULL);
INSERT INTO `tbl_sports` VALUES (2, 'basketball', NULL, NULL);
INSERT INTO `tbl_sports` VALUES (3, 'volleyball', NULL, NULL);
INSERT INTO `tbl_sports` VALUES (4, 'tennis', NULL, NULL);
INSERT INTO `tbl_sports` VALUES (5, 'table tenis', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_states
-- ----------------------------
DROP TABLE IF EXISTS `tbl_states`;
CREATE TABLE `tbl_states`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NULL DEFAULT NULL,
  `updatedAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_states
-- ----------------------------
INSERT INTO `tbl_states` VALUES (1, 'Alabama', 'AL', NULL, NULL);
INSERT INTO `tbl_states` VALUES (2, 'Alaska', 'AK', NULL, NULL);
INSERT INTO `tbl_states` VALUES (3, 'Arizona', 'AZ', NULL, NULL);
INSERT INTO `tbl_states` VALUES (4, 'Arkansas', 'AR', NULL, NULL);
INSERT INTO `tbl_states` VALUES (5, 'California', 'CA', NULL, NULL);
INSERT INTO `tbl_states` VALUES (6, 'Colorado', 'CO', NULL, NULL);
INSERT INTO `tbl_states` VALUES (7, 'Connecticut', 'CT', NULL, NULL);
INSERT INTO `tbl_states` VALUES (8, 'Delaware', 'DE', NULL, NULL);
INSERT INTO `tbl_states` VALUES (9, 'District Of Columbia', 'DC', NULL, NULL);
INSERT INTO `tbl_states` VALUES (10, 'Florida', 'FL', NULL, NULL);
INSERT INTO `tbl_states` VALUES (11, 'Georgia', 'GA', NULL, NULL);
INSERT INTO `tbl_states` VALUES (12, 'Hawaii', 'HI', NULL, NULL);
INSERT INTO `tbl_states` VALUES (13, 'Idaho', 'ID', NULL, NULL);
INSERT INTO `tbl_states` VALUES (14, 'Illinois', 'IL', NULL, NULL);
INSERT INTO `tbl_states` VALUES (15, 'Indiana', 'IN', NULL, NULL);
INSERT INTO `tbl_states` VALUES (16, 'Iowa', 'IA', NULL, NULL);
INSERT INTO `tbl_states` VALUES (17, 'Kansas', 'KS', NULL, NULL);
INSERT INTO `tbl_states` VALUES (18, 'Kentucky', 'KY', NULL, NULL);
INSERT INTO `tbl_states` VALUES (19, 'Louisiana', 'LA', NULL, NULL);
INSERT INTO `tbl_states` VALUES (20, 'Maine', 'ME', NULL, NULL);
INSERT INTO `tbl_states` VALUES (21, 'Maryland', 'MD', NULL, NULL);
INSERT INTO `tbl_states` VALUES (22, 'Massachusetts', 'MA', NULL, NULL);
INSERT INTO `tbl_states` VALUES (23, 'Michigan', 'MI', NULL, NULL);
INSERT INTO `tbl_states` VALUES (24, 'Minnesota', 'MN', NULL, NULL);
INSERT INTO `tbl_states` VALUES (25, 'Mississippi', 'MS', NULL, NULL);
INSERT INTO `tbl_states` VALUES (26, 'Missouri', 'MO', NULL, NULL);
INSERT INTO `tbl_states` VALUES (27, 'Montana', 'MT', NULL, NULL);
INSERT INTO `tbl_states` VALUES (28, 'Nebraska', 'NE', NULL, NULL);
INSERT INTO `tbl_states` VALUES (29, 'Nevada', 'NV', NULL, NULL);
INSERT INTO `tbl_states` VALUES (30, 'New Hampshire', 'NH', NULL, NULL);
INSERT INTO `tbl_states` VALUES (31, 'New Jersey', 'NJ', NULL, NULL);
INSERT INTO `tbl_states` VALUES (32, 'New Mexico', 'NM', NULL, NULL);
INSERT INTO `tbl_states` VALUES (33, 'New York', 'NY', NULL, NULL);
INSERT INTO `tbl_states` VALUES (34, 'North Carolina', 'NC', NULL, NULL);
INSERT INTO `tbl_states` VALUES (35, 'North Dakota', 'ND', NULL, NULL);
INSERT INTO `tbl_states` VALUES (36, 'Ohio', 'OH', NULL, NULL);
INSERT INTO `tbl_states` VALUES (37, 'Oklahoma', 'OK', NULL, NULL);
INSERT INTO `tbl_states` VALUES (38, 'Oregon', 'OR', NULL, NULL);
INSERT INTO `tbl_states` VALUES (39, 'Pennsylvania', 'PA', NULL, NULL);
INSERT INTO `tbl_states` VALUES (40, 'Rhode Island', 'RI', NULL, NULL);
INSERT INTO `tbl_states` VALUES (41, 'South Carolina', 'SC', NULL, NULL);
INSERT INTO `tbl_states` VALUES (42, 'South Dakota', 'SD', NULL, NULL);
INSERT INTO `tbl_states` VALUES (43, 'Tennessee', 'TN', NULL, NULL);
INSERT INTO `tbl_states` VALUES (44, 'Texas', 'TX', NULL, NULL);
INSERT INTO `tbl_states` VALUES (45, 'Utah', 'UT', NULL, NULL);
INSERT INTO `tbl_states` VALUES (46, 'Vermont', 'VT', NULL, NULL);
INSERT INTO `tbl_states` VALUES (47, 'Virginia', 'VA', NULL, NULL);
INSERT INTO `tbl_states` VALUES (48, 'Washington', 'WA', NULL, NULL);
INSERT INTO `tbl_states` VALUES (49, 'West Virginia', 'WV', NULL, NULL);
INSERT INTO `tbl_states` VALUES (50, 'Wisconsin', 'WI', NULL, NULL);
INSERT INTO `tbl_states` VALUES (51, 'Wyoming', 'WY', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_students
-- ----------------------------
DROP TABLE IF EXISTS `tbl_students`;
CREATE TABLE `tbl_students`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_number` int(15) NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `security_question_id` int(11) NULL DEFAULT NULL,
  `security_answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time_zone_id` int(11) NULL DEFAULT NULL,
  `state_id` int(11) NULL DEFAULT NULL,
  `school_id` int(11) NULL DEFAULT NULL,
  `year_id` int(11) NULL DEFAULT NULL,
  `major_id` int(11) NULL DEFAULT NULL,
  `sport_id` int(11) NULL DEFAULT NULL,
  `activity_id` int(11) NULL DEFAULT NULL,
  `challenge_id` int(11) NULL DEFAULT NULL,
  `login_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NOT NULL,
  `updatedAt` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `p_id`(`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_years
-- ----------------------------
DROP TABLE IF EXISTS `tbl_years`;
CREATE TABLE `tbl_years`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NULL DEFAULT NULL,
  `updatedAt` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_years
-- ----------------------------
INSERT INTO `tbl_years` VALUES (1, 'Freshman', NULL, NULL);
INSERT INTO `tbl_years` VALUES (2, 'Sophomore', NULL, NULL);
INSERT INTO `tbl_years` VALUES (3, 'Junior', NULL, NULL);
INSERT INTO `tbl_years` VALUES (4, 'Senior', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
