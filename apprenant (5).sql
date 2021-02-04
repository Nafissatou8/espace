-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 04 fév. 2021 à 10:16
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `apprenant`
--

-- --------------------------------------------------------

--
-- Structure de la table `recherche`
--

CREATE TABLE `recherche` (
  `id` int(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `date_de_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recherche`
--

INSERT INTO `recherche` (`id`, `prenom`, `nom`, `date_de_naissance`) VALUES
(1, 'nafi', 'tapsoba', '2020-10-11'),
(2, 'ali', 'da', '2020-01-19'),
(3, 'franck', 'ko', '0000-00-00'),
(4, 'hugue', 'mihin', '0000-00-00'),
(5, 'davy', 'diebre', '0000-00-00'),
(6, 'ismael', 'ouiya', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_confirm` varchar(100) NOT NULL,
  `validation_token` varchar(250) NOT NULL,
  `confirmed_at` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `password_confirm`, `validation_token`, `confirmed_at`) VALUES
(1, 'Nafissatou8', 'tapsobanafissatou8@gmail.com', '$2y$10$d9EfQgkwBCCi5hiBPfo9LO9XDcfRG06c84KOm3m6NgtO945aB1N72', '', '', ''),
(2, 'fyfy12', 'tapsobanafissatou@gmail.com', '$2y$10$R7nrZjhA590d..rlUVO92u7D2K4uU2yxYkBR3SaJNJa7PNoH0D/bW', '', '', ''),
(3, 'gg', 'tapsobanafissatou5@gmail.com', '$2y$10$UxGESnM1N8CunRKlERtaYuab/Y.CsA8xcXGZMc3RKPrJAi.kJGcPm', '', '', ''),
(4, 'adama12', 'dama@gmail.com', '$2y$10$z4.NT2MG.0HMPHvYuZ1I0uRbeUDDQGy68o0pwLnXHz3e90Bzsm1bW', '', '', ''),
(5, 'mas', 'CC@gmail.com', '$2y$10$cwjmc6JJNDQ1INlOtpasv.g16Z6bTjdiGD0zb.Rk.qozPLZoBVUtO', '', '', ''),
(6, 'fyfy', 'tapsobanafissatou3@gmail.com', '$2y$10$mQ6emA4tbrEklB0wK9pH5eMlWopD/hEVUrqFnKZ29SNKCTve6Qjb.', '', '', ''),
(7, 'kk', 'nafi@gmail.com', '$2y$10$RVty2VS4QpJfikkKyGy6l.CvuiSfcVAxsZHPqhYxS7FuSQPNJ0mzi', '', '', ''),
(8, 'ami', 'amisank@gmail.com', '$2y$10$kbzfMN1v3tXzVJoYj71QLO/ZEUrvn8FC3n8YfDMYGrkUGjuLkq2iq', '', '', ''),
(9, 'oumou', 'oumou@gmail.com', '$2y$10$UWe9NmtyzBYIi4cbcuHj3.ma36wvvZRM2PdgJam9WbSMwaP2j6QuC', '', '', ''),
(10, 'aicha', 'aicha@gamail.com', '$2y$10$9FcKuIFGCNJsP4ZA2m/kBe3VAzXVXYnNo93jAMs8nTf3bfi3wt862', '', '', ''),
(11, 'frank', 'frank@gamail.com', '$2y$10$/tmobXupr2oTO7if.Vi.4.Y2DQ5WJzwU/ke4TjvdHcb1mN/Ojms8u', '', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `recherche`
--
ALTER TABLE `recherche`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `recherche`
--
ALTER TABLE `recherche`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
