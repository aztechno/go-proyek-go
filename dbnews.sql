-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2019 at 10:18 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbnews`
--

-- --------------------------------------------------------

--
-- Table structure for table `newsbank`
--

CREATE TABLE `newsbank` (
  `id` int(11) NOT NULL,
  `author` varchar(30) NOT NULL,
  `body` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsbank`
--

INSERT INTO `newsbank` (`id`, `author`, `body`, `created`) VALUES
(3, 'aztechno', 'Go is an open source programming language that makes it easy to build simple, reliable, and efficient software.\r\n\r\nGopher image Gopher image by Renee French, licensed under Creative Commons 3.0 Attributions license.\r\n\r\nOur canonical Git repository is located at https://go.googlesource.com/go. There is a mirror of the repository at https://github.com/golang/go.\r\n\r\nUnless otherwise noted, the Go source files are distributed under the BSD-style license found in the LICENSE file.\r\n\r\nDownload and Install\r\nBinary Distributions\r\nOfficial binary distributions are available at https://golang.org/dl/.\r\n\r\nAfter downloading a binary release, visit https://golang.org/doc/install or load doc/install.html in your web browser for installation instructions.\r\n\r\nInstall From Source\r\nIf a binary distribution is not available for your combination of operating system and architecture, visit https://golang.org/doc/install/source or load doc/install-source.html in your web browser for source installation instructions.\r\n\r\nContributing\r\nGo is the work of thousands of contributors. We appreciate your help!\r\n\r\nTo contribute, please read the contribution guidelines: https://golang.org/doc/contribute.html\r\n\r\nNote that the Go project uses the issue tracker for bug reports and proposals only. See https://golang.org/wiki/Questions for a list of places to ask questions about the Go language.', '2019-02-27 17:00:00'),
(4, 'aztechno', 'While Verizon started rolling out 5G for homes last fall, it plans to bring the next-generation communication tech to its current mobile network with a nationwide rollout this year. But what phones will you be able to use on it?\r\n\r\nThe carrier hasn’t released any specifics on its plans aside from noting its 5G Ultra Wideband Network, as Verizon is calling it in press materials, will reach 30 US cities in 2019. \r\n\r\nObviously, you’ll need a phone that works with Verizon’s unspecified network. More specifically, you’ll need a phone with the right specs (new processors and modems) to hook up to 5G networks at all. \r\n\r\nHere are the phones Verizon has already announced will be usable on its own 5G network.\r\n\r\nRECOMMENDED VIDEOS FOR YOU...\r\nCLOSE\r\nMoto Z3\r\n\r\nImage Credit: TechRadar\r\n\r\nMoto Z3 (with 5G Moto Mod)\r\nThe Moto Z3 is technically Verizon’s first 5G-capable phone, but only because Motorola planned long in advance to introduce a Moto Mod deliberately designed to connect the handset to a 5G networks.\r\n\r\nThe caveat: you can’t buy the mod just yet (not that Verizon\'s advanced network ready anyway), but when the accessory becomes available in the first half of 2019, you’ll be able pick it up on Motorola’s website here (and likely in Verizon stores).\r\n\r\nThe Moto Z3 isn’t nearly as flashy as the other phones on this list, but it will be far more affordable, which gives Verizon an advantage over other carriers that are only backing the top 5G flagships. We don’t just mean “mid-range” affordable, either: the Moto Z3 launched last fall costing $480 (about £370, AU$650), and is doubtless a bit cheaper on the market by now. \r\n\r\nEven if the 5G Moto Mod has a stiff price tag, both will still be half or even a third as cheap as the other 5G-capable phones working on these carrier networks.\r\n\r\nOf course, don’t expect high performance at that price. The Moto Z3 packs a Snapdragon 835 - the top Android chip of 2017 - and starts at 4 GB of RAM and 64 GB of storage (you can opt for 6GB of RAM and 128GB of storage for a price bump). Its 6-inch AMOLED display is fine, if an unremarkable 2,160 x 1,080 (FHD+). \r\n\r\nIts main 12MP f/2.0 rear shooter is supplemented with a 12MP monochrome lens for low-light, while the front-facing camera is an 8MP f/2.0 for selfies. Add in a 3,000mAh battery and you have a decent phone with classy, glossy glass front and back...though you’ll conceivably need to keep the 5G mod attached to its rear at all times to access Verizon’s advanced network. \r\n\r\nStill, it’s a compromise that should work well for folks who want hyper-fast 5G speeds, but don’t want to drop $1,000 or more to get it. And like other mods, the 5G Moto Mod will work with other Motorola phones - though it’s only confirmed to work with the Moto Z2 for now (compatible at some point after the Z3, per the product’s page).\r\n\r\nSamsung Galaxy S10 5G\r\n\r\nImage Credit: Samsung\r\n\r\n Samsung Galaxy S10 5G \r\nVerizon will be getting the Samsung Galaxy S10 5G, the big, powerful 5G-compatible version of the Galaxy S10 flagship line. The phone is top-of-the-line, with impressive specs and a huge screen. It’s also expected to be pretty pricey. While we don’t have an official cost yet, the S10 Plus starts at $999 / £899 (about AU$1,398) and the 5G version outclasses it in most dimensions, so we’re expecting an even higher price tag.\r\n\r\nThe phone has a massive 6.7-inch AMOLED display, packs a Snapdragon 855 chipset and comes with 256GB storage and 8GB of RAM. Like the Galaxy S10 and S10 Plus, the 5G variant has a trio of rear lenses (12MP wide, 16MP ultrawide and 12MP telephoto) along with a time of flight sensor to measure depth. It’s even got one of these TOF sensors on the front to augment selfies. \r\n\r\nThe Samsung Galaxy S10 5G will become available to Verizon customers in the first half of 2019.\r\n\r\nLG V50 ThinQ 5G\r\n\r\nLG V50 ThinQ 5G\r\n\r\nLG V50 ThinQ 5G\r\nAt MWC 2019, Verizon announced a third phone will be usable on its 5G network this summer: the LG V50 ThinQ 5G. Verizon isn’t the only carrier that will support LG’s new flagship, and given the vague timelines all carriers are proposing, it’s unclear if, say, Verizon will be getting the V50 later than Sprint, which claims it’s getting the phone “in the coming months.”\r\n\r\nIn any case, the V50 is similar in size and appearance to last year’s V40 (down to the same 6.4-inch OLED screen), but with a few key differences. It packs the latest Snapdragon 855 processor, as expected from a 2019 flagship. But it also has two new changes: a bigger 4,000mAh battery and a vapor chamber to keep the phone powered and cool, respectively, during long media binge sessions.\r\n\r\nWe still don’t know how much the V50 5G will cost, but given its predecessor was priced at $900 (around £690 / AU$1260) for launch last fall, we expect the new 5G version to be around or a bit higher than that.\r\n\r\nMWC (Mobile World Congress) is the world’s largest showcase for the mobile industry, stuffed full of the newest phones, tablets, wearables and more. TechRadar is reporting live from Barcelona all week to bring you the very latest from the show floor. Head to our dedicated MWC 2019 hub to see all the new releases, along with TechRadar’s world-class analysis and buying advice about your next phone. ', '2019-02-27 17:00:00'),
(5, 'aztechno', 'ntel has released a new video to give us a detailed look and breakdown of its upcoming Lakefield hybrid processor.\r\n\r\nLakefield should sound familiar if you caught wind of it during CES 2019, when it was first unveiled as a hybrid processor designed to compete with Qualcomm’s Snapdragon computing APUs. In fact, this new video is actually more of an extended cut of the demo video that Lakefield debuted with at Intel’s keynote.\r\n\r\n\r\nFrom the video, we can see the Lakefield processor makes use of the Foveros 3D design packaging to stack a massive array of memory on top of the chips’s main cores, which in themselves contain a mix of \'big\' and \'small\' CPUs. Intel has told us this chip will use a mix of 10nm Sunny Cove performance-focused CPUs and other 10nm-based smaller low-energy CPUs. \r\n\r\nAside from those main processor components, we can see other pieces like Intel’s Gen11 integrated graphics as well as interfaces for cameras and hardwired connections, or I/O.\r\n\r\nRECOMMENDED VIDEOS FOR YOU...\r\nCLOSE\r\nMeet Intel\'s other long-promised 10nm processors, Cannon Lake\r\nMeanwhile, AMD is going full speed into 7nm Ryzen 3rd Generation\r\nGet caught up with Intel’s latest Coffee Lake Refresh processors\r\nThis layout essentially makes the Intel Lakefield processor more like a System on a Chip (SoC) processor you would find in your phone, wherein almost every major component is found on the processor chip, and a major deviation from the monolithic chips typically found in computers today. \r\n\r\nBut, don’t think Intel is making a CPU for just phones and tablets, the video ends by showing how Lakefield can power a wide range of devices from traditional notebooks to 2-in-1 convertible and detachable laptops. The footage even suggests dual-screen laptops similar to the Intel Tiger Rapids and Asus Project Precog could get this new hybrid processor.\r\n\r\nIntel Lakefield\r\n\r\nImage Credit: Intel\r\n\r\nLakefield might seem like a pipe dream, but Intel has promised it will be in production this year. The company has yet to announce a possible ship window, but you can be sure we’ll report the date – and anything else – as soon as we hear it.', '2019-02-27 17:00:00'),
(7, 'aztechno', 'engupload folder(repositori lokal)\r\nSebelum melakukan upload pastikan di PC atau laptop sudah tersedia git, untuk Windows bisa menggunakan cmder yang sempat saya tulis disini untuk memudahkan proses penggunaan git, sedangkan untuk pengguna linux bisa menginstall dengan menggunakan perintah “sudo apt-get install git” jika menggunakan OSX install dengan brew, jika sudah file siap di upload ke repository online.\r\n\r\njika sudah memiliki proyek yang ingin diletakkan di repository online, buka saja folder project tersebut dengan perintah command line, atau jika belum terbiasa di command line (nanti belajar command line) buka saja folder tersebut menggunakan file exploler dan klik kanan “open terminal/cmder here”. Ada beberapa perintah dasar yang akan digunakan, perintah ini sudah tersedia kok saat membuat repo tadi (lihat gambar atas) :', '2019-02-28 09:23:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `newsbank`
--
ALTER TABLE `newsbank`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `newsbank`
--
ALTER TABLE `newsbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
