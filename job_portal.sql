-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 14, 2025 at 04:24 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'IT', 1, NULL, NULL),
(2, 'Accounts', 1, NULL, NULL),
(3, 'Finance', 1, NULL, NULL),
(4, 'Business', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `job_type_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `vacancy` int NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `benefits` text COLLATE utf8mb4_unicode_ci,
  `responsibility` text COLLATE utf8mb4_unicode_ci,
  `qualifications` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `isFeatured` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_category_id_foreign` (`category_id`),
  KEY `jobs_job_type_id_foreign` (`job_type_id`),
  KEY `jobs_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `category_id`, `job_type_id`, `user_id`, `vacancy`, `salary`, `location`, `description`, `benefits`, `responsibility`, `qualifications`, `keywords`, `experience`, `company_name`, `company_location`, `company_website`, `status`, `isFeatured`, `created_at`, `updated_at`) VALUES
(5, 'Test Job', 1, 3, 6, 10, '10000-40000', 'Surat,Gujarat', '<p>123</p>', '<p>123</p>', '<p>123</p>', '<p>123</p>', 'Test', '1', 'Test', 'Surat', 'test.com', 1, 1, '2025-03-28 11:27:38', '2025-03-28 11:29:29'),
(6, 'Web Developer', 1, 1, 9, 1, '10000', 'Surat', '<p>A web developer job involves designing, coding, and maintaining websites and web applications. Web developers use programming languages like HTML, CSS, JavaScript, and frameworks such as React, Angular, or Vue.js for front-end development. For back-end development, they work with technologies like Node.js, Python, PHP, and databases such as MySQL or MongoDB.</p>', '<p><li data-start=\"51\" data-end=\"234\" class=\"\"><h3><strong>Benefits of Getting a Web Developer Job</strong></h3></li></p><ol>\r\n<li>\r\n<p><strong>High Demand &amp; Job Security</strong></p>\r\n<ul>\r\n<li>\r\n<p>Businesses rely on websites and web applications, making web development a crucial skill.</p>\r\n</li>\r\n<li>\r\n<p>Steady job opportunities across industries.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Competitive Salary</strong></p>\r\n<ul>\r\n<li>\r\n<p>Web developers earn competitive salaries, even at entry-level.</p>\r\n</li>\r\n<li>\r\n<p>Experienced developers can command even higher pay, especially in specialized roles.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Remote Work Opportunities</strong></p>\r\n<ul>\r\n<li>\r\n<p>Many web development jobs offer remote or hybrid work options.</p>\r\n</li>\r\n<li>\r\n<p>Freelancing is also a viable career path.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Creative &amp; Problem-Solving Work</strong></p>\r\n<ul>\r\n<li>\r\n<p>You get to build interactive, visually appealing websites.</p>\r\n</li>\r\n<li>\r\n<p>Solving technical challenges keeps the job engaging.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Freelance &amp; Entrepreneurial Opportunities</strong></p>\r\n<ul>\r\n<li>\r\n<p>You can work as a freelancer and take on your own clients.</p>\r\n</li>\r\n<li>\r\n<p>Many developers start their own web development businesses.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Continuous Learning &amp; Growth</strong></p>\r\n<ul>\r\n<li>\r\n<p>The tech industry evolves rapidly, offering constant learning opportunities.</p>\r\n</li>\r\n<li>\r\n<p>Certifications, bootcamps, and online courses help you stay updated.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Diverse Career Paths</strong></p>\r\n<ul>\r\n<li>\r\n<p>You can specialize in front-end, back-end, full-stack, UI/UX, or even mobile development.</p>\r\n</li>\r\n<li>\r\n<p>Opportunities to transition into roles like software engineering, product management, or DevOps.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Work-Life Balance</strong></p>\r\n<ul>\r\n<li>\r\n<p>Many companies offer flexible work hours and remote options.</p>\r\n</li>\r\n<li>\r\n<p>Less physically demanding compared to other professions.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Global Job Market</strong></p>\r\n<ul>\r\n<li>\r\n<p>Web developers are needed worldwide, making it easier to work internationally.</p>\r\n</li>\r\n<li>\r\n<p>Many global companies hire developers regardless of location.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p><strong>Job Satisfaction</strong></p>\r\n</li>\r\n</ol><ul>\r\n<li>\r\n<p>Seeing your work in action and used by real users is fulfilling.</p>\r\n</li>\r\n<li>\r\n<p>The ability to build and improve digital experiences makes a real impact.</p>\r\n</li>\r\n</ul><p data-start=\"54\" data-end=\"86\" class=\"\">\r\n\r\n\r\n</p><p>Would you like guidance on how to land your first web developer job?</p>', '<h3><strong>Responsibilities of a Web Developer</strong></h3><p>A web developer is responsible for designing, coding, and maintaining websites and web applications. Their tasks vary based on their specialization (front-end, back-end, or full-stack), but common responsibilities include:</p><h3><strong>1. Website &amp; Web Application Development</strong></h3><ul>\r\n<li>\r\n<p>Develop responsive and user-friendly websites.</p>\r\n</li>\r\n<li>\r\n<p>Write clean, efficient, and well-documented code.</p>\r\n</li>\r\n<li>\r\n<p>Use front-end technologies like HTML, CSS, and JavaScript.</p>\r\n</li>\r\n<li>\r\n<p>Work with back-end technologies such as Node.js, PHP, or Python.</p>\r\n</li>\r\n</ul><h3><strong>2. Debugging &amp; Troubleshooting</strong></h3><ul>\r\n<li>\r\n<p>Identify and fix bugs, errors, and performance issues.</p>\r\n</li>\r\n<li>\r\n<p>Test websites across different browsers and devices.</p>\r\n</li>\r\n<li>\r\n<p>Optimize code for speed and efficiency.</p>\r\n</li>\r\n</ul><h3><strong>3. Collaboration &amp; Communication</strong></h3><ul>\r\n<li>\r\n<p>Work with designers, product managers, and other developers.</p>\r\n</li>\r\n<li>\r\n<p>Participate in team meetings and provide technical input.</p>\r\n</li>\r\n<li>\r\n<p>Translate business requirements into functional web solutions.</p>\r\n</li>\r\n</ul><h3><strong>4. Website Maintenance &amp; Updates</strong></h3><ul>\r\n<li>\r\n<p>Regularly update websites to improve security and performance.</p>\r\n</li>\r\n<li>\r\n<p>Ensure compatibility with the latest technologies and standards.</p>\r\n</li>\r\n<li>\r\n<p>Implement new features and improvements as needed.</p>\r\n</li>\r\n</ul><h3><strong>5. Security &amp; Data Protection</strong></h3><ul>\r\n<li>\r\n<p>Implement security measures to protect websites from threats.</p>\r\n</li>\r\n<li>\r\n<p>Manage user authentication, authorization, and data encryption.</p>\r\n</li>\r\n</ul><h3><strong>6. API Development &amp; Integration</strong></h3><ul>\r\n<li>\r\n<p>Create and manage APIs for data exchange between applications.</p>\r\n</li>\r\n<li>\r\n<p>Integrate third-party services like payment gateways and cloud storage.</p>\r\n</li>\r\n</ul><h3><strong>7. Database Management</strong></h3><ul>\r\n<li>\r\n<p>Design, develop, and maintain databases.</p>\r\n</li>\r\n<li>\r\n<p>Ensure data integrity, security, and accessibility.</p>\r\n</li>\r\n</ul><h3><strong>8. Staying Updated with Industry Trends</strong></h3><ul>\r\n<li>\r\n<p>Keep up with the latest web development frameworks and best practices.</p>\r\n</li>\r\n<li>\r\n<p>Continuously learn new technologies and improve skills.</p>\r\n</li>\r\n</ul><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p>Would you like help creating a job description or resume for a web developer role?</p>', '<h3><strong>Qualifications for a Web Developer Job</strong></h3><p>To become a web developer, you need a mix of education, technical skills, and practical experience. Here are the key qualifications required for a web development job:</p><p><hr></p><h3><strong>1. Educational Requirements (Optional but Beneficial)</strong></h3><ul>\r\n<li>\r\n<p><strong>Bachelor’s Degree (Optional):</strong> A degree in Computer Science, Information Technology, or a related field can be helpful but is not always required.</p>\r\n</li>\r\n<li>\r\n<p><strong>Coding Bootcamps &amp; Online Courses:</strong> Many employers accept bootcamp graduates or self-taught developers with strong portfolios.</p>\r\n</li>\r\n<li>\r\n<p><strong>Certifications:</strong> Google, Microsoft, or Coursera certifications in web development, front-end, or back-end technologies can add value.</p>\r\n</li>\r\n</ul><p><hr></p><h3><strong>2. Technical Skills &amp; Knowledge</strong></h3><h4><strong>Front-End Development (User Interface &amp; Experience)</strong></h4><ul>\r\n<li>\r\n<p><strong>Languages:</strong> HTML, CSS, JavaScript</p>\r\n</li>\r\n<li>\r\n<p><strong>Frameworks/Libraries:</strong> React.js, Vue.js, Angular</p>\r\n</li>\r\n<li>\r\n<p><strong>CSS Preprocessors:</strong> SASS, LESS</p>\r\n</li>\r\n<li>\r\n<p><strong>Responsive Design:</strong> Bootstrap, Tailwind CSS</p>\r\n</li>\r\n<li>\r\n<p><strong>Version Control:</strong> Git, GitHub/GitLab</p>\r\n</li>\r\n</ul><h4><strong>Back-End Development (Server-Side &amp; Databases)</strong></h4><ul>\r\n<li>\r\n<p><strong>Languages:</strong> Node.js, Python, PHP, Ruby, Java</p>\r\n</li>\r\n<li>\r\n<p><strong>Frameworks:</strong> Express.js, Django, Flask, Laravel, Spring Boot</p>\r\n</li>\r\n<li>\r\n<p><strong>Databases:</strong> MySQL, PostgreSQL, MongoDB</p>\r\n</li>\r\n<li>\r\n<p><strong>APIs &amp; Web Services:</strong> REST, GraphQL</p>\r\n</li>\r\n</ul><h4><strong>Other Technical Skills</strong></h4><ul>\r\n<li>\r\n<p><strong>CMS (Content Management Systems):</strong> WordPress, Shopify</p>\r\n</li>\r\n<li>\r\n<p><strong>Testing &amp; Debugging:</strong> Jest, Mocha, Selenium</p>\r\n</li>\r\n<li>\r\n<p><strong>Deployment &amp; Hosting:</strong> AWS, Firebase, Netlify, Vercel</p>\r\n</li>\r\n<li>\r\n<p><strong>Security &amp; Performance Optimization</strong></p>\r\n</li>\r\n</ul><p><hr></p><h3><strong>3. Soft Skills</strong></h3><ul>\r\n<li>\r\n<p><strong>Problem-Solving &amp; Analytical Thinking</strong> – Debugging and optimizing code.</p>\r\n</li>\r\n<li>\r\n<p><strong>Communication Skills</strong> – Collaborating with designers, developers, and clients.</p>\r\n</li>\r\n<li>\r\n<p><strong>Attention to Detail</strong> – Ensuring websites function correctly across different browsers and devices.</p>\r\n</li>\r\n<li>\r\n<p><strong>Creativity &amp; Design Sense</strong> – Especially important for front-end developers.</p>\r\n</li>\r\n<li>\r\n<p><strong>Time Management</strong> – Meeting project deadlines effectively.</p>\r\n</li>\r\n</ul><p><hr></p><h3><strong>4. Experience &amp; Portfolio</strong></h3><ul>\r\n<li>\r\n<p><strong>Internships, Freelance Projects, or Personal Projects</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Contributions to Open-Source Projects (GitHub, GitLab, Bitbucket)</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>A Strong Portfolio Website Showcasing Past Work</strong></p>\r\n</li>\r\n</ul><p><hr></p><h3><strong>5. Additional Requirements (Depends on the Job Role)</strong></h3><ul>\r\n<li>\r\n<p><strong>Full-Stack Development Knowledge</strong> – If applying for a full-stack role.</p>\r\n</li>\r\n<li>\r\n<p><strong>SEO &amp; Web Accessibility Best Practices</strong> – Helpful for front-end roles.</p>\r\n</li>\r\n<li>\r\n<p><strong>Mobile App Development (Optional)</strong> – Experience with React Native, Flutter, or PWA development can be beneficial.</p>\r\n</li>\r\n</ul><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p>Would you like help with a resume, job application, or portfolio tips? 😊</p>', 'web development', '2', 'hello company', 'surat', 'hello.com', 1, 0, '2025-03-28 22:06:25', '2025-03-28 22:06:25'),
(7, 'Account', 2, 4, 9, 2, '20000', 'mumbai', '<p>description for account job</p>', '<p>benefits for account job</p>', '<p>responsibility for account job</p>', '<p>qualification for account job</p>', 'accountant', '5', 'accounting', 'mumbai', 'acc.com', 1, 0, '2025-03-28 22:08:17', '2025-03-28 22:08:17'),
(8, 'Marketing Head', 4, 1, 10, 2, '150000', 'Surat', '<p>A <strong data-start=\"55\" data-end=\"82\">Business Marketing Head</strong> is responsible for developing and executing marketing strategies to drive brand awareness, customer engagement, and revenue growth. They lead marketing teams, oversee campaigns, and collaborate with sales and product teams to achieve business objectives.</p>', '<p>A <strong data-start=\"2\" data-end=\"29\">Business Marketing Head</strong> enjoys numerous benefits, including a <strong data-start=\"68\" data-end=\"138\">high salary, leadership authority, and career growth opportunities</strong> with the potential to advance to executive roles like CMO. The role offers <strong data-start=\"214\" data-end=\"243\">creativity and innovation</strong>, allowing professionals to design impactful marketing strategies and work on dynamic campaigns. <strong data-start=\"340\" data-end=\"373\">Job stability and high demand</strong> make this position attractive across industries, with opportunities for <strong data-start=\"446\" data-end=\"503\">networking, industry exposure, and global recognition</strong>. Additionally, marketing heads benefit from <strong data-start=\"548\" data-end=\"621\">performance-based incentives, stock options, and travel opportunities</strong>, while some companies offer <strong data-start=\"650\" data-end=\"702\">flexible work arrangements and work-life balance</strong>. This role provides a blend of <strong data-start=\"734\" data-end=\"797\">strategic influence, financial rewards, and personal growth</strong>, making it highly rewarding.</p>', '<p>A <strong data-start=\"2\" data-end=\"29\">Business Marketing Head</strong> is responsible for developing and executing comprehensive marketing strategies to drive brand awareness, customer engagement, and revenue growth. They oversee <strong data-start=\"189\" data-end=\"285\">brand management, digital and traditional marketing, lead generation, and campaign execution</strong>, ensuring alignment with business objectives. They collaborate with <strong data-start=\"354\" data-end=\"392\">sales, product, and creative teams</strong> to enhance market positioning and optimize customer acquisition. Additionally, they conduct <strong data-start=\"485\" data-end=\"551\">market research, competitor analysis, and performance tracking</strong> to refine strategies and improve ROI. The role also involves <strong data-start=\"613\" data-end=\"691\">budget management, team leadership, and innovation in marketing approaches</strong> to stay ahead of industry trends. Ultimately, they play a crucial role in shaping the company\'s market presence and long-term success.</p>', '<p>A <strong data-start=\"2\" data-end=\"29\">Business Marketing Head</strong> typically requires a <strong data-start=\"51\" data-end=\"84\">Bachelor’s or Master’s degree</strong> in Marketing, Business Administration, or a related field, along with <strong data-start=\"155\" data-end=\"181\">5+ years of experience</strong> in senior marketing roles. Strong expertise in <strong data-start=\"229\" data-end=\"306\">digital marketing, brand management, market research, and lead generation</strong> is essential. Proficiency in <strong data-start=\"336\" data-end=\"398\">SEO, PPC, content marketing, CRM tools, and data analytics</strong> is highly valued. Excellent <strong data-start=\"427\" data-end=\"504\">leadership, strategic thinking, communication, and decision-making skills</strong> are crucial for managing teams and aligning marketing efforts with business goals. Experience with <strong data-start=\"604\" data-end=\"670\">budget management, campaign execution, and competitor analysis</strong> further strengthens qualifications. A proven track record of <strong data-start=\"732\" data-end=\"794\">driving revenue growth and successful marketing strategies</strong> is key to excelling in this role.</p>', 'Marketing head of company', '6', 'deepocean.ltd', 'Surat', 'deepocean.com', 1, 0, '2025-03-28 22:15:53', '2025-03-28 22:15:53'),
(9, 'Assistant of CA', 3, 4, 11, 2, '20000', 'Channei', '<p>An <strong data-start=\"68\" data-end=\"117\">Assistant Chartered Accountant (Assistant CA)</strong> supports senior accountants and finance teams in managing financial records, audits, taxation, and compliance. They assist in preparing financial statements, analyzing budgets, and ensuring accurate bookkeeping. Their role is crucial in maintaining financial transparency, adhering to legal regulations, and optimizing company financial performance.</p>', '<p>An <strong data-start=\"3\" data-end=\"52\">Assistant Chartered Accountant (Assistant CA)</strong> plays a crucial role in supporting financial operations, audits, taxation, and compliance while gaining hands-on experience for career growth. This role offers <strong data-start=\"213\" data-end=\"245\">high demand and job security</strong>, with opportunities across <strong data-start=\"273\" data-end=\"327\">corporate finance, banking, and government sectors</strong>. Assistant CAs benefit from <strong data-start=\"356\" data-end=\"439\">competitive salaries, professional networking, and exposure to industry experts</strong>, enhancing their expertise in <strong data-start=\"470\" data-end=\"516\">financial analysis, auditing, and taxation</strong>. The position serves as a stepping stone to senior roles like <strong data-start=\"579\" data-end=\"628\">Finance Manager, CFO, or Chartered Accountant</strong>, with <strong data-start=\"635\" data-end=\"688\">global career prospects and flexible work options</strong> in some firms. This career path ensures continuous skill development and long-term growth in the financial industry.</p>', '<p></p><div aria-hidden=\"true\" data-edge=\"true\" class=\"pointer-events-none h-px w-px\"></div><p></p><article class=\"w-full text-token-text-primary\" dir=\"auto\" data-testid=\"conversation-turn-26\" data-scroll-anchor=\"true\"><div class=\"text-base my-auto mx-auto py-5 px-6\"><div class=\"mx-auto flex flex-1 text-base gap-4 md:gap-5 lg:gap-6 md:max-w-3xl lg:max-w-[40rem] xl:max-w-[48rem] group/turn-messages focus-visible:outline-none\" tabindex=\"-1\"><div class=\"group/conversation-turn relative flex w-full min-w-0 flex-col agent-turn @xs/thread:px-0 @sm/thread:px-1.5 @md/thread:px-4\"><div class=\"relative flex-col gap-1 md:gap-3\"><div class=\"flex max-w-full flex-col flex-grow\"><div data-message-author-role=\"assistant\" data-message-id=\"6e753a9c-1c1f-4191-9476-76670f0868e1\" dir=\"auto\" class=\"min-h-8 text-message relative flex w-full flex-col items-end gap-2 whitespace-normal break-words text-start [.text-message+&amp;]:mt-5\" data-message-model-slug=\"gpt-4o\"><div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert light\"><p data-start=\"0\" data-end=\"863\" class=\"\">An <strong data-start=\"3\" data-end=\"52\">Assistant Chartered Accountant (Assistant CA)</strong> is responsible for supporting financial management, audits, taxation, and compliance within an organization. Their duties include <strong data-start=\"183\" data-end=\"314\">preparing financial statements, maintaining ledgers, reconciling accounts, and assisting in tax filings (GST, income tax, etc.)</strong>. They help in <strong data-start=\"329\" data-end=\"390\">budget planning, cost analysis, and financial forecasting</strong> while ensuring compliance with <strong data-start=\"422\" data-end=\"474\">accounting standards and regulatory requirements</strong>. Additionally, they assist senior accountants and auditors in <strong data-start=\"537\" data-end=\"619\">conducting financial audits, analyzing reports, and managing internal controls</strong>. Using <strong data-start=\"627\" data-end=\"681\">accounting software like Tally, QuickBooks, or SAP</strong>, they ensure accurate financial data management. Their role is essential in maintaining financial accuracy, reducing risks, and supporting the overall financial health of a company.</p></div></div></div></div><div class=\"flex justify-start\"><div class=\"-me-1 -ms-2.5 flex select-none items-center p-1 touch:-me-2 touch:-ms-3.5 -mt-1 duration-[1.5s] focus-within:transition-none hover:transition-none pointer-events-none [mask-image:linear-gradient(to_right,black_33%,transparent_66%)] [mask-position:100%_0%] [mask-size:300%_100%] motion-safe:transition-[mask-position] group-hover/turn-messages:pointer-events-auto group-hover/turn-messages:[mask-position:0_0] group-focus-within/turn-messages:pointer-events-auto group-focus-within/turn-messages:[mask-position:0_0] has-[[data-state=open]]:pointer-events-auto has-[[data-state=open]]:[mask-position:0_0]\"><span class=\"\" data-state=\"closed\"><button class=\"rounded-lg text-token-text-secondary hover:bg-token-main-surface-secondary\" aria-label=\"Copy\" data-testid=\"copy-turn-action-button\"><span class=\"flex h-[30px] w-[30px] items-center justify-center touch:w-[38px]\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" class=\"icon-md-heavy\"><path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M7 5C7 3.34315 8.34315 2 10 2H19C20.6569 2 22 3.34315 22 5V14C22 15.6569 20.6569 17 19 17H17V19C17 20.6569 15.6569 22 14 22H5C3.34315 22 2 20.6569 2 19V10C2 8.34315 3.34315 7 5 7H7V5ZM9 7H14C15.6569 7 17 8.34315 17 10V15H19C19.5523 15 20 14.5523 20 14V5C20 4.44772 19.5523 4 19 4H10C9.44772 4 9 4.44772 9 5V7ZM5 9C4.44772 9 4 9.44772 4 10V19C4 19.5523 4.44772 20 5 20H14C14.5523 20 15 19.5523 15 19V10C15 9.44772 14.5523 9 14 9H5Z\" fill=\"currentColor\"></path></svg></span></button></span><span class=\"\" data-state=\"closed\"><button class=\"rounded-lg text-token-text-secondary hover:bg-token-main-surface-secondary\" aria-label=\"Good response\" data-testid=\"good-response-turn-action-button\"><span class=\"flex h-[30px] w-[30px] items-center justify-center touch:w-[38px]\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" class=\"icon-md-heavy\"><path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M12.1318 2.50389C12.3321 2.15338 12.7235 1.95768 13.124 2.00775L13.5778 2.06447C16.0449 2.37286 17.636 4.83353 16.9048 7.20993L16.354 8.99999H17.0722C19.7097 8.99999 21.6253 11.5079 20.9313 14.0525L19.5677 19.0525C19.0931 20.7927 17.5124 22 15.7086 22H6C4.34315 22 3 20.6568 3 19V12C3 10.3431 4.34315 8.99999 6 8.99999H8C8.25952 8.99999 8.49914 8.86094 8.6279 8.63561L12.1318 2.50389ZM10 20H15.7086C16.6105 20 17.4008 19.3964 17.6381 18.5262L19.0018 13.5262C19.3488 12.2539 18.391 11 17.0722 11H15C14.6827 11 14.3841 10.8494 14.1956 10.5941C14.0071 10.3388 13.9509 10.0092 14.0442 9.70591L14.9932 6.62175C15.3384 5.49984 14.6484 4.34036 13.5319 4.08468L10.3644 9.62789C10.0522 10.1742 9.56691 10.5859 9 10.8098V19C9 19.5523 9.44772 20 10 20ZM7 11V19C7 19.3506 7.06015 19.6872 7.17071 20H6C5.44772 20 5 19.5523 5 19V12C5 11.4477 5.44772 11 6 11H7Z\" fill=\"currentColor\"></path></svg></span></button></span><span class=\"\" data-state=\"closed\"><button class=\"rounded-lg text-token-text-secondary hover:bg-token-main-surface-secondary\" aria-label=\"Bad response\" data-testid=\"bad-response-turn-action-button\"><span class=\"flex h-[30px] w-[30px] items-center justify-center touch:w-[38px]\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" class=\"icon-md-heavy\"><path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11.8727 21.4961C11.6725 21.8466 11.2811 22.0423 10.8805 21.9922L10.4267 21.9355C7.95958 21.6271 6.36855 19.1665 7.09975 16.7901L7.65054 15H6.93226C4.29476 15 2.37923 12.4921 3.0732 9.94753L4.43684 4.94753C4.91145 3.20728 6.49209 2 8.29589 2H18.0045C19.6614 2 21.0045 3.34315 21.0045 5V12C21.0045 13.6569 19.6614 15 18.0045 15H16.0045C15.745 15 15.5054 15.1391 15.3766 15.3644L11.8727 21.4961ZM14.0045 4H8.29589C7.39399 4 6.60367 4.60364 6.36637 5.47376L5.00273 10.4738C4.65574 11.746 5.61351 13 6.93226 13H9.00451C9.32185 13 9.62036 13.1506 9.8089 13.4059C9.99743 13.6612 10.0536 13.9908 9.96028 14.2941L9.01131 17.3782C8.6661 18.5002 9.35608 19.6596 10.4726 19.9153L13.6401 14.3721C13.9523 13.8258 14.4376 13.4141 15.0045 13.1902V5C15.0045 4.44772 14.5568 4 14.0045 4ZM17.0045 13V5C17.0045 4.64937 16.9444 4.31278 16.8338 4H18.0045C18.5568 4 19.0045 4.44772 19.0045 5V12C19.0045 12.5523 18.5568 13 18.0045 13H17.0045Z\" fill=\"currentColor\"></path></svg></span></button></span><span class=\"\" data-state=\"closed\"><button class=\"rounded-lg text-token-text-secondary hover:bg-token-main-surface-secondary\" aria-label=\"Read aloud\" data-testid=\"voice-play-turn-action-button\"><span class=\"flex h-[30px] w-[30px] items-center justify-center touch:w-[38px]\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" class=\"icon-md-heavy\"><path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M11 4.9099C11 4.47485 10.4828 4.24734 10.1621 4.54132L6.67572 7.7372C6.49129 7.90626 6.25019 8.00005 6 8.00005H4C3.44772 8.00005 3 8.44776 3 9.00005V15C3 15.5523 3.44772 16 4 16H6C6.25019 16 6.49129 16.0938 6.67572 16.2629L10.1621 19.4588C10.4828 19.7527 11 19.5252 11 19.0902V4.9099ZM8.81069 3.06701C10.4142 1.59714 13 2.73463 13 4.9099V19.0902C13 21.2655 10.4142 22.403 8.81069 20.9331L5.61102 18H4C2.34315 18 1 16.6569 1 15V9.00005C1 7.34319 2.34315 6.00005 4 6.00005H5.61102L8.81069 3.06701ZM20.3166 6.35665C20.8019 6.09313 21.409 6.27296 21.6725 6.75833C22.5191 8.3176 22.9996 10.1042 22.9996 12.0001C22.9996 13.8507 22.5418 15.5974 21.7323 17.1302C21.4744 17.6185 20.8695 17.8054 20.3811 17.5475C19.8927 17.2896 19.7059 16.6846 19.9638 16.1962C20.6249 14.9444 20.9996 13.5175 20.9996 12.0001C20.9996 10.4458 20.6064 8.98627 19.9149 7.71262C19.6514 7.22726 19.8312 6.62017 20.3166 6.35665ZM15.7994 7.90049C16.241 7.5688 16.8679 7.65789 17.1995 8.09947C18.0156 9.18593 18.4996 10.5379 18.4996 12.0001C18.4996 13.3127 18.1094 14.5372 17.4385 15.5604C17.1357 16.0222 16.5158 16.1511 16.0539 15.8483C15.5921 15.5455 15.4632 14.9255 15.766 14.4637C16.2298 13.7564 16.4996 12.9113 16.4996 12.0001C16.4996 10.9859 16.1653 10.0526 15.6004 9.30063C15.2687 8.85905 15.3578 8.23218 15.7994 7.90049Z\" fill=\"currentColor\"></path></svg></span></button></span><span class=\"\" data-state=\"closed\"><button class=\"rounded-lg text-token-text-secondary hover:bg-token-main-surface-secondary\" aria-label=\"Edit in canvas\"><span class=\"flex h-[30px] w-[30px] items-center justify-center touch:w-[38px]\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" class=\"icon-md\"><path d=\"M2.5 5.5C4.3 5.2 5.2 4 5.5 2.5C5.8 4 6.7 5.2 8.5 5.5C6.7 5.8 5.8 7 5.5 8.5C5.2 7 4.3 5.8 2.5 5.5Z\" fill=\"currentColor\" stroke=\"currentColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path><path d=\"M5.66282 16.5231L5.18413 19.3952C5.12203 19.7678 5.09098 19.9541 5.14876 20.0888C5.19933 20.2067 5.29328 20.3007 5.41118 20.3512C5.54589 20.409 5.73218 20.378 6.10476 20.3159L8.97693 19.8372C9.72813 19.712 10.1037 19.6494 10.4542 19.521C10.7652 19.407 11.0608 19.2549 11.3343 19.068C11.6425 18.8575 11.9118 18.5882 12.4503 18.0497L20 10.5C21.3807 9.11929 21.3807 6.88071 20 5.5C18.6193 4.11929 16.3807 4.11929 15 5.5L7.45026 13.0497C6.91175 13.5882 6.6425 13.8575 6.43197 14.1657C6.24513 14.4392 6.09299 14.7348 5.97903 15.0458C5.85062 15.3963 5.78802 15.7719 5.66282 16.5231Z\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path><path d=\"M14.5 7L18.5 11\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path></svg></span></button></span><span class=\"hidden\"></span><span class=\"\" data-state=\"closed\"><button type=\"button\" id=\"radix-:r8j:\" aria-haspopup=\"menu\" aria-expanded=\"false\" data-state=\"closed\" class=\"cursor-pointer h-[30px] rounded-md px-1.5 text-token-text-secondary hover:bg-token-main-surface-secondary touch:px-2.5\"><div class=\"flex items-center pb-0\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" class=\"icon-md\"><path d=\"M3.06957 10.8763C3.62331 6.43564 7.40967 3 12 3C14.2824 3 16.4028 3.85067 18.0118 5.25439V4C18.0118 3.44772 18.4595 3 19.0118 3C19.5641 3 20.0118 3.44772 20.0118 4V8C20.0118 8.55228 19.5641 9 19.0118 9H15C14.4477 9 14 8.55228 14 8C14 7.44772 14.4477 7 15 7H16.9571C15.6757 5.76379 13.9101 5 12 5C8.43108 5 5.48466 7.67174 5.0542 11.1237C4.98586 11.6718 4.48619 12.0607 3.93815 11.9923C3.39011 11.924 3.00123 11.4243 3.06957 10.8763ZM20.0618 12.0077C20.6099 12.076 20.9988 12.5757 20.9304 13.1237C20.3767 17.5644 16.5903 21 12 21C9.72322 21 7.60762 20.1535 5.99999 18.7559V20C5.99999 20.5523 5.55228 21 4.99999 21C4.44771 21 3.99999 20.5523 3.99999 20V16C3.99999 15.4477 4.44771 15 4.99999 15H8.99999C9.55228 15 9.99999 15.4477 9.99999 16C9.99999 16.5523 9.55228 17 8.99999 17H7.04285C8.32433 18.2362 10.0899 19 12 19C15.5689 19 18.5153 16.3283 18.9458 12.8763C19.0141 12.3282 19.5138 11.9393 20.0618 12.0077Z\" fill=\"currentColor\"></path></svg><span class=\"overflow-hidden text-clip whitespace-nowrap text-sm\">4o</span><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" class=\"icon-sm\"><path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.29289 9.29289C5.68342 8.90237 6.31658 8.90237 6.70711 9.29289L12 14.5858L17.2929 9.29289C17.6834 8.90237 18.3166 8.90237 18.7071 9.29289C19.0976 9.68342 19.0976 10.3166 18.7071 10.7071L12.7071 16.7071C12.5196 16.8946 12.2652 17 12 17C11.7348 17 11.4804 16.8946 11.2929 16.7071L5.29289 10.7071C4.90237 10.3166 4.90237 9.68342 5.29289 9.29289Z\" fill=\"currentColor\"></path></svg></div></button></span></div></div><div class=\"mt-3 w-full empty:hidden\"><div class=\"text-center\"></div></div></div><div class=\"absolute\"><span class=\"\" data-state=\"closed\"><button class=\"btn relative btn-secondary btn-small shadow-lg\"><div class=\"flex items-center justify-center\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" class=\"icon-md\"><path d=\"M7.5 13.25C7.98703 13.25 8.45082 13.1505 8.87217 12.9708C8.46129 14.0478 7.62459 15.5792 6.35846 15.76C5.81173 15.8382 5.43183 16.3447 5.50993 16.8914C5.58804 17.4382 6.09457 17.8181 6.6413 17.7399C9.19413 17.3753 10.7256 14.4711 11.169 12.1909C11.4118 10.942 11.3856 9.58095 10.8491 8.44726C10.2424 7.16517 8.92256 6.24402 7.48508 6.25001C5.55895 6.25805 4 7.82196 4 9.74998C4 11.683 5.567 13.25 7.5 13.25Z\" fill=\"currentColor\"></path><path d=\"M16.18 13.25C16.667 13.25 17.1308 13.1505 17.5522 12.9708C17.1413 14.0478 16.3046 15.5792 15.0385 15.76C14.4917 15.8382 14.1118 16.3447 14.1899 16.8914C14.268 17.4382 14.7746 17.8181 15.3213 17.7399C17.8741 17.3753 19.4056 14.4711 19.849 12.1909C20.0918 10.942 20.0656 9.58095 19.5291 8.44726C18.9224 7.16517 17.6026 6.24402 16.1651 6.25001C14.2389 6.25805 12.68 7.82196 12.68 9.74998C12.68 11.683 14.247 13.25 16.18 13.25Z\" fill=\"currentColor\"></path></svg></div></button></span></div></div></div></div></article>', '<p>An <strong data-start=\"3\" data-end=\"52\">Assistant Chartered Accountant (Assistant CA)</strong> typically requires a <strong data-start=\"74\" data-end=\"107\">Bachelor’s or Master’s degree</strong> in Accounting, Finance, or a related field. Candidates who have completed <strong data-start=\"182\" data-end=\"232\">CA Inter or are pursuing Chartered Accountancy</strong> are preferred. Strong knowledge of <strong data-start=\"268\" data-end=\"356\">accounting principles, taxation (GST, income tax), auditing, and financial reporting</strong> is essential. Proficiency in <strong data-start=\"386\" data-end=\"451\">accounting software like Tally, QuickBooks, SAP, and MS Excel</strong> is highly valued. Analytical thinking, problem-solving skills, and attention to detail are crucial for handling financial records and compliance. Additionally, experience in <strong data-start=\"626\" data-end=\"686\">budgeting, financial analysis, and regulatory compliance</strong> strengthens qualifications for this role.</p>', 'Assistant of CA', '1', 'finbenefit.ltd', 'Chennai', 'finbenefit.com', 0, 0, '2025-03-28 22:22:14', '2025-05-29 07:56:17'),
(10, 'General Manager', 4, 1, 12, 3, '80000', 'Channei', '<p>A <strong data-start=\"47\" data-end=\"71\">General Manager (GM)</strong> is responsible for overseeing the overall operations, strategy, and performance of a business or organization. They ensure that all departments function efficiently while aligning business goals with profitability and growth. The GM plays a key role in decision-making, resource management, and team leadership.</p>', '<p>A <strong data-start=\"2\" data-end=\"26\">General Manager (GM)</strong> enjoys numerous benefits, including a <strong data-start=\"65\" data-end=\"136\">high salary, performance-based incentives, and leadership authority</strong> to shape business strategies. This role offers <strong data-start=\"184\" data-end=\"215\">career growth opportunities</strong>, with potential advancement to <strong data-start=\"247\" data-end=\"286\">executive positions like CEO or COO</strong>. GMs gain <strong data-start=\"297\" data-end=\"340\">exposure to multiple business functions</strong>, including finance, marketing, and operations, making them highly valuable across industries. The position provides <strong data-start=\"457\" data-end=\"529\">job stability, networking opportunities, and global career prospects</strong>, along with continuous learning in <strong data-start=\"565\" data-end=\"601\">business strategy and leadership</strong>. With the power to <strong data-start=\"621\" data-end=\"672\">drive profitability, efficiency, and innovation</strong>, a GM plays a crucial role in a company’s success while enjoying professional recognition and influence.</p>', '<p>A <strong data-start=\"2\" data-end=\"26\">General Manager (GM)</strong> is responsible for overseeing the overall operations and strategic direction of a business to ensure efficiency, growth, and profitability. They develop and implement <strong data-start=\"194\" data-end=\"217\">business strategies</strong>, manage <strong data-start=\"226\" data-end=\"263\">budgets and financial performance</strong>, and ensure operational excellence across various departments, including <strong data-start=\"337\" data-end=\"374\">sales, marketing, finance, and HR</strong>. The GM sets <strong data-start=\"388\" data-end=\"409\">performance goals</strong>, monitors key metrics, and drives <strong data-start=\"444\" data-end=\"468\">process improvements</strong> to enhance productivity. They also lead and mentor teams, foster strong relationships with <strong data-start=\"560\" data-end=\"588\">stakeholders and clients</strong>, and ensure compliance with <strong data-start=\"617\" data-end=\"662\">company policies and industry regulations</strong>. Additionally, they analyze <strong data-start=\"691\" data-end=\"734\">market trends and competitor strategies</strong> to identify business opportunities and drive long-term success.</p>', '<p>A <strong data-start=\"2\" data-end=\"26\">General Manager (GM)</strong> typically requires a <strong data-start=\"48\" data-end=\"81\">Bachelor’s or Master’s degree</strong> in <strong data-start=\"85\" data-end=\"153\">Business Administration, Management, Finance, or a related field</strong>. Strong leadership and decision-making skills are essential, along with <strong data-start=\"226\" data-end=\"263\">5+ years of managerial experience</strong> in business operations, sales, finance, or strategic planning. Proficiency in <strong data-start=\"342\" data-end=\"396\">business management software (ERP, CRM, MS Office)</strong> and expertise in <strong data-start=\"414\" data-end=\"470\">budgeting, performance analysis, and team leadership</strong> are crucial. Excellent <strong data-start=\"494\" data-end=\"545\">communication, problem-solving, and negotiation</strong> skills are necessary for managing teams and collaborating with stakeholders. Experience in <strong data-start=\"637\" data-end=\"702\">process optimization, market analysis, and corporate strategy</strong> further strengthens a candidate’s qualifications for this role.</p>', 'General Manager', '1', 'finbenefit.ltd', 'Chennai', 'finbenefit.com', 1, 0, '2025-03-28 22:28:38', '2025-03-28 22:28:38'),
(11, 'test job', 2, 1, 13, 2, '10000', 'surat', '<p>desc</p>', '<p>benifits</p>', '<p><span style=\"font-family: Mont-Regular; font-size: 16px;\">Responsibility</span></p>', '<p><span style=\"font-family: Mont-Regular; font-size: 16px;\">Qualifications</span></p>', 'Test', '3', 'abvc', 'surat', 'www.test.co.in', 1, 0, '2025-03-28 23:44:24', '2025-03-28 23:44:24'),
(12, 'UI/UX designer', 1, 1, 14, 2, '10000', 'Surat', '<p>Description for UI/UX Designer.</p>', '<p>Benefits For UI/UX Designer.</p>', '<p>Responsibility For UI/UX Designer.</p>', '<p><span style=\"font-family: Mont-Regular; font-size: 16px;\">Qualifications for UI/UX Designer.</span></p>', 'UI/UX', '2', 'textcompany', 'surat', 'www.test.com', 1, 0, '2025-05-29 22:27:21', '2025-05-29 22:27:21'),
(13, 'Finance Manager', 3, 3, 14, 1, '15000', 'surat', '<p>Description for Manager in Finance.</p>', '<p><span style=\"font-size: 16px;\">Benefits for Manager in Finance.</span></p>', '<p><span style=\"font-size: 16px; font-family: Mont-Regular;\">Responsibility</span><span style=\"font-size: 16px;\">&nbsp;for Manager in Finance.</span></p>', '<p><span style=\"font-size: 16px; font-family: Mont-Regular;\">Qualifications</span><span style=\"font-size: 16px;\">&nbsp;for Manager in Finance.</span></p>', 'Manager in Finance.', '2', 'GreatFinance', 'Surat', 'finance.com', 1, 0, '2025-05-29 22:34:40', '2025-05-29 22:36:24'),
(14, 'UI/UX designer', 1, 1, 15, 2, '10000-40000', 'surat', '<p>test description</p>', '<p>test benefits</p>', '<p>test responsibility</p>', '<p>test qualifications</p>', 'web', '1', 'xyz designing', 'surat', 'www.test.co.in', 1, 0, '2025-05-29 23:06:37', '2025-05-29 23:10:12');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
CREATE TABLE IF NOT EXISTS `job_applications` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `job_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `employer_id` bigint UNSIGNED NOT NULL,
  `applied_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_applications_job_id_foreign` (`job_id`),
  KEY `job_applications_user_id_foreign` (`user_id`),
  KEY `job_applications_employer_id_foreign` (`employer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_id`, `user_id`, `employer_id`, `applied_date`, `created_at`, `updated_at`) VALUES
(2, 5, 5, 6, '2025-03-28 11:29:01', '2025-03-28 11:29:01', '2025-03-28 11:29:01'),
(3, 5, 7, 6, '2025-03-28 11:42:44', '2025-03-28 11:42:44', '2025-03-28 11:42:44'),
(5, 13, 4, 14, '2025-05-29 23:00:31', '2025-05-29 23:00:31', '2025-05-29 23:00:31'),
(6, 10, 16, 12, '2025-05-29 23:37:55', '2025-05-29 23:37:55', '2025-05-29 23:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

DROP TABLE IF EXISTS `job_types`;
CREATE TABLE IF NOT EXISTS `job_types` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', 1, NULL, NULL),
(2, 'Part Time', 1, NULL, NULL),
(3, 'Contract', 1, NULL, NULL),
(4, 'Internship', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_21_194133_create_categories_table', 1),
(6, '2023_12_21_194227_create_job_types_table', 1),
(7, '2023_12_21_194315_create_jobs_table', 1),
(8, '2023_12_25_191003_alter_jobs_table', 1),
(9, '2023_12_27_181245_alter_jobs_table', 1),
(10, '2024_01_12_180428_create_job_applications_table', 1),
(11, '2024_01_24_050302_create_saved_jobs_table', 1),
(12, '2024_02_05_194735_alter_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('anant@gmail.com', 'AIobYWz92rXKq3yhGfByBvk4bOtkRtlIH4yX0a2Qk1mf5Mmme1RWjhOJyAmF', '2025-05-29 22:37:12'),
('dhruvrpatel.mca24@scet.ac.in', 'n6d5khbvxMtD7SUKEZZmaQcV1Z83TJsahWxLPISm7j2f5lZ5ceoNOys2mEgB', '2025-05-29 07:50:38'),
('dp1234@gmail.com', 'tJZxi5u26zP48zKLnEkeje1qYTOT7OgpBZkUdegDBoYc6DqiBEbiWOwrzk9w', '2025-05-30 00:18:55'),
('test@yopmail.com', 'rqTOCfbIxQ5RRKtDw7mSXjg61DyJtjy45gZw7JComTdrxdZ1kjpYSPWUoCqA', '2025-03-28 12:05:23'),
('test5@yopmail.com', 'wl5RZOoj1vus9G3PcqrWD8MUrPTrQ9QXQetDEpgzrO0uWBDp8drxHKGAxHWf', '2025-03-28 13:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saved_jobs`
--

DROP TABLE IF EXISTS `saved_jobs`;
CREATE TABLE IF NOT EXISTS `saved_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `job_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `saved_jobs_job_id_foreign` (`job_id`),
  KEY `saved_jobs_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saved_jobs`
--

INSERT INTO `saved_jobs` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 5, 5, '2025-03-28 11:28:52', '2025-03-28 11:28:52'),
(3, 5, 6, '2025-03-28 11:50:34', '2025-03-28 11:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `designation`, `mobile`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Dhruv Patel', 'dhruvrpatel.mca24@scet.ac.in', NULL, '$2y$12$f0T5EQVqv8GhxWaOL/LK/uZY1mxcpkpr1N2O8yNlrQdMFYG9SEYQu', '4-1748525348.jpg', NULL, NULL, 'admin', NULL, '2025-03-28 11:16:03', '2025-05-29 07:59:11'),
(5, 'Test User', 'test@yopmail.com', NULL, '$2y$12$VBJZUE4mmnRV6OQEotnLtO8c.i15gta.XHV57Gd4Updje2TNsWNUu', NULL, 'HR', '6789765456', 'user', NULL, '2025-03-28 11:24:57', '2025-05-29 07:55:38'),
(6, 'Test User 2', 'test2@yopmail.com', NULL, '$2y$12$HQFfqpI/fKbXk9H/L6.Jk.Z7VvjqbUnYTtATDzbwURYRsiTaeBFUm', NULL, NULL, '9898989898', 'user', NULL, '2025-03-28 11:26:12', '2025-05-29 23:23:04'),
(7, 'Test User 3', 'test3@yopmail.com', NULL, '$2y$12$Mze/8T4rCSIyXBVLdDLiSexQkoV2YxWv1h5w1G./rWqYlP2iG.kuS', NULL, NULL, '7676767676', 'user', NULL, '2025-03-28 11:42:21', '2025-05-29 23:25:00'),
(8, 'Test User5', 'test5@yopmail.com', NULL, '$2y$12$FLb7aORq2B5WC41JYxEjCeC8NTfK6ehd5kvY/nadb6m3XJj5QESrG', NULL, NULL, '9090909090', 'user', NULL, '2025-03-28 12:52:05', '2025-05-29 23:25:18'),
(9, 'Anant Soni', 'anantsoni@gmail.com', NULL, '$2y$12$1bLhNtlpsdtDQYwJH2kbiO2cAzIVCs/xTqDQ0K64/4kK6rb8cqHj.', NULL, NULL, '8888888888', 'user', NULL, '2025-03-28 22:00:20', '2025-05-29 23:25:32'),
(10, 'Deep patel', 'deeppatel8176@gmail.com', NULL, '$2y$12$v95mencHhwt8/e9LJ6udUeTjM2elJUqCF5SsdJBeZfzQs.3RobwaO', NULL, NULL, '7000099999', 'user', NULL, '2025-03-28 22:10:06', '2025-05-29 23:25:52'),
(11, 'Dixant', 'dixant@gmail.com', NULL, '$2y$12$1ofR75.g7Oe/g2q3rzNrKOLOBZ316TfXg4PO3XrmKSw8..ZPpLB42', NULL, NULL, '6301234567', 'user', NULL, '2025-03-28 22:16:47', '2025-05-29 23:26:11'),
(12, 'Dishank Patel', 'dishankpatel@gmail.com', NULL, '$2y$12$iDsE1jVUzA39cdv70YoyHOsQkYnLjNePZWrkf3/n7g1l1KlG6XhUC', NULL, NULL, '7890123456', 'user', NULL, '2025-03-28 22:23:16', '2025-05-29 23:26:23'),
(13, 'Test user', 'Testuser@gmail.com', NULL, '$2y$12$NFXpd1kM5zYa65VcUn56tOajrfETDFEVw0CSMJjAxkUchRkci1yF2', NULL, NULL, '8445566778', 'user', NULL, '2025-03-28 23:42:53', '2025-05-29 23:26:36'),
(14, 'Anant Soni', 'anant@gmail.com', NULL, '$2y$12$fi3ji5wDC7NfGQ3B/NzweO1k1bFNo570JmJUvGOxG4Vnw9FThNuum', NULL, NULL, '9988776655', 'user', NULL, '2025-05-29 22:23:32', '2025-05-29 23:26:49'),
(15, 'Vivek Patel', 'vivekroshan.patel2520@gmail.com', NULL, '$2y$12$bohYWtFC9njS84rzuWMhAu88AQZUpek91bRlrGv.0ZIioaSg7DYUS', NULL, NULL, '9123456789', 'user', NULL, '2025-05-29 22:58:24', '2025-05-29 23:27:08'),
(16, 'Yashasvi', 'yjariwala27@gmail.com', NULL, '$2y$12$azqh3fvqf4WzRxQ89iv6PeDdVmGAodTUdgLdHdEvSAFNEX9lK1.He', NULL, NULL, NULL, 'user', NULL, '2025-05-29 23:36:18', '2025-05-29 23:36:18'),
(17, 'dhruv', 'dp1234@gmail.com', NULL, '$2y$12$ufqcLCckzKFfgr/fzzPjKe30I7.1Ss7s64yWpu.56hEPdRHW/C61W', NULL, NULL, NULL, 'user', NULL, '2025-05-30 00:16:46', '2025-05-30 00:19:33');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_employer_id_foreign` FOREIGN KEY (`employer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD CONSTRAINT `saved_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
