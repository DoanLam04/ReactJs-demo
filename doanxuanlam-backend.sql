-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2024 at 02:43 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doanxuanlam-backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `action_parameters` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `action_parameters`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2024-03-06 19:25:29.217000', '2024-03-06 19:25:29.217000', NULL, NULL, NULL),
(2, 'plugin::upload.configure-view', NULL, '{}', '[]', '2024-03-06 19:25:29.223000', '2024-03-06 19:25:29.223000', NULL, NULL, NULL),
(3, 'plugin::upload.assets.create', NULL, '{}', '[]', '2024-03-06 19:25:29.226000', '2024-03-06 19:25:29.226000', NULL, NULL, NULL),
(4, 'plugin::upload.assets.update', NULL, '{}', '[]', '2024-03-06 19:25:29.230000', '2024-03-06 19:25:29.230000', NULL, NULL, NULL),
(5, 'plugin::upload.assets.download', NULL, '{}', '[]', '2024-03-06 19:25:29.234000', '2024-03-06 19:25:29.234000', NULL, NULL, NULL),
(6, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2024-03-06 19:25:29.237000', '2024-03-06 19:25:29.237000', NULL, NULL, NULL),
(7, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2024-03-06 19:25:29.240000', '2024-03-06 19:25:29.240000', NULL, NULL, NULL),
(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2024-03-06 19:25:29.243000', '2024-03-06 19:25:29.243000', NULL, NULL, NULL),
(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2024-03-06 19:25:29.247000', '2024-03-06 19:25:29.247000', NULL, NULL, NULL),
(10, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2024-03-06 19:25:29.250000', '2024-03-06 19:25:29.250000', NULL, NULL, NULL),
(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2024-03-06 19:25:29.253000', '2024-03-06 19:25:29.253000', NULL, NULL, NULL),
(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2024-03-06 19:25:29.255000', '2024-03-06 19:25:29.255000', NULL, NULL, NULL),
(90, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\": [\"categoryName\", \"description\"]}', '[]', '2024-03-11 18:09:33.039000', '2024-03-11 18:09:33.039000', NULL, NULL, '{}'),
(91, 'plugin::content-manager.explorer.create', 'api::product.product', '{\"fields\": [\"productName\", \"description\", \"detail\", \"price\", \"image\", \"category\"]}', '[]', '2024-03-11 18:09:33.045000', '2024-03-11 18:09:33.045000', NULL, NULL, '{}'),
(92, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-03-11 18:09:33.049000', '2024-03-11 18:09:33.049000', NULL, NULL, '{}'),
(93, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\": [\"categoryName\", \"description\"]}', '[]', '2024-03-11 18:09:33.053000', '2024-03-11 18:09:33.053000', NULL, NULL, '{}'),
(94, 'plugin::content-manager.explorer.read', 'api::product.product', '{\"fields\": [\"productName\", \"description\", \"detail\", \"price\", \"image\", \"category\"]}', '[]', '2024-03-11 18:09:33.056000', '2024-03-11 18:09:33.056000', NULL, NULL, '{}'),
(95, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-03-11 18:09:33.060000', '2024-03-11 18:09:33.060000', NULL, NULL, '{}'),
(96, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\": [\"categoryName\", \"description\"]}', '[]', '2024-03-11 18:09:33.064000', '2024-03-11 18:09:33.064000', NULL, NULL, '{}'),
(97, 'plugin::content-manager.explorer.update', 'api::product.product', '{\"fields\": [\"productName\", \"description\", \"detail\", \"price\", \"image\", \"category\"]}', '[]', '2024-03-11 18:09:33.068000', '2024-03-11 18:09:33.068000', NULL, NULL, '{}'),
(98, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2024-03-11 18:09:33.071000', '2024-03-11 18:09:33.071000', NULL, NULL, '{}'),
(99, 'plugin::content-manager.explorer.delete', 'api::category.category', '{}', '[]', '2024-03-11 18:09:33.076000', '2024-03-11 18:09:33.076000', NULL, NULL, '{}'),
(100, 'plugin::content-manager.explorer.delete', 'api::product.product', '{}', '[]', '2024-03-11 18:09:33.080000', '2024-03-11 18:09:33.080000', NULL, NULL, '{}'),
(101, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2024-03-11 18:09:33.084000', '2024-03-11 18:09:33.084000', NULL, NULL, '{}'),
(102, 'plugin::content-manager.explorer.publish', 'api::category.category', '{}', '[]', '2024-03-11 18:09:33.088000', '2024-03-11 18:09:33.088000', NULL, NULL, '{}'),
(103, 'plugin::content-manager.explorer.publish', 'api::product.product', '{}', '[]', '2024-03-11 18:09:33.092000', '2024-03-11 18:09:33.092000', NULL, NULL, '{}'),
(104, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2024-03-11 18:09:33.097000', '2024-03-11 18:09:33.097000', NULL, NULL, '{}'),
(105, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2024-03-11 18:09:33.101000', '2024-03-11 18:09:33.101000', NULL, NULL, '{}'),
(106, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2024-03-11 18:09:33.105000', '2024-03-11 18:09:33.105000', NULL, NULL, '{}'),
(107, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2024-03-11 18:09:33.109000', '2024-03-11 18:09:33.109000', NULL, NULL, '{}'),
(108, 'plugin::email.settings.read', NULL, '{}', '[]', '2024-03-11 18:09:33.113000', '2024-03-11 18:09:33.113000', NULL, NULL, '{}'),
(109, 'plugin::upload.read', NULL, '{}', '[]', '2024-03-11 18:09:33.117000', '2024-03-11 18:09:33.117000', NULL, NULL, '{}'),
(110, 'plugin::upload.assets.create', NULL, '{}', '[]', '2024-03-11 18:09:33.120000', '2024-03-11 18:09:33.120000', NULL, NULL, '{}'),
(111, 'plugin::upload.assets.update', NULL, '{}', '[]', '2024-03-11 18:09:33.124000', '2024-03-11 18:09:33.124000', NULL, NULL, '{}'),
(112, 'plugin::upload.assets.download', NULL, '{}', '[]', '2024-03-11 18:09:33.128000', '2024-03-11 18:09:33.128000', NULL, NULL, '{}'),
(113, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2024-03-11 18:09:33.133000', '2024-03-11 18:09:33.133000', NULL, NULL, '{}'),
(114, 'plugin::upload.configure-view', NULL, '{}', '[]', '2024-03-11 18:09:33.137000', '2024-03-11 18:09:33.137000', NULL, NULL, '{}'),
(115, 'plugin::upload.settings.read', NULL, '{}', '[]', '2024-03-11 18:09:33.141000', '2024-03-11 18:09:33.141000', NULL, NULL, '{}'),
(116, 'plugin::documentation.read', NULL, '{}', '[]', '2024-03-11 18:09:33.145000', '2024-03-11 18:09:33.145000', NULL, NULL, '{}'),
(117, 'plugin::documentation.settings.update', NULL, '{}', '[]', '2024-03-11 18:09:33.148000', '2024-03-11 18:09:33.148000', NULL, NULL, '{}'),
(118, 'plugin::documentation.settings.regenerate', NULL, '{}', '[]', '2024-03-11 18:09:33.152000', '2024-03-11 18:09:33.152000', NULL, NULL, '{}'),
(119, 'plugin::documentation.settings.read', NULL, '{}', '[]', '2024-03-11 18:09:33.156000', '2024-03-11 18:09:33.156000', NULL, NULL, '{}'),
(120, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2024-03-11 18:09:33.159000', '2024-03-11 18:09:33.159000', NULL, NULL, '{}'),
(121, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2024-03-11 18:09:33.163000', '2024-03-11 18:09:33.163000', NULL, NULL, '{}'),
(122, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2024-03-11 18:09:33.168000', '2024-03-11 18:09:33.168000', NULL, NULL, '{}'),
(123, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2024-03-11 18:09:33.173000', '2024-03-11 18:09:33.173000', NULL, NULL, '{}'),
(124, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2024-03-11 18:09:33.177000', '2024-03-11 18:09:33.177000', NULL, NULL, '{}'),
(125, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2024-03-11 18:09:33.181000', '2024-03-11 18:09:33.181000', NULL, NULL, '{}'),
(126, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2024-03-11 18:09:33.185000', '2024-03-11 18:09:33.185000', NULL, NULL, '{}'),
(127, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2024-03-11 18:09:33.189000', '2024-03-11 18:09:33.189000', NULL, NULL, '{}'),
(128, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2024-03-11 18:09:33.193000', '2024-03-11 18:09:33.193000', NULL, NULL, '{}'),
(129, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2024-03-11 18:09:33.196000', '2024-03-11 18:09:33.196000', NULL, NULL, '{}'),
(130, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2024-03-11 18:09:33.201000', '2024-03-11 18:09:33.201000', NULL, NULL, '{}'),
(131, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2024-03-11 18:09:33.205000', '2024-03-11 18:09:33.205000', NULL, NULL, '{}'),
(132, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2024-03-11 18:09:33.208000', '2024-03-11 18:09:33.208000', NULL, NULL, '{}'),
(133, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2024-03-11 18:09:33.213000', '2024-03-11 18:09:33.213000', NULL, NULL, '{}'),
(134, 'admin::marketplace.read', NULL, '{}', '[]', '2024-03-11 18:09:33.216000', '2024-03-11 18:09:33.216000', NULL, NULL, '{}'),
(135, 'admin::webhooks.create', NULL, '{}', '[]', '2024-03-11 18:09:33.220000', '2024-03-11 18:09:33.220000', NULL, NULL, '{}'),
(136, 'admin::webhooks.read', NULL, '{}', '[]', '2024-03-11 18:09:33.224000', '2024-03-11 18:09:33.224000', NULL, NULL, '{}'),
(137, 'admin::webhooks.update', NULL, '{}', '[]', '2024-03-11 18:09:33.228000', '2024-03-11 18:09:33.228000', NULL, NULL, '{}'),
(138, 'admin::webhooks.delete', NULL, '{}', '[]', '2024-03-11 18:09:33.232000', '2024-03-11 18:09:33.232000', NULL, NULL, '{}'),
(139, 'admin::users.create', NULL, '{}', '[]', '2024-03-11 18:09:33.236000', '2024-03-11 18:09:33.236000', NULL, NULL, '{}'),
(140, 'admin::users.read', NULL, '{}', '[]', '2024-03-11 18:09:33.240000', '2024-03-11 18:09:33.240000', NULL, NULL, '{}'),
(141, 'admin::users.update', NULL, '{}', '[]', '2024-03-11 18:09:33.243000', '2024-03-11 18:09:33.243000', NULL, NULL, '{}'),
(142, 'admin::users.delete', NULL, '{}', '[]', '2024-03-11 18:09:33.248000', '2024-03-11 18:09:33.248000', NULL, NULL, '{}'),
(143, 'admin::roles.create', NULL, '{}', '[]', '2024-03-11 18:09:33.252000', '2024-03-11 18:09:33.252000', NULL, NULL, '{}'),
(144, 'admin::roles.read', NULL, '{}', '[]', '2024-03-11 18:09:33.256000', '2024-03-11 18:09:33.256000', NULL, NULL, '{}'),
(145, 'admin::roles.update', NULL, '{}', '[]', '2024-03-11 18:09:33.260000', '2024-03-11 18:09:33.260000', NULL, NULL, '{}'),
(146, 'admin::roles.delete', NULL, '{}', '[]', '2024-03-11 18:09:33.264000', '2024-03-11 18:09:33.264000', NULL, NULL, '{}'),
(147, 'admin::api-tokens.access', NULL, '{}', '[]', '2024-03-11 18:09:33.268000', '2024-03-11 18:09:33.268000', NULL, NULL, '{}'),
(148, 'admin::api-tokens.create', NULL, '{}', '[]', '2024-03-11 18:09:33.271000', '2024-03-11 18:09:33.271000', NULL, NULL, '{}'),
(149, 'admin::api-tokens.read', NULL, '{}', '[]', '2024-03-11 18:09:33.274000', '2024-03-11 18:09:33.274000', NULL, NULL, '{}'),
(150, 'admin::api-tokens.update', NULL, '{}', '[]', '2024-03-11 18:09:33.278000', '2024-03-11 18:09:33.278000', NULL, NULL, '{}'),
(151, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2024-03-11 18:09:33.281000', '2024-03-11 18:09:33.281000', NULL, NULL, '{}'),
(152, 'admin::api-tokens.delete', NULL, '{}', '[]', '2024-03-11 18:09:33.284000', '2024-03-11 18:09:33.284000', NULL, NULL, '{}'),
(153, 'admin::project-settings.update', NULL, '{}', '[]', '2024-03-11 18:09:33.288000', '2024-03-11 18:09:33.288000', NULL, NULL, '{}'),
(154, 'admin::project-settings.read', NULL, '{}', '[]', '2024-03-11 18:09:33.293000', '2024-03-11 18:09:33.293000', NULL, NULL, '{}'),
(155, 'admin::transfer.tokens.access', NULL, '{}', '[]', '2024-03-11 18:09:33.296000', '2024-03-11 18:09:33.296000', NULL, NULL, '{}'),
(156, 'admin::transfer.tokens.create', NULL, '{}', '[]', '2024-03-11 18:09:33.299000', '2024-03-11 18:09:33.299000', NULL, NULL, '{}'),
(157, 'admin::transfer.tokens.read', NULL, '{}', '[]', '2024-03-11 18:09:33.302000', '2024-03-11 18:09:33.302000', NULL, NULL, '{}'),
(158, 'admin::transfer.tokens.update', NULL, '{}', '[]', '2024-03-11 18:09:33.306000', '2024-03-11 18:09:33.306000', NULL, NULL, '{}'),
(159, 'admin::transfer.tokens.regenerate', NULL, '{}', '[]', '2024-03-11 18:09:33.309000', '2024-03-11 18:09:33.309000', NULL, NULL, '{}'),
(160, 'admin::transfer.tokens.delete', NULL, '{}', '[]', '2024-03-11 18:09:33.313000', '2024-03-11 18:09:33.313000', NULL, NULL, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(90, 90, 1, 1),
(91, 91, 1, 2),
(92, 92, 1, 3),
(93, 93, 1, 4),
(94, 94, 1, 5),
(95, 95, 1, 6),
(96, 96, 1, 7),
(97, 97, 1, 8),
(98, 98, 1, 9),
(99, 99, 1, 10),
(100, 100, 1, 11),
(101, 101, 1, 12),
(102, 102, 1, 13),
(103, 103, 1, 14),
(104, 104, 1, 15),
(105, 105, 1, 16),
(106, 106, 1, 17),
(107, 107, 1, 18),
(108, 108, 1, 19),
(109, 109, 1, 20),
(110, 110, 1, 21),
(111, 111, 1, 22),
(112, 112, 1, 23),
(113, 113, 1, 24),
(114, 114, 1, 25),
(115, 115, 1, 26),
(116, 116, 1, 27),
(117, 117, 1, 28),
(118, 118, 1, 29),
(119, 119, 1, 30),
(120, 120, 1, 31),
(121, 121, 1, 32),
(122, 122, 1, 33),
(123, 123, 1, 34),
(124, 124, 1, 35),
(125, 125, 1, 36),
(126, 126, 1, 37),
(127, 127, 1, 38),
(128, 128, 1, 39),
(129, 129, 1, 40),
(130, 130, 1, 41),
(131, 131, 1, 42),
(132, 132, 1, 43),
(133, 133, 1, 44),
(134, 134, 1, 45),
(135, 135, 1, 46),
(136, 136, 1, 47),
(137, 137, 1, 48),
(138, 138, 1, 49),
(139, 139, 1, 50),
(140, 140, 1, 51),
(141, 141, 1, 52),
(142, 142, 1, 53),
(143, 143, 1, 54),
(144, 144, 1, 55),
(145, 145, 1, 56),
(146, 146, 1, 57),
(147, 147, 1, 58),
(148, 148, 1, 59),
(149, 149, 1, 60),
(150, 150, 1, 61),
(151, 151, 1, 62),
(152, 152, 1, 63),
(153, 153, 1, 64),
(154, 154, 1, 65),
(155, 155, 1, 66),
(156, 156, 1, 67),
(157, 157, 1, 68),
(158, 158, 1, 69),
(159, 159, 1, 70),
(160, 160, 1, 71);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2024-03-06 19:25:29.205000', '2024-03-06 19:25:29.205000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2024-03-06 19:25:29.211000', '2024-03-06 19:25:29.211000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2024-03-06 19:25:29.214000', '2024-03-06 19:25:29.214000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Doan', 'Lam', NULL, 'lam160304@gmail.com', '$2a$10$ZAfLI3SNO.oTbNd7GGzdQeWnUGPNrq2myu7mAoG6UeiOtbrC7NVt2', NULL, NULL, 1, 0, NULL, '2024-03-06 19:25:44.654000', '2024-03-06 19:25:44.654000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Category 1', 'mô tả Category 1', '2024-03-06 19:32:56.354000', '2024-03-06 19:32:56.354000', '2024-03-17 10:25:25.000000', 1, 1),
(2, 'Grocerywafer', 'Tui bạn quần mua chìm lầu thế. Nhà tám đánh làm hai bảy vá thích. Chỉ bảy đồng giày vá không tủ thì. Vàng được xe nghỉ ghế xuồng không. Đang biết biết kim vàng bơi hương hai.', '2024-03-06 19:43:18.333000', '2024-03-06 19:43:18.333000', '2024-03-17 10:25:25.000000', NULL, NULL),
(3, 'Babyalibi', 'Tô tôi lầu con. Vá nha lỗi ghế biết nghỉ phá ba thôi mua. Lỗi đang đá viết núi hai tím nhà nhà.', '2024-03-06 19:43:18.338000', '2024-03-06 19:43:18.338000', '2024-03-17 10:25:25.000000', NULL, NULL),
(4, 'Clothingfavor', 'Thương làm hóa nước chết biển đập bảy. Đánh đập nghỉ ruộng cửa thôi xuồng. Phá thuê bạn tám làm quần thì dép. Đang khâu thôi nghỉ biển cái mướn em xuồng bạn. Lầu thuyền vàng.', '2024-03-06 19:43:18.342000', '2024-03-06 19:43:18.342000', '2024-03-17 10:25:25.000000', NULL, NULL),
(5, 'Outdoorsgator', 'Vẽ ba tám việc hóa ghế hết ừ vàng hàng. Đập đánh khâu chìm. Thôi ghét ghế quần vá leo. Ngọt bàn bơi gì đã thuê tô thương khoan. Biết làm đâu cái con tô gió.', '2024-03-06 19:43:18.346000', '2024-03-06 19:43:18.346000', '2024-03-17 10:25:25.000000', NULL, NULL),
(6, 'Toysfacet', 'Tám hai vẽ hai ba kim là. Hóa ghét đâu nón bốn. Xuồng tủ yêu.', '2024-03-06 19:43:18.349000', '2024-03-06 19:43:18.349000', '2024-03-17 10:25:25.000000', NULL, NULL),
(7, 'Homefirst', 'Biết tô biết thích đạp nón nón yêu độc. Lầu hai vá chỉ. Độc quê nghỉ ờ. Đâu phá khâu may tô không viết nước hết. Làm tám tàu ruộng chìm thuê. Ừ quần ba phá giày hương máy.', '2024-03-06 19:43:18.352000', '2024-03-06 19:43:18.352000', '2024-03-17 10:25:25.000000', NULL, NULL),
(8, 'Computerssocks', 'Không chết mượn giày hương may thuê. Ác đập việc tui anh thì vàng tô em. May chìm thích. Hương đâu làm. Chết may may biển thuê biết đỏ mướn. Đánh lầu biển nha thích không.', '2024-03-06 19:43:18.356000', '2024-03-06 19:43:18.356000', '2024-03-17 10:25:25.000000', NULL, NULL),
(9, 'Homepansy', 'Viết được gì được một vàng một bơi độc. Mây năm ừ thì được. Hàng chết phá nghỉ vá. Đỏ vẽ thuê bạn gió khoảng sáu cửa đánh một. Chết sáu nón trăng tôi đập tôi quần cái gì.', '2024-03-06 19:43:18.359000', '2024-03-06 19:43:18.359000', '2024-03-17 10:25:25.000000', NULL, NULL),
(10, 'Automotiveozone', 'Cửa hóa mười thì ba. Vàng viết khoan áo xuồng đâu. Tủ khâu vá đã kim đập. Ác việc chết may tàu khoan quần biển may một. Giết gió một xuồng nghỉ anh lỗi. Đang một hóa ba khoảng đã việc nước xuồng đạp.', '2024-03-06 19:43:18.362000', '2024-03-06 19:43:18.362000', '2024-03-17 10:25:25.000000', NULL, NULL),
(11, 'Gamesquery', 'Biển lỗi nước được hương tôi tôi nhà. Thương ruộng quê khoan áo. Ờ bảy hàng trăng vẽ đang. Viết dép cửa chỉ. Hóa chín đã biển sáu.', '2024-03-06 19:43:18.366000', '2024-03-06 19:43:18.366000', '2024-03-17 10:25:25.000000', NULL, NULL),
(12, 'Beautymadam', 'Thì làm không sáu. Bè khâu thôi. Tui hết khoảng. Đã con ba tím độc thì đồng vá sáu con. Ác thích máy đâu quần bè bốn.', '2024-03-06 20:13:59.126000', '2024-03-06 20:13:59.126000', '2024-03-17 10:25:25.000000', NULL, NULL),
(13, 'Automotiveraven', 'Bạn tủ ác chìm leo không vá đạp bàn. Biển hương đạp. Tủ khoan xe cửa chín chín quê.', '2024-03-06 20:13:59.138000', '2024-03-06 20:13:59.138000', '2024-03-17 10:25:25.000000', NULL, NULL),
(14, 'Automotivelatex', 'Mượn thế khoan khoan. Thích khoan thương. Hai khoan biết tủ. Núi cửa thế đạp thì ngọt. Tàu năm mượn hết vá vá. Hương xe quê.', '2024-03-06 20:13:59.144000', '2024-03-06 20:13:59.144000', '2024-03-17 10:25:25.000000', NULL, NULL),
(15, 'Moviesbaker', 'Đá nghỉ đồng thì bàn anh. Vá hóa tím nha nước độc may ác tôi. Bạn gì bảy thôi biết giết ừ.', '2024-03-06 20:13:59.148000', '2024-03-06 20:13:59.148000', '2024-03-17 10:25:25.000000', NULL, NULL),
(16, 'Electronicstrust', 'Nón hàng hai quần tám leo việc. Nha ghế thuê hết đâu khâu gió ba đá khoảng. Tím thôi thuê đỏ. Nước thì ghế thuyền. Ghế hết được cửa chìm năm tủ mười không chín.', '2024-03-06 20:13:59.151000', '2024-03-06 20:13:59.151000', '2024-03-17 10:25:25.000000', NULL, NULL),
(17, 'Gardenmajor', 'Phá con đập đang tám đập đồng thôi thôi. Khoan núi tủ tám khâu. Tô chín lỗi.', '2024-03-06 20:13:59.155000', '2024-03-06 20:13:59.155000', '2024-03-17 10:25:25.000000', NULL, NULL),
(18, 'Babyhaven', 'Năm nha chết mây ngọt đã sáu việc ngọt trăng. Được năm máy ngọt phá đạp vàng vẽ xanh. Tủ thích tàu.', '2024-03-06 20:13:59.159000', '2024-03-06 20:13:59.159000', '2024-03-17 10:25:25.000000', NULL, NULL),
(19, 'Toolsleave', 'Lỗi núi tám leo bốn. Tàu thế thế đập mướn. Bơi là mười nón tàu giết tím. Ngọt viết may.', '2024-03-06 20:13:59.163000', '2024-03-06 20:13:59.163000', '2024-03-17 10:25:25.000000', NULL, NULL),
(20, 'Sportseagle', 'Năm chết khoan cái đã khâu khâu mượn thuyền. Độc gió bốn cái ba việc may thương. Núi đâu kim mười là lỗi gió đâu. Mướn nón biển á vá vàng đánh gió lầu. Vá kim hương nón tím kim ba.', '2024-03-06 20:13:59.167000', '2024-03-06 20:13:59.167000', '2024-03-17 10:25:25.000000', NULL, NULL),
(21, 'Outdoorscodon', 'Quê thì chết xe hàng hương được đập giày. Nghỉ may hết đá biển thế làm ờ. Bè tui thôi áo. Tủ kim tím khoảng.', '2024-03-06 20:13:59.171000', '2024-03-06 20:13:59.171000', '2024-03-17 10:25:25.000000', NULL, NULL),
(22, 'Musicfield', 'Ruộng tám khâu đang tàu đá chìm núi. Thôi tui gì ghét thế ba ghét sáu. Làm đồng thôi. Bè đang mây. Á nha biết lầu anh mười hóa mượn. Việc giày hàng mười là năm nghỉ dép.', '2024-03-06 20:18:23.266000', '2024-03-06 20:18:23.266000', '2024-03-17 10:25:25.000000', NULL, NULL),
(23, 'Kidscodon', 'Năm hết giày ruộng thuê được hóa viết chết sáu. Ba lỗi dép cửa một. Mây quần mười xe vàng quần nước hương. Mây đạp bốn tím yêu hóa.', '2024-03-06 20:18:23.272000', '2024-03-06 20:18:23.272000', '2024-03-17 10:25:25.000000', NULL, NULL),
(24, 'Gamespoker', 'Bạn sáu ghế đá yêu ác tô hai. Tím được kim chết ừ việc tủ. Ừ á chìm cái chết thì làm nhà làm. Áo ừ máy.', '2024-03-06 20:18:23.276000', '2024-03-06 20:18:23.276000', '2024-03-17 10:25:25.000000', NULL, NULL),
(25, 'Outdoorshonor', 'Mướn mua tám chỉ đang. Mua chỉ phá kim bốn bốn thế hóa tám đang. Mua nhà chìm một ghét quần ừ là chỉ. Khoan nước đỏ. Mười đang thôi quê thôi.', '2024-03-06 20:18:23.280000', '2024-03-06 20:18:23.280000', '2024-03-17 10:25:25.000000', NULL, NULL),
(26, 'Industrialsmock', 'Trời đánh vá núi phá yêu ghét tô trời. Trời áo ghế chín con ruộng lầu biển. Xe vá tám xe. Ba thuê quần giết. Ờ thế giết con mây.', '2024-03-06 20:18:23.284000', '2024-03-06 20:18:23.284000', '2024-03-17 10:25:25.000000', NULL, NULL),
(27, 'Musicusage', 'Mua may leo đang thương chín ghế xuồng. Thuê ruộng chết. Xanh nhà là là đang em hai.', '2024-03-06 20:18:23.287000', '2024-03-06 20:18:23.287000', '2024-03-17 10:25:25.000000', NULL, NULL),
(28, 'Groceryshore', 'Quần tàu hết á. Bạn nón yêu quần chỉ khoan ác thương đỏ một. Ghế tô nón. Giày quần thì dép phá dép. Đá đã ba tàu chỉ được.', '2024-03-06 20:18:23.291000', '2024-03-06 20:18:23.291000', '2024-03-17 10:25:25.000000', NULL, NULL),
(29, 'Grocerytrash', 'Vá vẽ nón mười dép bốn bàn vàng là. Biết không máy vàng ừ đỏ. Nón bạn hóa thì tôi năm việc năm. Bạn phá ba một thì á thuê.', '2024-03-06 20:18:23.295000', '2024-03-06 20:18:23.295000', '2024-03-17 10:25:25.000000', NULL, NULL),
(30, 'Booksconga', 'Trời đánh bạn ừ xanh xe. Máy không tím bè hai ờ đã biển. Ruộng ờ tô chỉ bốn tàu biển khoan tui bạn. Phá làm tám. Ừ á tàu biển xuồng quần gì chỉ.', '2024-03-06 20:18:23.299000', '2024-03-06 20:18:23.299000', '2024-03-17 10:25:25.000000', NULL, NULL),
(31, 'Shoeshoney', 'Bảy phá việc. Bàn năm tủ ruộng. Lỗi việc độc hương xe mua phá kim leo đồng. Một thích đâu cái thôi đánh cửa đạp thì chín. Biển năm vàng nón mướn tôi gì con.', '2024-03-06 20:18:23.302000', '2024-03-06 20:18:23.302000', '2024-03-17 10:25:25.000000', NULL, NULL),
(32, 'Gardenjumbo', 'Vá khoan vẽ hàng tím cửa bạn nghỉ. Viết thuê bè hai nước vẽ. Ác núi tám cửa đá mua bạn cửa ghế. Kim đang núi giày xanh mười.', '2024-03-06 20:23:17.787000', '2024-03-06 20:23:17.787000', '2024-03-17 10:25:25.000000', NULL, NULL),
(33, 'Industrialskirt', 'Đâu tàu phá quần đồng. Đâu lầu ruộng biển. Ngọt thế vàng mua hết độc bảy tôi xanh. Ghét thôi chỉ nha tàu đã yêu máy. Là tàu may mây vá tôi chỉ cửa.', '2024-03-06 20:23:17.794000', '2024-03-06 20:23:17.794000', '2024-03-17 10:25:25.000000', NULL, NULL),
(34, 'Moviesbosom', 'Leo chết đâu ba trăng khoan con bảy bơi đâu. Ờ chín hương được hết tím. Một năm á biển thế vàng độc hai hương tàu.', '2024-03-06 20:23:17.799000', '2024-03-06 20:23:17.799000', '2024-03-17 10:25:25.000000', NULL, NULL),
(35, 'Computerscapon', 'Giết hương ác. Xuồng gió hóa nón. Giày không là thương. Bàn giày cửa gió vá giày tủ chết chìm giày. Khoảng đỏ đâu khoảng chìm khâu chín đá. Bốn ghét hương đồng ghế.', '2024-03-06 20:23:17.805000', '2024-03-06 20:23:17.805000', '2024-03-17 10:25:25.000000', NULL, NULL),
(36, 'Homeagony', 'Xanh tui dép gì á biển biết tàu. Ờ vàng đồng mua tôi bốn dép hóa. Biết bạn được gió.', '2024-03-06 20:23:17.810000', '2024-03-06 20:23:17.810000', '2024-03-17 10:25:25.000000', NULL, NULL),
(37, 'Electronicstotal', 'Nước đã vá leo sáu. Ba chết bốn mười nha việc giết khoảng đồng. Nghỉ khoan ghét nha tô yêu. Tui ba cửa. Biết quê cái bạn đá.', '2024-03-06 20:23:17.815000', '2024-03-06 20:23:17.815000', '2024-03-17 10:25:25.000000', NULL, NULL),
(38, 'Sportsdrama', 'Gì vẽ vá em tủ năm tô tô. Vẽ may một bè ruộng nước đập xanh thương. Thì mướn tàu bơi xuồng em đánh. Trời bốn leo chết viết. Gì thương ngọt việc nước dép vàng tím mượn.', '2024-03-06 20:23:17.821000', '2024-03-06 20:23:17.821000', '2024-03-17 10:25:25.000000', NULL, NULL),
(39, 'Kidsprune', 'Nước cái biển bạn hết thuê. Là đồng lỗi biển ba gì cái vẽ gì. Phá sáu tám. Cái là ruộng thì yêu hương núi cái. Mua bạn nha cửa hương bơi đang.', '2024-03-06 20:23:17.826000', '2024-03-06 20:23:17.826000', '2024-03-17 10:25:25.000000', NULL, NULL),
(40, 'Musiccrepe', 'Nước viết ruộng ba giết tám vàng việc gì leo. Đâu ờ năm. Nón đâu ờ. Sáu độc tô núi á chết.', '2024-03-06 20:23:17.831000', '2024-03-06 20:23:17.831000', '2024-03-17 10:25:25.000000', NULL, NULL),
(41, 'Groceryflint', 'Thôi đỏ biển gió. Ờ gió cái. Máy đâu bảy. Đã con hết giày nghỉ đã nha cửa xuồng tôi. Năm một ừ bè tô nghỉ. Tui lỗi leo hai cái đập đâu mướn ghét.', '2024-03-06 20:23:17.836000', '2024-03-06 20:23:17.836000', '2024-03-17 10:25:25.000000', NULL, NULL),
(42, 'Shoeseaves', 'Hóa em hai đâu tui. Nón ngọt đồng chỉ yêu giày. Nước chỉ ba vẽ hàng tô độc bốn. Đánh kim lầu kim tàu. Cái cái đồng nha chìm xuồng thuê bàn khâu may. Tím tủ tím ngọt.', '2024-03-06 20:23:34.149000', '2024-03-06 20:23:34.149000', '2024-03-17 10:25:25.000000', NULL, NULL),
(43, 'Automotivenexus', 'Em bạn gió ghét quần em. Ác leo trời. Gì ờ khoan. Vẽ đang lầu đỏ em.', '2024-03-06 20:23:34.161000', '2024-03-06 20:23:34.161000', '2024-03-17 10:25:25.000000', NULL, NULL),
(44, 'Babybrood', 'Bơi anh đỏ giết xuồng thích bốn mướn. Ghế quần hóa ác phá làm núi lỗi. Một hàng hết đạp kim độc thuê đập khâu.', '2024-03-06 20:23:34.165000', '2024-03-06 20:23:34.165000', '2024-03-17 10:25:25.000000', NULL, NULL),
(45, 'Outdoorsbadge', 'Dép hàng vàng. Nhà tím nhà mượn núi tàu đã quê đỏ. Một yêu anh. Mười biển đánh.', '2024-03-06 20:23:34.169000', '2024-03-06 20:23:34.169000', '2024-03-17 10:25:25.000000', NULL, NULL),
(46, 'Jewelerypress', 'Vàng đá tủ kim bơi xe đang. Làm tàu việc quần thế nghỉ. Bạn biển dép phá. Quê chín nhà anh anh. Biển một thuyền thương thích bơi bảy trời lầu. Ghế áo anh kim quần quê thì lầu lỗi.', '2024-03-06 20:23:34.174000', '2024-03-06 20:23:34.174000', '2024-03-17 10:25:25.000000', NULL, NULL),
(47, 'Toystwist', 'Vàng lầu đá một chìm ghét thì giày. Chìm vàng ruộng được làm xe. Tôi tô gì hóa đập á. Chín tủ xanh năm lầu được đánh vẽ xanh xanh.', '2024-03-06 20:23:34.179000', '2024-03-06 20:23:34.179000', '2024-03-17 10:25:25.000000', NULL, NULL),
(48, 'Clothingrider', 'Tô con chìm cái đã gì em ruộng. Bạn bàn lỗi. Vàng năm xuồng tôi chìm yêu khoảng leo hai. Nón vẽ ác bạn chết. Tàu đánh chín. Lỗi đâu hóa mười.', '2024-03-06 20:23:34.183000', '2024-03-06 20:23:34.183000', '2024-03-17 10:25:25.000000', NULL, NULL),
(49, 'Musictweet', 'Hai tám sáu tô một. Mua hương việc. Con chết xanh nha ruộng năm. Vàng xuồng thích tô ghế sáu máy núi giày. Năm cửa xanh bạn chết.', '2024-03-06 20:23:34.188000', '2024-03-06 20:23:34.188000', '2024-03-17 10:25:25.000000', NULL, NULL),
(50, 'Toyssitar', 'Đánh phá tám thì thôi đang. Thuyền gió bảy núi biển năm. Leo núi ghế tô giày anh nước mượn mướn đánh. Đỏ mười trăng tui.', '2024-03-06 20:23:34.193000', '2024-03-06 20:23:34.193000', '2024-03-17 10:25:25.000000', NULL, NULL),
(51, 'Healthkoala', 'Cái hết độc gì chín mua. Xuồng hàng kim ba độc bàn bàn vàng tôi hương. Làm khoan phá bàn giày đập. Đánh một phá trời đạp biển tám. Mây quê tô đồng tôi thuyền. Việc đạp gì thì thuê.', '2024-03-06 20:23:34.197000', '2024-03-06 20:23:34.197000', '2024-03-17 10:25:25.000000', NULL, NULL),
(52, 'Gamesblood', 'Đâu em á thuyền. Đỏ tủ tôi việc. Bảy may trời làm. Khoảng một khoảng phá trời việc leo. Máy dép đỏ ruộng núi bè trăng.', '2024-03-06 20:23:51.155000', '2024-03-06 20:23:51.155000', '2024-03-17 10:25:25.000000', NULL, NULL),
(53, 'Toolscurve', 'Viết gió chỉ tím cửa ruộng hương là. Bốn tô quê chỉ nón vá đá. Tô ruộng lỗi dép bạn thế ruộng hết. Ruộng lầu kim mướn xe mướn. Bàn ờ anh việc thì ừ gì nước ruộng giày. Khoảng máy cửa nha áo cửa thương bơi biết.', '2024-03-06 20:23:51.161000', '2024-03-06 20:23:51.161000', '2024-03-17 10:25:25.000000', NULL, NULL),
(54, 'Clothingtorso', 'Đá áo hương tui đâu bảy đang ngọt nha. Nghỉ đập tui bốn á là ghét vá. Khoan chết tôi đánh dép. Thuê áo chín con vẽ bàn. Ác may xuồng.', '2024-03-06 20:23:51.166000', '2024-03-06 20:23:51.166000', '2024-03-17 10:25:25.000000', NULL, NULL),
(55, 'Kidssynod', 'Mười quần đã tô biết tám lầu. Ba may độc đá nhà ngọt không dép thì vàng. Độc được đập độc. Ừ đập khoan ác mây leo khoan thì. Là cửa lầu bơi việc khâu.', '2024-03-06 20:23:51.172000', '2024-03-06 20:23:51.172000', '2024-03-17 10:25:25.000000', NULL, NULL),
(56, 'Bookschurn', 'Nón dép cái hàng đã vẽ thế thế. Kim trăng mười ờ. Nghỉ tím cái khoảng xuồng chỉ trời. Chết nha mười. Là là chìm hết.', '2024-03-06 20:23:51.177000', '2024-03-06 20:23:51.177000', '2024-03-17 10:25:25.000000', NULL, NULL),
(57, 'Grocerygravy', 'Trăng cái đá tủ chết yêu. Việc đá nón con cái. Vá đã xe nước chín lầu hàng phá. Đánh đánh hương ngọt cửa việc hóa lầu không hết.', '2024-03-06 20:23:51.182000', '2024-03-06 20:23:51.182000', '2024-03-17 10:25:25.000000', NULL, NULL),
(58, 'Gamesspear', 'Khoảng thôi đâu xanh thôi. Anh nha khoảng nha ừ tôi được khâu. Làm tủ nghỉ may nón. Áo á bàn đá may kim tím hết chìm máy. Hóa ừ được đá nghỉ hai mười.', '2024-03-06 20:23:51.188000', '2024-03-06 20:23:51.188000', '2024-03-17 10:25:25.000000', NULL, NULL),
(59, 'Computersdaisy', 'Nước không tím hàng đỏ. Thuyền nghỉ đỏ. Đánh không tím mướn bạn. Thuyền đánh tô leo trăng hương mua hai. Nha xe giết đá leo tủ trăng việc núi ác. Nha đồng chín đánh quần.', '2024-03-06 20:23:51.194000', '2024-03-06 20:23:51.194000', '2024-03-17 10:25:25.000000', NULL, NULL),
(60, 'Beautydeath', 'Vá mua yêu việc độc quần chìm mượn bạn dép. Trời thuyền giày bạn hết tô giày đá anh thuyền. Khâu đập ừ may núi đánh khâu mướn.', '2024-03-06 20:23:51.200000', '2024-03-06 20:23:51.200000', '2024-03-17 10:25:25.000000', NULL, NULL),
(61, 'Babyshear', 'Mười quê khâu hương nón. Tủ hương núi hàng ờ núi làm. Yêu nghỉ tủ đồng ghét gì lầu.', '2024-03-06 20:23:51.205000', '2024-03-06 20:23:51.205000', '2024-03-17 10:25:25.000000', NULL, NULL),
(62, 'Homepound', 'Quê sáu biển ruộng cửa trời thế. Nước nghỉ lỗi vá nghỉ. Hết máy được.', '2024-03-06 20:25:20.742000', '2024-03-06 20:25:20.742000', '2024-03-17 10:25:25.000000', NULL, NULL),
(63, 'Booksplane', 'Thương tui vẽ khoảng anh. Việc lầu anh chỉ chỉ năm vá nha viết. Á nón đã mướn á leo xuồng.', '2024-03-06 20:25:20.748000', '2024-03-06 20:25:20.748000', '2024-03-17 10:25:25.000000', NULL, NULL),
(64, 'Shoeslemon', 'Tô trăng quê trăng trăng leo. Máy đỏ lầu hai một cái áo ờ đánh lầu. Chết tám xuồng cửa. Cửa khoan lầu ghế nước.', '2024-03-06 20:25:20.752000', '2024-03-06 20:25:20.752000', '2024-03-17 10:25:25.000000', NULL, NULL),
(65, 'Automotivemotel', 'Đỏ tô xanh thuê viết mướn thì bốn. Đỏ được cái việc quần thuyền thuyền. Đạp đá áo biết được bạn bạn chìm ba cửa. Con đỏ năm chỉ ruộng chìm biết bốn mười. Thế á bốn bàn thuyền mây chỉ.', '2024-03-06 20:25:20.756000', '2024-03-06 20:25:20.756000', '2024-03-17 10:25:25.000000', NULL, NULL),
(66, 'Shoesskate', 'Không gió giày tô dép ruộng năm trăng. Hương may trăng phá ghét hàng một. May một đã hết năm chín bàn bảy dép.', '2024-03-06 20:25:20.760000', '2024-03-06 20:25:20.760000', '2024-03-17 10:25:25.000000', NULL, NULL),
(67, 'Moviescarry', 'Đỏ bảy áo thuyền nhà may xuồng mướn không nước. Vẽ yêu khoảng đánh ác vàng biết. Bàn được tui lầu ừ. Áo chết tám không xe lỗi. Vẽ mây chỉ chỉ thuyền xuồng ngọt may. Thương bơi yêu.', '2024-03-06 20:25:20.764000', '2024-03-06 20:25:20.764000', '2024-03-17 10:25:25.000000', NULL, NULL),
(68, 'Gardenspray', 'Bạn mười lỗi lỗi cửa. Hai áo vá áo đỏ tui con trời. Vẽ ghét khoảng. Núi phá lỗi hương việc gió con hai leo. Kim anh đạp mua tàu khâu. Tím khoan sáu năm tui khoảng.', '2024-03-06 20:25:20.768000', '2024-03-06 20:25:20.768000', '2024-03-17 10:25:25.000000', NULL, NULL),
(69, 'Gamesmaker', 'Xe thôi ghét núi. Việc máy sáu thuyền. Hương thôi tám nhà đồng nhà tui đánh em. Gió đồng mây thích đã đâu năm. Vá thế độc trời giết hết yêu.', '2024-03-06 20:25:20.774000', '2024-03-06 20:25:20.774000', '2024-03-17 10:25:25.000000', NULL, NULL),
(70, 'Beautyjoint', 'Ngọt tôi hương cái hương ờ mướn máy ờ. Thuyền xuồng việc. Tám máy anh sáu. Ghế đỏ giày á kim gì.', '2024-03-06 20:25:20.780000', '2024-03-06 20:25:20.780000', '2024-03-17 10:25:25.000000', NULL, NULL),
(71, 'Musicspace', 'Bàn biết bè đỏ đang giày. Tàu ghét bè. Lầu á mười mướn ừ tui. Là quê không ừ bè đồng chết bơi thôi.', '2024-03-06 20:25:20.784000', '2024-03-06 20:25:20.784000', '2024-03-17 10:25:25.000000', NULL, NULL),
(72, 'Babybrown', 'Mười nha vàng. Vàng thì bốn. Leo thì mượn ờ bảy viết được.', '2024-03-06 20:25:46.418000', '2024-03-06 20:25:46.418000', '2024-03-17 10:25:25.000000', NULL, NULL),
(73, 'Jewelerywafer', 'Được vá không gió việc leo. Ghế cửa tui. Ờ biết đập cái. Yêu chín biết đồng xe quần tô.', '2024-03-06 20:25:46.422000', '2024-03-06 20:25:46.422000', '2024-03-17 10:25:25.000000', NULL, NULL),
(74, 'Gamesslash', 'Đập mượn độc bàn ngọt đã năm khoan thương. Dép quê bơi thích núi vá vàng. Giày làm khâu á hai làm chết đã nghỉ. Đập tủ phá trăng lầu leo tàu. Bè sáu gió mười cửa hóa.', '2024-03-06 20:25:46.428000', '2024-03-06 20:25:46.428000', '2024-03-17 10:25:25.000000', NULL, NULL),
(75, 'Healthlemon', 'Đã con em đỏ phá. Biết bốn biết thuyền em thích không bạn nghỉ thương. May ruộng lỗi. Quần đá năm giết thuê hóa. Đập ừ cái đồng. Tô ghét xanh hai chết mây đang chín leo bạn.', '2024-03-06 20:25:46.433000', '2024-03-06 20:25:46.433000', '2024-03-17 10:25:25.000000', NULL, NULL),
(76, 'Musicpaper', 'Mượn sáu yêu chỉ áo ghế thương kim. Ghế hàng đạp hàng là mây. Nón đánh bảy tui mướn.', '2024-03-06 20:25:46.437000', '2024-03-06 20:25:46.437000', '2024-03-17 10:25:25.000000', NULL, NULL),
(77, 'Computersbasin', 'Chỉ ừ phá đâu làm thích. Dép á chỉ việc thuyền bàn thì em. Đã nghỉ vàng thuyền hết thích. Đâu thuê gì là tủ khoảng tàu anh. Bàn thôi đang thương lỗi hàng.', '2024-03-06 20:25:46.442000', '2024-03-06 20:25:46.442000', '2024-03-17 10:25:25.000000', NULL, NULL),
(78, 'Gardenprune', 'Mua giày anh bốn độc tô. Máy thế á nhà. Tàu mượn quê sáu. Tám kim giết đang vẽ.', '2024-03-06 20:25:46.447000', '2024-03-06 20:25:46.447000', '2024-03-17 10:25:25.000000', NULL, NULL),
(79, 'Homefraud', 'Quê hết thế ba bảy đá lầu mây. Vá ngọt biết chết giết độc chìm. Yêu đâu làm một á cửa máy chìm việc. Đang bơi được năm chết mười bạn việc thuyền xanh.', '2024-03-06 20:25:46.452000', '2024-03-06 20:25:46.452000', '2024-03-17 10:25:25.000000', NULL, NULL),
(80, 'Clothingshack', 'Tàu một giày vẽ xuồng dép xanh á tàu. Đập bàn nghỉ. Gì tàu hàng bàn giày là.', '2024-03-06 20:25:46.457000', '2024-03-06 20:25:46.457000', '2024-03-17 10:25:25.000000', NULL, NULL),
(81, 'Sportsgrain', 'Thuyền viết thuyền đạp biển. Núi lỗi đồng vá may thôi lầu. Khâu đập không. Cửa gì khoan biển núi. Không tàu bàn.', '2024-03-06 20:25:46.463000', '2024-03-06 20:25:46.463000', '2024-03-17 10:25:25.000000', NULL, NULL),
(82, '21Lam', '21Desciption', '2024-03-18 15:30:44.078000', '2024-03-18 15:30:44.078000', '2024-03-18 15:30:44.071000', NULL, NULL),
(83, 'string', 'string', '2024-03-18 15:41:20.341000', '2024-03-18 15:41:20.341000', '2024-03-18 15:41:20.339000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'blackphantom.png', NULL, NULL, 480, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_blackphantom_47a9c3b715.png\", \"hash\": \"small_blackphantom_47a9c3b715\", \"mime\": \"image/png\", \"name\": \"small_blackphantom.png\", \"path\": null, \"size\": 53.45, \"width\": 374, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_blackphantom_47a9c3b715.png\", \"hash\": \"thumbnail_blackphantom_47a9c3b715\", \"mime\": \"image/png\", \"name\": \"thumbnail_blackphantom.png\", \"path\": null, \"size\": 7.75, \"width\": 117, \"height\": 156}}', 'blackphantom_47a9c3b715', '.png', 'image/png', '19.75', '/uploads/blackphantom_47a9c3b715.png', NULL, 'local', NULL, '/', '2024-03-06 19:35:44.921000', '2024-03-06 19:35:44.921000', 1, 1),
(2, 'blackphantom.png', NULL, NULL, 480, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_blackphantom_49719d891d.png\", \"hash\": \"small_blackphantom_49719d891d\", \"mime\": \"image/png\", \"name\": \"small_blackphantom.png\", \"path\": null, \"size\": 53.45, \"width\": 374, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_blackphantom_49719d891d.png\", \"hash\": \"thumbnail_blackphantom_49719d891d\", \"mime\": \"image/png\", \"name\": \"thumbnail_blackphantom.png\", \"path\": null, \"size\": 7.75, \"width\": 117, \"height\": 156}}', 'blackphantom_49719d891d', '.png', 'image/png', '19.75', '/uploads/blackphantom_49719d891d.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:12.418000', '2024-03-11 17:49:12.418000', 1, 1),
(3, '1lowse.png', NULL, NULL, 480, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_1lowse_ec8913bf24.png\", \"hash\": \"small_1lowse_ec8913bf24\", \"mime\": \"image/png\", \"name\": \"small_1lowse.png\", \"path\": null, \"size\": 105.87, \"width\": 374, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_1lowse_ec8913bf24.png\", \"hash\": \"thumbnail_1lowse_ec8913bf24\", \"mime\": \"image/png\", \"name\": \"thumbnail_1lowse.png\", \"path\": null, \"size\": 12.53, \"width\": 117, \"height\": 156}}', '1lowse_ec8913bf24', '.png', 'image/png', '48.12', '/uploads/1lowse_ec8913bf24.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:12.824000', '2024-03-11 17:49:12.824000', 1, 1),
(4, 'dior-connect-sneaker.png', NULL, NULL, 460, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_dior_connect_sneaker_78d1072ed9.png\", \"hash\": \"small_dior_connect_sneaker_78d1072ed9\", \"mime\": \"image/png\", \"name\": \"small_dior-connect-sneaker.png\", \"path\": null, \"size\": 42.38, \"width\": 359, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_dior_connect_sneaker_78d1072ed9.png\", \"hash\": \"thumbnail_dior_connect_sneaker_78d1072ed9\", \"mime\": \"image/png\", \"name\": \"thumbnail_dior-connect-sneaker.png\", \"path\": null, \"size\": 5.57, \"width\": 112, \"height\": 156}}', 'dior_connect_sneaker_78d1072ed9', '.png', 'image/png', '16.45', '/uploads/dior_connect_sneaker_78d1072ed9.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:12.876000', '2024-03-11 17:49:12.876000', 1, 1),
(5, 'd_wander_sneaker.png', NULL, NULL, 460, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_d_wander_sneaker_b7538aa907.png\", \"hash\": \"small_d_wander_sneaker_b7538aa907\", \"mime\": \"image/png\", \"name\": \"small_d_wander_sneaker.png\", \"path\": null, \"size\": 57.33, \"width\": 359, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_d_wander_sneaker_b7538aa907.png\", \"hash\": \"thumbnail_d_wander_sneaker_b7538aa907\", \"mime\": \"image/png\", \"name\": \"thumbnail_d_wander_sneaker.png\", \"path\": null, \"size\": 7.49, \"width\": 112, \"height\": 156}}', 'd_wander_sneaker_b7538aa907', '.png', 'image/png', '19.43', '/uploads/d_wander_sneaker_b7538aa907.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:12.878000', '2024-03-11 17:49:12.878000', 1, 1),
(6, 'blacktoe.png', NULL, NULL, 480, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_blacktoe_c188bb715e.png\", \"hash\": \"small_blacktoe_c188bb715e\", \"mime\": \"image/png\", \"name\": \"small_blacktoe.png\", \"path\": null, \"size\": 80.82, \"width\": 374, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_blacktoe_c188bb715e.png\", \"hash\": \"thumbnail_blacktoe_c188bb715e\", \"mime\": \"image/png\", \"name\": \"thumbnail_blacktoe.png\", \"path\": null, \"size\": 10.74, \"width\": 117, \"height\": 156}}', 'blacktoe_c188bb715e', '.png', 'image/png', '34.03', '/uploads/blacktoe_c188bb715e.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:12.881000', '2024-03-11 17:49:12.881000', 1, 1),
(7, 'dior-1low.png', NULL, NULL, 480, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_dior_1low_c9b8f6b46d.png\", \"hash\": \"small_dior_1low_c9b8f6b46d\", \"mime\": \"image/png\", \"name\": \"small_dior-1low.png\", \"path\": null, \"size\": 81.58, \"width\": 374, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_dior_1low_c9b8f6b46d.png\", \"hash\": \"thumbnail_dior_1low_c9b8f6b46d\", \"mime\": \"image/png\", \"name\": \"thumbnail_dior-1low.png\", \"path\": null, \"size\": 10.73, \"width\": 117, \"height\": 156}}', 'dior_1low_c9b8f6b46d', '.png', 'image/png', '29.14', '/uploads/dior_1low_c9b8f6b46d.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:12.938000', '2024-03-11 17:49:12.938000', 1, 1),
(8, 'dior_1retrohigh.png', NULL, NULL, 480, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_dior_1retrohigh_4111355a19.png\", \"hash\": \"small_dior_1retrohigh_4111355a19\", \"mime\": \"image/png\", \"name\": \"small_dior_1retrohigh.png\", \"path\": null, \"size\": 108.79, \"width\": 374, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_dior_1retrohigh_4111355a19.png\", \"hash\": \"thumbnail_dior_1retrohigh_4111355a19\", \"mime\": \"image/png\", \"name\": \"thumbnail_dior_1retrohigh.png\", \"path\": null, \"size\": 13.88, \"width\": 117, \"height\": 156}}', 'dior_1retrohigh_4111355a19', '.png', 'image/png', '38.97', '/uploads/dior_1retrohigh_4111355a19.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:13.160000', '2024-03-11 17:49:13.160000', 1, 1),
(9, 'dior-one-sneaker.png', NULL, NULL, 460, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_dior_one_sneaker_da366d9e90.png\", \"hash\": \"small_dior_one_sneaker_da366d9e90\", \"mime\": \"image/png\", \"name\": \"small_dior-one-sneaker.png\", \"path\": null, \"size\": 49.03, \"width\": 359, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_dior_one_sneaker_da366d9e90.png\", \"hash\": \"thumbnail_dior_one_sneaker_da366d9e90\", \"mime\": \"image/png\", \"name\": \"thumbnail_dior-one-sneaker.png\", \"path\": null, \"size\": 6.31, \"width\": 112, \"height\": 156}}', 'dior_one_sneaker_da366d9e90', '.png', 'image/png', '19.76', '/uploads/dior_one_sneaker_da366d9e90.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:13.418000', '2024-03-11 17:49:13.418000', 1, 1),
(10, 'fragment.png', NULL, NULL, 480, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_fragment_5ca33d4967.png\", \"hash\": \"small_fragment_5ca33d4967\", \"mime\": \"image/png\", \"name\": \"small_fragment.png\", \"path\": null, \"size\": 129.75, \"width\": 374, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_fragment_5ca33d4967.png\", \"hash\": \"thumbnail_fragment_5ca33d4967\", \"mime\": \"image/png\", \"name\": \"thumbnail_fragment.png\", \"path\": null, \"size\": 15.36, \"width\": 117, \"height\": 156}}', 'fragment_5ca33d4967', '.png', 'image/png', '57.51', '/uploads/fragment_5ca33d4967.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:13.430000', '2024-03-11 17:49:13.430000', 1, 1),
(11, 'motorsports.png', NULL, NULL, 480, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_motorsports_3150db641e.png\", \"hash\": \"small_motorsports_3150db641e\", \"mime\": \"image/png\", \"name\": \"small_motorsports.png\", \"path\": null, \"size\": 103.37, \"width\": 374, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_motorsports_3150db641e.png\", \"hash\": \"thumbnail_motorsports_3150db641e\", \"mime\": \"image/png\", \"name\": \"thumbnail_motorsports.png\", \"path\": null, \"size\": 13.68, \"width\": 117, \"height\": 156}}', 'motorsports_3150db641e', '.png', 'image/png', '45.25', '/uploads/motorsports_3150db641e.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:13.474000', '2024-03-11 17:49:13.474000', 1, 1),
(12, 'ltf.png', NULL, NULL, 480, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_ltf_436a100ece.png\", \"hash\": \"small_ltf_436a100ece\", \"mime\": \"image/png\", \"name\": \"small_ltf.png\", \"path\": null, \"size\": 122.59, \"width\": 374, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_ltf_436a100ece.png\", \"hash\": \"thumbnail_ltf_436a100ece\", \"mime\": \"image/png\", \"name\": \"thumbnail_ltf.png\", \"path\": null, \"size\": 15.55, \"width\": 117, \"height\": 156}}', 'ltf_436a100ece', '.png', 'image/png', '54.17', '/uploads/ltf_436a100ece.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:13.580000', '2024-03-11 17:49:13.580000', 1, 1),
(13, 'thunder2023.png', NULL, NULL, 480, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_thunder2023_6e71997206.png\", \"hash\": \"small_thunder2023_6e71997206\", \"mime\": \"image/png\", \"name\": \"small_thunder2023.png\", \"path\": null, \"size\": 89.33, \"width\": 374, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_thunder2023_6e71997206.png\", \"hash\": \"thumbnail_thunder2023_6e71997206\", \"mime\": \"image/png\", \"name\": \"thumbnail_thunder2023.png\", \"path\": null, \"size\": 12.19, \"width\": 117, \"height\": 156}}', 'thunder2023_6e71997206', '.png', 'image/png', '38.49', '/uploads/thunder2023_6e71997206.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:13.711000', '2024-03-11 17:49:13.711000', 1, 1),
(14, 'unc.png', NULL, NULL, 480, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_unc_29f2e92ca7.png\", \"hash\": \"small_unc_29f2e92ca7\", \"mime\": \"image/png\", \"name\": \"small_unc.png\", \"path\": null, \"size\": 82.32, \"width\": 374, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_unc_29f2e92ca7.png\", \"hash\": \"thumbnail_unc_29f2e92ca7\", \"mime\": \"image/png\", \"name\": \"thumbnail_unc.png\", \"path\": null, \"size\": 10.75, \"width\": 117, \"height\": 156}}', 'unc_29f2e92ca7', '.png', 'image/png', '37.96', '/uploads/unc_29f2e92ca7.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:13.899000', '2024-03-11 17:49:13.899000', 1, 1),
(15, 'skyjpurple.png', NULL, NULL, 1000, 1334, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_skyjpurple_d0dabebf47.png\", \"hash\": \"large_skyjpurple_d0dabebf47\", \"mime\": \"image/png\", \"name\": \"large_skyjpurple.png\", \"path\": null, \"size\": 359.37, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_skyjpurple_d0dabebf47.png\", \"hash\": \"small_skyjpurple_d0dabebf47\", \"mime\": \"image/png\", \"name\": \"small_skyjpurple.png\", \"path\": null, \"size\": 95.7, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_skyjpurple_d0dabebf47.png\", \"hash\": \"medium_skyjpurple_d0dabebf47\", \"mime\": \"image/png\", \"name\": \"medium_skyjpurple.png\", \"path\": null, \"size\": 206.2, \"width\": 562, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_skyjpurple_d0dabebf47.png\", \"hash\": \"thumbnail_skyjpurple_d0dabebf47\", \"mime\": \"image/png\", \"name\": \"thumbnail_skyjpurple.png\", \"path\": null, \"size\": 12.22, \"width\": 117, \"height\": 156}}', 'skyjpurple_d0dabebf47', '.png', 'image/png', '143.56', '/uploads/skyjpurple_d0dabebf47.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:13.911000', '2024-03-11 17:49:13.911000', 1, 1),
(16, 'walk_n_dior_platform_sneaker.png', NULL, NULL, 460, 641, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_walk_n_dior_platform_sneaker_502e993273.png\", \"hash\": \"small_walk_n_dior_platform_sneaker_502e993273\", \"mime\": \"image/png\", \"name\": \"small_walk_n_dior_platform_sneaker.png\", \"path\": null, \"size\": 43.37, \"width\": 359, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_walk_n_dior_platform_sneaker_502e993273.png\", \"hash\": \"thumbnail_walk_n_dior_platform_sneaker_502e993273\", \"mime\": \"image/png\", \"name\": \"thumbnail_walk_n_dior_platform_sneaker.png\", \"path\": null, \"size\": 5.62, \"width\": 112, \"height\": 156}}', 'walk_n_dior_platform_sneaker_502e993273', '.png', 'image/png', '16.06', '/uploads/walk_n_dior_platform_sneaker_502e993273.png', NULL, 'local', NULL, '/1', '2024-03-11 17:49:13.917000', '2024-03-11 17:49:13.917000', 1, 1),
(35, 'b.jpg', NULL, NULL, 276, 357, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_b_c285fcac09.jpg\", \"hash\": \"thumbnail_b_c285fcac09\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_b.jpg\", \"path\": null, \"size\": 4.76, \"width\": 121, \"height\": 156}}', 'b_c285fcac09', '.jpg', 'image/jpeg', '19.43', '/uploads/b_c285fcac09.jpg', NULL, 'local', NULL, '/2', '2024-04-06 13:01:40.783000', '2024-04-06 13:01:40.783000', NULL, NULL),
(36, 'Angela Baby_ Bóng hồng Trung Quốc hay nữ hoàng của những thị phi.jpg', NULL, NULL, 735, 962, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Angela_Baby_Bong_hong_Trung_Quoc_hay_nu_hoang_cua_nhung_thi_phi_dd0d2c214f.jpg\", \"hash\": \"small_Angela_Baby_Bong_hong_Trung_Quoc_hay_nu_hoang_cua_nhung_thi_phi_dd0d2c214f\", \"mime\": \"image/jpeg\", \"name\": \"small_Angela Baby_ Bóng hồng Trung Quốc hay nữ hoàng của những thị phi.jpg\", \"path\": null, \"size\": 19.52, \"width\": 382, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Angela_Baby_Bong_hong_Trung_Quoc_hay_nu_hoang_cua_nhung_thi_phi_dd0d2c214f.jpg\", \"hash\": \"medium_Angela_Baby_Bong_hong_Trung_Quoc_hay_nu_hoang_cua_nhung_thi_phi_dd0d2c214f\", \"mime\": \"image/jpeg\", \"name\": \"medium_Angela Baby_ Bóng hồng Trung Quốc hay nữ hoàng của những thị phi.jpg\", \"path\": null, \"size\": 41.81, \"width\": 573, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Angela_Baby_Bong_hong_Trung_Quoc_hay_nu_hoang_cua_nhung_thi_phi_dd0d2c214f.jpg\", \"hash\": \"thumbnail_Angela_Baby_Bong_hong_Trung_Quoc_hay_nu_hoang_cua_nhung_thi_phi_dd0d2c214f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Angela Baby_ Bóng hồng Trung Quốc hay nữ hoàng của những thị phi.jpg\", \"path\": null, \"size\": 3.39, \"width\": 119, \"height\": 156}}', 'Angela_Baby_Bong_hong_Trung_Quoc_hay_nu_hoang_cua_nhung_thi_phi_dd0d2c214f', '.jpg', 'image/jpeg', '65.51', '/uploads/Angela_Baby_Bong_hong_Trung_Quoc_hay_nu_hoang_cua_nhung_thi_phi_dd0d2c214f.jpg', NULL, 'local', NULL, '/2', '2024-04-12 15:59:08.060000', '2024-04-12 15:59:08.060000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`, `file_order`) VALUES
(1, 2, 1, 1),
(2, 3, 1, 2),
(3, 4, 1, 3),
(4, 5, 1, 3),
(5, 6, 1, 3),
(6, 7, 1, 4),
(7, 8, 1, 5),
(8, 9, 1, 6),
(9, 10, 1, 7),
(10, 11, 1, 8),
(11, 12, 1, 9),
(12, 13, 1, 10),
(13, 14, 1, 11),
(14, 15, 1, 12),
(15, 16, 1, 13),
(34, 35, 2, 1),
(35, 36, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `related_id` int UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(4, 12, 3, 'api::product.product', 'image', 2),
(5, 6, 4, 'api::product.product', 'image', 2),
(6, 8, 5, 'api::product.product', 'image', 2),
(7, 14, 6, 'api::product.product', 'image', 2),
(8, 13, 7, 'api::product.product', 'image', 2),
(9, 11, 8, 'api::product.product', 'image', 2),
(10, 13, 9, 'api::product.product', 'image', 2),
(11, 9, 10, 'api::product.product', 'image', 2),
(12, 2, 11, 'api::product.product', 'image', 2),
(13, 14, 12, 'api::product.product', 'image', 2),
(14, 2, 13, 'api::product.product', 'image', 2),
(15, 1, 14, 'api::product.product', 'image', 2),
(17, 7, 16, 'api::product.product', 'image', 2),
(18, 3, 17, 'api::product.product', 'image', 2),
(19, 1, 18, 'api::product.product', 'image', 2),
(20, 14, 19, 'api::product.product', 'image', 2),
(21, 8, 20, 'api::product.product', 'image', 2),
(22, 8, 21, 'api::product.product', 'image', 2),
(23, 10, 22, 'api::product.product', 'image', 2),
(24, 15, 23, 'api::product.product', 'image', 2),
(25, 1, 24, 'api::product.product', 'image', 2),
(26, 9, 25, 'api::product.product', 'image', 2),
(27, 7, 26, 'api::product.product', 'image', 2),
(28, 16, 27, 'api::product.product', 'image', 2),
(29, 9, 28, 'api::product.product', 'image', 2),
(30, 6, 29, 'api::product.product', 'image', 2),
(31, 14, 30, 'api::product.product', 'image', 2),
(32, 1, 31, 'api::product.product', 'image', 2),
(33, 1, 32, 'api::product.product', 'image', 2),
(34, 1, 33, 'api::product.product', 'image', 2),
(35, 10, 34, 'api::product.product', 'image', 2),
(36, 7, 35, 'api::product.product', 'image', 2),
(37, 4, 36, 'api::product.product', 'image', 2),
(38, 4, 37, 'api::product.product', 'image', 2),
(39, 6, 38, 'api::product.product', 'image', 2),
(40, 6, 39, 'api::product.product', 'image', 2),
(41, 14, 40, 'api::product.product', 'image', 2),
(43, 3, 42, 'api::product.product', 'image', 2),
(44, 15, 43, 'api::product.product', 'image', 2),
(45, 4, 44, 'api::product.product', 'image', 2),
(46, 4, 45, 'api::product.product', 'image', 2),
(48, 1, 47, 'api::product.product', 'image', 2),
(49, 16, 48, 'api::product.product', 'image', 2),
(50, 5, 49, 'api::product.product', 'image', 2),
(51, 1, 50, 'api::product.product', 'image', 2),
(52, 4, 51, 'api::product.product', 'image', 2),
(53, 12, 52, 'api::product.product', 'image', 2),
(54, 7, 53, 'api::product.product', 'image', 2),
(55, 1, 54, 'api::product.product', 'image', 2),
(56, 12, 55, 'api::product.product', 'image', 2),
(57, 13, 56, 'api::product.product', 'image', 2),
(58, 11, 57, 'api::product.product', 'image', 2),
(59, 6, 58, 'api::product.product', 'image', 2),
(60, 6, 59, 'api::product.product', 'image', 2),
(61, 6, 60, 'api::product.product', 'image', 2),
(63, 1, 62, 'api::product.product', 'image', 1),
(64, 2, 62, 'api::product.product', 'image', 2),
(65, 1, 63, 'api::product.product', 'image', 1),
(66, 2, 63, 'api::product.product', 'image', 2),
(68, 1, 64, 'api::product.product', 'image', 1),
(69, 2, 64, 'api::product.product', 'image', 2),
(76, 1, 3, 'api::product.product', 'image', 1),
(77, 9, 4, 'api::product.product', 'image', 1),
(78, 16, 5, 'api::product.product', 'image', 1),
(79, 5, 6, 'api::product.product', 'image', 1),
(80, 15, 7, 'api::product.product', 'image', 1),
(81, 16, 8, 'api::product.product', 'image', 1),
(82, 12, 9, 'api::product.product', 'image', 1),
(83, 6, 10, 'api::product.product', 'image', 1),
(84, 4, 11, 'api::product.product', 'image', 1),
(85, 4, 12, 'api::product.product', 'image', 1),
(86, 7, 13, 'api::product.product', 'image', 1),
(87, 13, 14, 'api::product.product', 'image', 1),
(88, 3, 15, 'api::product.product', 'image', 1),
(89, 7, 16, 'api::product.product', 'image', 1),
(90, 8, 17, 'api::product.product', 'image', 1),
(91, 13, 18, 'api::product.product', 'image', 1),
(92, 3, 19, 'api::product.product', 'image', 1),
(93, 3, 20, 'api::product.product', 'image', 1),
(94, 6, 21, 'api::product.product', 'image', 1),
(95, 10, 22, 'api::product.product', 'image', 1),
(96, 15, 23, 'api::product.product', 'image', 1),
(97, 9, 24, 'api::product.product', 'image', 1),
(98, 6, 25, 'api::product.product', 'image', 1),
(99, 5, 26, 'api::product.product', 'image', 1),
(100, 5, 27, 'api::product.product', 'image', 1),
(101, 11, 28, 'api::product.product', 'image', 1),
(102, 11, 29, 'api::product.product', 'image', 1),
(103, 2, 30, 'api::product.product', 'image', 1),
(104, 4, 31, 'api::product.product', 'image', 1),
(105, 1, 32, 'api::product.product', 'image', 1),
(106, 5, 33, 'api::product.product', 'image', 1),
(107, 6, 34, 'api::product.product', 'image', 1),
(108, 2, 35, 'api::product.product', 'image', 1),
(109, 9, 36, 'api::product.product', 'image', 1),
(110, 8, 37, 'api::product.product', 'image', 1),
(111, 2, 38, 'api::product.product', 'image', 1),
(112, 14, 39, 'api::product.product', 'image', 1),
(113, 8, 40, 'api::product.product', 'image', 1),
(114, 12, 41, 'api::product.product', 'image', 1),
(115, 4, 42, 'api::product.product', 'image', 1),
(116, 16, 43, 'api::product.product', 'image', 1),
(117, 15, 44, 'api::product.product', 'image', 1),
(118, 5, 45, 'api::product.product', 'image', 1),
(119, 5, 46, 'api::product.product', 'image', 1),
(120, 14, 47, 'api::product.product', 'image', 1),
(121, 5, 48, 'api::product.product', 'image', 1),
(122, 15, 49, 'api::product.product', 'image', 1),
(123, 11, 50, 'api::product.product', 'image', 1),
(124, 12, 51, 'api::product.product', 'image', 1),
(125, 2, 52, 'api::product.product', 'image', 1),
(126, 6, 53, 'api::product.product', 'image', 1),
(127, 15, 54, 'api::product.product', 'image', 1),
(128, 6, 55, 'api::product.product', 'image', 1),
(129, 10, 56, 'api::product.product', 'image', 1),
(130, 16, 57, 'api::product.product', 'image', 1),
(131, 11, 58, 'api::product.product', 'image', 1),
(132, 8, 59, 'api::product.product', 'image', 1),
(133, 12, 60, 'api::product.product', 'image', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2024-03-06 19:25:29.183000', '2024-03-06 19:25:29.183000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `detail` longtext,
  `price` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `description`, `detail`, `price`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `product_name`) VALUES
(3, 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientswash', 'Giết núi làm. Bơi không ừ mướn thì là. Được ừ vá nón nón vàng. Cái bơi bơi đang leo. Lỗi thôi trời. Yêu ngọt lầu vàng mướn anh.\nLeo thích ba trăng giết mây. Thôi hương mua anh dép á. Nón bạn quần lầu đang viết xanh leo. May hai sáu nhà mây bơi vàng.\nCửa chìm giày á biết gì bàn leo mua là. Gì chìm con tôi đánh đồng sáu hương tím chín. Em đạp cái đồng đá vá. Mười sáu xanh khoan xe khoan quê may.', 82847, '2024-03-06 20:25:58.147000', '2024-04-11 14:00:20.250000', '2024-04-11 14:00:20.239000', NULL, NULL, 'Incredible Bronze Computermilepost'),
(4, 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jsalute', 'Ừ mười tô. Chết quần chìm chỉ lỗi tàu năm đạp làm. Anh cái phá đồng núi bàn thuyền thôi.\nBa tui dép nghỉ may biển vẽ may. Viết tôi núi biển ba em đã là. Lỗi bảy khoảng khoảng thương tám trời khâu giết ghế. Đâu mây làm thích xe chết đá.\nĐã hai không mướn ngọt trăng đang viết. May đạp anh sáu giết hết tím leo bè chết. Đá phá ngọt. Kim hương máy bơi đã viết khoan thì thuyền. Xanh đồng thuê giày. Tím hương quê đánh quê ừ.', 84007, '2024-03-06 20:25:58.153000', '2024-03-06 20:25:58.153000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Refined Frozen Hatbird-watcher'),
(5, 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designnotion', 'Đập xuồng ác cái phá vẽ máy hàng tô. Đồng chỉ bơi hương đánh ba. Là mượn tám tủ. Tàu anh hết nhà vá.\nLàm tôi khâu. Ừ lỗi mượn thì đang. Chết hàng được.\nCái ác một viết phá. Bơi đập viết bàn hóa ruộng vá. Kim núi ruộng bơi. Leo mướn quê. Thích ghét làm bạn quê trời ruộng em.', 37136, '2024-03-06 20:25:58.158000', '2024-03-06 20:25:58.158000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Rustic Plastic Shirtbinoculars'),
(6, 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalswording', 'Khâu được hàng mướn một bốn may là được thích. Bốn chỉ bàn vá tôi áo. Nước cửa tô là nước mượn năm mua.\nLàm đánh được em. Khâu dép ác. Biết đạp nón bốn chết. Nhà quần bàn. Bốn thuyền thương hai ba. Em nón mua xanh con mua biết con thích ghét.\nBạn may mua hết áo ghét tủ trời thích tôi. Mướn năm kim khoan hết chìm hóa đã. Vá tủ một tàu. Tím ruộng không. Nhà ghế viết ghét nghỉ nón.', 60384, '2024-03-06 20:25:58.163000', '2024-03-06 20:25:58.163000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Gorgeous Granite Keyboardinput'),
(7, 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsepee', 'Mượn trăng độc ruộng núi khoảng hết mua. Lầu tui tôi biết tôi hàng giày năm. Phá khâu thích bè hàng khâu đỏ không. Thương kim xe hết trời hai núi. Vẽ làm nhà. Vá tui gió yêu dép ờ chỉ đạp.\nNgọt vẽ con ghế khâu tím. Con ghế phá xanh khoan ác hương quần không đang. Mười đã khoảng lỗi đâu bơi bơi chìm nón.\nNgọt tám khâu may hương tàu. May hết đồng làm ngọt. Phá ba ruộng chìm hương đá độc hóa mướn. Thuê ba mướn ruộng thuê độc xanh ừ ừ. Trời ba vàng nhà á ờ quê phá kim tủ.', 33122, '2024-03-06 20:25:58.169000', '2024-03-06 20:25:58.169000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Tasty Wooden Mouseburial'),
(8, 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designeffort', 'Chìm giày tàu quê tủ vàng. Áo ờ hóa tím con thích đã mua xanh. Mướn được thì chỉ á đồng. Ba núi giày thôi bàn xe. Trăng tôi thế ghét việc ghế mướn ác bàn.\nĐá lầu thuyền ờ hóa yêu. Năm biết anh phá nước tôi đỏ chín độc chìm. Bơi kim gió ghét độc cửa. Gì nước đập viết.\nỪ đạp gió đâu chỉ hết mây. Mây ờ chỉ. Đập anh làm tủ đỏ anh độc một hương. Mây gì nha chết mướn xe lỗi yêu vẽ. Tủ mười thương thì bàn mây.', 26461, '2024-03-06 20:25:58.176000', '2024-03-06 20:25:58.176000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Handcrafted Concrete Mouseheartbeat'),
(9, 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitydifferential', 'Năm đang mướn thì vàng may đập đâu. Yêu tôi tô kim chỉ gì tím hai ruộng kim. Áo hết gì.\nBè tôi thích phá mượn vàng quê. Vàng trời phá xuồng leo ngọt. Sáu bạn gió ghế tám ngọt gì phá vá bạn. Ngọt đâu xuồng ghế. Bốn gì trời tím khoan.\nMượn cái may ruộng hai viết làm nhà. Không biển tàu nha lỗi tô. Tui anh áo núi núi em may mượn làm ghế.', 34523, '2024-03-06 20:25:58.183000', '2024-03-06 20:25:58.183000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Handcrafted Wooden Computersuffocation'),
(10, 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designeddy', 'Quê anh tôi tám mướn hết trời ờ. Thuyền ghét đang giày bè chết đã sáu trời. Ghế ác một ngọt xanh vẽ.\nHai viết mua quần khâu tôi mười thôi nước. Đạp chín lỗi bốn hết quê đâu. Bạn nha nước bơi.\nNước xanh năm. Biết ruộng leo nước leo khoảng xanh quần nước xuồng. Vẽ chỉ giết yêu.', 70024, '2024-03-06 20:25:58.189000', '2024-03-06 20:25:58.189000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Unbranded Wooden Pizzaconstant'),
(11, 'The Football Is Good For Training And Recreational Purposeswoodshed', 'Ờ đập tám. Thế á xuồng tủ. Tàu hóa anh sáu đồng yêu. Mây năm tám tím nha mười đang quần cái hết.\nTôi việc bè biển ngọt bảy. Bàn ba tám bàn gió bạn bốn tủ anh ba. Nha lầu đồng xanh lỗi vá đâu con. Thuê thuyền tàu vá nhà ngọt một mượn hai là. Tám phá đánh. Nhà đồng giày lỗi kim mây bơi phá khoan.\nViết thuyền vá hương chỉ thuyền mướn bàn hết sáu. Đồng phá đồng khoan bơi. Ghế mười yêu ác không tôi ờ nghỉ khoan xanh. Bạn quần độc mua khâu. Con một tàu bàn chìm ờ tím.', 40811, '2024-03-06 20:25:58.195000', '2024-03-06 20:25:58.195000', '2024-03-20 19:55:29.763000', NULL, NULL, 'Electronic Concrete Glovestransport'),
(12, 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitykielbasa', 'Khoảng gió ngọt hết khoan. Một đạp sáu đá hàng vàng. Xanh vàng biển mượn cửa thuyền không biết một. Quê bạn giết mượn quê độc ghế bơi hóa. Bạn tui hết kim.\nYêu độc thôi phá sáu đâu thôi mướn viết may. Biết tôi bảy năm hai trăng bạn. Ừ cái xe vàng nước. Là khâu nghỉ ba bàn vá đánh. Em bạn khâu chín giày hàng. Ghế thế là dép mượn vá.\nTôi ác hóa ruộng tôi mười một anh bảy áo. Thuyền áo biển mượn đập hương. Mượn độc cái vàng. Tím độc lỗi ghét hóa bè trời chìm anh. Thuyền giày nón thích khoan đạp con nghỉ.', 92296, '2024-03-06 20:26:03.502000', '2024-03-30 06:30:58.964000', '2024-03-30 06:30:58.953000', NULL, NULL, 'Ergonomic Bronze Cheesesouvenir'),
(13, 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportdealer', 'Không trăng không bốn hàng con ngọt ác chín. Áo lầu quần nhà chỉ ghét việc. Tám ghét ừ khoan.\nChỉ đỏ ừ biển hương giết thương tui tô. Thôi sáu việc nha đã. Quần vàng ừ bốn chìm quần thương.\nNha đánh hai đập dép viết hàng. Tàu quê máy thì độc không đá ngọt. Làm năm ghế là hóa đỏ thế mây thế. Máy tủ gió một thuyền.', 57398, '2024-03-06 20:26:03.515000', '2024-04-10 23:48:46.642000', '2024-04-10 23:48:46.635000', NULL, NULL, 'Ergonomic Soft Shoesorchard'),
(14, 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitychainstay', 'Đỏ ruộng đang nón leo lầu khâu. Chín dép kim mây mua đồng vẽ nước quê. Bạn bảy ừ máy đạp năm. Con hết con mua lỗi. Quê ruộng tôi là.\nThôi là hết. Anh làm mướn kim việc khoan bảy. Hết ác sáu thôi.\nPhá bè biết hóa tàu. Yêu đánh nghỉ hóa hết. Đã vẽ yêu chín núi áo ác nha hóa là. Đỏ giày tám đang vàng. Ruộng là bè con anh bơi á làm dép may. Gió đập yêu nước.', 60952, '2024-03-06 20:26:03.520000', '2024-03-06 20:26:03.520000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Unbranded Fresh Carmagnet'),
(15, 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsfeature', 'Xe biển tủ mượn ờ may chìm. Dép tui cái hai vá giết kim nón. Giày bạn mướn ba nghỉ ruộng viết đồng phá vá. Vàng thôi đang việc may đã áo phá xanh. Là thế một giày thôi ghế gì á chỉ không.\nNhà đánh tàu đá thương biển bàn cửa. May mượn ờ mười độc thích. Thế gì tám ghế xe đồng chỉ bơi hết. Bạn xanh ngọt. Đỏ bảy thôi đã nón giày tui mười hai nha. Con tàu em biết ác á chín.\nBè hóa may con là chết bốn bè gì. Thuyền gì áo đập nón tủ tàu. Anh giày xuồng áo phá đập giày mượn đã năm. Tô năm con quê. Con tô biết máy tím giết thương mười đỏ.', 26079, '2024-03-06 20:26:03.525000', '2024-03-06 20:26:03.525000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Practical Steel Biketurnstile'),
(16, 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivefrog', 'Biển năm viết sáu. Nước giết xe máy nhà mây. Chín chết á áo chỉ cửa ghế mua. Thuê nha ừ xuồng lỗi chỉ nghỉ nha.\nHai bè giết thì khoảng giết quê khâu cửa. Khoảng tám hóa ghế. Chín xe đá bơi mướn quê. Xuồng con thích xe may nha đạp ghế đánh.\nKhâu hóa đâu sáu biết. Ghế ừ vá nha tím khoan. Đâu xe ghế gió quần tám con thương mướn.', 80251, '2024-03-06 20:26:03.529000', '2024-03-06 20:26:03.529000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Intelligent Plastic Glovesvibrissae'),
(17, 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitybranch', 'Đang thế chìm một chín mượn mướn. Đập xanh cửa tám đâu ác là. Chỉ thuyền mượn chết biển núi khâu thế thích núi. Tôi giết đạp hết trăng đạp hàng ừ ờ nước.\nĐược trăng lầu kim á mười chìm ngọt. Đánh hai mây một tủ hàng ruộng ruộng. Tám ngọt biết áo mướn xanh việc anh khâu. Leo nước tím ác không. Được mây đập con ngọt đã ờ lỗi bốn.\nXanh làm ừ mua vàng nón mười. Ruộng đang một biết hóa may bơi bốn tôi. Thôi quần giết. Hóa tô nghỉ. Tím đã thôi. Thuyền leo năm tui chỉ chỉ tôi hết chín bảy.', 37688, '2024-03-06 20:26:03.534000', '2024-03-06 20:26:03.534000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Intelligent Bronze Ballfold'),
(18, 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivemankind', 'Đỏ xe thôi tui ba quê hàng bè. Làm thế biết mây áo kim. Cửa sáu giày hóa ờ con tím vẽ vàng. Ghế giết thương đang ừ chỉ.\nÁo thế nước đâu bạn là thuyền yêu độc. Tám năm mua chìm khâu cái. Giết đã ba xanh đánh đỏ ghét giết thì thuyền. Thương hóa được.\nGhét bè mười tôi bảy quần con một. Đỏ giày máy lỗi bảy thì đập. Ác khâu tàu tím được. Đâu khoan độc mướn chết bè thuyền.', 43322, '2024-03-06 20:26:03.540000', '2024-03-06 20:26:03.540000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Handcrafted Wooden Soapclimate'),
(19, 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitycasserole', 'Bè tôi khoan bạn. Nón độc tôi đạp giày tô thương tám. Kim hàng vá giết nha. Hai hai thì. Cái viết xuồng chết không một xanh độc. Nghỉ biết độc.\nViết tím giết là trời bạn nha là. Sáu là tui khoảng là đập thuyền tàu vàng lầu. Là chìm trời đâu trăng biển áo. Trời á thương là đỏ giày hết quần xanh. Ghét đồng là phá. Vá bạn thì bảy hóa tôi.\nMười máy khoảng mua đỏ vẽ. Ác ghét lầu kim gì đá. Hết không thương hết đá khoảng ác á thương.', 76944, '2024-03-06 20:26:03.545000', '2024-03-06 20:26:03.545000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Sleek Steel Soapcornerstone'),
(20, 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartyeast', 'Lỗi anh hai tôi xe cửa nước. Hàng ừ vàng thôi bạn nhà ngọt nước ờ thích. Cái gió bốn hết em lầu. Nón ác khoảng nước. Ác thuê á năm. Chỉ ghét thế cái bạn quần leo đá.\nHàng không năm anh cái thuê. Máy không đang là thuê ác cửa tô trời hương. Xanh bè đạp hết mười dép kim một tôi đã. Con lầu thuê thuyền hương sáu một kim việc vá.\nGiết tô may kim khoảng biển con thôi anh. Ghế vẽ gì chín chín đâu yêu giết. Bàn yêu trăng ngọt đang đang không một ngọt vá. Gió nước thích ừ bốn biết. Tàu xuồng thuyền tôi ừ nhà. Đồng độc ngọt ngọt viết giết lầu đánh.', 25613, '2024-03-06 20:26:03.550000', '2024-03-06 20:26:03.550000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Recycled Granite Chipstactics'),
(21, 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designstep-mother', 'Chín nón nha phá vá anh thuyền. Tám lỗi gió biết áo vẽ bạn. May thì đỏ thôi đâu. Chín kim một thế trời giết thì xe thôi máy.\nTrời mượn chín đỏ bảy khâu thuyền á máy. Mua chìm ờ đập mây chìm làm. Đạp em leo khoan đập máy gió xanh mua cái. Hương thương may ngọt đỏ không máy trời ngọt khâu. Mượn quần quê mướn bốn giày giày núi được thế. Biển hết đang tủ mượn em ác làm đập mua.\nĐập tím tui xanh xe em. Chìm vàng bảy cửa kim quần con vàng một tím. Đánh nước việc dép leo ác thôi giày bạn. Hương mười hai xanh ba may khoan. Đạp gió tui đạp đã tám biển. Mười ghế may ba đánh tôi.', 77422, '2024-03-06 20:26:03.555000', '2024-03-06 20:26:03.555000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Handcrafted Frozen Fishdetention'),
(22, 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitneon', 'Đạp ba tô. Hàng hương máy tô may biết. Hóa áo xuồng may thương. Thích kim đánh.\nVá con tàu tui vàng là anh hai. Biết lầu máy cái. Hai giết cái may núi.\nEm giết áo biển ghế mua chín. Anh khoảng khoảng ruộng xe đánh hai. Trời dép ngọt. Không độc phá.', 82709, '2024-03-06 20:26:41.948000', '2024-03-06 20:26:41.948000', '2024-03-20 19:55:29.763000', NULL, NULL, 'Bespoke Cotton Chipsdynasty'),
(23, 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016breath', 'Bè thì làm năm. Thì con ba biết. Đá em tui mua. Khâu khoan giày kim thuê á anh ờ.\nLà bảy đồng. Nghỉ ghế leo ngọt giết thế bơi chết chín sáu. Nghỉ biển tám. Trời vàng quần bạn thôi chín cửa.\nBàn khoan kim kim áo. Tám lầu đánh mượn làm tím vá lỗi. Vá ờ hết năm. Mua hết tàu xuồng nước giày bơi được.', 55533, '2024-03-06 20:26:41.956000', '2024-03-06 20:26:41.956000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Ergonomic Cotton Glovesparticle'),
(24, 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityloaf', 'Nghỉ nha mây bè đồng không chỉ ba tám. Giết độc áo. Giết khoảng hương tui áo tím tô núi. Ba mua chìm. Trăng thôi thuyền hương ờ yêu bạn máy.\nLàm vàng ác đập đạp mua bảy bảy. Giết mướn dép mượn khâu. Mây nha viết em. Xe một hóa đánh khoan mướn.\nBa xe hết. Thế bàn xuồng ngọt thế bàn. Sáu khoảng làm núi bảy thích khoảng ừ vá.', 91708, '2024-03-06 20:26:41.961000', '2024-03-06 20:26:41.961000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Oriental Metal Bikeperformance'),
(25, 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitadmission', 'Đạp vẽ anh ừ đánh tàu. Năm á trăng độc. Mướn chỉ bảy khoảng đánh hóa. Đã leo thì nghỉ hóa gió bè vẽ ghế. Dép được làm ba áo. Đập máy năm lỗi viết xanh may.\nKim leo ừ đạp việc thuê. Tui hương thì vàng việc làm xe. Nhà quê hai trời.\nNăm chỉ đá áo một cái bè chỉ. Nón nghỉ quần hóa thuê dép đập máy giày. Khâu lỗi thôi gì. Con leo năm làm tủ quê chín bàn. Áo thôi tàu may việc là tôi bảy tôi ác. Nha nón chín.', 49199, '2024-03-06 20:26:41.967000', '2024-03-06 20:26:41.967000', '2024-03-20 19:55:29.763000', NULL, NULL, 'Awesome Cotton Chairsleepiness'),
(26, 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jgrove', 'Thương độc máy. Khâu mượn đã khâu thuê mượn tàu. Anh á nước.\nTủ chìm đánh anh bàn cửa việc thì được. Ba tàu nón nhà tím viết quê. Đập tám đánh tô không giết ruộng hóa. Thuyền ngọt độc được vẽ. Việc máy nón tôi chết sáu đá. Quê năm bốn.\nNăm chết thích ờ khâu chìm hàng. Ruộng ba mướn chín dép á á. Thích bốn nón nón vàng tủ đang cửa đã.', 79323, '2024-03-06 20:26:41.972000', '2024-03-06 20:26:41.972000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Handcrafted Steel Tableanarchy'),
(27, 'The Football Is Good For Training And Recreational Purposesdownforce', 'Không tôi xe cái vẽ độc không quê độc tím. Vàng hai gì là bảy trời tủ. Núi tui mướn khâu.\nAnh con đỏ chín thuê. Đánh dép mướn mượn đỏ bảy trời ngọt trời hóa. Ghế yêu thuê đang áo. Xe lầu áo ghét.\nYêu mua tàu độc máy đâu tui thì. Mười anh bạn được. Con việc một đỏ vàng năm thích khoảng. Ác mượn kim mua mua may được sáu chỉ. Hết năm tô quê thôi thì nghỉ.', 21078, '2024-03-06 20:26:41.979000', '2024-03-06 20:26:41.979000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Ergonomic Steel Mousepicnic'),
(28, 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsroadway', 'Sáu thuyền anh á khâu. Vàng chìm khoan. Ừ đá ba bốn bảy. Chín tám leo được mượn năm em xanh cửa thế. Năm phá gì biết. Yêu em leo nghỉ không gì độc.\nRuộng máy bơi nghỉ. Mượn tàu vá đồng. Thì là bơi.\nĐâu chết tô là khoan em nhà hai nha ba. Cửa phá một giết chín mười sáu. Độc tôi bốn bốn thì.', 39088, '2024-03-06 20:26:41.984000', '2024-03-06 20:26:41.984000', '2024-03-20 19:55:29.763000', NULL, NULL, 'Bespoke Soft Biketrial'),
(29, 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientswrapper', 'Vẽ việc đâu thì tàu. Đang thôi nước khoan lầu. Máy đâu chỉ bạn đánh thì nha tô may áo. Thế may được biển trời thế.\nTui đồng ờ đỏ. Ba bơi vàng không. Vàng mười đánh. Bốn bảy ác sáu hương anh mây mây hai gì. Đang tám trăng. Tô núi hàng lầu.\nCon tím thì bảy khoảng thì tím. Nghỉ đâu không cái tàu bạn sáu. Gió em ác tô quần tôi ừ. Giết vẽ chín bảy quần vá ngọt nước phá đỏ. Chín nghỉ ba cái viết được.', 53349, '2024-03-06 20:26:41.990000', '2024-03-06 20:26:41.990000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Gorgeous Steel Mousebotany'),
(30, 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportdefender', 'Hàng kim bè lầu ghét lầu đạp đang. Được xanh thương tám cửa vá quê đâu. Xuồng hết bè con quần. Chỉ chỉ leo. Tủ ngọt bơi biển. Mua thì anh.\nTám may bơi đá núi. Độc xanh đánh ghế là. Viết yêu trăng. Hai thế lỗi đá á tui hai vàng đồng quê.\nThì mướn lầu đánh lỗi. Nước chìm giày viết bảy mười yêu xe thuyền. Hết cái bè tui nón đập.', 20640, '2024-03-06 20:26:41.995000', '2024-03-06 20:26:41.995000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Gorgeous Fresh Tunatriumph'),
(31, 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivemiscarriage', 'Được tô mười đá. Ác làm thuê vẽ tui máy lầu biển xuồng. Không đang vẽ mây mướn em tám em gì. Nhà trời khoảng máy cái anh vá quê đá mây.\nThích chết đạp là tím khoan á tím. Xanh thuyền quần khoan mướn. Gì thương ừ mướn xanh dép. Đâu nghỉ chỉ phá xanh xanh việc được gió. Tím đạp bè. Được xe tàu.\nCái thuê xuồng may đâu tủ quê mây mua bè. Mười nghỉ cửa thôi bơi chín ghét đạp may kim. Chỉ giết máy là vá viết bàn đang đang thuê. Xuồng giết biển bạn khâu quê nhà đang thôi độc.', 96952, '2024-03-06 20:26:42.000000', '2024-03-06 20:26:42.000000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Small Plastic Shoestactics'),
(32, 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitprevalence', 'Không nón vá hương bốn thế thôi là lầu. Ừ á hết thuê chết tôi thích. Biển ruộng phá tủ nha khoảng gì kim.\nAnh gì thương thuyền. Tàu viết máy á lỗi kim. Núi mây mười. Không nước xanh ghế viết đạp thì bảy gì xuồng. Thương leo sáu mượn vẽ thế anh.\nChỉ thuê quê tô xuồng một nghỉ. Làm đập thuê trăng. Đâu ừ đập. Dép khoảng chết tôi hóa ghế ghét vàng làm ba. Gió máy ác lỗi ngọt tủ. May phá phá thế con.', 32657, '2024-03-11 17:24:15.794000', '2024-03-11 17:24:15.794000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Gorgeous Cotton Pantssustenance'),
(33, 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016avenue', 'Ngọt ác tô mười xanh quê nón ờ đang. Thương đỏ giết giày giày hai trời mây quê á. Chìm không đạp giày thì.\nHết quần ruộng trăng thì đâu nước. Tàu ngọt chết. Ờ vá mười thương thế trăng thế cửa. Núi hóa đang. Không bạn giết tím ác cửa yêu áo chín.\nBiết gì bè chỉ ghế. Núi đánh vàng. Ghế ừ ừ đập.', 47022, '2024-03-11 17:24:15.810000', '2024-03-11 17:24:15.810000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Luxurious Frozen Mouseauthorization'),
(34, 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsemployee', 'Khoan đã xe sáu chỉ mười đá một thích thích. Bàn đang may khoảng nón thuê. Gì trăng một. Tím tám mướn tím nón. Hết đâu hết hết gió khoan xuồng thích.\nĐâu yêu xuồng. Quần nghỉ làm. Yêu xuồng nghỉ anh thuê mua. Hóa yêu đã tô. Bốn may phá làm quần mười.\nBạn ruộng một đang thuyền bơi. Trời chỉ vẽ bốn được may hết dép. Bảy chín mây hết hương thương máy. Lầu sáu ghế ghét đồng thương.', 20399, '2024-03-11 17:24:15.821000', '2024-03-11 17:24:15.821000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Elegant Frozen Pizzacornerstone'),
(35, 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016pie', 'Đang núi sáu bơi. Đang phá thôi. Quần đã cái đã con dép bàn viết anh. Hàng đập em mượn tui ờ. Bạn nón cái mây áo nhà. Độc đạp con vàng đâu thôi nghỉ đá biết.\nÁc ờ chỉ. Ghét ba tôi á con thương bè. May chết một trăng dép.\nMột tám áo em bốn lỗi đâu. Làm độc may bè vẽ gì thế khoảng. Đập được tím hóa ờ. Là gió biển. Mướn tui lầu thích ghế tôi.', 35935, '2024-03-11 17:24:15.832000', '2024-03-11 17:24:15.832000', '2024-03-20 19:55:29.763000', NULL, NULL, 'Electronic Concrete Tunacapitulation'),
(36, 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitygrove', 'Tui hết thương chìm đánh hàng cái. Vẽ ruộng biết. Đang ba leo thế không xe thôi đỏ một. Xuồng tàu hai trăng tui thôi năm việc bàn. Giày thôi bơi tủ nón tàu mướn leo chết đồng. Quê em ruộng đạp đập đâu.\nĐâu tám đập tàu tím gió khâu đá con tàu. Mây biển leo hết. Độc ba một cửa việc tàu khoan tàu tám hàng. Cửa năm mười quê việc đã. Xanh cái hết em nón đâu vàng thích dép.\nÁ trăng ghét vá quần con leo nhà hương biển. Đánh lỗi thế nước hai mướn nhà ghế lỗi đánh. Đâu con ác. Thương tủ tui viết lầu đang hóa leo đồng. Quê đâu tám trời nghỉ ba thương chín.', 21177, '2024-03-11 17:24:15.840000', '2024-03-11 17:24:15.840000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Luxurious Frozen Ballincome'),
(37, 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designverve', 'Chỉ khoảng ghế thuyền vá. Nước cửa vá may phá đập. Nhà bốn đang mười tô thì thuê giết quần. Mười giết yêu khâu quê yêu tám. Phá giết yêu leo bơi mua tím vàng giết chết.\nTrăng hết cửa tám tui. Tám tám đỏ áo nha trăng á bàn chín bè. Trăng á máy chỉ độc thôi lầu. Bảy thế năm đồng quần là con. Mượn khoảng ờ đâu bơi không ghế. May đồng phá mây ngọt con đỏ việc chín.\nPhá tím tủ tô nón khoảng việc lỗi gì. Năm đá bốn. Được nghỉ đá mượn đồng. Giết nhà đồng bè.', 99732, '2024-03-11 17:24:15.849000', '2024-03-11 17:24:15.849000', '2024-03-20 19:55:29.763000', NULL, NULL, 'Electronic Soft Chipsalphabet'),
(38, 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartrecollection', 'Nón mướn ruộng tàu á nón thuê được đánh. Tím trăng mười quê khoảng. Ruộng bốn yêu hóa thương tui tám. Biết mười ngọt mười đập xuồng giày. Con ba yêu chỉ mua.\nGiết thế dép. Đá xuồng mây. Cửa hương xanh ba giày chìm.\nGhế áo biết hai khoảng. Máy tôi nhà thương ngọt leo máy núi cửa máy. Phá vá bạn hóa áo chỉ đồng. Đã thích việc leo. Viết bè ghế gì nước tàu máy nước ruộng.', 40763, '2024-03-11 17:24:15.857000', '2024-03-11 17:24:15.857000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Unbranded Metal Shirtpanic'),
(39, 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartcatalogue', 'Nghỉ thuyền dép chỉ. Đỏ núi chìm bơi tôi tím chín nón nha nha. Đập chỉ đỏ thì được tui anh.\nThuê mười dép tím không. Ừ thôi tím nhà mượn. Yêu nhà chín tô trăng một hương lầu. Ruộng vá quần. Bảy đánh khâu. Áo dép hết làm.\nSáu ghế anh cửa giết. Ngọt bơi giết bảy khâu giày tàu máy. Đánh đồng ờ sáu á nha mua chết ruộng. Ừ quê vá tám thuê thuê bảy đã. Đâu nha hương ừ biết xanh xanh.', 72700, '2024-03-11 17:24:15.867000', '2024-03-11 17:24:15.867000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Sleek Metal Chipswaterfront'),
(40, 'The Football Is Good For Training And Recreational Purposesrage', 'Ác xanh đỏ lầu tô giết vàng bốn. Thế á thích. Bốn leo tủ là không độc kim ừ việc. Em quần vàng đang trăng hương đâu. Bàn cửa tàu giết.\nÁo tui đánh kim cửa chín vẽ hai biết không. Vẽ nghỉ nước làm. Ờ trời đâu làm. Gió kim biển nước nghỉ tôi hóa xe. Đánh khoảng biết. Ghế hương ghế nha.\nKhông chìm ác chìm núi ác chín đâu ác kim. Thuyền bốn thuyền vàng lỗi chết cửa. Tô tám đồng. Ruộng nghỉ bàn tô. Cửa mua khoan bốn thì leo chìm chìm. Bảy chỉ em đạp.', 29990, '2024-03-11 17:24:15.876000', '2024-03-11 17:24:15.876000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Practical Metal Chickensnap'),
(41, 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportcounty', 'Em cái bốn đá khâu em một thì. Mua khoan á tím anh mượn. May mua á ác ghế. Bạn bè năm tôi. Bốn tô hàng yêu tủ ruộng thương mượn.\nHai sáu giày xanh giày thôi tô đạp trăng. Thôi sáu em gì ba vá biển tàu. Quần giết nghỉ nha. Nghỉ may ba.\nGió gió nước dép chìm mua nước mua phá bàn. Nha đánh đạp chìm chín hóa đã. Áo thế bàn gió thuyền bơi bàn con tôi.', 31299, '2024-03-11 17:24:15.887000', '2024-03-11 17:24:15.887000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Handmade Soft Saladadmission'),
(42, 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitstrand', 'Chìm mười đã ngọt tàu khoan biển. Tám hết kim mười thôi. Giày không trăng giày thôi áo mây. Ngọt khoan bè cái vá. Độc việc ờ làm đánh giết. Viết áo trời hương chìm viết chín.\nNúi tám mua hóa mười. Viết ghét đạp được ghét tím đỏ ừ. Vá đạp ruộng không đánh dép may núi bốn.\nTám cửa vẽ nhà đạp hết. Trăng bè nhà biển kim yêu quê tím khoan bàn. Thuê đã nón thuyền chỉ trăng. Giết viết là á ngọt xanh ruộng quần yêu ghét. Mua nha cửa vá. Lầu hàng hai độc tô hết nghỉ nước.', 91143, '2024-03-11 18:00:52.599000', '2024-03-11 18:00:52.599000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Handcrafted Rubber Glovesagenda'),
(43, 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitypuddle', 'Đá bè mười vàng lỗi độc bảy mây. Mua mượn thương ngọt tím. Cái khoảng bơi được.\nKhoảng máy xanh ba khoảng đã. Đã tủ ngọt trăng vẽ. Bơi anh bàn con khoảng bàn con ờ.\nĐồng thuyền lỗi phá năm trời. Giết đang vá chỉ khoảng mượn là tô. Đâu trời trời.', 23768, '2024-03-11 18:00:52.606000', '2024-03-11 18:00:52.606000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Gorgeous Steel Fishneedle'),
(44, 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesmagnitude', 'Ghét ghét ghế áo thương. Đã tàu là đạp trăng chìm. Cái giết thế hết ba. Tôi nha giày xanh đồng. Là may ba.\nKim leo dép may đâu dép đâu ghế. Lỗi kim hai mua giày thuyền em thích chìm tô. Nha ờ xanh bơi gì tôi cái. Thích năm áo là.\nĐã hương vá á. Khâu gì khoan áo thuê tôi giết núi. Xanh ừ ừ tôi giày dép.', 65226, '2024-03-11 18:00:52.612000', '2024-03-11 18:00:52.612000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Tasty Steel Bikedumbwaiter'),
(45, 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivecomprehension', 'Là núi gió nghỉ dép hết ừ đã gió. Đã bạn yêu việc mua bảy. Một thế năm. Ừ hương áo khoan nha. Thì biển á. Nha đâu xuồng thế yêu đang.\nBiết nước ngọt giày không hết lỗi. Quần trăng leo được ác tàu anh giày được núi. Đỏ núi máy giày thuê thương chìm đang. Ừ núi nghỉ tôi dép tô. Khoảng mướn đồng bảy mướn khoảng. Thích thôi tôi phá kim đâu.\nThuyền thuê là trời cái á chìm hóa thế. Chìm độc thương bạn bơi lầu. Không yêu thương được một làm là thôi tím.', 89454, '2024-03-11 18:00:52.617000', '2024-03-11 18:00:52.617000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Practical Cotton Fishsycamore'),
(46, 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitrowing', 'Ba hương ghét xuồng ừ. Vá lầu giày thích. Thôi một khoan là. Ừ đạp ba xanh. Ờ năm ngọt em biết thuê trăng ghế ba. Đỏ đâu kim vá tủ áo đá.\nHương nhà hàng con đánh ba sáu. Tô thế ghế hương nha xanh đạp ba. Đá á thương biết đồng mười biết xuồng khoảng. Giày hàng nhà năm.\nBa gió mượn. Sáu đánh may giày thế. Vẽ áo làm mượn bơi. Đỏ bạn xuồng chìm đang dép tô. Phá quần bảy biết đạp tàu.', 60184, '2024-03-11 18:00:52.622000', '2024-03-11 18:00:52.622000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Tasty Steel Fishchromolithograph'),
(47, 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsbonsai', 'Bè trăng kim vá tàu. Tô thương xanh mây khoảng tôi trăng độc lầu vá. Trời núi hàng một. Mười khoan may khoan trời. Hương quần việc tám mây tủ.\nThế lỗi hết nhà một áo vá viết ruộng. Con quần vẽ kim bơi tôi khâu đang. Ruộng đồng nha. Chỉ quê tôi việc năm đang. Cửa biển chết tám cửa nón thích. Đâu vàng việc đồng tím.\nỪ bàn bè nhà đã tui đánh khâu. Sáu hết chỉ. Cửa cái đá tám. Leo thôi xanh ba khâu anh tôi quê quê.', 85824, '2024-03-11 18:00:52.627000', '2024-03-11 18:00:52.627000', '2024-03-20 19:55:29.763000', NULL, NULL, 'Awesome Wooden Computermaterial'),
(48, 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesgirdle', 'Hương anh ghét lầu năm mướn chết. Hai hóa xe. Ghét viết á nghỉ con. Làm mười mây đạp dép leo xanh là tủ giày.\nĐang gió bè quê. Leo vá xuồng tô quê tui hai nước đã. Đạp hóa thôi.\nBiển anh mướn đập thuê một nhà bảy. Được mua xe thương. Gió mượn bơi hết núi bơi.', 90342, '2024-03-11 18:00:52.633000', '2024-03-11 18:00:52.633000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Generic Steel Computerclass'),
(49, 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclessampan', 'Ừ bơi á xe bảy thôi vẽ ờ khâu bè. Vàng ruộng thuyền đỏ thích xe phá mua. Quần ờ giết xuồng hàng.\nÁ ngọt tô mướn cái việc thì trăng đập vẽ. Mây thích ờ hai. Áo ờ ghế thuê việc. Ba tím mây á lỗi tôi. Hết kim em chín viết lầu lầu bốn.\nThích nhà tô. Ác ghế trăng đập xuồng. Hàng việc con nước máy ừ dép tím lỗi không. Đang đạp lầu nước ác. Chìm hương vàng quần tủ chìm xanh.', 73594, '2024-03-11 18:00:52.638000', '2024-03-11 18:00:52.638000', '2024-03-20 19:55:29.763000', NULL, NULL, 'Bespoke Wooden Pantssender'),
(50, 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitynursing', 'Ghét khoan mây ừ bàn biển đập. Đỏ chín gió ghét. Thế hương bàn ruộng.\nLỗi tím dép. Ghét á bè máy chỉ cửa một phá. Á hóa tui. Đỏ năm thuê đã cái. Dép tủ ba đang.\nĐá nước chìm chín leo mây bạn. Thôi viết bạn chìm. Bè thế á lỗi đang. Tủ vàng cái tui là máy hết thôi.', 44042, '2024-03-11 18:00:52.643000', '2024-03-11 18:00:52.643000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Intelligent Frozen Cheesecriminal'),
(51, 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityhectare', 'Một xuồng cửa ờ đồng. Viết lầu ruộng bàn. Vẽ đập tôi thì trăng. Mướn yêu độc. Giết may đồng bè thì mua thuyền vẽ. Kim phá bạn ghế đập ghét hóa thương.\nNhà đỏ bốn đập phá bè nha. Nhà xuồng đập em thương. Trời nhà viết đã đá. Nón hương giết nhà thì việc nhà. Ruộng đang em hai quần đánh em.\nÁ xe tám ờ chín đập vá đang. Vàng hương đạp. Thích đồng chết gì mượn mướn. Bạn thế bơi.', 96455, '2024-03-11 18:00:52.649000', '2024-03-11 18:00:52.649000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Licensed Wooden Computerhatred'),
(52, 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsimportance', 'Hàng năm quần giày gió. Xuồng tôi hương đá mười đá thuê. Lỗi nhà đá nước may.\nNhà giày mười đang mướn thích lỗi. Nghỉ nước một không đá bốn độc giết biển cái. Tám ba anh tủ kim xuồng đập bơi kim. Giết nha được mười. Mười kim bơi giày đâu hàng vá.\nBạn nhà mười chỉ chìm một tàu. Khoảng thương hương phá vẽ leo. Nón xe đã con đánh tàu. Áo giết máy nhà tủ bàn chìm leo nhà leo.', 86366, '2024-03-11 18:09:33.352000', '2024-03-11 18:09:33.352000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Small Soft Chipswrong'),
(53, 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivebackburn', 'Đỏ đã đâu ghế nhà đâu. Đã nha thì. Biển mây hai làm nha. Sáu tô quê viết tím ruộng đâu. Đạp nhà khoan máy tui bơi ác không. Mua may bốn bàn.\nÁ yêu việc tui được đập thế giết không nhà. Xanh ờ thế đâu cửa thế ghế cửa. Mười lầu bốn một một ờ hương hai. Đá bạn giày ghế là trăng con yêu biển bơi. Thương bơi bốn. Hàng tô gió bảy.\nXuồng tô việc may đỏ xuồng không việc. Hai áo đập làm hương đâu hóa nón đã một. Là đồng bơi giết núi ghét thế hết đá.', 83785, '2024-03-11 18:09:33.358000', '2024-03-11 18:09:33.358000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Luxurious Rubber Saladcomprehension'),
(54, 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitybuffer', 'Khâu tui lầu đạp tám được bàn. Vàng em giết một tô chín. Bè thích thuê tui tô việc cái đỏ cửa. Máy thương lỗi dép máy ghế thì vá. Biển được sáu tui bàn kim tàu việc.\nÁc đạp mướn khâu viết làm. Chìm tôi nước bạn nước ờ mua tôi vẽ phá. Con xe mười vàng ác hết nón tàu đã. Đá tui quê.\nLầu tàu quê dép xanh làm nhà. Đập cửa bốn leo ba thuyền tủ nghỉ. Không nhà nghỉ ác chìm thích xe khoan. Thì đang thế xanh đánh tủ thuê.', 97085, '2024-03-11 18:09:33.363000', '2024-03-11 18:09:33.363000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Handcrafted Bronze Keyboardconductor'),
(55, 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsdisposal', 'Được tím mười bốn viết bảy quần. Khoan sáu sáu nhà gió. Sáu được gió chỉ phá ghét được đang. Đánh tám yêu phá nghỉ ba ờ. Đánh đang độc ruộng mướn hai hết thôi đâu.\nMay đã áo lỗi thì. Thế không đâu con hóa lầu thôi xanh xanh. Mây đồng tám sáu ghế leo máy sáu hương.\nLỗi gió bè ghế đỏ đồng thuê vá. Hàng con mây phá. Anh là quê vẽ đánh nước con khoảng tàu thì. Đánh tím phá nón chỉ bơi tôi biển trăng đồng. Gì dép thích dép khâu tô xe biết xe máy.', 85182, '2024-03-11 18:09:33.367000', '2024-03-11 18:09:33.367000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Rustic Metal Baconinstallation'),
(56, 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fiteviction', 'Leo leo thế chín thương đạp. Thôi đánh thế biết. Con ác bảy. Nha bè vá. Kim bàn máy nón chết bảy thích thôi chỉ ngọt. Khoan ngọt lầu gì.\nBốn hai tôi năm nước con phá. Biết gió tám cửa lầu gì con không. Phá cửa con vẽ nón núi khâu bơi được. Chỉ tôi chết mây nước lầu. Ngọt giày tui. Bè máy lầu cửa ghét bảy.\nViết biển bốn hóa nước bàn khâu leo không. Đánh em một đỏ. Là hương mướn trời đã nước bốn đồng á. Tím thế ờ may xanh thôi á quê. Quê đâu năm máy khâu đỏ là chết dép. Mướn năm đánh sáu mười cửa.', 92929, '2024-03-11 18:09:33.372000', '2024-03-11 18:09:33.372000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Handmade Rubber Towelspostbox'),
(57, 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitskywalk', 'Phá trăng cửa thì. Thế nha gió đá tui tôi bảy bàn đồng. Nước hàng nhà chết ba. Cái nghỉ ờ ba máy áo đồng anh. Ghế áo sáu vẽ tô tàu vàng hóa đập giết. Một quần trăng bảy một ghét leo chỉ.\nThôi chìm khâu. Trời núi xanh trăng đá đánh đá. Ghét hàng biển. Núi nghỉ nhà quê thương ba. Thì giết cái là yêu đạp chết bạn ba.\nRuộng cái đá. Thích lầu kim khoan được ba tàu thuyền sáu nón. Khoảng bè phá tàu thì núi. Chín mua sáu áo năm năm hóa xanh may. Trăng ờ nhà đang làm tôi bạn gió kim.', 43432, '2024-03-11 18:09:33.377000', '2024-03-11 18:09:33.377000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Gorgeous Wooden Soapsickness'),
(58, 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesinitial', 'Nón áo chìm áo quần tàu em nha tui ác. Sáu giết em tím lầu ruộng thế ruộng biển bàn. Cửa ờ tui phá tôi. Đã thuyền mây trời trăng việc.\nThích giết biết chết á tô ngọt. Anh ghét mười. Vàng bốn thì á thích bảy tui ừ.\nĐỏ được ba núi nước ghế thuyền núi yêu. Mười leo bàn. Em một nha không chìm thuyền xe em quê áo. Đã đá tủ thuyền đỏ.', 72953, '2024-03-11 18:09:33.381000', '2024-03-11 18:09:33.381000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Elegant Plastic Bacondickey'),
(59, 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientscertification', 'Hóa vàng khâu nghỉ. Vá trăng ghế khâu mười khoan vá biết cái đâu. Á máy xanh việc đánh nhà. Đang không anh ác việc làm ờ đâu năm ờ. Yêu một hai không mười.\nGió trăng trăng đánh ruộng tôi quần hai. Bảy mượn tôi giết biết. Kim không thuyền vẽ mướn mượn.\nPhá chìm vàng ba khoan nhà thôi khâu cửa. Núi mướn đâu xanh. Ác xuồng cái nghỉ thuyền em. Đâu là thương trăng thuyền độc.', 88132, '2024-03-11 18:09:33.389000', '2024-03-11 18:09:33.389000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Handcrafted Granite Tablefinding'),
(60, 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivewestern', 'Đá nước thuyền là. Chín thuyền nón. Trời biển đỏ leo. Khâu lỗi dép không xanh xuồng biết ghét. Gió bảy thôi làm.\nPhá chín yêu may. Nón mượn vàng ghế trăng nón ba đâu. Giết phá biết một hóa. Yêu anh trăng tám ba xanh hết. Ghét hai mượn áo hàng bảy nước bàn trăng.\nMướn năm kim. Hóa cửa bơi xuồng ghế ruộng xe bàn bè. Biết bốn chín trời đập quê vẽ gió thương độc. Biển phá may dép bè vàng tàu. May ừ cái trời khoan nón tám dép. Nha hai đạp leo.', 28838, '2024-03-11 18:09:33.394000', '2024-03-11 18:09:33.394000', '2024-03-20 19:56:35.965000', NULL, NULL, 'Recycled Granite Ballherb');

-- --------------------------------------------------------

--
-- Table structure for table `products_category_links`
--

CREATE TABLE `products_category_links` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products_category_links`
--

INSERT INTO `products_category_links` (`id`, `product_id`, `category_id`) VALUES
(4, 3, 40),
(5, 4, 44),
(6, 5, 77),
(7, 6, 17),
(8, 7, 35),
(9, 8, 7),
(10, 9, 65),
(11, 10, 21),
(12, 11, 5),
(13, 12, 8),
(14, 13, 35),
(15, 14, 32),
(16, 15, 64),
(17, 16, 19),
(18, 17, 12),
(19, 18, 14),
(20, 19, 17),
(21, 20, 39),
(22, 21, 43),
(23, 22, 26),
(24, 23, 22),
(25, 24, 48),
(26, 25, 3),
(27, 26, 68),
(28, 27, 42),
(29, 28, 75),
(30, 29, 67),
(31, 30, 41),
(32, 31, 57),
(33, 32, 10),
(34, 33, 37),
(35, 34, 37),
(36, 35, 57),
(37, 36, 42),
(38, 37, 28),
(39, 38, 25),
(40, 39, 12),
(41, 40, 17),
(42, 41, 49);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'tokenA', 'chỉ xem category', 'custom', '65d1fe447dbbe57f957058e1a6cfd08aa8b890fb770eac040830eac7b3894d2b4f452adb91ac86c18ab8753ad88f9b17bb1025f5a1818a3561b2925519e4f932', NULL, NULL, NULL, '2024-03-11 18:46:45.724000', '2024-04-11 14:20:14.008000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `strapi_api_token_permissions`
--

INSERT INTO `strapi_api_token_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'api::category.category.findOne', '2024-03-11 18:46:45.730000', '2024-03-11 18:46:45.730000', NULL, NULL),
(2, 'api::category.category.find', '2024-03-11 18:46:45.730000', '2024-03-11 18:46:45.730000', NULL, NULL),
(3, 'api::category.category.update', '2024-03-11 19:25:31.163000', '2024-03-11 19:25:31.163000', NULL, NULL),
(4, 'api::category.category.create', '2024-03-11 19:25:31.163000', '2024-03-11 19:25:31.163000', NULL, NULL),
(5, 'api::category.category.delete', '2024-03-11 19:25:31.163000', '2024-03-11 19:25:31.163000', NULL, NULL),
(6, 'api::product.product.find', '2024-03-18 14:39:44.780000', '2024-03-18 14:39:44.780000', NULL, NULL),
(7, 'api::product.product.findOne', '2024-03-18 14:39:44.780000', '2024-03-18 14:39:44.780000', NULL, NULL),
(8, 'api::product.product.create', '2024-03-18 14:39:44.780000', '2024-03-18 14:39:44.780000', NULL, NULL),
(9, 'api::product.product.update', '2024-03-18 14:39:44.780000', '2024-03-18 14:39:44.780000', NULL, NULL),
(10, 'api::product.product.delete', '2024-03-18 14:39:44.780000', '2024-03-18 14:39:44.780000', NULL, NULL),
(11, 'plugin::upload.content-api.find', '2024-04-03 00:46:11.742000', '2024-04-03 00:46:11.742000', NULL, NULL),
(12, 'plugin::upload.content-api.findOne', '2024-04-03 00:46:11.742000', '2024-04-03 00:46:11.742000', NULL, NULL),
(13, 'plugin::upload.content-api.destroy', '2024-04-03 00:46:11.742000', '2024-04-03 00:46:11.742000', NULL, NULL),
(14, 'plugin::upload.content-api.upload', '2024-04-03 00:46:11.742000', '2024-04-03 00:46:11.742000', NULL, NULL),
(15, 'plugin::users-permissions.auth.callback', '2024-04-11 14:20:14.013000', '2024-04-11 14:20:14.013000', NULL, NULL),
(16, 'plugin::users-permissions.auth.changePassword', '2024-04-11 14:20:14.013000', '2024-04-11 14:20:14.013000', NULL, NULL),
(17, 'plugin::users-permissions.auth.resetPassword', '2024-04-11 14:20:14.013000', '2024-04-11 14:20:14.013000', NULL, NULL),
(18, 'plugin::users-permissions.auth.connect', '2024-04-11 14:20:14.013000', '2024-04-11 14:20:14.013000', NULL, NULL),
(19, 'plugin::users-permissions.auth.forgotPassword', '2024-04-11 14:20:14.013000', '2024-04-11 14:20:14.013000', NULL, NULL),
(20, 'plugin::users-permissions.auth.register', '2024-04-11 14:20:14.013000', '2024-04-11 14:20:14.013000', NULL, NULL),
(21, 'plugin::users-permissions.auth.emailConfirmation', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(22, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(23, 'plugin::users-permissions.user.create', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(24, 'plugin::users-permissions.user.update', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(25, 'plugin::users-permissions.user.find', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(26, 'plugin::users-permissions.user.findOne', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(27, 'plugin::users-permissions.user.count', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(28, 'plugin::users-permissions.user.destroy', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(29, 'plugin::users-permissions.user.me', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(30, 'plugin::users-permissions.role.createRole', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(31, 'plugin::users-permissions.role.findOne', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(32, 'plugin::users-permissions.role.find', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(33, 'plugin::users-permissions.role.updateRole', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(34, 'plugin::users-permissions.role.deleteRole', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL),
(35, 'plugin::users-permissions.permissions.getPermissions', '2024-04-11 14:20:14.014000', '2024-04-11 14:20:14.014000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `api_token_permission_id` int UNSIGNED DEFAULT NULL,
  `api_token_id` int UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `strapi_api_token_permissions_token_links`
--

INSERT INTO `strapi_api_token_permissions_token_links` (`id`, `api_token_permission_id`, `api_token_id`, `api_token_permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 2),
(4, 4, 1, 2),
(5, 5, 1, 3),
(6, 6, 1, 4),
(7, 7, 1, 4),
(8, 8, 1, 4),
(9, 9, 1, 4),
(10, 10, 1, 4),
(11, 12, 1, 5),
(12, 11, 1, 5),
(13, 13, 1, 5),
(14, 14, 1, 5),
(15, 15, 1, 6),
(16, 16, 1, 6),
(17, 17, 1, 6),
(18, 18, 1, 6),
(19, 19, 1, 6),
(20, 20, 1, 6),
(21, 23, 1, 6),
(22, 22, 1, 6),
(23, 21, 1, 6),
(24, 25, 1, 6),
(25, 26, 1, 7),
(26, 24, 1, 7),
(27, 27, 1, 7),
(28, 28, 1, 7),
(29, 29, 1, 7),
(30, 30, 1, 7),
(31, 31, 1, 7),
(32, 32, 1, 7),
(33, 33, 1, 7),
(34, 34, 1, 7),
(35, 35, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"categoryName\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"categoryName\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"productName\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\"},\"detail\":{\"type\":\"text\"},\"price\":{\"type\":\"biginteger\"},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"category\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::category.category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"productName\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\"},\"detail\":{\"type\":\"text\"},\"price\":{\"type\":\"biginteger\"},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"category\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::category.category\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"product\",\"connection\":\"default\",\"uid\":\"api::product.product\",\"apiName\":\"product\",\"globalId\":\"Product\",\"actions\":{},\"lifecycles\":{}},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"release\",\"connection\":\"default\",\"uid\":\"plugin::content-releases.release\",\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"entry\":{\"type\":\"relation\",\"relation\":\"morphToOne\",\"configurable\":false},\"contentType\":{\"type\":\"string\",\"required\":true},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"entry\":{\"type\":\"relation\",\"relation\":\"morphToOne\",\"configurable\":false},\"contentType\":{\"type\":\"string\",\"required\":true},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"release-action\",\"connection\":\"default\",\"uid\":\"plugin::content-releases.release-action\",\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(4, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6}],[{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(17, 'plugin_upload_metrics', '{\"weeklySchedule\":\"46 53 7 * * 2\",\"lastWeeklyUpdate\":1712624026030}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]}}', 'object', NULL, NULL),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(21, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"categoryName\",\"defaultSortBy\":\"categoryName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"categoryName\":{\"edit\":{\"label\":\"categoryName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"categoryName\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"categoryName\",\"description\",\"createdAt\"],\"edit\":[[{\"name\":\"categoryName\",\"size\":6},{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"uid\":\"api::product.product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"productName\",\"defaultSortBy\":\"productName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"productName\":{\"edit\":{\"label\":\"productName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"productName\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"detail\":{\"edit\":{\"label\":\"detail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"detail\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"categoryName\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"description\",\"detail\",\"productName\"],\"edit\":[[{\"name\":\"description\",\"size\":6}],[{\"name\":\"detail\",\"size\":6},{\"name\":\"price\",\"size\":4}],[{\"name\":\"image\",\"size\":6},{\"name\":\"category\",\"size\":6}],[{\"name\":\"productName\",\"size\":6}]]}}', 'object', NULL, NULL),
(25, 'plugin_documentation_config', '{\"restrictedAccess\":false}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"locale\":{\"edit\":{\"label\":\"locale\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"locale\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"isEntryValid\":{\"edit\":{\"label\":\"isEntryValid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEntryValid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"locale\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"locale\",\"size\":6},{\"name\":\"release\",\"size\":6}],[{\"name\":\"isEntryValid\",\"size\":4}]]},\"uid\":\"plugin::content-releases.release-action\"}', 'object', NULL, NULL),
(28, 'plugin_upload_api-folder', '{\"id\":2}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int UNSIGNED NOT NULL,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(13, '{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"action_parameters\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"category_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"detail\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"price\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"products_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"products_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"upload_files_created_at_index\", \"type\": null, \"columns\": [\"created_at\"]}, {\"name\": \"upload_files_updated_at_index\", \"type\": null, \"columns\": [\"updated_at\"]}, {\"name\": \"upload_files_name_index\", \"type\": null, \"columns\": [\"name\"]}, {\"name\": \"upload_files_size_index\", \"type\": null, \"columns\": [\"size\"]}, {\"name\": \"upload_files_ext_index\", \"type\": null, \"columns\": [\"ext\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_releases\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"released_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"scheduled_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"timezone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_releases_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_releases_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_releases_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_releases_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_release_actions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"target_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"target_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"content_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_entry_valid\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_release_actions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_release_actions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_release_actions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_release_actions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"transfer_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"transfer_token_permission_id\", \"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_order_inv_fk\", \"columns\": [\"transfer_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products_category_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_category_links_fk\", \"columns\": [\"product_id\"]}, {\"name\": \"products_category_links_inv_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"products_category_links_unique\", \"type\": \"unique\", \"columns\": [\"product_id\", \"category_id\"]}], \"foreignKeys\": [{\"name\": \"products_category_links_fk\", \"columns\": [\"product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_category_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_related_morphs_order_index\", \"columns\": [\"order\"]}, {\"name\": \"files_related_morphs_id_column_index\", \"columns\": [\"related_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_release_actions_release_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"release_action_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"release_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"release_action_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_release_actions_release_links_fk\", \"columns\": [\"release_action_id\"]}, {\"name\": \"strapi_release_actions_release_links_inv_fk\", \"columns\": [\"release_id\"]}, {\"name\": \"strapi_release_actions_release_links_unique\", \"type\": \"unique\", \"columns\": [\"release_action_id\", \"release_id\"]}, {\"name\": \"strapi_release_actions_release_links_order_inv_fk\", \"columns\": [\"release_action_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_release_actions_release_links_fk\", \"columns\": [\"release_action_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_release_actions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_release_actions_release_links_inv_fk\", \"columns\": [\"release_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_releases\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"up_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_users_role_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"up_users_role_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}]}', '2024-03-11 18:09:33', 'c5b38e77539962cb1c72e5770db45ea9');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_releases`
--

CREATE TABLE `strapi_releases` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions`
--

CREATE TABLE `strapi_release_actions` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `target_id` int UNSIGNED DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions_release_links`
--

CREATE TABLE `strapi_release_actions_release_links` (
  `id` int UNSIGNED NOT NULL,
  `release_action_id` int UNSIGNED DEFAULT NULL,
  `release_id` int UNSIGNED DEFAULT NULL,
  `release_action_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `transfer_token_permission_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'product', 1, '/1', '2024-03-11 17:48:12.966000', '2024-03-11 17:48:12.966000', 1, 1),
(2, 'API Uploads', 2, '/2', '2024-04-03 06:42:01.647000', '2024-04-03 06:42:01.647000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int UNSIGNED NOT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `inv_folder_id` int UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2024-03-06 19:25:29.161000', '2024-03-06 19:25:29.161000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2024-03-06 19:25:29.161000', '2024-03-06 19:25:29.161000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2024-03-06 19:25:29.166000', '2024-03-06 19:25:29.166000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2024-03-06 19:25:29.166000', '2024-03-06 19:25:29.166000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2024-03-06 19:25:29.166000', '2024-03-06 19:25:29.166000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2024-03-06 19:25:29.166000', '2024-03-06 19:25:29.166000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2024-03-06 19:25:29.166000', '2024-03-06 19:25:29.166000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2024-03-06 19:25:29.166000', '2024-03-06 19:25:29.166000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-03-06 19:25:29.166000', '2024-03-06 19:25:29.166000', NULL, NULL),
(10, 'api::product.product.find', '2024-04-01 20:16:41.334000', '2024-04-01 20:16:41.334000', NULL, NULL),
(11, 'api::product.product.findOne', '2024-04-01 20:16:41.334000', '2024-04-01 20:16:41.334000', NULL, NULL),
(15, 'plugin::upload.content-api.findOne', '2024-04-03 06:41:45.388000', '2024-04-03 06:41:45.388000', NULL, NULL),
(16, 'plugin::upload.content-api.destroy', '2024-04-03 06:41:45.388000', '2024-04-03 06:41:45.388000', NULL, NULL),
(17, 'plugin::upload.content-api.find', '2024-04-03 06:41:45.388000', '2024-04-03 06:41:45.388000', NULL, NULL),
(18, 'plugin::upload.content-api.upload', '2024-04-03 06:41:45.388000', '2024-04-03 06:41:45.388000', NULL, NULL),
(23, 'plugin::email.email.send', '2024-04-08 11:24:09.309000', '2024-04-08 11:24:09.309000', NULL, NULL),
(31, 'api::category.category.findOne', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(32, 'api::category.category.find', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(33, 'api::category.category.create', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(34, 'api::category.category.update', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(35, 'api::category.category.delete', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(36, 'api::product.product.find', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(37, 'api::product.product.findOne', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(38, 'api::product.product.create', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(39, 'api::product.product.update', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(40, 'api::product.product.delete', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(41, 'plugin::content-type-builder.components.getComponents', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(42, 'plugin::content-type-builder.components.getComponent', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(43, 'plugin::content-type-builder.content-types.getContentTypes', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(44, 'plugin::content-type-builder.content-types.getContentType', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(45, 'plugin::email.email.send', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(46, 'plugin::upload.content-api.find', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(47, 'plugin::upload.content-api.findOne', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(48, 'plugin::upload.content-api.destroy', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(49, 'plugin::upload.content-api.upload', '2024-04-10 23:58:59.385000', '2024-04-10 23:58:59.385000', NULL, NULL),
(50, 'plugin::i18n.locales.listLocales', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(51, 'plugin::users-permissions.auth.callback', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(52, 'plugin::users-permissions.auth.changePassword', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(53, 'plugin::users-permissions.auth.resetPassword', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(54, 'plugin::users-permissions.auth.connect', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(55, 'plugin::users-permissions.auth.forgotPassword', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(56, 'plugin::users-permissions.auth.register', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(57, 'plugin::users-permissions.auth.emailConfirmation', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(58, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(59, 'plugin::users-permissions.user.create', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(60, 'plugin::users-permissions.user.update', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(61, 'plugin::users-permissions.user.find', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(62, 'plugin::users-permissions.user.findOne', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(63, 'plugin::users-permissions.user.count', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(64, 'plugin::users-permissions.user.destroy', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(65, 'plugin::users-permissions.user.me', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(66, 'plugin::users-permissions.role.createRole', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(67, 'plugin::users-permissions.role.findOne', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(68, 'plugin::users-permissions.role.find', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(69, 'plugin::users-permissions.role.updateRole', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(70, 'plugin::users-permissions.role.deleteRole', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(71, 'plugin::users-permissions.permissions.getPermissions', '2024-04-10 23:58:59.386000', '2024-04-10 23:58:59.386000', NULL, NULL),
(72, 'api::category.category.find', '2024-04-11 00:00:28.040000', '2024-04-11 00:00:28.040000', NULL, NULL),
(73, 'api::category.category.findOne', '2024-04-11 00:00:28.040000', '2024-04-11 00:00:28.040000', NULL, NULL),
(74, 'api::product.product.find', '2024-04-11 00:00:28.040000', '2024-04-11 00:00:28.040000', NULL, NULL),
(75, 'api::product.product.findOne', '2024-04-11 00:00:28.040000', '2024-04-11 00:00:28.040000', NULL, NULL),
(76, 'api::category.category.find', '2024-04-11 00:02:26.534000', '2024-04-11 00:02:26.534000', NULL, NULL),
(77, 'api::category.category.findOne', '2024-04-11 00:02:26.534000', '2024-04-11 00:02:26.534000', NULL, NULL),
(78, 'plugin::email.email.send', '2024-04-11 00:02:26.534000', '2024-04-11 00:02:26.534000', NULL, NULL),
(81, 'plugin::users-permissions.role.findOne', '2024-04-11 13:39:14.416000', '2024-04-11 13:39:14.416000', NULL, NULL),
(82, 'plugin::users-permissions.role.find', '2024-04-11 13:39:14.416000', '2024-04-11 13:39:14.416000', NULL, NULL),
(83, 'plugin::users-permissions.auth.callback', '2024-04-11 13:41:51.460000', '2024-04-11 13:41:51.460000', NULL, NULL),
(85, 'plugin::users-permissions.auth.forgotPassword', '2024-04-11 13:41:51.460000', '2024-04-11 13:41:51.460000', NULL, NULL),
(86, 'plugin::users-permissions.user.find', '2024-04-11 17:54:00.248000', '2024-04-11 17:54:00.248000', NULL, NULL),
(87, 'plugin::users-permissions.user.findOne', '2024-04-11 17:54:00.248000', '2024-04-11 17:54:00.248000', NULL, NULL),
(89, 'plugin::upload.content-api.upload', '2024-04-12 16:00:09.520000', '2024-04-12 16:00:09.520000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 2, 1, 1),
(2, 1, 1, 1),
(3, 3, 2, 1),
(4, 4, 2, 1),
(5, 5, 2, 1),
(6, 7, 2, 2),
(7, 6, 2, 2),
(8, 8, 2, 2),
(9, 9, 2, 2),
(10, 11, 2, 3),
(11, 10, 2, 3),
(15, 16, 1, 2),
(16, 17, 1, 2),
(17, 18, 1, 2),
(18, 15, 1, 2),
(24, 23, 1, 3),
(31, 32, 3, 1),
(32, 31, 3, 1),
(33, 36, 3, 1),
(34, 33, 3, 1),
(35, 34, 3, 1),
(36, 35, 3, 1),
(37, 42, 3, 1),
(38, 37, 3, 1),
(39, 38, 3, 1),
(40, 41, 3, 1),
(41, 40, 3, 2),
(42, 39, 3, 2),
(43, 45, 3, 2),
(44, 43, 3, 2),
(45, 44, 3, 2),
(46, 46, 3, 2),
(47, 47, 3, 2),
(48, 49, 3, 2),
(49, 48, 3, 2),
(50, 50, 3, 2),
(51, 51, 3, 3),
(52, 52, 3, 3),
(53, 53, 3, 3),
(54, 54, 3, 3),
(55, 55, 3, 3),
(56, 56, 3, 3),
(57, 57, 3, 3),
(58, 58, 3, 3),
(59, 59, 3, 3),
(60, 60, 3, 3),
(61, 61, 3, 4),
(62, 62, 3, 4),
(63, 63, 3, 4),
(64, 64, 3, 4),
(65, 65, 3, 4),
(66, 67, 3, 4),
(67, 66, 3, 4),
(68, 68, 3, 4),
(69, 69, 3, 4),
(70, 70, 3, 4),
(71, 71, 3, 5),
(72, 72, 1, 4),
(73, 73, 1, 4),
(74, 74, 1, 5),
(75, 75, 1, 5),
(76, 76, 2, 4),
(77, 77, 2, 4),
(78, 78, 2, 4),
(81, 81, 1, 6),
(82, 82, 1, 6),
(83, 83, 1, 7),
(85, 85, 1, 7),
(86, 87, 1, 8),
(87, 86, 1, 8),
(89, 89, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2024-03-06 19:25:29.155000', '2024-04-12 12:34:26.451000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2024-03-06 19:25:29.157000', '2024-04-12 16:00:09.515000', NULL, NULL),
(3, 'admin-web', 'Admin web shop', 'admin_web', '2024-04-10 23:58:59.378000', '2024-04-12 12:33:46.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'foobar', 'foo.bar@strapi.io', 'local', '$2a$10$M6Xs.oSBaUB6fx0uy/KpJuUze9A6O1j4iBRFeDW.idXYzN4w8GCuC', NULL, NULL, 1, 0, '2024-04-08 11:24:21.850000', '2024-04-08 11:24:21.850000', NULL, NULL),
(2, 'admin', 'foo123.bar@strapi.io', 'local', '$2a$10$tgteUcv1MoGGoZpVWj7kHuRHjegt.d/GnIqyIrhjglrYq.AfsoUbG', NULL, NULL, 1, 0, '2024-04-08 11:25:45.968000', '2024-04-08 11:25:45.968000', NULL, NULL),
(3, 'user1', 'user1@gmail.com', 'local', '$2a$10$o7CsUMaWvrEjMW/u8Ki1M.dZuW1lNVIvWsk0N8JLuKAC6nLTCqe2m', NULL, NULL, 1, 0, '2024-04-08 15:46:35.277000', '2024-04-08 15:46:35.277000', NULL, NULL),
(4, 'user2', 'use2@gmail.com', 'local', '$2a$10$Cs8l1UIYpppMr14pJnGbduvnRutUYD6OqhyYP0dGQfCh5YfPIlmju', NULL, NULL, 1, 0, '2024-04-10 09:42:00.168000', '2024-04-10 09:42:00.168000', NULL, NULL),
(5, 'user3', 'use3@gmail.com', 'local', '$2a$10$zjiQT66I2.oJzeoSA9aBDeXzuqFJLb.k/enda3.jbogS.rI93F4B2', NULL, NULL, 1, 0, '2024-04-10 09:51:18.772000', '2024-04-10 09:51:18.772000', NULL, NULL),
(6, 'user4', 'user4@gmail.com', 'local', '$2a$10$Jyg/HGTfiUahN/8iRoqS1OtGZvyHzkL/NGEZpdD7HlnrXcwltMau.', NULL, NULL, 1, 0, '2024-04-10 10:02:30.642000', '2024-04-10 10:02:30.642000', NULL, NULL),
(7, 'user5', 'user5@gmail.com', 'local', '$2a$10$1uBipga8BOXDZOvb6skg0.LaS8jhgUEhwu48oG2NtYCc466IKRHlu', NULL, NULL, 1, 0, '2024-04-10 10:25:21.160000', '2024-04-10 10:25:21.160000', NULL, NULL),
(8, 'user6', 'user6@gmail.com', 'local', '$2a$10$BoxVxcbxyNtjswcyFZhIqON3z8N7dPw2mg0JJPZSkTk7RwdiXzZ12', NULL, NULL, 1, 0, '2024-04-10 10:27:23.047000', '2024-04-10 10:27:23.047000', NULL, NULL),
(9, 'user7', 'user7@gmail.com', 'local', '$2a$10$9iZ7HnjbHjfP8ieZsQYI4O5kFZkEBpdKGRVylxB3j8g35m/6dggce', NULL, NULL, 1, 0, '2024-04-10 10:29:40.148000', '2024-04-10 10:29:40.148000', NULL, NULL),
(10, 'user8', 'user8@gmail.com', 'local', '$2a$10$ymbGF9H4y9ixT1iRM/rc6enW0Wvoe2wcOImWmJkvdqwCOmf7lz5sS', NULL, NULL, 1, 0, '2024-04-10 11:12:59.492000', '2024-04-10 11:12:59.492000', NULL, NULL),
(11, 'user9', 'user9@gmail.com', 'local', '$2a$10$uA1kIXESOGG9K7SoKrV.a.2zahv84FfjdLJXgp5BRmycOtnAIev72', NULL, NULL, 1, 0, '2024-04-10 11:15:54.296000', '2024-04-10 11:15:54.296000', NULL, NULL),
(12, 'user10', 'user10@gmail.com', 'local', '$2a$10$q8u05y2LhpA5YsAMjgaATuGlqLO41p5MH68nDfJ5x8XooVjnO80TS', NULL, NULL, 1, 0, '2024-04-10 11:20:06.083000', '2024-04-10 11:20:06.083000', NULL, NULL),
(13, 'user11', 'user11@gmail.com', 'local', '$2a$10$AYgfr5AhqIsun8RzeG5ZTu4w4PL32Ym9oXSQ61BgO02QphnesmHAO', NULL, NULL, 1, 0, '2024-04-10 11:25:26.132000', '2024-04-10 11:25:26.132000', NULL, NULL),
(14, 'user12', 'user12@gmail.com', 'local', '$2a$10$FjEB1f5JxPEQC3/4k1BYDegThUFR7w/ycuh/Knl1nSPiAqUcUmr1u', NULL, NULL, 1, 0, '2024-04-10 11:28:47.239000', '2024-04-10 11:28:47.239000', NULL, NULL),
(15, 'user13', 'user13@gmail.com', 'local', '$2a$10$MCCsahLtgN0ndWA6owdTNebjPntR6Zn7RJ.ag0F9w/V4n1xckuOq.', NULL, NULL, 1, 0, '2024-04-10 11:36:11.688000', '2024-04-10 11:36:11.688000', NULL, NULL),
(16, 'user14', 'user14@gmail.com', 'local', '$2a$10$mpOU0Y1D4r.u4tZQjqopvONu0inV0ascSegkTQpmSBeBkuLm4QXfO', NULL, NULL, 1, 0, '2024-04-10 11:50:25.745000', '2024-04-10 11:50:25.745000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 3, 3),
(4, 4, 3, 4),
(5, 5, 1, 5),
(6, 6, 3, 6),
(7, 7, 1, 7),
(8, 8, 1, 8),
(9, 9, 1, 9),
(10, 10, 1, 10),
(11, 11, 1, 11),
(12, 12, 1, 12),
(13, 13, 1, 13),
(14, 14, 1, 14),
(15, 15, 1, 15),
(16, 16, 1, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_created_by_id_fk` (`created_by_id`),
  ADD KEY `products_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products_category_links`
--
ALTER TABLE `products_category_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_category_links_unique` (`product_id`,`category_id`),
  ADD KEY `products_category_links_fk` (`product_id`),
  ADD KEY `products_category_links_inv_fk` (`category_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_release_actions_release_links_unique` (`release_action_id`,`release_id`),
  ADD KEY `strapi_release_actions_release_links_fk` (`release_action_id`),
  ADD KEY `strapi_release_actions_release_links_inv_fk` (`release_id`),
  ADD KEY `strapi_release_actions_release_links_order_inv_fk` (`release_action_order`);

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `products_category_links`
--
ALTER TABLE `products_category_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products_category_links`
--
ALTER TABLE `products_category_links`
  ADD CONSTRAINT `products_category_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  ADD CONSTRAINT `strapi_release_actions_release_links_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_release_actions_release_links_inv_fk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
