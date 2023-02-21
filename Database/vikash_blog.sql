-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 11:12 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vikash_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(12) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'vikash', '8535085731', 'vikash', '2022-02-04 11:06:29', 'expertvikash@gmail.com'),
(2, '', '', '', '2022-02-05 11:10:29', ''),
(3, 'vikash', '8535085731', 'hello', '2022-04-08 08:13:50', 'expertvikash@gmail.com'),
(4, 'vikash sharma', '914567390', 'hello this is vikash sharma and i am intrested in your website', '2022-04-08 09:04:31', 'vikash_bca21@gla.ac.in'),
(5, 'vikash', '8535085731', 'hello ', '2022-04-08 09:07:12', 'expertvikash@gmail.com'),
(6, 'shubham singh', '98492340234', 'hello this is shubham singh', '2022-04-08 09:37:07', 'shubham.singh_bca21@gla.ac.in'),
(7, 'Vikash Sharma', '8798089090', 'hello', '2022-05-01 08:16:16', 'expertvikash@gmail.com'),
(8, '', '', '', '2022-05-09 21:13:13', ''),
(9, '', '', '', '2022-05-09 21:15:10', ''),
(10, 'Vikash Sharma', '08798089090', 'rreferfe', '2022-05-15 00:58:32', 'expertvikash@gmail.com'),
(11, 'Jai Shri Krishna', '9690999992', 'rgrgrgr', '2022-05-15 01:03:38', 'sushilkumar.here@gmail.com'),
(12, 'suhsil', '9690999992', 'gtgrgr', '2022-05-15 01:04:12', 'sushilkumar.here@gmail.com'),
(13, 'Vikash Sharma', '08798089090', 'fefe', '2022-05-15 01:06:37', 'expertvikash@gmail.com'),
(14, 'suhsil', '9690999992', 'hyyy', '2022-05-21 21:31:19', 'sushilkumar.here@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Blockchain', 'a system of recording information in a way that makes it difficult or impossible to change, hack, or cheat the system.', 'first-post', ' A blockchain is a distributed database that is shared among the nodes of a computer network. As a database, a blockchain stores information electronically in digital format. Blockchains are best known for their crucial role in cryptocurrency systems, such as Bitcoin, for maintaining a secure and decentralized record of transactions. The innovation with a blockchain is that it guarantees the fidelity and security of a record of data and generates trust without the need for a trusted third party.\r\n\r\nOne key difference between a typical database and a blockchain is how the data is structured. A blockchain collects information together in groups, known as blocks, that hold sets of information. Blocks have certain storage capacities and, when filled, are closed and linked to the previously filled block, forming a chain of data known as the blockchain. All new information that follows that freshly added block is compiled into a newly formed block that will then also be added to the chain once filled.\r\n\r\nA database usually structures its data into tables, whereas a blockchain, like its name implies, structures its data into chunks (blocks) that are strung together. This data structure inherently makes an irreversible time line of data when implemented in a decentralized nature. When a block is filled, it is set in stone and becomes a part of this time line. Each block in the chain is given an exact time stamp when it is added to the chain. ', 'img20.jpg', '2022-05-21 17:56:10'),
(2, 'WEB 3.0', 'into the web3.0', 'second-post', 'Web 3.0 represents the next iteration or phase of the evolution of the web/internet and potentially could be as disruptive and represent as big a paradigm shift as Web 2.0 did. Web 3.0 is built upon the core concepts of decentralization, openness, and greater user utility.\r\n\r\nBerners-Lee had expounded upon some of these key concepts back in the 1990s, as outlined below:\r\n\r\nDecentralization: “No permission is needed from a central authority to post anything on the web, there is no central controlling node, and so no single point of failure...and no ‘kill switch’! This also implies freedom from indiscriminate censorship and surveillance.”\r\nBottom-up design: “Instead of code being written and controlled by a small group of experts, it was developed in full view of everyone, encouraging maximum participation and experimentation.”3\r\n\r\n', 'web-3.jpg', '2022-05-22 14:38:27'),
(3, 'NFT \'S', 'A non-fungible token is a financial security consisting of digital data stored in a blockchain', 'third-post', 'A non-fungible token (NFT) is a financial security consisting of digital data stored in a blockchain, a form of distributed ledger. The ownership of an NFT is recorded in the blockchain, and can be transferred by the owner, allowing NFTs to be sold and traded. NFTs typically contain references to digital files such as photos, videos, and audio. Because NFTs are uniquely identifiable, they differ from cryptocurrencies, which are fungible. The market value of an NFT is associated with the digital file it references.\r\n\r\nProponents of NFTs claim that NFTs provide a public certificate of authenticity or proof of ownership, but the legal rights conveyed by an NFT can be uncertain. The ownership of an NFT as defined by the blockchain has no inherent legal meaning, and does not necessarily grant copyright, intellectual property rights, or other legal rights over its associated digital file. An NFT does not restrict the sharing or copying of its associated digital file, and does not prevent the creation of NFTs that reference identical files.\r\n\r\nNFTs have been used as speculative investments, and they have drawn increasing criticism for the energy cost and carbon footprint associated with validating blockchain transactions as well as their frequent use in art scams.[1] The NFT market has also been compared to an economic bubble or a Ponzi scheme.', 'nft.jpg', '2022-05-21 18:17:46'),
(4, 'Internet Of Things', 'towards iot', 'fourth-post', 'hello this is my fourth post', 'iot.jpg', '2022-05-21 18:03:35'),
(5, 'Augumented Reality', 'toward ar and vr reality', 'fifth-post', 'hello this is my fifth post', 'ar.jpg', '2022-05-21 18:07:31'),
(6, 'Metaverse', 'Tech giants are all set to establish the metaverse, a form of mixed reality integrated with the Internet.', 'sixth-post', 'In futurism and science fiction, the metaverse is a hypothetical iteration of the Internet as a single, universal and immersive virtual world that is facilitated by the use of virtual reality (VR) and augmented reality (AR) headsets.[1][2] In colloquial use, a metaverse is a network of 3D virtual worlds focused on social connection.[2][3][4]\r\n\r\nThe term \"metaverse\" originated in the 1992 science fiction novel Snow Crash as a portmanteau of \"meta\" and \"universe.\" Metaverse development is often linked to advancing virtual reality technology due to increasing demands for immersion.[5][6][7] Recent interest in metaverse development is influenced by Web3,[8][9] a concept for a decentralized iteration of the internet. Web3 and The Metaverse have been used as buzzwords[1][10] to exaggerate development progress of various related technologies and projects for public relations purposes.[11] Information privacy, user addiction, and user safety are concerns within the metaverse, stemming from challenges facing the social media and video game industries as a whole.', 'meta.jpg', '2022-05-21 21:30:15'),
(7, 'Data science', 'The best way to learn data science is to do data science.', 'seventh-post', 'Data science is an interdisciplinary field that uses scientific methods, processes, algorithms and systems to extract knowledge and insights from noisy, structured and unstructured data,[1][2] and apply knowledge and actionable insights from data across a broad range of application domains. Data science is related to data mining, machine learning and big data.\r\n\r\nData science is a \"concept to unify statistics, data analysis, informatics, and their related methods\" in order to \"understand and analyse actual phenomena\" with data.[3] It uses techniques and theories drawn from many fields within the context of mathematics, statistics, computer science, information science, and domain knowledge.[4] However, data science is different from computer science and information science. Turing Award winner Jim Gray imagined data science as a \"fourth paradigm\" of science (empirical, theoretical, computational, and now data-driven) and asserted that \"everything about science is changing because of the impact of information technology\" and the data deluge.[5][6] A data scientist is someone who creates programming code and combines it with statistical knowledge to create insights from data.', 'ds.jpg', '2022-05-21 20:52:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
