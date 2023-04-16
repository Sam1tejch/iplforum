
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(78) NOT NULL,
  `team_description` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `teams` (`team_id`, `team_name`, `team_description`, `time`) VALUES
(1, 'CSK', 'Chennai Super Kings (CSK) - One of the most successful teams in IPL history, CSK is captained by the legendary MS Dhoni. Known for their consistent performances and a strong fan base, CSK has won the IPL title four times.', '2023-03-31 11:14:26'),
(2, 'RR', 'Rajasthan Royals (RR) - The inaugural champions of the IPL, RR has struggled to replicate their early success in recent years. The team is led by Sanju Samson and has a good mix of experienced players and young talent.', '2021-01-31 11:15:30'),
(3, 'LSG', 'Lucknow Super Giants is a franchise cricket team based in Lucknow, Uttar Pradesh. They play in the Indian Premier League (IPL). The Lucknow franchise formed in 2021. Sanjeev Goenka is its principal owner. The team is captained by KL Rahul and coached by Andy Flower.', '2021-01-31 11:15:30'),
(4, 'GT', 'Gujarat Titans(GT) is a franchise cricket team based in Ahmedabad, Gujarat, India. The Titans compete in the Indian Premier League (IPL).Founded in 2021, Gujarat Titans home ground is Narendra Modi Stadium in Motera.', '2021-01-31 11:16:13'),
(5, 'KKR', 'Kolkata Knight Riders (KKR) - Owned by Bollywood superstar Shah Rukh Khan, KKR has won the IPL title twice. The team is captained by Eoin Morgan and has a strong bowling attack.', '2021-01-31 11:16:48'),
(6, 'PBKS', 'Punjab Kings (PBKS) - Formerly known as Kings XI Punjab, PBKS is yet to win the IPL title. The team has been led by KL Rahul in recent years and has a strong batting lineup.', '2021-01-31 11:16:13'),
(7, 'RCB', 'Royal Challengers Bangalore (RCB) - Led by the Indian captain Virat Kohli, RCB has never won the IPL title. However, the team has a loyal fan base and is known for its star-studded lineup, including AB de Villiers and Glenn Maxwell.', '2021-01-31 11:16:13'),
(8, 'MI', 'Mumbai Indians (MI) - The most successful team in IPL history, MI has won the title a record five times. Led by Rohit Sharma, MI has a well-balanced squad with some of the best T20 players in the world.', '2021-01-31 11:16:13'),
(9, 'SRH', 'Sunrisers Hyderabad (SRH) - Despite being one of the newer teams in the IPL, SRH has made a big impact, winning the title in 2016. The team is led by Kane Williamson and has a strong bowling attack led by Rashid Khan.', '2021-01-31 11:16:13'),
(10, 'DC', 'Delhi Capitals (DC) - Formerly known as Delhi Daredevils, DC is a team that has been rebranded and revamped in recent years. Led by the young and dynamic Rishabh Pant, DC has a talented squad and has reached the IPL final once.', '2021-01-31 11:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_thread_id` int(11) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(11) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_description` text NOT NULL,
  `thread_cat_id` int(11) NOT NULL,
  `thread_user_id` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_uname` varchar(12) NOT NULL,
  `user_email` varchar(35) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_uname` (`user_uname`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;


