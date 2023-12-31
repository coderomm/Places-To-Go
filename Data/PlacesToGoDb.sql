USE [master]
GO
/****** Object:  Database [placetogo]    Script Date: 25-11-2023 7.55.54 PM ******/
CREATE DATABASE [placetogo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'placetogo_data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\placetogo_data.mdf' , SIZE = 73728KB , MAXSIZE = 256000KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'placetogo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\placetogo_log.ldf' , SIZE = 8192KB , MAXSIZE = 10240KB , FILEGROWTH = 2048KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [placetogo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [placetogo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [placetogo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [placetogo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [placetogo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [placetogo] SET ARITHABORT OFF 
GO
ALTER DATABASE [placetogo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [placetogo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [placetogo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [placetogo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [placetogo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [placetogo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [placetogo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [placetogo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [placetogo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [placetogo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [placetogo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [placetogo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [placetogo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [placetogo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [placetogo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [placetogo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [placetogo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [placetogo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [placetogo] SET  MULTI_USER 
GO
ALTER DATABASE [placetogo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [placetogo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [placetogo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [placetogo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [placetogo] SET DELAYED_DURABILITY = DISABLED 
GO
USE [placetogo]
GO
/****** Object:  User [placetogo]    Script Date: 25-11-2023 7.55.55 PM ******/
CREATE USER [placetogo] FOR LOGIN [placetogo] WITH DEFAULT_SCHEMA=[placetogo]
GO
ALTER ROLE [db_owner] ADD MEMBER [placetogo]
GO
/****** Object:  Schema [placetogo]    Script Date: 25-11-2023 7.55.55 PM ******/
CREATE SCHEMA [placetogo]
GO
/****** Object:  Table [dbo].[Admin_Login]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_Login](
	[Id] [int] NOT NULL,
	[Username] [nvarchar](max) NULL,
	[UserPassword] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blog_Table]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Table](
	[id] [int] NOT NULL,
	[cid] [nvarchar](max) NULL,
	[pid] [nvarchar](max) NULL,
	[blogImage] [nvarchar](max) NULL,
	[blogAuthorId] [int] NULL,
	[blogAuthor] [nvarchar](max) NULL,
	[blogTitle] [nvarchar](max) NULL,
	[blogTags] [nvarchar](max) NULL,
	[blogDescription] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[rts] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Continent_Table]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continent_Table](
	[id] [int] NOT NULL,
	[continent_name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country_Table]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country_Table](
	[id] [int] NOT NULL,
	[iso] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[nicename] [nvarchar](max) NULL,
	[iso3] [nvarchar](max) NULL,
	[numcode] [nvarchar](max) NULL,
	[country_code] [int] NULL,
	[status] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[District_Table]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District_Table](
	[districtid] [int] NOT NULL,
	[district_title] [nvarchar](max) NOT NULL,
	[state_id] [int] NULL,
	[district_status] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hotel_Table]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel_Table](
	[hotel_id] [int] NOT NULL,
	[continent_id] [int] NULL,
	[country_id] [int] NULL,
	[state_id] [int] NULL,
	[district_id] [int] NULL,
	[hotel_city] [nvarchar](max) NULL,
	[hotel_name] [nvarchar](max) NULL,
	[hotel_image] [nvarchar](max) NULL,
	[hotel_address] [nvarchar](max) NULL,
	[hotel_details] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[rts] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MainCategory]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainCategory](
	[id] [int] NOT NULL,
	[categoryName] [nvarchar](max) NULL,
	[categoryImage] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[rts] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NearbyPlaces_Table]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NearbyPlaces_Table](
	[id] [int] NOT NULL,
	[continentid] [int] NULL,
	[countryid] [int] NULL,
	[sid] [int] NULL,
	[did] [int] NULL,
	[pid] [int] NULL,
	[cityname] [nvarchar](max) NULL,
	[categoryName] [nvarchar](max) NULL,
	[placeName] [nvarchar](max) NULL,
	[placeImage1] [nvarchar](max) NULL,
	[placeImage2] [nvarchar](max) NULL,
	[placeImage3] [nvarchar](max) NULL,
	[placeImage4] [nvarchar](max) NULL,
	[placeImage5] [nvarchar](max) NULL,
	[placeMap] [nvarchar](max) NULL,
	[placeIntro] [nvarchar](max) NULL,
	[placeDiscription] [nvarchar](max) NULL,
	[transport] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[rts] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Place_Details_Table]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place_Details_Table](
	[id] [int] NOT NULL,
	[continentid] [int] NULL,
	[countryid] [int] NULL,
	[cid] [int] NULL,
	[sid] [int] NULL,
	[did] [int] NULL,
	[cityname] [nvarchar](max) NULL,
	[placeName] [nvarchar](max) NULL,
	[placeImage1] [nvarchar](max) NULL,
	[placeImage2] [nvarchar](max) NULL,
	[placeImage3] [nvarchar](max) NULL,
	[placeImage4] [nvarchar](max) NULL,
	[placeImage5] [nvarchar](max) NULL,
	[placeMap] [nvarchar](max) NULL,
	[placeIntro] [nvarchar](max) NULL,
	[placeDiscription] [nvarchar](max) NULL,
	[transport] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[rts] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Review_Table]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review_Table](
	[id] [int] NOT NULL,
	[userid] [int] NULL,
	[pid] [int] NULL,
	[subpid] [int] NULL,
	[review] [nvarchar](max) NULL,
	[rating] [int] NULL,
	[status] [nvarchar](max) NULL,
	[rts] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State_Table]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State_Table](
	[state_id] [int] NOT NULL,
	[state_title] [nvarchar](max) NOT NULL,
	[status] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 25-11-2023 7.55.55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTable](
	[uid] [int] NOT NULL,
	[uname] [nvarchar](max) NULL,
	[uemail] [nvarchar](max) NULL,
	[umobile] [nvarchar](max) NULL,
	[upassword] [nvarchar](max) NULL,
	[usalt] [nvarchar](max) NOT NULL,
	[uimage] [nvarchar](max) NULL,
	[uaddress] [nvarchar](max) NULL,
	[ucity] [nvarchar](max) NULL,
	[ucountry] [nvarchar](max) NULL,
	[uzipcode] [nvarchar](max) NULL,
	[uabout] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[rts] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Admin_Login] ([Id], [Username], [UserPassword]) VALUES (1, N'', N'')
INSERT [dbo].[Admin_Login] ([Id], [Username], [UserPassword]) VALUES (2, N'noadmin', N'admin')
INSERT [dbo].[Blog_Table] ([id], [cid], [pid], [blogImage], [blogAuthorId], [blogAuthor], [blogTitle], [blogTags], [blogDescription], [status], [rts]) VALUES (1, N'1', N'6', N'mount-abu.jpg', 20, N'om', N'10 amazing things to do in Mount Abu for a wholesome experience 2023', N'mount abu , hill station , blogs , mount abu blogs , hill station blogs', N'<h1>10 amazing things to do in Mount Abu for a wholesome experience 2023</h1>

<p><img alt="Jaipur,Rajasthan" src="https://pyt-blogs.imgix.net/2020/06/jaipur-3670085_1920-1.jpg?auto=format&amp;fit=crop&amp;h=400&amp;ixlib=php-3.3.0&amp;w=1500&amp;wpsize=gridlove-cover" style="height:133px; width:500px" /></p>

<p>Mount Abu is an all-year-round destination, Mount Abu is a traveller&rsquo;s paradise in every sense as it is the only hill station in Rajasthan.&nbsp;<a href="https://pickyourtrail.com/blog/a-guide-to-mount-abu/">Mount Abu</a>&nbsp;is located at the border of&nbsp;<a href="https://pickyourtrail.com/blog/things-to-do-in-rajasthan/">Rajasthan</a>&nbsp;and Gujarat, in the lap of Aravalli Mountain, offering splendid views and a soulful experience to its tourists.&nbsp;</p>

<h2>Best time to visit Mount Abu</h2>

<p>Mount Abu is an all-year-round destination, it has a pleasant climate throughout, hence attracts tourists round the year. Summer months are pleasant and comfortable, with temperatures ranging between 23-33 degrees Celsius that fall from April to June. Visit Mount Abu between July and October to enjoy the rain and relish the luxuriant surroundings. The best time to visit is from November to February where this scenic hill station experiences its winter. The weather is extremely soothing and temperature fluctuates between 12 to 30 degrees Celsius. Moreover, the cool winter breeze soothes and rejuvenates the mind and body making it a perfect choice for a winter retreat.</p>

<p>&nbsp;</p>

<p>Sri Lanka Package Starting @ ?14,562</p>

<p>5* Properties. Pristine Beaches. Exciting Itineraries</p>

<p><a href="https://pickyourtrail.com/packages/sri-lanka?utm_source=blog.pyt&amp;utm_medium=blog&amp;utm_campaign=seo" target="_blank">Pickyourtrail.com/packages/sri-lanka</a></p>

<h2>How to reach Mount Abu</h2>

<p>By air: The nearest airport to Mount Abu is Maharana Pratap Airport at&nbsp;<a href="https://pickyourtrail.com/blog/best-things-in-udaipur/">Udaipur</a>&nbsp;at a distance of 210 kilometres. One can also get down at Sardar Vallabhbhai Patel Airport at Ahmedabad, 221 kilometres away. Both these airports are connected with all major cities of India.</p>

<p>By train: There are regular trains to Abu Road from Delhi, Mumbai, Ahmedabad, Jaipur and other major cities. Nearest railhead is at Abu Road- 32 kilometres away.</p>

<p>By road: Both private and state government buses ply between Mount Abu and Udaipur, Jaipur and Delhi.</p>

<p>Also read:&nbsp;<a href="https://pickyourtrail.com/blog/best-places-to-visit-in-mount-abu/">Best places to visit in Mount Abu&mdash;The green oasis of Rajasthan</a></p>

<h2>Things to do in Mount Abu</h2>

<p>Mount Abu has numerous activities that will surely spoil you with choices. Here are 10 amazing things to do in Mount Abu for a wholesome experience that you will definitely cherish and would never forget in your lifetime.</p>

<h3>1. Sightseeing</h3>

<p>One of the best and most popular things to do in Mount Abu is sightseeing as it is home to many cultural and historic landmarks, as well as natural splendours. With places like Dilwara Jain Temple, Nakki Lake, Toad Rock, Guru Shikhar, Achalgarh Fort, and Mount Abu Wildlife Sanctuary, sightseeing in Mount Abu is not only engaging but also thrilling at the same time.</p>

<h3>2. Nakki Lake</h3>

<p><img alt="Nakki Lake" src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Nakki_Lake%2C_Mount_Abu%2C_Rajasthan%2C_610.jpg/1024px-Nakki_Lake%2C_Mount_Abu%2C_Rajasthan%2C_610.jpg" style="height:333px; width:500px" /></p>

<p>Image Credits: Wikimedia Commons</p>

<p>One of the best things to do in Mount Abu is to take a tour of Nakki Lake, popularly known as Nakki Jheel and enjoy boating there. It is located at the heart of Mount Abu and is famous for paddleboats, rowboats and shikhara. Boat rides are available from 30 minutes to 1 hour and you enjoy the surrounding beauty of lush green hills and forests. Other than boating, zorbing and horse riding, can also be enjoyed on the bank of the lake.</p>

<ul>
	<li>Time: 8 am to 6 pm</li>
	<li>Charges: INR 50/person for a paddleboat ride for 30 minutes and INR 100/person for Shikara ride for 30 minutes</li>
</ul>

<h3>3. Guru Shikhar</h3>

<p><img alt="Guru shikhar" src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Guru_shikhar_-_mount_abu.jpg/1024px-Guru_shikhar_-_mount_abu.jpg" style="height:281px; width:500px" /></p>

<p>Image Credits: Wikimedia Commons</p>

<p>The highest peak of Aravalli is Guru Shikhar, located at a distance of 15 kilometres from Mount Abu. Guru Sikhar is a trek of 1722 metres and is a fascinating spot among the most exciting activities in Mount Abu. With the famous Guru Dattatreya temple on the road, the trek to Guru Sikhar is thrilling and moderately challenging and the view of Mount Abu and surrounding region will be jaw-dropping.</p>

<ul>
	<li>Time: 9 am to 5 pm</li>
</ul>

<h3>4. Mount Abu Wildlife Sanctuary</h3>

<p><img alt="Mount Abu Wildlife Sanctuary" src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Leisure_Time%2C_Mount_Abu_Wildlife_Sanctuary.jpg/1024px-Leisure_Time%2C_Mount_Abu_Wildlife_Sanctuary.jpg" style="height:333px; width:500px" /></p>

<p>Image Credits: Wikimedia Commons</p>

<p>One of the most exciting things is to visit Mount Abu Wildlife Sanctuary and spot exotic wildlife and birds. This is a matter of delight for people of all age groups. Mount Abu Wildlife Sanctuary boasts of endangered species of flora and fauna and is a perfect paradise for travellers who want to spend their day amidst nature, especially for bird and wildlife lovers. Experience jungle treks and spot leopards, jungle cats, sloth bear, jackal, hyena, wolves, and wild boar, along with more than 250 species of birds, adding thrill to your overall experience.</p>

<ul>
	<li>Time: 9:30 am to 5:30 pm</li>
</ul>

<h3>5. Aravali</h3>

<p><img alt="Aravalli" src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Aravalli.jpg/1024px-Aravalli.jpg" style="height:333px; width:500px" /></p>

<p>Image Credits: Wikimedia Commons</p>

<p>Mount Abu is the hotspot for trekking and camping which can be done at Aravalli Mountain and is one of the most amazing trekking trails and camping grounds found in and around Mount Abu Wildlife Sanctuary. Of all the experiences to encounter in Mount Abu, this is probably the most adventurous one. Trekking through forest trails and camping overnight in tents is relaxing and revivifying which makes the vacation exciting and daring. You can also try other adventure activities like rock climbing and rappelling.</p>

<h3>6. Sunset Point</h3>

<p>At a distance of 3 kilometres from Nakki Lake, a moderately steep ascent will take you to Sunset Point. Famous for photogenic sunset views, it is a perfect spot for nature lovers and peace seekers. You can take a cab from Nakki Lake, hike uphill or ride on horseback to reach this viewpoint.&nbsp;</p>

<h3>7. Bailey&rsquo;s Walk</h3>

<p>Bailey&rsquo;s Walk is one of the best things to do in Mount Abu for all those seeking a relaxing but engaging trail. The walkway from Nakki Lake to Sunset Point involves hilly trails and zigzag roads.</p>

<h3>8. Trevors Tank</h3>

<p>Trevors Tank is a man-made reservoir, named after a British engineer who constructed this,&nbsp; which is infested by crocodiles and fishes. Plus, Trevors Tank is much famed for bird watching. Located on Guru Shikhar Road, this place is surrounded by verdant forests and rocky outcrops and promises amazing views and overwhelming serenity. If you are a wildlife enthusiast, watching gigantic crocodiles, fishes and birds at Trevors Tank should be on the top of your list of things to do in Mount Abu.</p>

<ul>
	<li>Time: 9 am to 5 pm</li>
	<li>Charges: INR 30/person</li>
</ul>

<h3>9. Caving</h3>

<p>If you love adventure and are in a dilemma about what to do in Mount Abu other than trekking and camping, make sure you include spelunking or adventure caving in your list of activities. The place has many mountain caves like Champaa Caves for thrilling cave exploration. Enjoy the hike, take photographs and feel the thrill. Mount Abu is the perfect place for you to give the first attempt if you have never tried spelunking before.</p>

<h3>10. Nakki Lake Market</h3>

<p>The area surrounding the Nakki Lake is lined with shops and shacks of local specialities. Nakki Lake Market impresses every visitor with its wide collections of Rajasthani and Gujarati handicrafts, bangles, tie and dye textiles, Kota sarees, Jaipur quilt, linen with Sanganeri print and decorative items made of marble, sandstone, and wood. Fill your bags with items of your choice but do not forget to bargain.</p>

<ul>
	<li>Time: 8 am to 8 pm</li>
</ul>

<p>Explore beautiful places of Mount Abu and indulge in some of the fun and exciting activities to make the most of the holiday. With the list of best things to do in Mount Abu, now plan a vacation to Mount Abu, the hilly retreat, right away with&nbsp;<a href="https://pickyourtrail.com/">Pickyourtrail</a>. Check some of the best&nbsp;<a href="https://pickyourtrail.com/packages">holiday packages!</a>&nbsp;You can also have a look at some useful information on&nbsp;<a href="https://pickyourtrail.com/blog/india/">tourist attractions in India</a>&nbsp;and plan your ultimate getaway.</p>
', N'1', N'Mar  8 2023  5:33PM')
INSERT [dbo].[Blog_Table] ([id], [cid], [pid], [blogImage], [blogAuthorId], [blogAuthor], [blogTitle], [blogTags], [blogDescription], [status], [rts]) VALUES (3, N'3', N'3', N'cochin.jpg', 20, N'om', N'48 HRS IN KOCHI, KERALA. IS THE QUEEN OF THE ARABIAN SEA WORTH VISITING?', N'kochi  , natural place to visit , kochi blogs', N'<h1><big>48 HRS IN KOCHI, KERALA. IS THE QUEEN OF THE ARABIAN SEA WORTH VISITING ?</big></h1>

<p><strong><em>Are you planning a trip to Kerala and wondering whether Kochi (Cochin) is worth visiting or not? Read my complete travel guide answering all your questions, including the best places to visit in Kochi and Fort Kochi, where to stay, eat, and when to go.</em></strong></p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Instagrammabale-Streets-of-Fort-Kochi-is-one-of-the-oldest-Catholic-churches-in-Kerala-min.jpg"><img alt="Find out the best things to do in Kochi in 2 days" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Instagrammabale-Streets-of-Fort-Kochi-is-one-of-the-oldest-Catholic-churches-in-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Find out the best things to do in Kochi in 2 days</em></strong></p>

<p>After spending a week in two different destinations &ndash;<a href="https://www.travelseewrite.com/hotel-review-is-paul-bangalore-one-of-the-best-5-star-hotels-in-bangalore-or-not/">&nbsp;Bangalore</a>&nbsp;and&nbsp;<a href="https://www.travelseewrite.com/coffee-culture-and-adventure-a-luxury-vacation-with-coorg-wilderness-resort/">Coorg</a>&nbsp;&ndash; I thought I had experienced two very unique holidays. Nothing could match them in my two-week-long South India Trip. Still, both Fort Kochi and Kumarakom exceeded my expectations. In this post, I&rsquo;ll tell you why I fell in love with Kochi and what are the best things to do in Kochi in 2 days.&nbsp;</p>

<p>Table of Contents</p>

<p>&nbsp;</p>

<ul>
	<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Is_Fort_Kochi_worth_visiting">IS FORT KOCHI WORTH VISITING?</a></li>
	<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#When_is_the_best_time_to_visit_Kochi">WHEN IS THE BEST TIME TO VISIT KOCHI?</a></li>
	<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#How_many_days_are_enough_for_Kochi">HOW MANY DAYS ARE ENOUGH FOR KOCHI?</a></li>
	<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#What_are_the_best_things_to_do_in_Kochi_in_2_days">WHAT ARE THE BEST THINGS TO DO IN KOCHI IN 2 DAYS?</a>
	<ul>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Learn_the_old_fishing_technique_at_the_Chinese_Fishing_Nets">LEARN THE OLD FISHING TECHNIQUE AT THE CHINESE FISHING NETS.</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Marvel_a_glorious_sunset_at_Fort_Kochi_Beach">MARVEL A GLORIOUS SUNSET AT FORT KOCHI BEACH</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Turn_the_history_pages_at_Fort_Emmanuel_ruins">TURN THE HISTORY PAGES AT FORT EMMANUEL RUINS.&nbsp;</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Explore_the_St_Francis_Church">EXPLORE THE ST. FRANCIS CHURCH.</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Visit_the_residence_of_Vasco_De_Gama">VISIT THE RESIDENCE OF VASCO DE GAMA.</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Santa_Cruz_Basilica_-_Pray_at_one_of_the_oldest_Catholic_Churches_in_India">SANTA CRUZ BASILICA &ndash; PRAY AT ONE OF THE OLDEST CATHOLIC CHURCHES IN INDIA.&nbsp;</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Go_antique_shopping_in_Jew_Town">GO ANTIQUE SHOPPING IN JEW TOWN.&nbsp;</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Paradesi_Synagogue_-_attend_a_mass_at_one_of_the_oldest_synagogues_in_India">PARADESI SYNAGOGUE &ndash; ATTEND A MASS AT ONE OF THE OLDEST SYNAGOGUES IN INDIA.&nbsp;</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Mattancherry_Palace_-_Get_a_peek_into_the_lavish_lives_of_the_Kings_of_Kochi">MATTANCHERRY PALACE &ndash; GET A PEEK INTO THE LAVISH LIVES OF THE KINGS OF KOCHI.</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Get_culturally_mesmerised_at_Kerala_Kathakali_Centre">GET CULTURALLY MESMERISED AT KERALA KATHAKALI CENTRE.&nbsp;</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Appreciate_art_at_the_Kochi_Muziris_Biennale">APPRECIATE ART AT THE KOCHI MUZIRIS BIENNALE</a></li>
	</ul>
	</li>
	<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Where_to_stay_in_Kochi">WHERE TO STAY IN KOCHI?</a>
	<ul>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Location">LOCATION</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#The_History_Of_Forte_Kochi">THE HISTORY OF FORTE KOCHI</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Colonial_Era_Rooms">COLONIAL ERA ROOMS</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Facilities">FACILITIES</a></li>
		<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Dinning_at_Forte_Kochi">DINNING AT FORTE KOCHI</a></li>
	</ul>
	</li>
	<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#How_much_does_a_trip_to_Kochi_cost_from_Delhi">HOW MUCH DOES A TRIP TO KOCHI COST FROM DELHI</a></li>
	<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Where_to_eat_in_Kochi">WHERE TO EAT IN KOCHI</a></li>
	<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#How_to_get_to_Fort_Kochi">HOW TO GET TO FORT KOCHI</a></li>
	<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Getting_in_and_around_Fort_Kochi">GETTING IN AND AROUND FORT KOCHI&nbsp;</a></li>
	<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Planning_to_explore_further_afield">PLANNING TO EXPLORE FURTHER AFIELD?</a></li>
	<li><a href="https://www.travelseewrite.com/best-things-to-do-in-kochi-in-2-days/#Like_this_post_Pin_and_save_for_later">LIKE THIS POST? PIN AND SAVE FOR LATER</a></li>
</ul>

<h2><strong>Is Fort Kochi worth visiting?</strong></h2>

<p>This was a question that grappled my mind when planning my trip to&nbsp;<a href="https://www.travelseewrite.com/exploring-the-unexplored-backwaters-of-kerala/">Kerala</a>. I wanted to know what&rsquo;s special about Kochi that makes it a must-visit destination in Kerala. I must admit Kochi, also known as Cochin, is one of the most picturesque destinations on the southwest coastline of Kerala. Known as the&nbsp;<strong>Queen of the Arabian Sea</strong>, the city also flaunts one of the world&rsquo;s finest natural harbours. And, why wouldn&rsquo;t it? After all, it has been the&nbsp;<strong>centre of the world spice trade</strong>&nbsp;for many centuries. Old Kochi (presently called West Kochi) loosely refers to a group of islands which comprise&nbsp;<strong>Fort Kochi</strong>,&nbsp;<strong>Mattancherry</strong>, and&nbsp;<strong>Willingdon Island</strong>, among others. Fort Kochi is a small fishing village that became the&nbsp;<strong>first European township in India</strong>, where you can still see the vestiges of several cultures and ethnicities.&nbsp;</p>

<p><img alt="One of the best things to do in Kochi in 2 days is to watch a sunrise or a sunset at Fort Kochi Beach, Kerala" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Chinese-Fishing-Nets-Fort-Kochi-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></p>

<p><strong><em>One of the best things to do in Kochi in 2 days&nbsp;</em></strong><em><strong>is to watch&nbsp;</strong></em><strong><em>a sunrise or a sunset at Fort Kochi Beach, Kerala</em></strong></p>

<p>The city is also referred to as the&nbsp;<strong>gateway of Kerala</strong>&nbsp;because whether you plan to go to&nbsp;<strong>Alleppey, Thekkady or Munnar</strong>, your starting point will most likely be Kochi. And, if you want to go to&nbsp;<strong>Lakshadweep</strong>, your journey will also begin at Kochi. Therefore it makes sense to start at least a day or two here. There are many things to do in Fort Kochi, so here is a travel guide curated by me to help you plan your time in this historic city.</p>

<p>Fort Kochi is a cultural vessel shaped by many historical influences dating back to 2000 years. Its streets exude that old-world charm. The&nbsp;<strong>Jewish, Arabs, British, Chinese, Dutch</strong>, and&nbsp;<strong>Portuguese</strong>&nbsp;all impacted the history and development of Cochin. At Kochi, you see a hodgepodge of cultures and traditions co-existing with ease &ndash; whether the Catholics of Kerala, Kashmiris, Jews, Konkanis, Gujaratis or Marwaris. The English claimed Cochin as&nbsp;<strong>&ldquo;Mini England&rdquo;</strong>, The Dutch called it&nbsp;<strong>&ldquo;Homely Holland&rsquo;Holland&rsquo;</strong>&nbsp;and the Portuguese referred to the port as&nbsp;<strong>&ldquo;Little Lisbon&rdquo;</strong>.</p>

<h2><strong>When is the best time to visit Kochi</strong><strong>?</strong></h2>

<p>The best time to visit Kochi depends on your interests and what you are looking for in your travels. Most people prefer to visit&nbsp;<strong>between October and March</strong>&nbsp;as the weather is quite pleasant, ranging&nbsp;<strong>from 17 to 33 degrees Celsius</strong>. I was there at the beginning of March, and it was quite pleasant to explore the town on foot. But suppose you are someone who doesn&rsquo;t mind the heat and humidity. In that case, you can visit between&nbsp;<strong>April to June</strong>&nbsp;when the average temperature ranges from&nbsp;<strong>20 to 37 degrees Celsius</strong>. The best part, it is a lean season, which means you can get better hotel deals. Lastly, plan your trip between&nbsp;<strong>July and September</strong>&nbsp;if you love the monsoon. The average temperature is between&nbsp;<strong>24 to 27 degrees Celsius</strong>, and the city turns green. Also, a great time to get good hotel deals.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Fort-Kochi-town-Kerala-min.jpg"><img alt="The best time to visit Kochi is between October and March" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Fort-Kochi-town-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><em><strong>The best time to visit Kochi is</strong>&nbsp;<strong>between October and March</strong></em></p>

<h2><strong>How many days are enough for Kochi?</strong></h2>

<p>If you are interested in exploring just the city&rsquo;s historical side, then I would say two days are enough for Kochi. But if you have time and want to explore the city and around at a slow pace, then 5-7 days should be good. I had two days in hand, and I could explore quite a bit in those two days. But the credit goes to&nbsp;<a href="https://www.fortekochi.in/" target="_blank"><strong>Forte Kochi</strong></a>&nbsp;staff, who put an excellent itinerary for me that was neither too rushed nor too relaxed to miss out on any of the best places to visit in Kochi in 2 days.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Chinese-Fishing-Nets-at-sunrise-Fort-Kochi-Kerala.jpg"><img alt="Kochi can be explored in 2 days" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Chinese-Fishing-Nets-at-sunrise-Fort-Kochi-Kerala-1024x683.jpg" style="height:683px; width:850px" /></a></p>

<p><strong><em>Kochi can be explored in 2-3 days</em></strong></p>

<h2><strong>What are the best things to do in Kochi in 2 days</strong><strong>?</strong></h2>

<p>Kochi is like a treasure trove filled with a historical and cultural richness reflected in its architectural marvels from different eras. I had a fantastic guide called&nbsp;<strong>Vijesh from&nbsp;<a href="http://dayincochin.com/">Day in Cochin Tours</a>&nbsp;</strong>who made me experience the heart and soul of&nbsp;<strong>Fort Kochi and Mattancherry</strong>. Here are some of the places worth checking out if you are looking for ideas on how to spend 48 Hours in Kochi.</p>

<h3><strong>Learn the old fishing technique at the Chinese Fishing Nets.</strong></h3>

<p>The Chinese Fishing Nets are the most popular tourist sights in Kochi, so if you are only making a one day trip to Kochi, this should be number one on your list of things to do in Fort Kochi. Vijesh, my travel guide, said, &ldquo;Many believe the name&nbsp;<strong>Co-chin means like China.</strong>&nbsp;The Chinese explorers who landed here in the Portuguese era installed these fishing nets that have since become the symbol of the place.&rdquo; It is believed the first Chinese Fishing Nets were installed in Fort Kochi in the<strong>&nbsp;15th century</strong>, and they are still in use. Refurbished several times since then, but their technique is still the same that the first traders used. If you want to see that old technique of catching fish, just head to the&nbsp;<strong>Vasco da Gama Square</strong>, a narrow walkway that runs along the&nbsp;<strong>Fort Kochi beach</strong>. The best time to visit the Chinese Fishing Nets and Kochi Beach is during the&nbsp;<strong>sunset time</strong>&nbsp;when the entire area glows in the golden light. Usually, the fisherman would expect a&nbsp;<strong>tip of 100-200 rupees</strong>&nbsp;for letting you take pictures of their nets. As you step outside of the Chinese Fishing nets boats, you are greeted with stalls for food, local drinks, souvenirs etc. There are a few benches as well for sitting.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Beach-Fort-Kochi-Kerala-min.jpg"><img alt="The best time to visit the Chinese Fishing Nets and Kochi Beach is during the sunset time" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Beach-Fort-Kochi-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>The best time to visit the Chinese Fishing Nets and Kochi Beach is during the sunset time</em></strong></p>

<h3><strong>Marvel a glorious sunset at Fort Kochi Beach</strong></h3>

<p>One of the most prominent Fort Kochi tourist places is Fort Kochi Beach, next to the Chinese Fishing Nets. Equally popular among tourists and locals for evening walks, this beach might be small but has many unique factors that differentiate it from other beaches in Kerala or Goa. The presence of the Chinese fishing nets is definitely a highlight. The presence of giant old trees and the greenery on the promenade adds to the serenity of the beach. The seafood, the&nbsp;<strong>Vasco da Gama Square</strong>&nbsp;adjacent to the beach, a lighthouse and a granite walkway are other attractions that make this place a must-visit place in Kochi. The&nbsp;<strong>remains of Fort Immanuel&nbsp;</strong>can also be seen here.&nbsp;</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Chinese-Fishing-Net-Cochin-Kerala.jpeg"><img alt="Best things to do in Kochi in 2 days - Marvel a glorious sunset at Fort Kochi Beach" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Chinese-Fishing-Net-Cochin-Kerala-1024x768.jpeg" style="height:768px; width:1024px" /></a></p>

<p><strong><em>Best things to do in Kochi in 2 days &ndash; Marvel a glorious sunset at Fort Kochi Beach</em></strong></p>

<p>If you happen to travel to Kerala during the new year, don&rsquo;t forget to attend the famous&nbsp;<strong>Cochin Carnival</strong>&nbsp;on&nbsp;<strong>New Year&rsquo;s Eve</strong>.&nbsp;</p>

<h3><strong>Turn the history pages at Fort Emmanuel ruins.&nbsp;</strong></h3>

<p>The origin of Fort Kochi&rsquo;s name lies buried under the ruins of this Portuguese fort which was also one of the first in Asia. It was the first place where Europeans set their first foot, and it became the battleground for Europeans. Fort Emmanuel was built twice by the Portuguese and then by the Dutch.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Vasco-De-Gama-Square-Fort-Kochi-Kerala.jpg"><img alt="Best things to do in Kochi in 2 days - visit Vasco De Gama Square and Fort Emmanuel ruins " src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Vasco-De-Gama-Square-Fort-Kochi-Kerala-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Best things to do in Kochi in 2 days &ndash; visit Vasco De Gama Square and Fort&nbsp;<strong>Emmanuel ruins</strong></em></strong></p>

<h3><strong>Explore the St. Francis Church</strong>.</h3>

<p>Initially built in 1503, St. Francis Church is popularly known as the first church Europeans built in India and has enormous historical relevance. Interestingly, it has served as a Roman Catholic church, a Dutch Reformist church and an Anglican church during different eras depending on the European nation in power at each given time!&nbsp;<strong>St. Francis Church became a mecca for travel buffs worldwide</strong>&nbsp;because the Portuguese explorer&nbsp;<strong>Vasco Da Gama&nbsp;</strong>was first&nbsp;<strong>buried here&nbsp;</strong>after his death<strong>&nbsp;in Kochi in 1524</strong>.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/St.-Francis-Church-Fort-Kochi-Kerala-scaled.jpg"><img alt="Best things to do in Kochi in 2 days - visit St. Francis Church where Vasco De Gama was buried" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/St.-Francis-Church-Fort-Kochi-Kerala-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Best things to do in Kochi in 2 days &ndash; visit St. Francis Church where Vasco De Gama was buried</em></strong></p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/St.-Francis-Church-Fort-Kochi.png"><img alt="Portuguese explorer Vasco Da Gama was first buried at St. Francis Church after his death in Kochi in 1524." src="https://www.travelseewrite.com/wp-content/uploads/2022/04/St.-Francis-Church-Fort-Kochi.png" style="height:672px; width:840px" /></a></p>

<p><strong><em>Portuguese explorer Vasco Da Gama was first buried at St. Francis Church after his death in Kochi in 1524.</em></strong></p>

<h3><strong>Visit the residence of Vasco De Gama</strong>.</h3>

<p>Behind the St. Francis Church on Rose Street is Vasco House, which is believed to have been the residence of the great Portuguese explorer, Vasco da Gama. Vasco House is one of the oldest Portuguese buildings in Fort Kochi, built in the early sixteenth century.&nbsp;<strong>Vasco House</strong>&nbsp;sports the typical European architecture &ndash; white paint, high wooden ceilings, old stone-staircase, large glass windows and balcony cum verandahs characteristic of those times. Today, Vasco House is converted into a homestay with all modern amenities and is owned by Santosh Tom. The story around the building has made it one of the&nbsp;<strong>top Instagramable spots in Fort Kochi.</strong></p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Vasco-De-Gama-House-Fort-Kochi-Kerala-min-scaled.jpg"><img alt="Vasco House is believed to have been the residence of the great Portuguese explorer, Vasco da Gama" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Vasco-De-Gama-House-Fort-Kochi-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Vasco House is believed to have been the residence of the great Portuguese explorer, Vasco da Gama</em></strong></p>

<h3><strong>Santa Cruz Basilica &ndash; Pray at one of the oldest Catholic Churches in India.&nbsp;</strong></h3>

<p>Located on Bastian Street, Santa Cruz Basilica is one of the oldest Catholic Churches in India and one of the eight basilicas in Kerala. It is one of the few buildings built by the Portuguese here that the Dutch spared. Later, demolished and rebuilt by the British in the 19th century, it was proclaimed a basilica by Pope John Paul II in 1984. Built originally in the gothic style by the Portuguese, it is an interesting piece of architecture and artistic grandeur &ndash; one of the must-see places for every visitor to the city!</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Santa-Cruz-Basilica-Fort-Kochi-is-one-of-the-oldest-Catholic-churches-in-Kerala-min-scaled.jpg"><img alt="Located on Bastian Street, Santa Cruz Basilica is one of the oldest Catholic Churches in India" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Santa-Cruz-Basilica-Fort-Kochi-is-one-of-the-oldest-Catholic-churches-in-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Located on Bastian Street, Santa Cruz Basilica is one of the oldest Catholic Churches in India</em></strong></p>

<h3><strong>Go antique shopping in Jew Town.&nbsp;</strong></h3>

<p>Sandwiched between Mattancherry Palace and the 14th-century Paradesi Synagogue,&nbsp;<strong>Jew Town&nbsp;</strong>is a living testimony of Kochi&rsquo;s rich Jewish legacy. Once a spice market, Jew Town today is an eye-catching touristy place in Kochi for those of you always on the lookout for antiques, quirky art pieces, handicrafts, jewellery, clothes, souvenirs, and fusion food for curious tourists. It&rsquo;s a great shopping place in Kochi. The small market is full of stunning art pieces with a rich history and exciting stories.&nbsp;</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/The-Jew-Town-of-Kochi-Kerala-min-scaled.jpg"><img alt="One of the best things to do in Kochi in 2 days is visit the Jew Town " src="https://www.travelseewrite.com/wp-content/uploads/2022/04/The-Jew-Town-of-Kochi-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>One of the best things to do in Kochi in 2 days is to visit the Jew Town</em></strong></p>

<h3><strong>Paradesi Synagogue &ndash; attend a mass at one of the oldest synagogues in India.&nbsp;</strong></h3>

<p>One of the most remarkable landmarks of Kochi is the 14th-century synagogue that is open to visitors every day except Fridays, Saturdays and any Jewish holiday. The&nbsp;<strong>Jewish synagogue was built in 1568</strong>, almost 1500 years after the beginning of the Jewish connection with Kerala. Like other buildings in Kochi, the synagogue was destroyed by the Portuguese in 1662 and then reconstructed two years later by the Dutch. Vijesh told me that&nbsp;<strong>Paradesi is one of the oldest synagogues in India that still holds mass</strong>. Kochi once had a large Jewish population that has been dwindling for decades, and in 2015 there were only 6 Jewish members left in the city. You can read more about it in&nbsp;<a href="http://www.bbc.com/travel/story/20150914-the-last-six-jews-of-cochin" target="_blank">this BBC article</a>.&nbsp;</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/The-Jewish-Paradesi-Synagogue-of-Kochi-Kerala-min-scaled.jpg"><img alt="Paradesi Synagogue is the oldest synagogue in India" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/The-Jewish-Paradesi-Synagogue-of-Kochi-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Paradesi Synagogue is one of the oldest synagogues in India that still holds mass</em></strong>.</p>

<h3><strong>Mattancherry Palace &ndash; Get a peek into the lavish lives of the Kings of Kochi</strong>.</h3>

<p>Also known as Mattancherry Palace, the Dutch Palace was built by the Portuguese in the 16th century. Later, it was presented to the King of Kochi and renovated by the Dutch in the 17th century. Now converted into a museum, it houses a great collection of portraits of Maharajas, mythological murals, old Dutch maps, royal palanquins and period furniture.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/The-Dutch-Palace-Kerala-min-scaled.jpg"><img alt="On the best things to do in Kochi is to visit the Dutch Palace" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/The-Dutch-Palace-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>One of the best things to do in Kochi in 2 days is to visit the Dutch Palace</em></strong></p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Inside-the-Dutch-Palace-Kochi-Kerala-min.jpg"><img alt="Inside the Dutch Palace, Kochi, Kerala" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Inside-the-Dutch-Palace-Kochi-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Inside the Dutch Palace, Kochi, Kerala</em></strong></p>

<h3><strong>Get culturally mesmerised at Kerala Kathakali Centre.&nbsp;</strong></h3>

<p>My trip to Kerala would have been incomplete without watching a performance of Kathakali, a traditional dance form from the 17th century. And the most popular and famous place to watch Kathakali in Kochi is&nbsp;<strong>Kerala Kathakali Centre</strong>, situated on KB Jacob road near Fort Kochi. Built as a traditional arts centre, this place has daily performances of Kathakali, Kalaripayattu, and other classical dance and music forms. And, don&rsquo;t forget to reach half an hour before the performance to see the elaborate make-up process that takes roughly three hours.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Makeup-Kathakali-dancers-Kerala-Kathakali-Centre-Kochi-Kerala-min.jpg"><img alt="Kathakali performers make-up takes roughly three hours." src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Makeup-Kathakali-dancers-Kerala-Kathakali-Centre-Kochi-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Kathakali performers make-up takes roughly three hours.</em></strong></p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Makeup-of-Kathakali-dancers-Kerala-Kathakali-Centre-Kochi-Kerala-min.jpg"><img alt="Kathakali performers doing their makeup before their performance at Kerala Kathakali Centre" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Makeup-of-Kathakali-dancers-Kerala-Kathakali-Centre-Kochi-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Kathakali performers doing their makeup before their performance at Kerala Kathakali Centre</em></strong></p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Kathakali-performance-Kerala-Kathakali-Centre-Kochi-Kerala-min.jpg"><img alt="Best things to do in Kochi in 2 days - watch Kathakali dance performance at Kerala Kathakali Centre, Kochi" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Kathakali-performance-Kerala-Kathakali-Centre-Kochi-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Best things to do in Kochi in 2 days &ndash; watch Kathakali dance performance at Kerala Kathakali Centre, Kochi</em></strong></p>

<h3><strong>Appreciate art at the Kochi Muziris Biennale</strong></h3>

<p>Kochi has a great art culture, and every two years, the city celebrates the&nbsp;<a href="https://kochimuzirisbiennale.org/" target="_blank"><strong>Kochi-Muziris Biennale</strong></a>. It is the largest contemporary art exhibition in India and the first of its kind held in the country. Indian and international artists exhibit artworks across various mediums, including film, installation, painting, sculpture, new media, and performance art. Alongside the exhibition, one can attend talks, seminars, screenings, music, workshops and educational activities for school children and students.</p>

<h2><strong>Where to stay in Kochi?</strong></h2>

<p>Kochi is one of Kerala&rsquo;s biggest and most densely populated cities; therefore, plenty of stay options. You can choose from Fort Kochi, Mattanchery, the mainland Ernakulam, the suburbs of Edapally, Kalamassery and Kakkanad to the suburb of Tripunithura. Too many options often lead to confusion. Therefore it becomes a tricky task to choose&nbsp;<strong>the best place to stay in Kochi</strong>. I was more inclined to explore the historical side of Kochi, so I decided to stay in&nbsp;<strong><a href="https://www.fortekochi.in/">Forte Kochi</a>.</strong>&nbsp;Here is my experience of staying at this boutique heritage hotel.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Forte-kovchi-hotel.jpeg"><img alt="Forte Kochi Boutique Hotel is an ideal place to stay in the heart of Fort Kochi, Kerala" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Forte-kovchi-hotel-1024x683.jpeg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Forte Kochi Boutique Hotel is an ideal place to stay in the heart of Fort Kochi, Kerala</em></strong></p>

<h3><strong>Location</strong></h3>

<p>The city of Kochi was once the hot spot of the historic spice route attracting traders and travellers from more than 30 countries across Europe, the Far East and Asia. Even today, you can see the hodgepodge of cultures and traditions co-existing with ease. You can see the architectural and cultural influences peppered throughout the city &ndash; be it the Jewish, Arab, Portuguese, Dutch, British or Chinese influences on architecture or culture.&nbsp;</p>

<p>And the best way to experience this potpourri of cultures is by staying in the city&rsquo;s heart. So, I booked myself at Forte Kochi, a&nbsp;<strong>150-year-old boutique heritage hotel</strong>&nbsp;in the heart of Fort Kochi, from where most attractions are within walking distance. The Forte Kochi stands in the quaint environs of Fort Kochi, the most historic area of Kochi. Forte Kochi hotel is located on&nbsp;<strong>Princess Street</strong>, which happens to be one of the oldest streets of Fort Kochi, lined with colonial structures. Most of the places to see and things to do in Fort Kochi described above are within 5-10 minutes of walking distance from the hotel.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Forte-Kochi-from-outside.jpeg"><img alt="Forte Kochi is a 150-year-old boutique heritage hotel from where most attractions are within walking distance" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Forte-Kochi-from-outside-1024x737.jpeg" style="height:612px; width:850px" /></a></p>

<p><strong><em>Forte Kochi is a 150-year-old boutique heritage hotel from where most attractions are within walking distance</em></strong></p>

<h3><strong>The History Of Forte Kochi</strong></h3>

<p>As I walked toward the bright yellow and white building, I knew I was in for a big surprise. The history of Forte Kochi is as fascinating as the building itself. The&nbsp;<strong>hotel Manager, Sajeesh Nadakath</strong>, gave us a quick crash course about the historical relevance of the building in which I was staying. I learned that the heritage building in which the hotel is located was originally&nbsp;<strong>built by the Portuguese in 1860</strong>. This historic building was once a&nbsp;<strong>stately mansion&nbsp;</strong>owned by an&nbsp;<strong>eminent Jewish family</strong>. Although the owners had migrated to Israel a long time back, the building was taken on lease by the Paul Group of Hotels and carefully restored to its original structure. Even though the building acts like a time machine letting you enjoy the art and architecture of the bygone colonial era, it is well equipped with all contemporary luxuries and turned into a boutique hotel. No wonder Forte Kochi is one of the best 5-star hotels in Kochi.&nbsp;</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Forte-Kochi-courtyard.jpeg"><img alt="Forte Kochi is one of the best 5-star hotels in Kochi. " src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Forte-Kochi-courtyard-1024x609.jpeg" style="height:506px; width:850px" /></a></p>

<p><strong><em>Forte Kochi is one of the best 5-star hotels in Kochi.&nbsp;</em></strong></p>

<h3><strong>Colonial Era Rooms</strong></h3>

<p>Being a boutique property Forte Kochi has well-appointed 27 colonial-style rooms. You can book yourself in any of the three kinds of rooms &ndash; Classic rooms that accommodate two people, Imperial King rooms that accommodate four people, and the Sovereign Suite that can accommodate four people. While my room had an antique and traditional look, it also offered all modern amenities like an LED TV, Refrigerator, Coffee/Tea Maker, Air Conditioning, Mini Bar, wi-fi etc. As I entered the room, I was greeted into a room reminiscence of&nbsp;<strong>British elegance and luxury</strong>. The room was elegantly designed with colourful tiled floors, large arched tinted windows, colonial-era lamps, and cushioned wicker sofas. The bathroom was well-equipped with a nice bathtub, hand shower, hairdryer, and required toiletries, dressing gowns, and slippers. All the colonial-styled rooms face the central courtyard and swimming pool.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/photo-output-2-min.jpg"><img alt="Forte Kochi has well-appointed 27 colonial-style rooms" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/photo-output-2-min.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Forte Kochi Hotel has well-appointed 27 colonial-style rooms</em></strong></p>

<h3><strong>Facilities</strong></h3>

<p>Apart from the in-room amenities, the hotel has an inviting swimming pool where one can take a dip or relax by the poolside. You can borrow a book from the in-house library or lounge by the poolside with a drink. I really loved sitting in the courtyard, where I could hear the birds singing. Kochi gets really hot and humid in summers, so returning to the sea green-blue pool was like returning to an oasis of calm after a hectic day of sightseeing. There is an<strong>&nbsp;in-house bar&nbsp;</strong>where you can order your favourite drink.&nbsp;</p>

<p>What surprised me the most was the presence of the&nbsp;<strong>holy spring of the Jews</strong>&nbsp;right in the courtyard where a beautiful tortoise lives. You had to walk down a few flights of stairs to get to the spring that dates back to over 200 years.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/photo-output-6.jpg"><img alt="Forte Kochi has all the modern facilities for you to have a comfortable stay in Fort Kochi." src="https://www.travelseewrite.com/wp-content/uploads/2022/04/photo-output-6-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Forte Kochi has all the modern facilities for you to have a comfortable stay in Fort Kochi.</em></strong></p>

<h3><strong>Dinning at Forte Kochi</strong></h3>

<p>Food served at Forte Kochi is a sensory pleasure for your taste buds. I&rsquo;ve to admit this was the place that gave me food comma. Everything right from simple buttermilk is made with so much precision and care that flavours have a field day in your mouth. My first meal in Kochi was at&nbsp;<strong>Jetty restaurant,&nbsp;</strong>and man, it was mindblowing<strong>.</strong>&nbsp;The restaurant serves a varied fare to its guests &ndash; from local Malabar delicacies to Continental cuisine, from Pan Indian dishes to a tempting seafood spread. The appams I had here were the softest and most flavourful I ever had. The food is exceptional, and there&rsquo;s so much variety available. Credit goes to&nbsp;<strong>Chef Jejo Joseph</strong>&nbsp;for being so consistent with taste. I stayed at the hotel for two days and had all my meals here because I loved it so much! Everything from prawn curry to pasta was delicious. And the desserts are to die for.&nbsp;</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Chef-Jejo-Joseph-Forte-Kochi-Hotel-Fort-Kochi-Kerala-min-scaled.jpg"><img alt="Chef Jejo Joseph crafts culinary masterpieces at Forte Kochi restaurants" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Chef-Jejo-Joseph-Forte-Kochi-Hotel-Fort-Kochi-Kerala-min-1024x683.jpg" style="height:683px; width:1024px" /></a></p>

<p><strong><em>Chef Jejo Joseph&nbsp;crafts culinary masterpieces at Forte Kochi restaurants</em></strong></p>

<p>Breakfast is a combination of buffet and &agrave; la carte. One can order from a selection of Indian or European breakfast options and beverages, juices, and shakes.</p>

<p>Another interesting feature that I loved about this boutique property was the High Tea. Served in the evening by the poolside at a small recreated local Kerala style tea shop known as Thattukada. Along with tea, filter coffee, and local snacks.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/photo-output-3-min.jpg"><img alt="Some of the food I ate at Jetty Restaurant, Fort Kochi hotel" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/photo-output-3-min.jpg" style="height:683px; width:1024px" /></a></p>

<p><strong><em>Some of the food I ate at Jetty Restaurant, Fort Kochi hotel</em></strong></p>

<h2><strong>How much does a trip to Kochi cost from Delhi</strong></h2>

<p>The cost of a vacation in Kochi depends on your budget, and you can go as high or as low as you want. But if you&rsquo;re going to have a holiday similar to mine, then this is what it will cost:</p>

<p>Accommodation in an imperial room &ndash; Rs 10030/- per night (including Bed &amp; Breakfast)&nbsp;</p>

<p>Guided Heritage Tour &ndash; Rs. 3540 for two people</p>

<p>Kathakali Show &ndash; Rs. 1180 for two people</p>

<p>Kalaripayattu Show 1180 for two people</p>

<p>Airport Pick Up &amp; Drop by Innova Crysta &ndash; Rs.9000/-</p>

<p>Food &ndash; Rs. 2500 for two people</p>

<p><strong>Total cost for two people (minus the flights) &ndash; 37460 (inclusive of taxes) / USD 490&nbsp;</strong></p>

<p>Besides Forte Kochi, the other hotels worth checking out in Kochi are Brunton Boatyard, Fragrant Nature Kochi, Ramada by Wyndham Kochi Resort, Kochi Marriott Hotel, Grand Hyatt Kochi Bolgatty, and many more.</p>

<h2><strong>Where to eat in Kochi</strong></h2>

<p>While most of my meals were at&nbsp;<strong><a href="https://www.fortekochi.in/jetty-restaurants-dining.php">Forte Kochi&rsquo;s Jetty restaurant</a></strong>, you can try any of the following places considered the best to eat in Kochi. Here are some of the best places to eat in Kochi.&nbsp;<strong>Sri Muruga Caf&eacute;&nbsp;</strong>for&nbsp;<em>pazhampori&nbsp;</em>and beef fry,&nbsp;<strong>Grand Pavillion</strong>&nbsp;at the Grand Hotel for their karimeen (pearl spot) poll<em>ichathu&nbsp;</em>(beef fry) with Malabar parotta,&nbsp;<strong>Kayees Rahmathulla Caf&eacute;</strong>&nbsp;for Biryani,&nbsp;<strong>Ojeen</strong>&nbsp;for thirty different variety of traditional Malabari Mappila snacks,&nbsp;<strong>Armoury Caf&eacute;</strong>&nbsp;at The Brunton Boatyard Hotel for first-class railway curry,&nbsp;<strong>Daal Roti</strong>&nbsp;for North Indian fare,&nbsp;<strong>Ginger House</strong>,&nbsp;<strong>Caf&eacute; Crafters, Kashi Art Caf&eacute;</strong>, and a small outlet at&nbsp;<strong>Neroth John Chandy &amp; Co</strong>&nbsp;(Mattachery) for coffees, shakes, juices and western snacks etc. They serve really good ginger soda and carrot cake.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/authentic-kerala-main-course.jpeg"><img alt="What to eat in Kochi - definitely try the local Malabari coastal cuisine of Kerala" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/authentic-kerala-main-course-edited.jpeg" style="height:1000px; width:1504px" /></a></p>

<p><strong><em>What to eat in Kochi &ndash; definitely try the local Malabari coastal cuisine of Kerala</em></strong></p>

<h2><strong>How to get to Fort Kochi</strong></h2>

<p>There are four ways to get from New Delhi to Kochi &ndash; by plane, train, bus or car. Like most tourists, I arrived in Kochi on a flight that takes around 3 hrs 10 mins and costs between 5000 to 12000 INR. The nearest airport to Kochi is Cochin International Airport, located about a 1-hour drive from Fort Kochi. In peak hours, it can take more than 2 hours to reach the hotel or vice versa. The train is the cheapest mode to reach Kochi but takes around 43-hours and costs anywhere between one thousand rupees to five thousand rupees. The bus will take 2 days 12 hours, and would cost anywhere between 5000 rupees to 8000 rupees. If driving nonstop, it would take you approximately four hours and cost anywhere between 19000 to 30,000 rupees.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Vembanad-Lake-Fort-Kochi-Beach-Kerala-min-scaled.jpg"><img alt="There are four ways to get from New Delhi to Kochi - by plane, train, bus or car." src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Vembanad-Lake-Fort-Kochi-Beach-Kerala-min-1024x683.jpg" style="height:683px; width:1024px" /></a></p>

<p><strong><em>There are four ways to get from New Delhi to Kochi &ndash; by plane, train, bus or car.</em></strong></p>

<h2><strong>Getting in and around Fort Kochi&nbsp;</strong></h2>

<p>If you are planning to explore only Fort Kochi, you don&rsquo;t need transportation as it is quite a small area that you can easily explore on foot. To explore other parts of the city, you can get an Uber or an autorickshaw or even a ferry. Also, check Kochi&rsquo;sKochi&rsquo;s new metro line. Kerala&rsquo;s first metro rail runs from Aluva to Petta (22 stations) and only has one line. As of now, the Kochi metro doesn&rsquo;t reach Fort Kochi, but there are plans to expand it over the years. The nearest metro stations to Fort Kochi are Maharaja College Metro Station and M G Road Metro Station. Both are approximately 3 km away from Fort Kochi.</p>

<p><a href="https://www.travelseewrite.com/wp-content/uploads/2022/04/Fort-Kochi-Beach-Kerala-min.jpg"><img alt="Fort Kochi is best explored on foot" src="https://www.travelseewrite.com/wp-content/uploads/2022/04/Fort-Kochi-Beach-Kerala-min-1024x683.jpg" style="height:567px; width:850px" /></a></p>

<p><strong><em>Fort Kochi is best explored on foot</em></strong></p>

<h2><strong>Planning to explore further afield?</strong></h2>

<p>If you want to explore Kerala further, I would highly recommend experiencing the backwaters from Kumarakom. They are less touristy as compared to Alleppey.&nbsp;</p>

<p><em><strong>I hope you find this post helpful and it inspires you to experience the&nbsp;best things to do in Kochi in 2 days!</strong></em></p>
', N'1', N'Mar  8 2023 10:13PM')
INSERT [dbo].[Continent_Table] ([id], [continent_name]) VALUES (1, N'Asia')
INSERT [dbo].[Continent_Table] ([id], [continent_name]) VALUES (2, N'Africa')
INSERT [dbo].[Continent_Table] ([id], [continent_name]) VALUES (3, N'North America')
INSERT [dbo].[Continent_Table] ([id], [continent_name]) VALUES (4, N'South America')
INSERT [dbo].[Continent_Table] ([id], [continent_name]) VALUES (5, N'Antarctica')
INSERT [dbo].[Continent_Table] ([id], [continent_name]) VALUES (6, N'Europe')
INSERT [dbo].[Continent_Table] ([id], [continent_name]) VALUES (7, N'Australia')
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (1, N'AF', N'AFGHANISTAN', N'Afghanistan', N'AFG', N'4', 93, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (2, N'AL', N'ALBANIA', N'Albania', N'ALB', N'8', 355, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (3, N'DZ', N'ALGERIA', N'Algeria', N'DZA', N'12', 213, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (4, N'AS', N'AMERICAN SAMOA', N'American Samoa', N'ASM', N'16', 1684, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (5, N'AD', N'ANDORRA', N'Andorra', N'AND', N'20', 376, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (6, N'AO', N'ANGOLA', N'Angola', N'AGO', N'24', 244, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (7, N'AI', N'ANGUILLA', N'Anguilla', N'AIA', N'660', 1264, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (8, N'AQ', N'ANTARCTICA', N'Antarctica', NULL, NULL, 0, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (9, N'AG', N'ANTIGUA AND BARBUDA', N'Antigua and Barbuda', N'ATG', N'28', 1268, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (10, N'AR', N'ARGENTINA', N'Argentina', N'ARG', N'32', 54, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (11, N'AM', N'ARMENIA', N'Armenia', N'ARM', N'51', 374, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (12, N'AW', N'ARUBA', N'Aruba', N'ABW', N'533', 297, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (13, N'AU', N'AUSTRALIA', N'Australia', N'AUS', N'36', 61, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (14, N'AT', N'AUSTRIA', N'Austria', N'AUT', N'40', 43, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (15, N'AZ', N'AZERBAIJAN', N'Azerbaijan', N'AZE', N'31', 994, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (16, N'BS', N'BAHAMAS', N'Bahamas', N'BHS', N'44', 1242, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (17, N'BH', N'BAHRAIN', N'Bahrain', N'BHR', N'48', 973, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (18, N'BD', N'BANGLADESH', N'Bangladesh', N'BGD', N'50', 880, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (19, N'BB', N'BARBADOS', N'Barbados', N'BRB', N'52', 1246, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (20, N'BY', N'BELARUS', N'Belarus', N'BLR', N'112', 375, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (21, N'BE', N'BELGIUM', N'Belgium', N'BEL', N'56', 32, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (22, N'BZ', N'BELIZE', N'Belize', N'BLZ', N'84', 501, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (23, N'BJ', N'BENIN', N'Benin', N'BEN', N'204', 229, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (24, N'BM', N'BERMUDA', N'Bermuda', N'BMU', N'60', 1441, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (25, N'BT', N'BHUTAN', N'Bhutan', N'BTN', N'64', 975, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (26, N'BO', N'BOLIVIA', N'Bolivia', N'BOL', N'68', 591, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (27, N'BA', N'BOSNIA AND HERZEGOVINA', N'Bosnia and Herzegovina', N'BIH', N'70', 387, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (28, N'BW', N'BOTSWANA', N'Botswana', N'BWA', N'72', 267, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (29, N'BV', N'BOUVET ISLAND', N'Bouvet Island', NULL, NULL, 0, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (30, N'BR', N'BRAZIL', N'Brazil', N'BRA', N'76', 55, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (31, N'IO', N'BRITISH INDIAN OCEAN TERRITORY', N'British Indian Ocean Territory', NULL, NULL, 246, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (32, N'BN', N'BRUNEI DARUSSALAM', N'Brunei Darussalam', N'BRN', N'96', 673, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (33, N'BG', N'BULGARIA', N'Bulgaria', N'BGR', N'100', 359, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (34, N'BF', N'BURKINA FASO', N'Burkina Faso', N'BFA', N'854', 226, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (35, N'BI', N'BURUNDI', N'Burundi', N'BDI', N'108', 257, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (36, N'KH', N'CAMBODIA', N'Cambodia', N'KHM', N'116', 855, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (37, N'CM', N'CAMEROON', N'Cameroon', N'CMR', N'120', 237, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (38, N'CA', N'CANADA', N'Canada', N'CAN', N'124', 1, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (39, N'CV', N'CAPE VERDE', N'Cape Verde', N'CPV', N'132', 238, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (40, N'KY', N'CAYMAN ISLANDS', N'Cayman Islands', N'CYM', N'136', 1345, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (41, N'CF', N'CENTRAL AFRICAN REPUBLIC', N'Central African Republic', N'CAF', N'140', 236, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (42, N'TD', N'CHAD', N'Chad', N'TCD', N'148', 235, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (43, N'CL', N'CHILE', N'Chile', N'CHL', N'152', 56, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (44, N'CN', N'CHINA', N'China', N'CHN', N'156', 86, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (45, N'CX', N'CHRISTMAS ISLAND', N'Christmas Island', NULL, NULL, 61, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (46, N'CC', N'COCOS (KEELING) ISLANDS', N'Cocos (Keeling) Islands', NULL, NULL, 672, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (47, N'CO', N'COLOMBIA', N'Colombia', N'COL', N'170', 57, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (48, N'KM', N'COMOROS', N'Comoros', N'COM', N'174', 269, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (49, N'CG', N'CONGO', N'Congo', N'COG', N'178', 242, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (50, N'CD', N'CONGO, THE DEMOCRATIC REPUBLIC OF THE', N'Congo, the Democratic Republic of the', N'COD', N'180', 242, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (51, N'CK', N'COOK ISLANDS', N'Cook Islands', N'COK', N'184', 682, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (52, N'CR', N'COSTA RICA', N'Costa Rica', N'CRI', N'188', 506, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (53, N'CI', N'COTE D''IVOIRE', N'Cote D''Ivoire', N'CIV', N'384', 225, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (54, N'HR', N'CROATIA', N'Croatia', N'HRV', N'191', 385, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (55, N'CU', N'CUBA', N'Cuba', N'CUB', N'192', 53, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (56, N'CY', N'CYPRUS', N'Cyprus', N'CYP', N'196', 357, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (57, N'CZ', N'CZECH REPUBLIC', N'Czech Republic', N'CZE', N'203', 420, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (58, N'DK', N'DENMARK', N'Denmark', N'DNK', N'208', 45, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (59, N'DJ', N'DJIBOUTI', N'Djibouti', N'DJI', N'262', 253, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (60, N'DM', N'DOMINICA', N'Dominica', N'DMA', N'212', 1767, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (61, N'DO', N'DOMINICAN REPUBLIC', N'Dominican Republic', N'DOM', N'214', 1809, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (62, N'EC', N'ECUADOR', N'Ecuador', N'ECU', N'218', 593, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (63, N'EG', N'EGYPT', N'Egypt', N'EGY', N'818', 20, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (64, N'SV', N'EL SALVADOR', N'El Salvador', N'SLV', N'222', 503, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (65, N'GQ', N'EQUATORIAL GUINEA', N'Equatorial Guinea', N'GNQ', N'226', 240, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (66, N'ER', N'ERITREA', N'Eritrea', N'ERI', N'232', 291, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (67, N'EE', N'ESTONIA', N'Estonia', N'EST', N'233', 372, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (68, N'ET', N'ETHIOPIA', N'Ethiopia', N'ETH', N'231', 251, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (69, N'FK', N'FALKLAND ISLANDS (MALVINAS)', N'Falkland Islands (Malvinas)', N'FLK', N'238', 500, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (70, N'FO', N'FAROE ISLANDS', N'Faroe Islands', N'FRO', N'234', 298, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (71, N'FJ', N'FIJI', N'Fiji', N'FJI', N'242', 679, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (72, N'FI', N'FINLAND', N'Finland', N'FIN', N'246', 358, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (73, N'FR', N'FRANCE', N'France', N'FRA', N'250', 33, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (74, N'GF', N'FRENCH GUIANA', N'French Guiana', N'GUF', N'254', 594, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (75, N'PF', N'FRENCH POLYNESIA', N'French Polynesia', N'PYF', N'258', 689, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (76, N'TF', N'FRENCH SOUTHERN TERRITORIES', N'French Southern Territories', NULL, NULL, 0, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (77, N'GA', N'GABON', N'Gabon', N'GAB', N'266', 241, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (78, N'GM', N'GAMBIA', N'Gambia', N'GMB', N'270', 220, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (79, N'GE', N'GEORGIA', N'Georgia', N'GEO', N'268', 995, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (80, N'DE', N'GERMANY', N'Germany', N'DEU', N'276', 49, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (81, N'GH', N'GHANA', N'Ghana', N'GHA', N'288', 233, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (82, N'GI', N'GIBRALTAR', N'Gibraltar', N'GIB', N'292', 350, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (83, N'GR', N'GREECE', N'Greece', N'GRC', N'300', 30, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (84, N'GL', N'GREENLAND', N'Greenland', N'GRL', N'304', 299, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (85, N'GD', N'GRENADA', N'Grenada', N'GRD', N'308', 1473, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (86, N'GP', N'GUADELOUPE', N'Guadeloupe', N'GLP', N'312', 590, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (87, N'GU', N'GUAM', N'Guam', N'GUM', N'316', 1671, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (88, N'GT', N'GUATEMALA', N'Guatemala', N'GTM', N'320', 502, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (89, N'GN', N'GUINEA', N'Guinea', N'GIN', N'324', 224, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (90, N'GW', N'GUINEA-BISSAU', N'Guinea-Bissau', N'GNB', N'624', 245, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (91, N'GY', N'GUYANA', N'Guyana', N'GUY', N'328', 592, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (92, N'HT', N'HAITI', N'Haiti', N'HTI', N'332', 509, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (93, N'HM', N'HEARD ISLAND AND MCDONALD ISLANDS', N'Heard Island and Mcdonald Islands', NULL, NULL, 0, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (94, N'VA', N'HOLY SEE (VATICAN CITY STATE)', N'Holy See (Vatican City State)', N'VAT', N'336', 39, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (95, N'HN', N'HONDURAS', N'Honduras', N'HND', N'340', 504, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (96, N'HK', N'HONG KONG', N'Hong Kong', N'HKG', N'344', 852, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (97, N'HU', N'HUNGARY', N'Hungary', N'HUN', N'348', 36, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (98, N'IS', N'ICELAND', N'Iceland', N'ISL', N'352', 354, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (99, N'IN', N'INDIA', N'India', N'IND', N'356', 91, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (100, N'ID', N'INDONESIA', N'Indonesia', N'IDN', N'360', 62, NULL)
GO
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (101, N'IR', N'IRAN, ISLAMIC REPUBLIC OF', N'Iran, Islamic Republic of', N'IRN', N'364', 98, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (102, N'IQ', N'IRAQ', N'Iraq', N'IRQ', N'368', 964, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (103, N'IE', N'IRELAND', N'Ireland', N'IRL', N'372', 353, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (104, N'IL', N'ISRAEL', N'Israel', N'ISR', N'376', 972, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (105, N'IT', N'ITALY', N'Italy', N'ITA', N'380', 39, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (106, N'JM', N'JAMAICA', N'Jamaica', N'JAM', N'388', 1876, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (107, N'JP', N'JAPAN', N'Japan', N'JPN', N'392', 81, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (108, N'JO', N'JORDAN', N'Jordan', N'JOR', N'400', 962, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (109, N'KZ', N'KAZAKHSTAN', N'Kazakhstan', N'KAZ', N'398', 7, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (110, N'KE', N'KENYA', N'Kenya', N'KEN', N'404', 254, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (111, N'KI', N'KIRIBATI', N'Kiribati', N'KIR', N'296', 686, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (112, N'KP', N'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', N'Korea, Democratic People''s Republic of', N'PRK', N'408', 850, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (113, N'KR', N'KOREA, REPUBLIC OF', N'Korea, Republic of', N'KOR', N'410', 82, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (114, N'KW', N'KUWAIT', N'Kuwait', N'KWT', N'414', 965, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (115, N'KG', N'KYRGYZSTAN', N'Kyrgyzstan', N'KGZ', N'417', 996, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (116, N'LA', N'LAO PEOPLE''S DEMOCRATIC REPUBLIC', N'Lao People''s Democratic Republic', N'LAO', N'418', 856, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (117, N'LV', N'LATVIA', N'Latvia', N'LVA', N'428', 371, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (118, N'LB', N'LEBANON', N'Lebanon', N'LBN', N'422', 961, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (119, N'LS', N'LESOTHO', N'Lesotho', N'LSO', N'426', 266, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (120, N'LR', N'LIBERIA', N'Liberia', N'LBR', N'430', 231, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (121, N'LY', N'LIBYAN ARAB JAMAHIRIYA', N'Libyan Arab Jamahiriya', N'LBY', N'434', 218, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (122, N'LI', N'LIECHTENSTEIN', N'Liechtenstein', N'LIE', N'438', 423, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (123, N'LT', N'LITHUANIA', N'Lithuania', N'LTU', N'440', 370, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (124, N'LU', N'LUXEMBOURG', N'Luxembourg', N'LUX', N'442', 352, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (125, N'MO', N'MACAO', N'Macao', N'MAC', N'446', 853, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (126, N'MK', N'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', N'Macedonia, the Former Yugoslav Republic of', N'MKD', N'807', 389, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (127, N'MG', N'MADAGASCAR', N'Madagascar', N'MDG', N'450', 261, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (128, N'MW', N'MALAWI', N'Malawi', N'MWI', N'454', 265, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (129, N'MY', N'MALAYSIA', N'Malaysia', N'MYS', N'458', 60, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (130, N'MV', N'MALDIVES', N'Maldives', N'MDV', N'462', 960, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (131, N'ML', N'MALI', N'Mali', N'MLI', N'466', 223, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (132, N'MT', N'MALTA', N'Malta', N'MLT', N'470', 356, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (133, N'MH', N'MARSHALL ISLANDS', N'Marshall Islands', N'MHL', N'584', 692, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (134, N'MQ', N'MARTINIQUE', N'Martinique', N'MTQ', N'474', 596, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (135, N'MR', N'MAURITANIA', N'Mauritania', N'MRT', N'478', 222, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (136, N'MU', N'MAURITIUS', N'Mauritius', N'MUS', N'480', 230, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (137, N'YT', N'MAYOTTE', N'Mayotte', NULL, NULL, 269, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (138, N'MX', N'MEXICO', N'Mexico', N'MEX', N'484', 52, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (139, N'FM', N'MICRONESIA, FEDERATED STATES OF', N'Micronesia, Federated States of', N'FSM', N'583', 691, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (140, N'MD', N'MOLDOVA, REPUBLIC OF', N'Moldova, Republic of', N'MDA', N'498', 373, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (141, N'MC', N'MONACO', N'Monaco', N'MCO', N'492', 377, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (142, N'MN', N'MONGOLIA', N'Mongolia', N'MNG', N'496', 976, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (143, N'MS', N'MONTSERRAT', N'Montserrat', N'MSR', N'500', 1664, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (144, N'MA', N'MOROCCO', N'Morocco', N'MAR', N'504', 212, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (145, N'MZ', N'MOZAMBIQUE', N'Mozambique', N'MOZ', N'508', 258, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (146, N'MM', N'MYANMAR', N'Myanmar', N'MMR', N'104', 95, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (147, N'NA', N'NAMIBIA', N'Namibia', N'NAM', N'516', 264, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (148, N'NR', N'NAURU', N'Nauru', N'NRU', N'520', 674, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (149, N'NP', N'NEPAL', N'Nepal', N'NPL', N'524', 977, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (150, N'NL', N'NETHERLANDS', N'Netherlands', N'NLD', N'528', 31, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (151, N'AN', N'NETHERLANDS ANTILLES', N'Netherlands Antilles', N'ANT', N'530', 599, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (152, N'NC', N'NEW CALEDONIA', N'New Caledonia', N'NCL', N'540', 687, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (153, N'NZ', N'NEW ZEALAND', N'New Zealand', N'NZL', N'554', 64, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (154, N'NI', N'NICARAGUA', N'Nicaragua', N'NIC', N'558', 505, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (155, N'NE', N'NIGER', N'Niger', N'NER', N'562', 227, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (156, N'NG', N'NIGERIA', N'Nigeria', N'NGA', N'566', 234, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (157, N'NU', N'NIUE', N'Niue', N'NIU', N'570', 683, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (158, N'NF', N'NORFOLK ISLAND', N'Norfolk Island', N'NFK', N'574', 672, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (159, N'MP', N'NORTHERN MARIANA ISLANDS', N'Northern Mariana Islands', N'MNP', N'580', 1670, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (160, N'NO', N'NORWAY', N'Norway', N'NOR', N'578', 47, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (161, N'OM', N'OMAN', N'Oman', N'OMN', N'512', 968, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (162, N'PK', N'PAKISTAN', N'Pakistan', N'PAK', N'586', 92, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (163, N'PW', N'PALAU', N'Palau', N'PLW', N'585', 680, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (164, N'PS', N'PALESTINIAN TERRITORY, OCCUPIED', N'Palestinian Territory, Occupied', NULL, NULL, 970, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (165, N'PA', N'PANAMA', N'Panama', N'PAN', N'591', 507, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (166, N'PG', N'PAPUA NEW GUINEA', N'Papua New Guinea', N'PNG', N'598', 675, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (167, N'PY', N'PARAGUAY', N'Paraguay', N'PRY', N'600', 595, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (168, N'PE', N'PERU', N'Peru', N'PER', N'604', 51, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (169, N'PH', N'PHILIPPINES', N'Philippines', N'PHL', N'608', 63, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (170, N'PN', N'PITCAIRN', N'Pitcairn', N'PCN', N'612', 0, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (171, N'PL', N'POLAND', N'Poland', N'POL', N'616', 48, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (172, N'PT', N'PORTUGAL', N'Portugal', N'PRT', N'620', 351, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (173, N'PR', N'PUERTO RICO', N'Puerto Rico', N'PRI', N'630', 1787, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (174, N'QA', N'QATAR', N'Qatar', N'QAT', N'634', 974, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (175, N'RE', N'REUNION', N'Reunion', N'REU', N'638', 262, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (176, N'RO', N'ROMANIA', N'Romania', N'ROM', N'642', 40, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (177, N'RU', N'RUSSIAN FEDERATION', N'Russian Federation', N'RUS', N'643', 70, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (178, N'RW', N'RWANDA', N'Rwanda', N'RWA', N'646', 250, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (179, N'SH', N'SAINT HELENA', N'Saint Helena', N'SHN', N'654', 290, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (180, N'KN', N'SAINT KITTS AND NEVIS', N'Saint Kitts and Nevis', N'KNA', N'659', 1869, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (181, N'LC', N'SAINT LUCIA', N'Saint Lucia', N'LCA', N'662', 1758, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (182, N'PM', N'SAINT PIERRE AND MIQUELON', N'Saint Pierre and Miquelon', N'SPM', N'666', 508, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (183, N'VC', N'SAINT VINCENT AND THE GRENADINES', N'Saint Vincent and the Grenadines', N'VCT', N'670', 1784, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (184, N'WS', N'SAMOA', N'Samoa', N'WSM', N'882', 684, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (185, N'SM', N'SAN MARINO', N'San Marino', N'SMR', N'674', 378, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (186, N'ST', N'SAO TOME AND PRINCIPE', N'Sao Tome and Principe', N'STP', N'678', 239, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (187, N'SA', N'SAUDI ARABIA', N'Saudi Arabia', N'SAU', N'682', 966, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (188, N'SN', N'SENEGAL', N'Senegal', N'SEN', N'686', 221, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (189, N'CS', N'SERBIA AND MONTENEGRO', N'Serbia and Montenegro', NULL, NULL, 381, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (190, N'SC', N'SEYCHELLES', N'Seychelles', N'SYC', N'690', 248, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (191, N'SL', N'SIERRA LEONE', N'Sierra Leone', N'SLE', N'694', 232, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (192, N'SG', N'SINGAPORE', N'Singapore', N'SGP', N'702', 65, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (193, N'SK', N'SLOVAKIA', N'Slovakia', N'SVK', N'703', 421, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (194, N'SI', N'SLOVENIA', N'Slovenia', N'SVN', N'705', 386, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (195, N'SB', N'SOLOMON ISLANDS', N'Solomon Islands', N'SLB', N'90', 677, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (196, N'SO', N'SOMALIA', N'Somalia', N'SOM', N'706', 252, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (197, N'ZA', N'SOUTH AFRICA', N'South Africa', N'ZAF', N'710', 27, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (198, N'GS', N'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', N'South Georgia and the South Sandwich Islands', NULL, NULL, 0, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (199, N'ES', N'SPAIN', N'Spain', N'ESP', N'724', 34, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (200, N'LK', N'SRI LANKA', N'Sri Lanka', N'LKA', N'144', 94, NULL)
GO
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (201, N'SD', N'SUDAN', N'Sudan', N'SDN', N'736', 249, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (202, N'SR', N'SURINAME', N'Suriname', N'SUR', N'740', 597, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (203, N'SJ', N'SVALBARD AND JAN MAYEN', N'Svalbard and Jan Mayen', N'SJM', N'744', 47, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (204, N'SZ', N'SWAZILAND', N'Swaziland', N'SWZ', N'748', 268, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (205, N'SE', N'SWEDEN', N'Sweden', N'SWE', N'752', 46, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (206, N'CH', N'SWITZERLAND', N'Switzerland', N'CHE', N'756', 41, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (207, N'SY', N'SYRIAN ARAB REPUBLIC', N'Syrian Arab Republic', N'SYR', N'760', 963, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (208, N'TW', N'TAIWAN, PROVINCE OF CHINA', N'Taiwan, Province of China', N'TWN', N'158', 886, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (209, N'TJ', N'TAJIKISTAN', N'Tajikistan', N'TJK', N'762', 992, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (210, N'TZ', N'TANZANIA, UNITED REPUBLIC OF', N'Tanzania, United Republic of', N'TZA', N'834', 255, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (211, N'TH', N'THAILAND', N'Thailand', N'THA', N'764', 66, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (212, N'TL', N'TIMOR-LESTE', N'Timor-Leste', NULL, NULL, 670, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (213, N'TG', N'TOGO', N'Togo', N'TGO', N'768', 228, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (214, N'TK', N'TOKELAU', N'Tokelau', N'TKL', N'772', 690, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (215, N'TO', N'TONGA', N'Tonga', N'TON', N'776', 676, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (216, N'TT', N'TRINIDAD AND TOBAGO', N'Trinidad and Tobago', N'TTO', N'780', 1868, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (217, N'TN', N'TUNISIA', N'Tunisia', N'TUN', N'788', 216, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (218, N'TR', N'TURKEY', N'Turkey', N'TUR', N'792', 90, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (219, N'TM', N'TURKMENISTAN', N'Turkmenistan', N'TKM', N'795', 7370, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (220, N'TC', N'TURKS AND CAICOS ISLANDS', N'Turks and Caicos Islands', N'TCA', N'796', 1649, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (221, N'TV', N'TUVALU', N'Tuvalu', N'TUV', N'798', 688, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (222, N'UG', N'UGANDA', N'Uganda', N'UGA', N'800', 256, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (223, N'UA', N'UKRAINE', N'Ukraine', N'UKR', N'804', 380, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (224, N'AE', N'UNITED ARAB EMIRATES', N'United Arab Emirates', N'ARE', N'784', 971, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (225, N'GB', N'UNITED KINGDOM', N'United Kingdom', N'GBR', N'826', 44, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (226, N'US', N'UNITED STATES', N'United States', N'USA', N'840', 1, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (227, N'UM', N'UNITED STATES MINOR OUTLYING ISLANDS', N'United States Minor Outlying Islands', NULL, NULL, 1, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (228, N'UY', N'URUGUAY', N'Uruguay', N'URY', N'858', 598, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (229, N'UZ', N'UZBEKISTAN', N'Uzbekistan', N'UZB', N'860', 998, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (230, N'VU', N'VANUATU', N'Vanuatu', N'VUT', N'548', 678, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (231, N'VE', N'VENEZUELA', N'Venezuela', N'VEN', N'862', 58, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (232, N'VN', N'VIET NAM', N'Viet Nam', N'VNM', N'704', 84, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (233, N'VG', N'VIRGIN ISLANDS, BRITISH', N'Virgin Islands, British', N'VGB', N'92', 1284, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (234, N'VI', N'VIRGIN ISLANDS, U.S.', N'Virgin Islands, U.s.', N'VIR', N'850', 1340, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (235, N'WF', N'WALLIS AND FUTUNA', N'Wallis and Futuna', N'WLF', N'876', 681, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (236, N'EH', N'WESTERN SAHARA', N'Western Sahara', N'ESH', N'732', 212, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (237, N'YE', N'YEMEN', N'Yemen', N'YEM', N'887', 967, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (238, N'ZM', N'ZAMBIA', N'Zambia', N'ZMB', N'894', 260, NULL)
INSERT [dbo].[Country_Table] ([id], [iso], [name], [nicename], [iso3], [numcode], [country_code], [status]) VALUES (239, N'ZW', N'ZIMBABWE', N'Zimbabwe', N'ZWE', N'716', 263, NULL)
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (0, N'', NULL, N'Deactive')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (36, N'Anantnag', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (37, N'Bandipore', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (38, N'Baramulla', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (39, N'Budgam', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (40, N'Doda', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (41, N'Ganderbal', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (42, N'Jammu', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (43, N'Kargil', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (44, N'Kathua', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (45, N'Kishtwar', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (46, N'Kulgam', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (47, N'Kupwara', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (48, N'Leh (Ladakh)', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (49, N'Poonch', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (50, N'Pulwama', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (51, N'Rajouri', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (52, N'Ramban', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (53, N'Reasi', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (54, N'Samba', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (55, N'Shopian', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (56, N'Srinagar', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (57, N'Udhampur', 15, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (58, N'Bilaspur (Himachal Pradesh)', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (59, N'Chamba', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (60, N'Hamirpur (Himachal Pradesh)', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (61, N'Kangra', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (62, N'Kinnaur', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (63, N'Kullu', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (64, N'Lahul & Spiti', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (65, N'Mandi', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (66, N'Shimla', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (67, N'Sirmaur', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (68, N'Solan', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (69, N'Una', 14, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (70, N'Amritsar', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (71, N'Barnala', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (72, N'Bathinda', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (73, N'Faridkot', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (74, N'Fatehgarh Sahib', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (75, N'Firozpur', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (76, N'Gurdaspur', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (77, N'Hoshiarpur', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (78, N'Jalandhar', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (79, N'Kapurthala', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (80, N'Ludhiana', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (81, N'Mansa', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (82, N'Moga', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (83, N'Muktsar', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (84, N'Patiala', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (85, N'Rupnagar (Ropar)', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (86, N'Sahibzada Ajit Singh Nagar (Mohali)', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (87, N'Sangrur', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (88, N'Shahid Bhagat Singh Nagar (Nawanshahr)', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (89, N'Tarn Taran', 28, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (90, N'Chandigarh', 6, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (91, N'Almora', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (92, N'Bageshwar', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (93, N'Chamoli', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (94, N'Champawat', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (95, N'Dehradun', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (96, N'Haridwar', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (97, N'Nainital', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (98, N'Pauri Garhwal', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (99, N'Pithoragarh', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (100, N'Rudraprayag', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (101, N'Tehri Garhwal', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (102, N'Udham Singh Nagar', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (103, N'Uttarkashi', 34, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (104, N'Ambala', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (105, N'Bhiwani', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (106, N'Faridabad', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (107, N'Fatehabad', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (108, N'Gurgaon', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (109, N'Hisar', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (110, N'Jhajjar', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (111, N'Jind', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (112, N'Kaithal', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (113, N'Karnal', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (114, N'Kurukshetra', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (115, N'Mahendragarh', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (116, N'Mewat', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (117, N'Palwal', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (118, N'Panchkula', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (119, N'Panipat', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (120, N'Rewari', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (121, N'Rohtak', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (122, N'Sirsa', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (123, N'Sonipat', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (124, N'Yamuna Nagar', 13, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (125, N'Central Delhi', 10, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (126, N'East Delhi', 10, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (127, N'New Delhi', 10, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (128, N'North Delhi', 10, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (129, N'North East Delhi', 10, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (130, N'North West Delhi', 10, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (131, N'South Delhi', 10, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (132, N'South West Delhi', 10, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (133, N'West Delhi', 10, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (134, N'Ajmer', 29, N'Active')
GO
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (135, N'Alwar', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (136, N'Banswara', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (137, N'Baran', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (138, N'Barmer', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (139, N'Bharatpur', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (140, N'Bhilwara', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (141, N'Bikaner', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (142, N'Bundi', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (143, N'Chittorgarh', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (144, N'Churu', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (145, N'Dausa', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (146, N'Dholpur', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (147, N'Dungarpur', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (148, N'Ganganagar', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (149, N'Hanumangarh', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (150, N'Jaipur', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (151, N'Jaisalmer', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (152, N'Jalor', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (153, N'Jhalawar', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (154, N'Jhunjhunu', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (155, N'Jodhpur', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (156, N'Karauli', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (157, N'Kota', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (158, N'Nagaur', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (159, N'Pali', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (160, N'Pratapgarh (Rajasthan)', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (161, N'Rajsamand', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (162, N'Sawai Madhopur', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (163, N'Sikar', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (164, N'Sirohi', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (165, N'Tonk', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (166, N'Udaipur', 29, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (167, N'Agra', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (168, N'Aligarh', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (169, N'Allahabad', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (170, N'Ambedkar Nagar', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (171, N'Auraiya', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (172, N'Azamgarh', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (173, N'Bagpat', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (174, N'Bahraich', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (175, N'Ballia', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (176, N'Balrampur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (177, N'Banda', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (178, N'Barabanki', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (179, N'Bareilly', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (180, N'Basti', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (181, N'Bijnor', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (182, N'Budaun', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (183, N'Bulandshahr', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (184, N'Chandauli', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (185, N'Chitrakoot', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (186, N'Deoria', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (187, N'Etah', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (188, N'Etawah', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (189, N'Faizabad', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (190, N'Farrukhabad', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (191, N'Fatehpur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (192, N'Firozabad', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (193, N'Gautam Buddha Nagar', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (194, N'Ghaziabad', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (195, N'Ghazipur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (196, N'Gonda', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (197, N'Gorakhpur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (198, N'Hamirpur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (199, N'Hardoi', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (200, N'Hathras', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (201, N'Jalaun', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (202, N'Jaunpur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (203, N'Jhansi', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (204, N'Jyotiba Phule Nagar', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (205, N'Kannauj', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (206, N'Kanpur Dehat', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (207, N'Kanpur Nagar', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (208, N'Kanshiram Nagar', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (209, N'Kaushambi', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (210, N'Kheri', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (211, N'Kushinagar', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (212, N'Lalitpur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (213, N'Lucknow', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (214, N'Maharajganj', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (215, N'Mahoba', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (216, N'Mainpuri', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (217, N'Mathura', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (218, N'Mau', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (219, N'Meerut', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (220, N'Mirzapur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (221, N'Moradabad', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (222, N'Muzaffarnagar', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (223, N'Pilibhit', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (224, N'Pratapgarh', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (225, N'Rae Bareli', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (226, N'Rampur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (227, N'Saharanpur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (228, N'Sant Kabir Nagar', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (229, N'Sant Ravidas Nagar (Bhadohi)', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (230, N'Shahjahanpur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (231, N'Shrawasti', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (232, N'Siddharthnagar', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (233, N'Sitapur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (234, N'Sonbhadra', 33, N'Active')
GO
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (235, N'Sultanpur', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (236, N'Unnao', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (237, N'Varanasi', 33, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (238, N'Araria', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (239, N'Arwal', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (240, N'Aurangabad (Bihar)', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (241, N'Banka', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (242, N'Begusarai', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (243, N'Bhagalpur', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (244, N'Bhojpur', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (245, N'Buxar', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (246, N'Darbhanga', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (247, N'East Champaran', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (248, N'Gaya', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (249, N'Gopalganj', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (250, N'Jamui', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (251, N'Jehanabad', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (252, N'Kaimur (Bhabua)', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (253, N'Katihar', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (254, N'Khagaria', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (255, N'Kishanganj', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (256, N'Lakhisarai', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (257, N'Madhepura', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (258, N'Madhubani', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (259, N'Munger', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (260, N'Muzaffarpur', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (261, N'Nalanda', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (262, N'Nawada', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (263, N'Patna', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (264, N'Purnia', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (265, N'Rohtas', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (266, N'Saharsa', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (267, N'Samastipur', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (268, N'Saran', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (269, N'Sheikhpura', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (270, N'Sheohar', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (271, N'Sitamarhi', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (272, N'Siwan', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (273, N'Supaul', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (274, N'Vaishali', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (275, N'West Champaran', 5, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (276, N'East Sikkim', 30, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (277, N'North Sikkim', 30, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (278, N'South Sikkim', 30, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (279, N'West Sikkim', 30, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (280, N'Anjaw', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (281, N'Changlang', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (282, N'Dibang Valley', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (283, N'East Kameng', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (284, N'East Siang', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (285, N'Kurung Kumey', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (286, N'Lohit', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (287, N'Lower Dibang Valley', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (288, N'Lower Subansiri', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (289, N'Papum Pare', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (290, N'Tawang', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (291, N'Tirap', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (292, N'Upper Siang', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (293, N'Upper Subansiri', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (294, N'West Kameng', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (295, N'West Siang', 3, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (296, N'Dimapur', 25, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (297, N'Kiphire', 25, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (298, N'Kohima', 25, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (299, N'Longleng', 25, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (300, N'Mokokchung', 25, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (301, N'Mon', 25, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (302, N'Peren', 25, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (303, N'Phek', 25, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (304, N'Tuensang', 25, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (305, N'Wokha', 25, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (306, N'Zunheboto', 25, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (307, N'Bishnupur', 22, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (308, N'Chandel', 22, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (309, N'Churachandpur', 22, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (310, N'Imphal East', 22, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (311, N'Imphal West', 22, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (312, N'Senapati', 22, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (313, N'Tamenglong', 22, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (314, N'Thoubal', 22, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (315, N'Ukhrul', 22, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (316, N'Aizawl', 24, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (317, N'Champhai', 24, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (318, N'Kolasib', 24, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (319, N'Lawngtlai', 24, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (320, N'Lunglei', 24, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (321, N'Mamit', 24, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (322, N'Saiha', 24, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (323, N'Serchhip', 24, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (324, N'Dhalai', 32, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (325, N'North Tripura', 32, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (326, N'South Tripura', 32, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (327, N'West Tripura', 32, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (328, N'East Garo Hills', 23, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (329, N'East Khasi Hills', 23, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (330, N'Jaintia Hills', 23, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (331, N'Ri Bhoi', 23, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (332, N'South Garo Hills', 23, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (333, N'West Garo Hills', 23, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (334, N'West Khasi Hills', 23, N'Active')
GO
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (335, N'Baksa', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (336, N'Barpeta', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (337, N'Bongaigaon', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (338, N'Cachar', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (339, N'Chirang', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (340, N'Darrang', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (341, N'Dhemaji', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (342, N'Dhubri', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (343, N'Dibrugarh', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (344, N'Dima Hasao (North Cachar Hills)', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (345, N'Goalpara', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (346, N'Golaghat', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (347, N'Hailakandi', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (348, N'Jorhat', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (349, N'Kamrup', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (350, N'Kamrup Metropolitan', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (351, N'Karbi Anglong', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (352, N'Karimganj', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (353, N'Kokrajhar', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (354, N'Lakhimpur', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (355, N'Morigaon', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (356, N'Nagaon', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (357, N'Nalbari', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (358, N'Sivasagar', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (359, N'Sonitpur', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (360, N'Tinsukia', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (361, N'Udalguri', 4, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (362, N'Bankura', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (363, N'Bardhaman', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (364, N'Birbhum', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (365, N'Cooch Behar', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (366, N'Dakshin Dinajpur (South Dinajpur)', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (367, N'Darjiling', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (368, N'Hooghly', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (369, N'Howrah', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (370, N'Jalpaiguri', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (371, N'Kolkata', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (372, N'Maldah', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (373, N'Murshidabad', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (374, N'Nadia', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (375, N'North 24 Parganas', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (376, N'Paschim Medinipur (West Midnapore)', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (377, N'Purba Medinipur (East Midnapore)', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (378, N'Puruliya', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (379, N'South 24 Parganas', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (380, N'Uttar Dinajpur (North Dinajpur)', 35, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (381, N'Bokaro', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (382, N'Chatra', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (383, N'Deoghar', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (384, N'Dhanbad', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (385, N'Dumka', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (386, N'East Singhbhum', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (387, N'Garhwa', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (388, N'Giridih', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (389, N'Godda', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (390, N'Gumla', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (391, N'Hazaribagh', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (392, N'Jamtara', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (393, N'Khunti', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (394, N'Koderma', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (395, N'Latehar', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (396, N'Lohardaga', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (397, N'Pakur', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (398, N'Palamu', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (399, N'Ramgarh', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (400, N'Ranchi', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (401, N'Sahibganj', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (402, N'Seraikela-Kharsawan', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (403, N'Simdega', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (404, N'West Singhbhum', 16, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (405, N'Angul', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (406, N'Balangir', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (407, N'Baleswar', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (408, N'Bargarh', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (409, N'Bhadrak', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (410, N'Boudh', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (411, N'Cuttack', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (412, N'Debagarh', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (413, N'Dhenkanal', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (414, N'Gajapati', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (415, N'Ganjam', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (416, N'Jagatsinghapur', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (417, N'Jajapur', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (418, N'Jharsuguda', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (419, N'Kalahandi', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (420, N'Kandhamal', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (421, N'Kendrapara', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (422, N'Kendujhar', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (423, N'Khordha', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (424, N'Koraput', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (425, N'Malkangiri', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (426, N'Mayurbhanj', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (427, N'Nabarangapur', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (428, N'Nayagarh', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (429, N'Nuapada', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (430, N'Puri', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (431, N'Rayagada', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (432, N'Sambalpur', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (433, N'Subarnapur (Sonapur)', 26, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (434, N'Sundergarh', 26, N'Active')
GO
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (435, N'Bastar', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (436, N'Bijapur (Chhattisgarh)', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (437, N'Bilaspur (Chhattisgarh)', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (438, N'Dakshin Bastar Dantewada', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (439, N'Dhamtari', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (440, N'Durg', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (441, N'Janjgir-Champa', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (442, N'Jashpur', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (443, N'Kabirdham (Kawardha)', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (444, N'Korba', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (445, N'Koriya', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (446, N'Mahasamund', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (447, N'Narayanpur', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (448, N'Raigarh (Chhattisgarh)', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (449, N'Raipur', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (450, N'Rajnandgaon', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (451, N'Surguja', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (452, N'Uttar Bastar Kanker', 7, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (453, N'Alirajpur', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (454, N'Anuppur', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (455, N'Ashok Nagar', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (456, N'Balaghat', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (457, N'Barwani', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (458, N'Betul', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (459, N'Bhind', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (460, N'Bhopal', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (461, N'Burhanpur', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (462, N'Chhatarpur', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (463, N'Chhindwara', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (464, N'Damoh', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (465, N'Datia', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (466, N'Dewas', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (467, N'Dhar', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (468, N'Dindori', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (469, N'Guna', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (470, N'Gwalior', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (471, N'Harda', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (472, N'Hoshangabad', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (473, N'Indore', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (474, N'Jabalpur', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (475, N'Jhabua', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (476, N'Katni', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (477, N'Khandwa (East Nimar)', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (478, N'Khargone (West Nimar)', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (479, N'Mandla', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (480, N'Mandsaur', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (481, N'Morena', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (482, N'Narsinghpur', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (483, N'Neemuch', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (484, N'Panna', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (485, N'Raisen', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (486, N'Rajgarh', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (487, N'Ratlam', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (488, N'Rewa', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (489, N'Sagar', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (490, N'Satna', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (491, N'Sehore', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (492, N'Seoni', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (493, N'Shahdol', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (494, N'Shajapur', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (495, N'Sheopur', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (496, N'Shivpuri', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (497, N'Sidhi', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (498, N'Singrauli', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (499, N'Tikamgarh', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (500, N'Ujjain', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (501, N'Umaria', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (502, N'Vidisha', 20, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (503, N'Ahmedabad', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (504, N'Amreli', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (505, N'Anand', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (506, N'Banaskantha', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (507, N'Bharuch', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (508, N'Bhavnagar', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (509, N'Dahod', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (510, N'Gandhi Nagar', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (511, N'Jamnagar', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (512, N'Junagadh', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (513, N'Kachchh', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (514, N'Kheda', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (515, N'Mahesana', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (516, N'Narmada', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (517, N'Navsari', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (518, N'Panch Mahals', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (519, N'Patan', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (520, N'Porbandar', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (521, N'Rajkot', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (522, N'Sabarkantha', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (523, N'Surat', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (524, N'Surendra Nagar', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (525, N'Tapi', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (526, N'The Dangs', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (527, N'Vadodara', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (528, N'Valsad', 12, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (529, N'Daman', 9, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (530, N'Diu', 9, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (531, N'Dadra & Nagar Haveli', 8, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (532, N'Ahmed Nagar', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (533, N'Akola', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (534, N'Amravati', 21, N'Active')
GO
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (535, N'Aurangabad', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (536, N'Beed', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (537, N'Bhandara', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (538, N'Buldhana', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (539, N'Chandrapur', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (540, N'Dhule', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (541, N'Gadchiroli', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (542, N'Gondia', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (543, N'Hingoli', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (544, N'Jalgaon', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (545, N'Jalna', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (546, N'Kolhapur', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (547, N'Latur', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (548, N'Mumbai', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (549, N'Mumbai Suburban', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (550, N'Nagpur', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (551, N'Nanded', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (552, N'Nandurbar', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (553, N'Nashik', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (554, N'Osmanabad', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (555, N'Parbhani', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (556, N'Pune', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (557, N'Raigarh (Maharashtra)', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (558, N'Ratnagiri', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (559, N'Sangli', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (560, N'Satara', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (561, N'Sindhudurg', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (562, N'Solapur', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (563, N'Thane', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (564, N'Wardha', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (565, N'Washim', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (566, N'Yavatmal', 21, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (567, N'Adilabad', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (568, N'Anantapur', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (569, N'Chittoor', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (570, N'East Godavari', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (571, N'Guntur', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (572, N'Hyderabad', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (573, N'Kadapa (Cuddapah)', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (574, N'Karim Nagar', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (575, N'Khammam', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (576, N'Krishna', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (577, N'Kurnool', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (578, N'Mahbubnagar', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (579, N'Medak', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (580, N'Nalgonda', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (581, N'Nellore', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (582, N'Nizamabad', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (583, N'Prakasam', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (584, N'Rangareddy', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (585, N'Srikakulam', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (586, N'Visakhapatnam', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (587, N'Vizianagaram', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (588, N'Warangal', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (589, N'West Godavari', 2, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (590, N'Bagalkot', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (591, N'Bangalore', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (592, N'Bangalore Rural', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (593, N'Belgaum', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (594, N'Bellary', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (595, N'Bidar', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (596, N'Bijapur (Karnataka)', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (597, N'Chamrajnagar', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (598, N'Chickmagalur', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (599, N'Chikkaballapur', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (600, N'Chitradurga', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (601, N'Dakshina Kannada', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (602, N'Davanagere', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (603, N'Dharwad', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (604, N'Gadag', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (605, N'Gulbarga', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (606, N'Hassan', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (607, N'Haveri', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (608, N'Kodagu', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (609, N'Kolar', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (610, N'Koppal', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (611, N'Mandya', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (612, N'Mysore', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (613, N'Raichur', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (614, N'Ramanagara', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (615, N'Shimoga', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (616, N'Tumkur', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (617, N'Udupi', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (618, N'Uttara Kannada', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (619, N'Yadgir', 17, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (620, N'North Goa', 11, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (621, N'South Goa', 11, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (622, N'Lakshadweep', 19, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (623, N'Alappuzha', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (624, N'Ernakulam', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (625, N'Idukki', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (626, N'Kannur', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (627, N'Kasaragod', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (628, N'Kollam', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (629, N'Kottayam', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (630, N'Kozhikode', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (631, N'Malappuram', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (632, N'Palakkad', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (633, N'Pathanamthitta', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (634, N'Thiruvananthapuram', 18, N'Active')
GO
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (635, N'Thrissur', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (636, N'Wayanad', 18, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (637, N'Ariyalur', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (638, N'Chennai', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (639, N'Coimbatore', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (640, N'Cuddalore', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (641, N'Dharmapuri', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (642, N'Dindigul', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (643, N'Erode', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (644, N'Kanchipuram', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (645, N'Kanyakumari', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (646, N'Karur', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (647, N'Krishnagiri', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (648, N'Madurai', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (649, N'Nagapattinam', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (650, N'Namakkal', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (651, N'Nilgiris', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (652, N'Perambalur', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (653, N'Pudukkottai', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (654, N'Ramanathapuram', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (655, N'Salem', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (656, N'Sivaganga', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (657, N'Thanjavur', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (658, N'Theni', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (659, N'Thoothukudi (Tuticorin)', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (660, N'Tiruchirappalli', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (661, N'Tirunelveli', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (662, N'Tiruppur', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (663, N'Tiruvallur', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (664, N'Tiruvannamalai', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (665, N'Tiruvarur', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (666, N'Vellore', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (667, N'Viluppuram', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (668, N'Virudhunagar', 31, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (669, N'Karaikal', 27, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (670, N'Mahe', 27, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (671, N'Puducherry (Pondicherry)', 27, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (672, N'Yanam', 27, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (673, N'Nicobar', 1, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (674, N'North And Middle Andaman', 1, N'Active')
INSERT [dbo].[District_Table] ([districtid], [district_title], [state_id], [district_status]) VALUES (675, N'South Andaman', 1, N'Active')
INSERT [dbo].[Hotel_Table] ([hotel_id], [continent_id], [country_id], [state_id], [district_id], [hotel_city], [hotel_name], [hotel_image], [hotel_address], [hotel_details], [status], [rts]) VALUES (1, 1, 99, 29, 164, N'Sirohi', N'Vesta Sirohi Palace', N'Vesta Bikaner Palace.jpg', N'Karni Nagar, Gandhi Nagar, 334001 Sirohi,Rajasthan, India', N'<p>Spreading across 12 acres of land, Vesta Bikaner Palace features traditional Rajasthani architecture and offers large open courtyards, extensive lawns and an outdoor pool. Free parking is available and complimentary Wi-Fi access is provided throughout the property.</p>

<p>Fitted with tiled flooring, air-conditioned rooms are equipped with a satellite TV, tea/coffee making facilities, a work desk and seating area. The en suite bathroom comes with a shower and free bath amenities.</p>

<p>Vesta Bikaner Palace can assist with currency exchange, laundry services and meeting/banqueting facilities. Guests may work out at the fitness centre, enjoy a barbecue session or request for massage services on site. Car rental service and travel arrangements can be made at the tour desk.</p>

<p>The in-house Chandragupt Restaurant serves a delectable spread of Indian and Rajasthani cuisine. Drinks and local beverages are offered at the bar, while room service option is available.</p>

<p>Vesta Bikaner Palace is just 10 km to Camel Research Farm and 11 km to Junagadh Fort. Gajner Palace and Bikaner Railway Station are 12 km away, while Bikaner Airport is accessible within 28 km.</p>

<p>Vesta Bikaner Palace has been welcoming Booking.com guests since 30 Apr 2013.</p>

<p>Most popular facilities</p>

<ul>
	<li>Outdoor swimming pool</li>
	<li>Free parking</li>
	<li>Free WiFi</li>
	<li>Family rooms</li>
	<li>Airport shuttle</li>
	<li>Room service</li>
	<li>The Palace Kitchen</li>
	<li>Non-smoking rooms</li>
	<li>Fitness centre</li>
	<li>Good breakfast</li>
</ul>
', N'1', N'Mar 23 2023  2:26PM')
INSERT [dbo].[Hotel_Table] ([hotel_id], [continent_id], [country_id], [state_id], [district_id], [hotel_city], [hotel_name], [hotel_image], [hotel_address], [hotel_details], [status], [rts]) VALUES (2, 6, 105, 0, 0, N'Rome', N'Dimora ai Fori - Guest House', N'Dimora ai Fori - Guest House.jpg', N'325 Via Cavour Interno 4, 2 piano, Rione Monti, 00184 Rome, Italy', N'<h3>Stay in the heart of Rome</h3>

<p>You&#39;re eligible for a Genius discount at Dimora ai Fori - Guest House! To save at this property, all you have to do is&nbsp;<a href="https://account.booking.com/auth/oauth2?state=UsUGjcbkpNQsoG9TDPWOqW_RNpObIsizsRzT3UKFEpq0G5hxcbnknZWy8Zb2KYNNee74zJH_bOC9cHrDbNHEFaQTJRchCBo0fyL52LVqOkS0lPBFYtj2CnGcmPwaauhyFExmUaT4CzdtjD0Lwgz0mo2Yc4YCpbtqBD5322jA5m32glaJVGtLJjp6OC-lVGewkmrRxe9Sa9SwWsuhV2xUzQJ275Mcao1KBjzPC489AFd2kHqOGQsDr1LmVshgs3tKtV71zlWW6ElL08ZYuhhbbG5qv9VjtSu0qIuUmbHOASnVBwRLUn2wAe8zKLQvJgmV001MgvNIML03fCR7T0wsSYeI5LCUiGAau0kvw4pQUoGjH-IcNg7dY3tcfZz6bxf3xfE4O4GGFaaaprLOasWsqbgG_osCfkrJn-6zc8B9bBlu3WjSp73zj6RcFQSaLrQNpq503pwDiOkffcn2iXS5LJWY1BVr4ahIcPo20Vc7IyDR0P8MXjmm1a36Y2P6S0r9HlPOaOzKaD4BUF2XushKqMd5PzI40QWjyVzxDo7CWVPVHINn6X0LDmlwgTKDm-oekFMF3-w6PEL4d7BJ7tQ87nQLE7mAWaLS4GBUAFznhZZsTcq4ilm-T65hOJDBIXohQhDss2CSKraHpsKp7h3yoMND0Rz9l6i8-G6DA01JumNUUDIIK7Fj5RWQdXBAq0Fo0TK3VeNdl3kup0O8Le_X7de187teUjT23ultnbQ1LN_ZSrbIIoIqGvnZyiemBkTogMZBpOAdVTmRnu3GS3yfkatrdb0Ok3vaPHtOC5nXI6NfheKe4p8lTGOSVPmeOoXRzQM6VrQ-_dFOvShemwSSjpaP1EdRd33eGX2x5QV3fKbhPR9rToSvM-7Q85HxL_vyFoExaWEazBTSINQxRjdLLnOPE2b7XLPWnnzFv8EubsIZhkvmKcrPKWzhfeZzH1k6OliN8BJEqhW5-imcea3NxaxOGrHK1CZ3KGDazoZWwtLi_KGiheSGptls_6uvF5YGoOSNbn4YYh0pxDmCUNp3nHOQB5huuiPcT8srqkgYRmTeTpO80gfSVl6bTNrPqSlN254XMfAAbdCt_vLRLWntJNbLoZ5UxxQj&amp;dt=1679562800&amp;response_type=code&amp;lang=en-gb&amp;aid=1135788&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;bkng_action=hotel">sign in</a>.</p>

<p>Attractively located in Rome, Dimora ai Fori - Guest House features an Italian breakfast and free WiFi throughout the property. This property is located a short distance from attractions such as Palatine Hill, Quirinal Hill, and Piazza Venezia. The property is non-smoking and is situated 400 m from Cavour Metro Station.</p>

<p>The guest house will provide guests with air-conditioned rooms with a desk, a coffee machine, a fridge, a minibar, a safety deposit box, a flat-screen TV and a private bathroom with a bidet. The rooms have a kettle, while some rooms include a balcony and others also boast city views. At Dimora ai Fori - Guest House rooms are equipped with bed linen and towels.</p>

<p>Popular points of interest near the accommodation include Colosseo Metro Station, Domus Aurea and Coliseum. The nearest airport is Rome Ciampino Airport, 14 km from Dimora ai Fori - Guest House.</p>

<p>This is our guests&#39; favourite part of Rome, according to independent reviews.</p>

<p>Couples particularly like the location &mdash; they rated it&nbsp;<strong>9.8</strong>&nbsp;for a two-person trip.</p>

<p>Dimora ai Fori - Guest House has been welcoming Booking.com guests since 27 Dec 2021.</p>

<p>Distance in property description is calculated using &copy; OpenStreetMap</p>

<p>Most popular facilities</p>

<ul>
	<li>Parking</li>
	<li>Free WiFi</li>
	<li>Non-smoking rooms</li>
	<li>Heating</li>
	<li>Air conditioning</li>
	<li>Tea/coffee maker in all rooms</li>
	<li>Very good breakfast</li>
</ul>
', N'1', N'Mar 23 2023  2:45PM')
INSERT [dbo].[MainCategory] ([id], [categoryName], [categoryImage], [status], [rts]) VALUES (1, N'Hill Station', N'hill-station.jpeg', N'1', N'Feb 20 2023 12:01PM')
INSERT [dbo].[MainCategory] ([id], [categoryName], [categoryImage], [status], [rts]) VALUES (2, N'Beaches and Islands', N'beach.jpeg', N'1', N'Feb 20 2023  4:50PM')
INSERT [dbo].[MainCategory] ([id], [categoryName], [categoryImage], [status], [rts]) VALUES (3, N'Natural', N'natural-places.jpg', N'1', N'Feb 24 2023 10:52AM')
INSERT [dbo].[MainCategory] ([id], [categoryName], [categoryImage], [status], [rts]) VALUES (4, N'Wildlife', N'Masai-Mara-wildlife.jpg', N'1', N'Feb 25 2023  5:31PM')
INSERT [dbo].[MainCategory] ([id], [categoryName], [categoryImage], [status], [rts]) VALUES (5, N'Historical', N'historical-image.jpg', N'1', N'Feb 25 2023  5:41PM')
INSERT [dbo].[MainCategory] ([id], [categoryName], [categoryImage], [status], [rts]) VALUES (6, N'Cultural and Heritage', N'Jerusalem-Religious.jpg', N'1', N'Feb 25 2023  5:44PM')
INSERT [dbo].[MainCategory] ([id], [categoryName], [categoryImage], [status], [rts]) VALUES (7, N'Mountains and Adventure', N'Adventure-Image.jpeg', N'1', N'Feb 25 2023  5:46PM')
INSERT [dbo].[MainCategory] ([id], [categoryName], [categoryImage], [status], [rts]) VALUES (9, N'Desert Safaris', N'Desert.jpg', N'1', N'Mar  6 2023  4:35PM')
INSERT [dbo].[MainCategory] ([id], [categoryName], [categoryImage], [status], [rts]) VALUES (10, N'Forts and Palaces', N'forts and palaces.jpg', N'1', N'Mar 22 2023  8:14PM')
INSERT [dbo].[MainCategory] ([id], [categoryName], [categoryImage], [status], [rts]) VALUES (11, N'Snowfall', N'Snow Mountains.jpg', N'1', N'Mar 24 2023  9:39PM')
INSERT [dbo].[MainCategory] ([id], [categoryName], [categoryImage], [status], [rts]) VALUES (8, N'Church', N'Church.jpg', N'1', N'Mar  6 2023  2:25PM')
INSERT [dbo].[NearbyPlaces_Table] ([id], [continentid], [countryid], [sid], [did], [pid], [cityname], [categoryName], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (1, 1, 99, 29, 164, 6, N'Sirohi', N'Lake', N'Nakki Lake', N'nakki lake1.jpg', N'nakki lake2.jpg', N'nakki lake3.jpg', N'nakki lake4.jpg', N'nakki lake5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3627.8234261214693!2d72.70198471431432!3d24.595289311892813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395cd5821fdb07d7%3A0x76f07424c2b5d8ab!2sNakki%20Lake!5e0!3m2!1sen!2sin!4v1679568407788!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<h2>Nakki Lake, Mount Abu Overview</h2>

<p>Situated in the Aravalli ranges in Mount Abu, Nakki Lake, locally known as the Nakki Jheel is a paradise for nature lovers. Flanked by amazing natural wonders, this lake is truly a gem of Mount Abu. It is the first man-made lake in India with a depth of around 11,000 metres and a width of a quarter of a mile. Located in the centre of the hill station, the fascinating lake is surrounded by lush greenery, mountains and strangely shaped rocks.&nbsp;As you sail through the serene waters of Nakki Lake, it is exciting to see the life of Mount Abu unfolding in front of you. It is a perfect destination for nature lovers and photography fiends.</p>

<p>In the Nakki Lake, which is associated with many legends, Mahatma Gandhi&#39;s ashes were immersed on 12 February 1948 and Gandhi Ghat was constructed nearby. The attraction is also considered as the love lake of Mount Abu since the clean blue waters with verdant surroundings give a romantic feel. It is also said to be the sacred lake for the proud Garacia Tribe. The nearby natural wonders that are visible from Nakki Lake increases its charm. There is the famous Toad Rock on a hill nearby which looks like a toad about to jump in the lake. By the side of&nbsp;Nakki Lake is a path leading to Sunset Point.&nbsp;</p>

<h2>Boating at Nakki Lake&nbsp;</h2>

<p>A visit to Mount Abu is incomplete without boating in the pristine waters of Nakki Lake. As you sail through, you can enjoy the mesmerizing views of majestic hills, nature and strangely shaped rocks surrounding the lake. There are two types of boats available, the pedal boats and the Shikharas. The refreshing boating experience lasts for thirty minutes in which you take a tour of the entire Nakki Lake.<br />
<strong>Cost:</strong>&nbsp;The costs range between INR 50 to 100 per person.</p>

<h2>Best Time to Visit&nbsp;</h2>

<p>The Nakki Lake can be visited throughout the year. However, the best time to explore it is during monsoons and winters. The temperature lingers around 30 degrees Celsius in monsoons, and it does not fall below 12 degrees Celsius in winters. The lush greenery enhances the beauty of the&nbsp;lake in the monsoons. Summers are comparatively hot in Mount Abu as the mercury soars up to 39 degrees Celcius. Therefore, it is better to avoid visiting between March-June. You should prefer exploring the scenic lake from July to January.<br />
<br />
When it comes to the best time of the day, it is better to visit Nakki Lake the morning as the place tends to get too crowded in the evening.</p>

<h2>Legend of Nakki Jheel&nbsp;</h2>

<p>The first man-made lake of India, Nakki Lake has several legends related to it. As per the first legend, the lake was built by Gods to protect themselves from their enemy, Bashkali demon. The second legend is based on the love story of the sage Rakshiya Balam. There was a king who ordered that whoever dug a lake with his nails overnight, would marry his daughter. Rakshiya Balam, who liked the king&#39;s daughter, completed the task and dug the lake with his nails. Thus, the name is Nakki Lake since Nakh means nails. It was also said that Rakshiya Balam and his lover were the incarnations of Lord Shiva and Parvati. However, the sage was betrayed and was not allowed to marry his lover even after he completed the impossible act.</p>

<h2>How To Reach Nakki Lake&nbsp;</h2>

<p>The Nakki Lake is located on Ganesh Road, near the main market in Mount Abu. It can be easily reached through a cab or a taxi. You can hire an autorickshaw also.</p>
', N'Buses,Train', N'1', N'Mar 23 2023  4:20PM')
INSERT [dbo].[NearbyPlaces_Table] ([id], [continentid], [countryid], [sid], [did], [pid], [cityname], [categoryName], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (2, 1, 99, 29, 164, 6, N'Sirohi', N'Hill', N'Guru Shikkhar', N'Guru Shikhar 1.jpg', N'Guru Shikhar 2.jpg', N'Guru Shikhar 3.jpg', N'Guru Shikhar 4.jpg', N'Guru Shikhar 5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14503.16685016184!2d72.77318921971529!3d24.665296796348652!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3942d4b86a528567%3A0x353fa719c18be2f0!2sGuru%20Shikhar!5e0!3m2!1sen!2sin!4v1679569455540!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<h3>Guru Shikhar, Mount Abu Overview</h3>

<p>Guru Shikhar is the highest peak of the Aravalli Range and lies about 15 kilometres from Mount Abu. The height of the peak is 1722 meters from sea level thereby promising a breathtaking view of the Aravalli range and the hill station of Mount Abu. Guru Shikhar translates to &#39;the peak of the guru&#39; and was named after Guru Dattatreya who is believed to have resided on the peak during his days as a monk. The cave atop the peak has been converted to a temple in his remembrance. Guru Shikhar is also home to the Mount Abu Observatory.</p>

<p>After a 15 kilometre drive, you would need to climb a few steps to reach the top of Guru Shikhar Peak. When visited during October and November, the weather gets more cloudy and misty.&nbsp;At the top of&nbsp;Guru Shikhar is an age-old bell with the words &#39;1411 AD&#39; inscribed on it. Ringing that bell after hiking all the way to the peak is like announcing your achievement to the valley of Mount Abu. The sound of the bell chimes long and far.</p>

<h2>Legend of Guru Shikhar&nbsp;</h2>

<p>According to the local legend, goddess Anusuya was strictly determined to have a son like Brahma, Vishnu, Mahesh which led to tension among Saraswati, Lakshmi and Parvati - the wives of the three Gods and they told their husbands to go to the people and take Anusuya&#39;s examination. The people of earth then took a test of Goddess Anusuya, post which she obtained the infant form of Brahma, Vishnu and Mahesh and took them back home to his husband Atri, who had already envisioned the same.<br />
<br />
While Atri embraced the three children, their power converted the three into one child with three heads and six hands. Saraswati, Lakshmi and Parvati, worried about their husbands&rsquo; return visited Goddess Anusuya and urged the couple to return them their husbands after which Tridev came to their real form. Impressed by Anusuya and Atri&#39;s kind nature, Tridev blessed them with a son, named as Dattatreya, an embodiment of the three Gods. The child had one body but three heads and six arms.<br />
<br />
Dattatreya is considered to be an incarnation of the trinity - Lord Brahma, Lord Vishnu and Lord Shiva. Guru Dattatreya is an archaic temple on the peak. The temple is said to house the footprints of Lord Dattatreya. To the northwest of Guru Shikhar peak is a temple dedicated to Ahilya, Dattatreya&#39;s mother.&nbsp;</p>

<h2>Things To Do at Guru Shikhar&nbsp;</h2>

<p>The mornings draw hikers for two reasons, the breathtaking sunrise and the breakfast served by the shops. The shops along the route of the hike sell absolutely delicious breakfast and are well known for their tea too. You can get good food at any time of the day and binge on your regular packaged chips and chocolates if you&#39;re craving them. There are also shops that sell beautiful souvenirs. If you&#39;re going with your family, you can plan for a picnic at the top. The view gives plenty of photograph opportunities for everyone. This can be clubbed with a visit to the temple of Dattatreya which will add a pious touch to the whole experience.</p>

<h2>Best Time to Visit&nbsp;</h2>

<p>The best time to visit Guru Shikhar is during the months of October to March.</p>

<h2>Tips&nbsp;</h2>

<p>1. After the road ends the steps towards the peak are very uneven, thereby you need to be cautious while bringing elderly&nbsp;and children along.<br />
2. Comfortable footwear which holds to the ground is suggested as the hike can get a little steep at places, but it&#39;s not difficult at all.</p>

<h2>How To Reach Guru Shikhar&nbsp;</h2>

<p>The Guru Shikhar Peak is 15 kilometres away from Mount Abu, a cab can be hired very easily. After that, it is a short hike on 300 steps to reach the topmost point. Two wheelers are also available for rent.</p>
', N'Buses,Train', N'1', N'Mar 23 2023  4:40PM')
INSERT [dbo].[NearbyPlaces_Table] ([id], [continentid], [countryid], [sid], [did], [pid], [cityname], [categoryName], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (4, 1, 99, 29, 164, 6, N'Sirohi', N'Temple', N'Dilwara Jain Temple', N'Dilwara Jain Temple 1.jpg', N'Dilwara Jain Temple 2.jpg', N'Dilwara Jain Temple 3.jpg', N'Dilwara Jain Temple 4.jpg', N'Dilwara Jain Temple 5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3627.4165987325655!2d72.72078941431467!3d24.609322461339104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395d2b7d1403db4b%3A0x32077cf7448b160b!2sDilwara%20Jain%20Temple!5e0!3m2!1sen!2sin!4v1679596602981!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<p>Established some time in between the 11th and 13th centuries, the Dilwara Jain temples are considered to be among the best specimens of architectural perfection in the country. A complex of five temple structures, the Dilwara Jain temples are located at a distance of about 2.5 kilometres from Mount Abu. Carved out of white marble, these temples features interiors that have intricate designs spreading everywhere from doorways to ceilings. Dilwara Jain temples are a must visit place in Mount Abu.</p>
', N'Buses,Train', N'1', N'Mar 24 2023 12:11AM')
INSERT [dbo].[NearbyPlaces_Table] ([id], [continentid], [countryid], [sid], [did], [pid], [cityname], [categoryName], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (6, 1, 99, 14, 63, 10, N'Kullu', N'Snow Mountains', N'Rohtang Pass', N'Rohtang Pass 1.jpg', N'Rohtang Pass 2.jpg', N'Rohtang Pass 3.jpg', N'Rohtang Pass 4.jpg', N'Rohtang Pass 5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6739.539264603083!2d77.24245907235668!3d32.37172487438467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39047ef0b27a15ad%3A0xbfdd7e65efefc66b!2sRohtang%20La!5e0!3m2!1sen!2sin!4v1679653494292!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<p><strong>Weather :&nbsp;</strong>N.A.</p>

<p><strong>Open Months :</strong>&nbsp;June&nbsp;-&nbsp;October</p>

<p><strong>Time Required :</strong>&nbsp;3 to 4 hours</p>

<p><strong>Elevation :</strong>&nbsp;3,978 m</p>

<p><strong>Road :</strong>&nbsp;Leh Manali Highway</p>

<p><strong>Range :</strong>&nbsp;Himalayas, Pir Panjal Range</p>

<p><strong>Rohtang Pass Open Date 2023 :</strong>&nbsp;15 May 2023</p>

<p><strong>Rohtang Pass Permit :</strong>&nbsp;<strong>Tourist Permit</strong></p>

<ul>
	<li>Only for taxis and vehicles going to Rohtang Pass for tourism purposes, valid for a day.</li>
	<li>Only 800 petrol vehicles and 400 diesel vehicles are allowed entry to the pass daily.</li>
	<li>The vehicles aren&#39;t allowed on Tuesday, as Rohtang Pass is closed for maintenance each Tuesday.&nbsp;</li>
</ul>

<p><strong>Permit Time Frame</strong>:</p>

<ul>
	<li>10:00 AM (200 Diesel and 400 Petrol)</li>
	<li>4:00 PM (200 Diesel and 400 Petrol)</li>
</ul>

<p><strong>Documents Required for Tourist Permit (In Printed Form):</strong></p>

<ul>
	<li>Valid ID Proof</li>
	<li>Pollution Under Check (PUC) Certificate</li>
	<li>Vehicle Registration Date</li>
</ul>

<p><strong>Permit Fees:</strong></p>

<ul>
	<li>Car &amp; Jeep - INR 500 + INR 50 as congestion charge</li>
	<li>MUVs -&nbsp;INR 500 + INR 50 as congestion charge</li>
	<li>Buses &amp; HMV -&nbsp;INR 500 + INR 100 as congestion charge</li>
</ul>

<p><strong>Special Permit</strong></p>

<ul>
	<li>Only for&nbsp;private vehicles, valid for a day.&nbsp;</li>
	<li>Only 60 petrol vehicles and 40 diesel vehicles are allowed entry to the pass daily.</li>
	<li>The vehicles aren&#39;t allowed on Tuesday, as Rohtang Pass is closed for maintenance each Tuesday.&nbsp;</li>
</ul>

<p><strong>Documents Required for Special Permit (In Printed Form):</strong></p>

<ul>
	<li>Valid ID Proof</li>
	<li>Pollution Under Check (PUC) Certificate</li>
	<li>Vehicle Registration Date</li>
	<li>Proof of Hotel Booking</li>
</ul>

<p><strong>Permit Fees:</strong></p>

<ul>
	<li>Car &amp; Jeep - INR 500 + INR 50 as congestion charge</li>
	<li>MUVs - INR 500 + INR 50 as congestion charge</li>
	<li>Buses &amp; HMV - INR 500 + INR 100 as congestion charge</li>
</ul>

<h2>Rohtang Pass, Manali Overview</h2>

<p>Located at a distance of just 51 kilometres from Manali, Rohtang Pass can be reached only by road. The pass is located at a massive height of 3978 metres on Manali- Keylong road. When planning a trip to&nbsp;<a href="https://www.holidify.com/places/manali">Manali</a>, a day off to the vista point of Rohtang Pass is the ultimate and almost essential attraction of the itinerary.</p>

<p>&nbsp;</p>

<p>Owing to its splendid natural beauty, Rohtang Pass is a favourite among the community of film directors. Many blockbusters ranging from &#39;Jab We Met&#39; to &#39;Yeh Jawani Hai Deewani&#39; have been shot here.&nbsp;A peculiar fact behind the name of the place is that it was named so because a number of people working in CBRE died whilst trying to cross this treacherous stretch.<br />
<br />
An experience of the snow can never be complete without a sledge ride, which involves sliding through the snow in a wooden toboggan. Another thrilling activity that can be pursued at Rohtang Pass would be mountain biking where you ride your mountain bikes off the regular course and into the lesser taken routes. It can get a bit rough, so you must take care in case you are planning on pursuing this activity.<br />
<br />
You can try your hand at skiing and tyre drop at the Rohtang Pass as well, where again you slide down a slope of snow whilst using the appropriate equipment. Gear for all of these activities is available for reasonable rent, so do not miss out on this opportunity.</p>

<h2>Must Know Before You Visit Rohtang Pass</h2>

<p><strong>Tips :</strong>&nbsp;1. Take a day off for Rohtang. Leave for Rohtang early in the morning, as there are hundreds of others local tourist cabs visiting the pass and the narrow lanes gets jammed with traffic quickly, leaving one to walk up to the main spot.<br />
2. Considering the difficult road, high altitude and low temperature of the area, Rohtang is best visited in daylight.<br />
3. Carry woollens and snacks, if possible pack a thermos of hot tea or coffee too. It would be the most useful up there.<br />
4. When renting snow clothes, compare the prices with those fixed by the government.</p>

<h2>Read More on Rohtang Pass</h2>

<h2>Rohtang Pass Open Dates&nbsp;</h2>

<p>Due to heavy snowfall in winters, the pass remains closed from November to April. Rohtang remains flocked with excited visitors from all over the country and abroad until October as it shuts again. It is said to be the only pass in the country to be covered by snow throughout the year.<br />
<br />
Open Date 2023:&nbsp;15 May 2023</p>

<h2>Rohtang Pass Tunnel&nbsp;</h2>

<p>The Rohtang Road Tunnel is expected to be operational in 2019, enabling only the tourist traffic to the pass. The vehicle north of Rohtang Pass will stop coming here. This tunnel is expected to reduce the travel time - while currently, it takes 4 to 6 hours to reach and descend from Rohtang Pass, with the use of the tunnel it will only take about 30 minutes.</p>

<h2>How to reach Rohtang Pass&nbsp;</h2>

<p>HRTC and HPTDC run deluxe AC and Non-Ac buses connecting the valley with north India. NH21 connects the city to&nbsp;<a href="https://www.holidify.com/places/chandigarh">Chandigarh</a>&nbsp;and&nbsp;<a href="https://www.holidify.com/places/delhi">Delhi</a>. Despite being a long journey, tourists enjoy the trip as they drive through the beautiful landscape with river Beas flowing on one side of the road.&nbsp;Those travelling by car also make it a point to pass by&nbsp;<a href="https://www.holidify.com/places/bhuntar">Bhuntar</a>&nbsp;and generally, stay over while going to or from Kullu- Manali. People also bike their way to the Pass but try this only if you are confident that you will be able to navigate the terrain.<br />
&nbsp;</p>

<ul>
	<li>
	<p><strong>Air:&nbsp;</strong>The nearest airport which serves as the common base to the city of Kullu- Manali is Bhuntar. Situated 10kms away from Kullu and 50 kms away from Manali, most tourists travelling to Manali via air take a stop at Bhuntar and visit the nearby places here. Those travelling by car also make it a point to pass by Bhuntar and generally, stay over while going to or from Kullu- Manali.</p>
	</li>
	<li>
	<p><strong>Road:&nbsp;</strong>HRTC and HPTDC run deluxe AC and non Ac busses connecting the valley with north India. NH21 connects the city to Chandigarh and Delhi. Despite of being a long journey, tourists enjoy the trip as they drive through the beautiful landscape with river Beas flowing on one side of the road.</p>
	</li>
</ul>
', N'Buses,Train', N'1', N'Mar 24 2023  4:07PM')
INSERT [dbo].[NearbyPlaces_Table] ([id], [continentid], [countryid], [sid], [did], [pid], [cityname], [categoryName], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (3, 1, 99, 29, 164, 6, N'Sirohi', N'Tracking', N'Toad Rock', N'Toad Rock 5.jpg', N'Toad Rock 1.jpg', N'Toad Rock 3.jpg', N'Toad Rock 4.jpg', N'Toad Rock 1.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3627.8936638991677!2d72.70091861431436!3d24.592865761988346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395cd583c40c659b%3A0x91b2c18e0ce010dc!2sToad%20Rock!5e0!3m2!1sen!2sin!4v1679596116819!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<h3>Toad Rock, Mount Abu Overview&nbsp;</h3>

<p>Known for being surrounded by a number of strangely shaped rocks, Nakki Lake offers numerous photo ops to visitors. One of the most popular destinations near Nakki Lake however, has to be the Toad Rock View Point. Located on the main trekking trail near the Lake, the Toad Rock has often been referred to as the mascot of Mount Abu. The massive rock structure is an excellent illustration of igneous rocks found in amazing shapes and is shaped, as the name suggests, like a toad. One of the most frequented places in the hill station; people visit this place out of sheer curiosity. It is pretty easy to climb the rock and the views that it offers of the Nakki Lake and the surrounding greenery are unparalleled. Apart from the novelty of the rock itself, the breathtaking scenery from atop just adds to whole experience, making it well worth your while.</p>

<p><strong>Weather :&nbsp;</strong>27&deg; C</p>

<p><strong>Timings :</strong>&nbsp;6:30 AM - 6:45 PM (Sunrise - Sunset)</p>

<p><strong>Time Required :</strong>&nbsp;Less than 1 hour</p>

<p><strong>Entry Fee :</strong>&nbsp;No entry fee</p>

<p>Located south of Nakki Lake in Mount Abu, the Toad Rock is a colossal rock piece which looks like a toad about to jump into the waters of the lake. Known as the mascot of Mount Abu, this is one of the most frequented points in the itinerary of all visitors. To see the panoramic beauty of the surrounding lake and greenish hilly regions you can climb up the rock and capture the breathtaking scenery.</p>

<p>The path to Toad Rock starts near the Nakki Lake and includes climbing 250 steps to the top. The pathway is nestled in lush greenery which makes for a calming walk, though some people might find it intimidating. The staircase is broken in parts, so the climb is not recommended for old people and toddlers.</p>
', N'Buses,Train', N'1', N'Mar 24 2023 12:05AM')
INSERT [dbo].[NearbyPlaces_Table] ([id], [continentid], [countryid], [sid], [did], [pid], [cityname], [categoryName], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (9, 1, 99, 18, 624, 3, N'Kochi', N'Palaces', N'Mattancherry Palace', N'Mattancherry Palace1.jpg', N'Mattancherry Palace 2.jpg', N'Mattancherry Palace 3.jpg', N'Mattancherry Palace 4.jpg', N'Mattancherry Palace 5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.7074235086247!2d76.25716211411073!3d9.958282576485118!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b086d44d3e17f1b%3A0x6880a4b3e174b5c8!2sMattancherry%20Palace!5e0!3m2!1sen!2sin!4v1679663625707!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<p><strong>Weather :&nbsp;</strong>N.A.</p>

<p><strong>Timings :</strong>&nbsp;10:00 AM - 5:00 PM (Closed on Firdays)</p>

<p><strong>Time Required :</strong>&nbsp;1-2 hrs</p>

<p><strong>Entry Fee :</strong>&nbsp;Adult: INR 2,<br />
Kids (up to 15 years): Free</p>

<p><strong>Also Refered As:&nbsp;</strong></p>

<h2>Dutch Palace</h2>

<h2>Mattancherry Palace, Kochi Overview</h2>

<p>Popularly known as the Dutch Palace, the Mattancherry Palace is a Portuguese palace in Mattancherry,&nbsp;<a href="https://www.holidify.com/places/kochi" target="_blank">Kochi</a>, in the state of Kerala. Mattancherry Palace is now a museum displaying paraphernalia belonging to the rajas of Kochi. Visit this destination to learn about the fascinating history of Kerala through the medium of irreplaceable artefacts and embellishments.</p>

<p>The grandeur of Mattancherry Palace lies in its simplicity and it is built in the typical Kerala style mansions reserved for the nobility.&nbsp;The four separate wings of the Mattancherry Palace surround a central courtyard which has a temple as well. It features murals depicting portraits and exhibits of the Rajas of Kochi. They have been painted in warm colours using the tempera technique and consists of a portrait gallery of the Cochin Rajas and beautiful mythological murals.</p>

<h2>Read More on Mattancherry Palace</h2>

<h2>History of Mattancherry Palace&nbsp;</h2>

<p>When Vasco Da Gama landed at Kappad in 1498, he was welcomed by the Kochi rulers who were given the exclusive rights to construct factories. The Portuguese despised the repeated attacks of Zamorians, and thereby the Cochin Rajas had become vassals of the Portuguese.&nbsp;The Mattancherry Palace was originally built by the Portuguese who later gifted it to the King of Cochin in 1555. The Portuguese influence was further supplanted by the Dutch, who took over Mattancherry in 1663.The Dutch then carried out some extensions and renovations in 1663, and since then the palace was popularly known as the Dutch Palace.</p>

<h2>Architecture of Mattancherry Palace&nbsp;</h2>

<p>The palace is quadrangular in shape, having a Nalukettu style of architecture (traditional Kerala style of architecture) with a hint of European influence in the arches and the chambers. The Mattancherry&nbsp;Palace has a courtyard in the middle consisting of three temples dedicated to &#39;Pazhayannur Bhagavati&#39;, the protective goddess of the Kochi royal family, Lord Krishna and Lord Shiva respectively. The dining hall has an ornate wooden ceiling decorated with a series of brass cups. There are rare examples of traditional Kerala flooring which is a mixture of burned coconut shells, charcoal, lime, plant juices and egg whites and looks like black marble.</p>

<h2>Murals in Mattancherry Palace&nbsp;</h2>

<p>The Mattancherry palace has a large number of murals illustrating the Ramayana, a few scenes from the Krishnan Lila and various gods and goddesses in different positions. Some of the notable murals include Lakshmi seated on the lotus, the coronation of Rama, sleeping Vishnu, Shiva and Parvati seated with Ardhanariswara and other goddesses, and Krishna lifting Mount Govardhana. The paintings are attributed to the artistic bends of mind of Veera Kerala Verma. The murals are executed in the best traditions of Hindu temple art, which are religious and decorative.<br />
<br />
Other murals depict scenes from&nbsp;Kumarasambhavam and other works of the Sanskrit poet Kalidasa. Everyday items such as weapons, swings,&nbsp;Dutch maps of old Kochi, royal palanquins with floral designs, silver sequined gowns, royal umbrellas make of silk and brass, the ceremonial royal sword and furniture belonging to the royal family are also on display here.</p>

<h2>How To Reach Mattancherry Palace&nbsp;</h2>

<p>To reach the Mattancherry Palace, you can hire cars, taxis, ferries and autorickshaws. You can even opt for hired bicycles or enjoy the 30-minute walk along the busy Bazaar Road to reach the palace.</p>
', N'Buses,Train', N'1', N'Mar 24 2023  6:46PM')
INSERT [dbo].[NearbyPlaces_Table] ([id], [continentid], [countryid], [sid], [did], [pid], [cityname], [categoryName], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (7, 4, 30, 0, 0, 4, N'Brazil', N'Parks', N'Manu National Park (Peru)', N'Manu National Park 1.jpg', N'Manu National Park 2.jpg', N'Manu National Park 3.jpg', N'Manu National Park 4.jpg', N'Jaguar in the trunk of a tree.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3902.0417899335503!2d-71.72522488578785!3d-12.040644045063496!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x916e698b3f0e0c1b%3A0xd0e6cb2cf366b9c7!2sManu%20National%20Park!5e0!3m2!1sen!2sin!4v1679886470907!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<h3>Manu National Park: A Complete Visitors&nbsp;Guide</h3>

<p>Everything you should know about Manu National Park, including history, guides, and information on the diverse activities and animals you can find there.</p>

<p><img alt="A rainbow stretches across the sandy banks of the Amazon River in Manu National Park." src="https://www.peruforless.com/blog/wp-content/uploads/2022/04/manu-rainbow.jpeg" style="height:446px; width:850px" /></p>

<p>A rainbow stretches across the sandy banks of the Amazon River in Manu National Park. Photograph: Latin America for Less</p>

<p>Accessible from Cusco and Puerto Maldonado, Manu National Park is the place to go for immersion in nature&rsquo;s wonders. The park&rsquo;s remote location and protected status mean you&rsquo;ll experience a gorgeously pristine corner of the Peruvian Amazon. Read our guide for essential facts and travel tips for your trip to Manu.</p>

<h2>Overview</h2>

<p>With elevations spanning between 150 m and 4,200 m of elevation, Manu National Park encompasses an astounding variety of climates and a bewildering number of plant and animal species. So many, in fact, that researchers continue to find undiscovered flora and fauna even after decades of intensive research. Accessible from Cusco and from Puerto Maldonado, Manu and its handful of lodges provide a chance to experience a wonderland of habitats from cloud forest to lowland rainforest in a setting unlike any other in Peru or the world.</p>

<h2>History</h2>

<p><a name="pre-columbian"></a></p>

<p>Pre-Columbian History</p>

<p>Scattered archaeological sites testify to a long history of human habitation in this remote area of the Peruvian Amazon.The Pusharo Petroglyphs are stone carvings representing faces and abstract figures. The site is located on the banks of the Palotoa River, a tributary of the Madre de Dios River in Manu National Park. The origin and significance of the glyphs is still unknown, but are believed to be between 1,000 and 2,000 years old. A Dominican friar first described them in 1921. The 2015 issue of the Peruvian 1 Sol coin has an image of the carvings on one side.</p>

<p><a name="colonial"></a></p>

<p>Colonial History</p>

<p>The Legend of Paititi originated after the Spanish Conquest of Peru. According to 16th century chronicles, a pre-Columbian kingdom called Paititi based in the jungle was able to resist the advances of the Inca imperial army. A second version says that after the capture of the last Inca king by Spanish soldiers the remnants of the Inca elite retreated to the rainforest along with their sacred objects crafted in gold and silver. Throughout the colonial period, various expeditions set out in search for the lost city of gold. Usually, they found only disaster.<br />
Spanish settlers founded the city of Paucartambo to control trade in coca leaves, gold, and textiles between the Andes and the Amazon, adapting an old Inca route that served the same purpose. Today, Paucartambo is a necessary stop between Cusco and the Manu cloud forest.</p>

<p><a name="modern"></a></p>

<p>Manu&nbsp;Today</p>

<p>Today, Manu National Park is one of the most impressive and biodiverse regions globally. Here are its most recent recognitions and notable dates.<br />
<strong>1968</strong>&nbsp;&ndash; Manu area designated national forest.<br />
<strong>1973</strong>&nbsp;&ndash; National park status formalized after pressure from Peruvian preservationists and international supporters.<br />
<strong>1987</strong>&nbsp;&ndash; Manu Biosphere Reserve recognized by UNESCO as natural heritage site.</p>

<p><img alt="Clear blue skies reflect on the calm water of the Amazon river. The riverbank is full of tall green trees." src="https://www.peruforless.com/blog/wp-content/uploads/2022/04/Manu-river.jpeg" style="height:638px; width:850px" /></p>

<p>Manu National Park is one of the most pristine natural habitats. Here you&rsquo;ll experience the freshest air and beautiful landscapes. Photograph by Latin America for Less.</p>

<p><a name="geography"></a></p>

<h2>Geography</h2>

<p>Located north of Cusco in the southwestern corner of the Amazon, the Manu rainforest includes a total area is 18,811 km&sup2; which breaks down as follows:</p>

<ul>
	<li>Manu National Park &ndash; 15,328 km&sup2;</li>
	<li>Biosphere Reserve &ndash; 2,570 km&sup2;</li>
	<li>Cultural Zone &ndash; 914 km&sup2;</li>
</ul>

<p>This territory spans elevations between 4,200 meters and 150 meters above sea level including high Andean puna, mountain cloud forests, and lowland rainforest. The result is an extremely broad range of ecologies that have fostered the evolution of highly diverse species.<br />
Vast and geographically isolated, the park has no roads and requires some effort to access. The only way to get around is by boat. The Manu River and the Madre de Dios River form the southern and eastern borders of the reserve.</p>

<p><a name="manu-national-park-facts"></a></p>

<h2>Manu National Park&nbsp;Facts</h2>

<ul>
	<li>The National Park covers the entire Manu River basin</li>
	<li>It spans eastern Andes mountains (cloud forest) and Amazon basin (tropical lowland rainforest)</li>
	<li>There are around 2,000 to 5,000 species of plants, including 250 species of trees</li>
	<li>More than 1,000 vertebrate species including 200 species of mammals and 850 species of birds, 68 species of reptiles, 77 species of amphibians in the National Park</li>
	<li>Over 1,300 recorded species of butterflies</li>
	<li>There are 13 species of primates</li>
	<li>A few rare species include: the giant otter, giant armadillo, jaguars, puma, Andean mountain cat</li>
	<li>Pre-Inca and Inca ruins and petroglyphs indicate long history of indigenous settlement</li>
	<li>There are small communities of the Matsigenga Amazonian tribal group, largely along the Man&uacute; River or one of its main tributaries</li>
</ul>

<p><img alt="Colorful macaws sit scattered on the riverbank clay in Manu National Park." src="https://www.peruforless.com/blog/wp-content/uploads/2022/04/colpa-manu.jpg" style="height:563px; width:850px" /></p>

<p>Colorful Macaws rest on a clay lick in Manu National Park. Photo by Latin America for Less</p>

<p><a name="attractions"></a></p>

<h2>Attractions</h2>

<p><a name="manu-biosphere-reserve"></a></p>

<h3>Manu Biosphere Reserve</h3>

<p>The Manu Biosphere Reserve is divided into 3 zones:</p>

<p><a name="tres-cruces-lookout-point"></a></p>

<p>1. TRES CRUCES LOOKOUT&nbsp;POINT</p>

<p>An additional 60km from Paucartambo, Mirador Tres Cruces is a lookout point over the meeting place of the Andes and the Amazon. On clear days, it&rsquo;s possible to see the peak of the massif Ausangate all the way down into the depths on the jungle basin. In the dry season from May to August, a natural phenomenon causes the illusion of three rising suns that flicker into cross shapes &ndash; hence, &ldquo;tres cruces.&rdquo; As the sun rises, clouds begin to evaporate, the moisture interacts with the sunlight to form a prism. During the Virgen del Carmen festival, shared vans transport tourists to the lookout point in time to see the gradual lightening of the sky and the sun rising above a thick mat of clouds around 6 am.</p>

<p><a name="kosñipata-river-valley"></a></p>

<p>2. KOS&Ntilde;IPATA RIVER&nbsp;VALLEY</p>

<p>From Paucartambo, continuing past Acjanaco Pass (12,630 ft / 3,850 m) and the turnoff to Tres Cruces, the road begins its ascent into the gorgeous Kos&ntilde;ipata Valley dropping thousands of meters in elevation. This the place to go for river rafting and mountain biking tours through Peru&rsquo;s gorgeous cloud forest mountains. It&rsquo;s also the route to rainforest lodges in Manu including Paradise Lodge, Gallito de las Rocas Lodge, and Erika Lodge. The Quechua word kos&ntilde;ipata means &ldquo;place of smoke&rdquo; in reference to the heavy mists that shroud the eastern flanks of the Andes as they plummet to meet the Amazon.</p>

<p><a name="boca-manu"></a></p>

<p>3. BOCA&nbsp;MANU</p>

<p>Located at the meeting point of the Madre de Dios and the Manu river, the village of Boca Manu has a small airport that receives charter airplanes. It&rsquo;s also a stop on the route over land and by boat from Puerto Maldonado. The checkpoint to go further into the park is in nearby Limonal.</p>

<p><a name="ecoutourism"></a></p>

<p>EcoTourism</p>

<p>Manu is an ideal destination for rainforest ecotourism in Peru. Nature in its most pristine form is the main attraction and a strict conservation plan helps to keep it that way. Go to Manu and you&rsquo;ll discover a variety of microclimates home to an incredible diversity of flora and fauna.</p>

<p>Wildlife Spotting &ndash; Monkeys, bugs, and reptiles abound in the rainforest. If you&rsquo;re lucky, you might also see the otorongo (jaguar), black panther, tapir, collared peccary, deer, and capybara. Forest trails and cochas (secluded lagoons) are the best place to spot wildlife while learning about life in the rainforest, medicinal plants and food.<br />
Bird watching &ndash; Many travelers come to Manu specifically for the birds. And with one of the largest bird lists in the world, Manu certainly merits such a specific interest. Airborne residents include the harpy eagle, jabiru, roseate spoonbill, and the cock of the rock.<br />
Clay licks &ndash; Special attraction in Manu where travelers can see macaws, parrots, and parakeets flock by the thousands for morning meals of clay.<br />
Canopy towers &ndash; See the rainforest from the perspective of creatures who live at canopy level. Scattered tree towers in Manu range from 30-40 meters (100-130 feet) tall. Standing on the platform reveals a alternate dimension of rainforest activity that can&rsquo;t be seen from the forest floor.</p>

<p><img alt="Misty clouds roll over the verdant canopies at Manu National Park." src="https://www.peruforless.com/blog/wp-content/uploads/2022/04/amazon-manu.jpg" style="height:567px; width:850px" /></p>

<p>Like any rainforest, weather can be unpredictable and change at a moments notice. Photo by Latin America for Less</p>

<p><a name="weather"></a></p>

<h2>Weather</h2>

<p>Manu&rsquo;s extreme topography creates multiple microclimates. Lower elevation areas are hotter with average temperatures ranging from 35 C during the day to 25 C at night. In Manu&rsquo;s higher elevation areas, temperatures are generally cooler. Expect warm temperatures during the day and cool nights.<br />
Temperatures can drop after heavy rains, reaching as low as 10 C (50 F). Another weather phenomenon, called &ldquo;surazo&rdquo; or &ldquo;friaje,&rdquo; occurs when polar winds from Patagonia sweep up the mountains and into the rainforest. Temperatures can be as low as 8 C (46 F).<br />
Keep in mind that this is the rainforest and showers are possible at any time of year. Officially, the rainy season is from December to March. May to August is comparatively drier, though also much warmer.<br />
What to pack: bring light, quick-drying clothes. Preferably synthetic fabrics, as the humidity prevents cotton from fully drying out.</p>

<p><a name="how-to-get-to-manu"></a></p>

<h2>How to Get to&nbsp;Manu</h2>

<p>There are three routes to get to Manu:<br />
<strong>From Cusco:</strong>&nbsp;by car to Paucartambo, through the Kosnipata Valley to the Manu River<br />
<strong>From Puerto Maldonado:</strong>&nbsp;by car to Santa Rosa Village 2.5 hours, cross Inambari River to Puerto Carlos, to Boca Colorado 45 minutes, up Madre de Dios river.<br />
<strong>To Boca Manu:</strong>&nbsp;charter flights land at a small airstrip, river transport to lodge.<br />
Entry Fees<br />
Sector Acjanaco: S/. 10<br />
Manu River lower basin: S/. 150<br />
*prices subject to change</p>

<p><a name="amazon-tour-essentials"></a></p>

<h2>Amazon Tour Essentials</h2>

<ul>
	<li>Dry bags or ziplock bags &ndash; humidity is intense, keep your gear and important documents dry</li>
	<li>Long sleeve shirts and long pants &ndash; keep insects off, preferably breathable and quick drying</li>
	<li>Insect repellent &ndash; protect yourself from mosquitos and other biting critters</li>
	<li>Cash &ndash; there are no ATMs in the rainforest. Bring small bills to pay for drinks, snacks, and gratuities</li>
	<li>Headlamp or flashlight &ndash; many lodges have no or limited lighting after dark</li>
	<li>Comfortable, closed shoes &ndash; sticky, slippery, sometimes muddy rainforest trails make sandals and heels impractical</li>
	<li>Camera gear &ndash; extra batteries, lenses, memory cards</li>
	<li>Water resistant binoculars &ndash; get a good look at wildlife</li>
	<li>Daypack &ndash; carry water, poncho, and other essentials during daytime excursions</li>
</ul>

<p><a name="faqs"></a></p>

<h2>Faq&rsquo;s</h2>

<p><strong>What can I expect at an Amazon lodge in Manu?</strong><br />
Many lodges and tour operators in Manu abide by ecotourism standards, emphasizing leaving a low carbon footprint. Visitors can have basic but comfortable lodging. Mosquito nets are provided. The architecture will resemble that of local communities and uses locally available materials. Food is simple but good. Cooks make use of locally grown foods, including fruits and vegetables. Lodge kitchens can accommodate vegetarian and other specific diets when notified in advance. All that said, it&rsquo;s generally true that you get what you pay for. A higher tour package price might get you &ldquo;extras&rdquo; such as a hot shower and electricity. Be sure to check with the tour operator to see what is and is not included.</p>

<p><strong>Which is better &ndash; Manu or Tambopata or Iquitos?</strong><br />
It depends on how much time you have and your specific interests. For short itineraries, Tambopata probably has the most accessible wildlife viewing. Iquitos offers the unique chance to cruise the Amazon River. Manu is well-suited for travelers with more time who don&rsquo;t mind basic accommodation in exchange for a unique experience of spectacular birdlife, clay licks, and unique habitats.</p>
', N'Buses,Train', N'1', N'Mar 24 2023  6:27PM')
INSERT [dbo].[NearbyPlaces_Table] ([id], [continentid], [countryid], [sid], [did], [pid], [cityname], [categoryName], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (8, 2, 63, 0, 0, 11, N'Egypt and Sudan', N'Salt Pools', N'Siwa Oasis', N'a-beautiful-pond-inside.jpg', N'a-beautiful-pond-inside.jpg', N'a-beautiful-pond-inside.jpg', N'a-beautiful-pond-inside.jpg', N'a-beautiful-pond-inside.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d111443.1522581366!2d25.456796908388334!3d29.205945111188704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x147aaface8f3a523%3A0x6f335df8f19a074d!2sSiwa%20Oasis%2C%20Siwa%2C%20Matrouh%20Governorate%2C%20Egypt!5e0!3m2!1sen!2sin!4v1679813023177!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<h3>Synopsis</h3>

<p>Here, even if you don&rsquo;t know how to swim, you will be able to take a dip in these salt pools, as you will be floating on them. Known to be one of best-kept secrets of Egypt, the lakes here are high in salt concentration, which lets one float in the pool without any fear of drowning.&nbsp;</p>

<p>How about not drowning in a sea even if you don&rsquo;t know how to swim? Well yes, you can actually experience this. And we are not talking about the Dead Sea here. Today, we will take you to Egypt, the land of incredible pyramids, which also boasts of the Siwa Oasis, where there are innumerable salt pools and where it&#39;s impossible to go down.<br />
<br />
Egypt is definitely one of the sought-after tourist destinations that lures visitors from far and near with its all-time favourite Pyramids of Giza, the spectacular temples of Aswan and Luxor, Valley of the Kings, and more. Apart from this, there is another surprise thing awaiting you there in the depths of the Western Desert. It&rsquo;s called the Siwa Oasis, surrounded by desert and featuring natural springs and swaying palm trees.<br />
Siwa is situated around 562 km from Cairo, which is famous for its salt lakes, and is a highly-recommended tourist spot here. Here, even if you don&rsquo;t know how to swim, you will be able to take a dip in these salt pools, as you will be floating on them. Known to be one of best-kept secrets of Egypt, the lakes here are high in salt concentration, which lets one float in the pool without any fear of drowning.<br />
<br />
If you are curious about this place and would like to visit this place in the near future, plan it between the months of October and March, which is the best time to visit Siwa Oasis, when the temperatures are mild.<br />
<br />
For your information, there are more than 220 springs in the oasis, whereas the most famous one is Cleopatra&#39;s Pool.</p>
', N'Buses,Train', N'1', N'Mar 24 2023  6:32PM')
INSERT [dbo].[Place_Details_Table] ([id], [continentid], [countryid], [cid], [sid], [did], [cityname], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (2, 1, 99, 2, 11, 675, N'Havelock Island', N'Radhanagar Beach', N'Radhanagar Beach2.jpg', N'Radhanagar Beach.jpg', N'Radhanagar Beach3.jpg', N'Radhanagar Beach4.jpg', N'Radhanagar Beach5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15611.504772348988!2d92.93969446169432!3d11.983067714154583!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3088d212164bb773%3A0x9715637d9a7265b3!2sRadhanagar%20Beach!5e0!3m2!1sen!2sin!4v1676893293191!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<h2>About Radhanagar Beach in Havelock</h2>

<p>Tucked in&nbsp;<strong>Havelock Island, Radhanagar Beach</strong>&nbsp;is regarded as the<strong>&nbsp;best beach in India</strong>. It is&nbsp;a pristine stretch of sand backed by turquoise water and lush forest. Radhanagar Beach is commonly called Beach No. 7 and it looks straight out of the postcard. Times Magazine has awarded it the title of the &lsquo;7th&nbsp;best beach in the world&rsquo;. Radhanagar Beach is one of the many highlights, not only in Havelock but also in the Andaman Islands.</p>

<p>Dotted with palm trees, the beach offers tourists a tranquil ambiance to relax and unwind amidst nature. Take a walk barefoot and relish the sight of the aqua waves brushing against the feet. The scenery is so surreal that it will allow you to reconnect with the poet within yourself. No wonder, you can choose Radhanagar Beach for a complete makeover of mind.</p>

<p>Another attraction of Radhanagar Beach is Neil&rsquo;s Cove. A 10 minutes walk along the beach will take you to this spot.&nbsp;<a href="https://www.go2andaman.com/visit/neils-cove-radhanagar-havelock/">Neil&rsquo;s Cove</a>&nbsp;is a pristine lagoon and also one of the lesser-known spots. This attraction also offers immense photography opportunities. However, swimming in the water is strictly prohibited after sunset. Hence, with a dazzling array of offerings,&nbsp;<strong>Radhanagar Beach</strong>&nbsp;is an undeniable bucket list destination.</p>

<h2>Highlights &ndash; Radhanagar Beach</h2>

<ul>
	<li><strong>Swimming:</strong>&nbsp;Radhanagar Beach is ideal for sunbathing or swimming. Carry beach towels when you are here. Changing rooms and toilets are available for the convenience of the tourists.</li>
	<li><strong>Sunsets:</strong>&nbsp;Radhanagar Beach is particularly known for its gorgeous sunsets. The captivating assortment of turquoise blue waters and lavish greenery accompanied by mesmerizing sunset views elevates the beauty of this place. Spread a mat and treat your eyes to one of the best sunsets imaginable.</li>
	<li><strong>Luxury hotels dot the shoreline:</strong>&nbsp;Though expensive, some of the best hotels in Andaman are located at Radhanagar Beach. If you are not staying at the luxury hotels, you can still go there for having a lavish lunch.</li>
</ul>

<h2>How to Reach Radhanagar Beach?</h2>

<p><img alt="" src="https://ocean.go2andaman.com/wp-content/uploads/2020/11/Radhanagar-Beach-Havelock-Go2andaman-07.jpg?compress=true&amp;quality=90&amp;w=900&amp;dpr=1.0" style="height:148px; width:300px" /></p>

<p>Radhanagar Beach is located around 12 kilometers from the Havelock Jetty. the best way to travel is taking a chauffeured cab for families/large groups (self-drive cars not available), and two-wheelers for smaller groups (not during monsoons). It is one straight road and navigation is easy.</p>

<p>It is about a 9 kilometers ride from the market and thus cycling there is not for the faint-hearted. Also, there are not many cafes/stops in the middle. Public buses and shared jeeps are available but only at fixed timings. Ask the information desk at the jetty on arrival at Havelock. Alternatively, ask your hotel travel desk.</p>

<p>Go2andaman Travel Maps are also great for navigation and information.</p>

<h2>What to expect at Radhanagar Beach?</h2>

<p>Radhanagar Beach is regarded as the most popular beach in Havelock Island. The beach is ideal for relaxation and swimming. When it comes to a beach, no time is too much. But if you are on a short trip, 1.5 to 2 hours would be ideal. Try to reach by 3:00 PM and leave after sunset. The endless stretch of sand meeting the vast blue sea in an idyllic setting is what Radhanagar Beach is all about.</p>

<p><img alt="" src="https://ocean.go2andaman.com/wp-content/uploads/2020/11/Radhanagar-Beach-Havlock-Go2andaman-03.jpg?compress=true&amp;quality=90&amp;w=900&amp;dpr=1.0" style="height:148px; width:300px" /></p>

<h2>Go2andaman Insider Tips for Radhanagar Beach</h2>

<ul>
	<li>Get to the beach by 5 AM to avoid crowds. The sunrise is breathtaking and you must not miss it</li>
	<li>Carry a beach towel or an old bed sheet so that you can relax on the beach. Carrying a sunscreen lotion, a pair of flip flops, quick-drying towels, and plenty of water is also recommended</li>
	<li>If you are riding a two-wheeler, be very careful as accidents are common on the road leading to Radhanagar Beach</li>
</ul>

<h2>Places nearby Radhanagar Beach</h2>

<ol>
	<li><strong><a href="https://www.go2andaman.com/visit/elephant-beach-havelock/">Elephant Beach</a>:&nbsp;</strong>Known for its exquisite coral views, Elephant Beach is perfect for thrill-seekers visiting Havelock. While you take a speed boat from the Havelock jetty, there is also a trekking trail about 6 kilometres from Radhanagar Beach. Elephant Beach is the hub for water activities, from snorkelling to&nbsp;<a href="https://www.go2andaman.com/andaman-scuba-diving-guide/">scuba diving</a>, jet-ski and more. Tourists can also bask in the sun while grabbing some snacks and refreshments.<br />
	Ideal For: Families, Adventure Lovers, Photographers</li>
	<li><strong>Neil&rsquo;s Cove:&nbsp;</strong>A few minutes walk along Radhanagar Beach will take you to Neil&rsquo;s cove.&nbsp; It is a tranquil lagoon surrounded by lush green vegetation and offer ample opportunities to watch colourful fish in their natural habitat.</li>
	<li><strong>Dining at TAJ Havelock:&nbsp;</strong>Indulge in a luxurious dining experience at Taj. Savour sumptuous delicacies in an intimate setting and have a great time with your loved ones.</li>
	<li><strong>Dining at Barefoot Resort:&nbsp;</strong>Located at Radhanagar Beach, Barefoot Bar &amp; Restaurant is known for its seafood and continental dishes. Beside the restaurant, there is a lounge where guests can chill with a glass of drink. Kindly note, prior booking is required for guests who are not staying with them.</li>
	<li><strong>Dining at TSG Blue Resort:&nbsp;</strong>Located close to Radhanagar Beach, TSG Blue offers guests an extraordinary dining experience. It boasts of its skilled chefs and delicious food that treats the taste buds.</li>
</ol>
', N'Airway,Train,Buses', N'1', N'Feb 21 2023  2:58PM')
INSERT [dbo].[Place_Details_Table] ([id], [continentid], [countryid], [cid], [sid], [did], [cityname], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (4, 4, 30, 4, 0, 0, N'Manaus', N'Amazon Rainforest', N'Amazon-Rainforest-3.jpg', N'Amazon-Rainforest-2.jpg', N'Amazon-Rainforest-3.jpg', N'Amazon-Rainforest-1.jpg', N'Amazon-Rainforest-5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15930.093430717667!2d-62.224635283524776!3d-3.4652837410756456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91e8605342744385%3A0x3d3c6dc1394a7fc7!2sAmazon%20Rainforest!5e0!3m2!1sen!2sin!4v1677488767554!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<p>A&nbsp;rainforest&nbsp;is an area of tall, mostly&nbsp;evergreen&nbsp;trees and a high amount of&nbsp;rainfall.</p>

<p>Rainforests are Earth&rsquo;s oldest living&nbsp;ecosystems, with some surviving in their present form for at least 70 million years. They are incredibly&nbsp;diverse&nbsp;and&nbsp;complex, home to more than half of the world&rsquo;s plant and animal species&mdash;even though they cover just six percent of Earth&rsquo;s surface. This makes rainforests&nbsp;astoundingly&nbsp;dense&nbsp;with&nbsp;flora&nbsp;and&nbsp;fauna; a 10-square-kilometer (four-square-mile) patch can contain as many as 1,500 flowering plants, 750 species of trees, 400 species of birds and 150 species of butterflies.</p>

<p>Rainforests&nbsp;thrive&nbsp;on every&nbsp;continent&nbsp;except Antarctica. The largest rainforests on Earth surround the Amazon River in South America and the Congo River in Africa. The&nbsp;tropical&nbsp;islands of Southeast Asia and parts of Australia support dense rainforest&nbsp;habitats. Even the cool evergreen forests of North America&rsquo;s Pacific Northwest and Northern Europe are a type of rainforest.</p>

<p>Rainforests&rsquo; rich&nbsp;biodiversity&nbsp;is incredibly important to our well-being and the well-being of our planet. Rainforests help&nbsp;regulate&nbsp;our&nbsp;climate&nbsp;and provide us with everyday products.</p>

<p>Unsustainable&nbsp;industrial&nbsp;and&nbsp;agricultural development, however, has&nbsp;severely&nbsp;degraded&nbsp;the health of the world&rsquo;s rainforests.&nbsp;Citizens,&nbsp;governments,&nbsp;intergovernmental&nbsp;organizations, and&nbsp;conservation&nbsp;groups are working together to protect these invaluable but&nbsp;fragile&nbsp;ecosystems.</p>

<p>&nbsp;</p>

<p><strong>Rainforest Structure&nbsp;</strong></p>

<p>Most rainforests are structured in four layers: emergent,&nbsp;canopy,&nbsp;understory, and&nbsp;forest floor. Each layer has&nbsp;unique&nbsp;characteristics based on differing levels of water, sunlight, and&nbsp;air circulation. While each layer is&nbsp;distinct, they exist in an&nbsp;interdependent&nbsp;system: processes and species in one layer influence those in another.</p>

<p><em>Emergent Layer&nbsp;</em></p>

<p>The top layer of the rainforest is the emergent layer. Here, trees as tall as 60 meters (200 feet)&nbsp;dominate&nbsp;the skyline.&nbsp;Foliage&nbsp;is often&nbsp;sparse&nbsp;on tree trunks, but spreads wide as the trees reach the sunny upper layer, where they photosynthesize the sun&rsquo;s rays. Small, waxy leaves help trees in the emergent layer retain water during long&nbsp;droughts&nbsp;or&nbsp;dry seasons. Lightweight&nbsp;seeds&nbsp;are carried away from the parent plant by strong&nbsp;winds.</p>

<p>In the Amazon rainforest, the towering trees of the emergent layer include the Brazil nut tree (<em>Bertholletia excelsa</em>) and the kapok tree (<em>Ceiba pentandra</em>). The Brazil nut tree, a&nbsp;vulnerable species, can live up to 1,000 years in undisturbed rainforest habitats. Unlike many rainforest species, both the Brazil nut tree and the kapok tree are&nbsp;deciduous&mdash;they shed their leaves during the dry season.</p>

<p>Animals often&nbsp;maneuver&nbsp;through the emergent layer&rsquo;s unstable topmost branches by flying or gliding. Animals that can&rsquo;t fly or glide are usually quite small&mdash;they need to be light enough to be supported by a tree&rsquo;s slender uppermost layers.</p>

<p>The animals living in the emergent layer of the Amazon rainforest include birds, bats, gliders, and butterflies. Large&nbsp;raptors, such as white-tailed hawks (<em>Geranoaetus albicaudatus</em>) and harpy eagles (<em>Harpia harpyja</em>), are its&nbsp;top predators.</p>

<p>In rainforests on the island of New Guinea, pygmy gliders populate the emergent layer. Pygmy gliders (<em>Acrobates pygmaeus</em>) are small&nbsp;rodents&nbsp;that get their name from the way flaps of skin between their legs allow them to glide from branch to branch.</p>

<p>Bats are the most diverse&nbsp;mammal&nbsp;species in most tropical rainforests, and they regularly fly throughout the emergent, canopy, and understory layers. For instance, one of the world&rsquo;s largest species of bat, the Madagascan flying fox (<em>Pteropus rufus</em>)&mdash;found on the African island of Madagascar&mdash;is an important&nbsp;pollinator&nbsp;that mainly feeds on juice from fruit, but will chew flowers for their&nbsp;nectar.</p>

<p><em>Canopy Layer&nbsp;</em></p>

<p>Beneath the emergent layer is the canopy, a deep layer of&nbsp;vegetation&nbsp;roughly six meters (20 feet) thick. The canopy&rsquo;s dense network of leaves and branches forms a roof over the two remaining layers.</p>

<p>The canopy blocks winds, rainfall, and sunlight, creating a&nbsp;humid, still, and dark&nbsp;environment&nbsp;below. Trees have&nbsp;adapted&nbsp;to this&nbsp;damp&nbsp;environment by producing glossy leaves with pointed tips that&nbsp;repel&nbsp;water.</p>

<p>While trees in the emergent layer rely on wind to scatter their seeds, many canopy plants, lacking wind,&nbsp;encase&nbsp;their seeds in fruit. Sweet fruit&nbsp;entices&nbsp;animals, which eat the fruit and deposit seeds on the forest floor as&nbsp;droppings. Fig trees, common throughout most of the world&rsquo;s tropical rainforests, may be the most familiar fruit tree in the canopy.</p>

<p>With so much food available, more animals live in the canopy than any other layer in the rainforest. The dense vegetation dulls sound, so many&mdash;but not all&mdash;canopy dwellers are notable for their&nbsp;shrill&nbsp;or&nbsp;frequent&nbsp;vocalizing. In the Amazon rainforest, canopy fruit is snatched up in the large&nbsp;beaks&nbsp;of&nbsp;screeching&nbsp;scarlet&nbsp;macaws&nbsp;(<em>Ara macao</em>) and keel-billed&nbsp;toucans&nbsp;(<em>Ramphastos sulfuratus</em>), and picked by barking spider monkeys and howler monkeys. The silent two-toed sloth chews on the leaves, shoots, and fruit in the canopy.</p>

<p>Thousands and thousands of insect species can also be found in the canopy, from bees to beetles, borers to butterflies. Many of these insects are the&nbsp;principal&nbsp;diet&nbsp;of the canopy&rsquo;s reptiles, including the &quot;flying&quot; draco lizards of Southeast Asia.</p>

<p><em>Understory Layer</em></p>

<p>Located several meters below the canopy, the understory is an even darker, stiller, and more humid environment. Plants here, such as palms and&nbsp;philodendrons, are much shorter and have larger leaves than plants that dominate the canopy. Understory plants&rsquo; large leaves catch the minimal sunlight reaching beyond the dense canopy.</p>

<p>Understory plants often produce flowers that are large and easy to see, such as&nbsp;<em>Heliconia</em>, native to the Americas and the South Pacific. Others have a strong smell, such as orchids. These features attract pollinators even in the understory&rsquo;s low-light conditions.</p>

<p>The fruit and seeds of many understory&nbsp;shrubs&nbsp;in&nbsp;temperate rainforests&nbsp;are&nbsp;edible. The temperate rainforests of North America, for example, bloom with berries.</p>

<p>Animals call the understory home for a variety of reasons. Many take advantage of the dimly lit environment for&nbsp;camouflage. The spots on a jaguar (<em>Panthera onca</em>), which are found in the rainforests of Central and South America, may be mistaken for leaves or flecks of sunlight, for instance. The green mamba, one of the deadliest snakes in the world, blends in with foliage as it&nbsp;slithers&nbsp;up branches in the Congo rainforest. Many bats, birds, and insects prefer the open airspace the understory offers. Amphibians, such as dazzlingly colored tree frogs, thrive in the humidity because it keeps their skin moist.</p>

<p>Central Africa&rsquo;s tropical rainforest canopies and understories are home to some of the most&nbsp;endangered&nbsp;and familiar rainforest animals&mdash;such as forest elephants, pythons, antelopes, and gorillas. Gorillas, a&nbsp;critically endangered&nbsp;genus of&nbsp;primate, are&nbsp;crucial&nbsp;for seed&nbsp;dispersal. Gorillas are&nbsp;herbivores&nbsp;that move throughout the dark, dense rainforest as well as more sun-dappled&nbsp;swamps&nbsp;and&nbsp;jungles. Their droppings disperse seeds in these sunny areas where new trees and shrubs can take root. In this way, gorillas are&nbsp;keystone species&nbsp;in many African rainforest ecosystems.</p>

<p><em>Forest Floor Layer&nbsp;</em></p>

<p>The forest floor is the darkest of all rainforest layers, making it&nbsp;extremely&nbsp;difficult for plants to grow. Leaves that fall to the forest floor&nbsp;decay&nbsp;quickly.</p>

<p>Decomposers, such as termites, slugs, scorpions, worms, and&nbsp;fungi, thrive on the forest floor.&nbsp;Organic&nbsp;matter falls from trees and plants, and these&nbsp;organisms&nbsp;break down the decaying material into&nbsp;nutrients. The shallow roots of rainforest trees&nbsp;absorb&nbsp;these nutrients, and dozens of&nbsp;predators&nbsp;consume&nbsp;the decomposers!</p>

<p>Animals such as wild pigs (<em>Sus scrofa</em>), armadillos, and anteaters&nbsp;forage&nbsp;in the decomposing&nbsp;brush&nbsp;for these tasty insects, roots and&nbsp;tubers&nbsp;of the South American rainforest. Even larger predators, including leopards (<em>Panthera pardus</em>),&nbsp;skulk&nbsp;in the darkness to surprise their&nbsp;prey. Smaller rodents, such as rats and lowland pacas (a type of striped rodent indigenous to Central and South America), hide from predators beneath the shallow roots of trees that dominate the canopy and emergent layer.</p>

<p>Rivers that run through some tropical rainforests create unusual&nbsp;freshwater&nbsp;habitats on the forest floor. The Amazon River, for instance, is home to the boto (<em>Inia geoffrensis</em>), or pink river dolphin, one of the few freshwater dolphin species in the world. The Amazon is also home to black caimans (<em>Melanosuchus niger</em>), large reptiles related to alligators, while the Congo River is home to the caimans&rsquo;&nbsp;crocodilian&nbsp;cousin, the Nile crocodile (Crocodylus niloticus).</p>

<p>&nbsp;</p>

<p><strong>Types of Rainforests</strong>&nbsp;</p>

<p><em>Tropical Rainforests</em></p>

<p>Tropical rainforests are mainly located between the&nbsp;latitudes&nbsp;of 23.5&deg;N (the Tropic of Cancer) and 23.5&deg;S (the Tropic of Capricorn)&mdash;the&nbsp;tropics. Tropical rainforests are found in Central and South America, western and central Africa, western India, Southeast Asia, the island of New Guinea, and Australia.</p>

<p>Sunlight strikes the tropics almost straight on, producing intense&nbsp;solar energy&nbsp;that keeps&nbsp;temperatures&nbsp;high, between 21&deg; and 30&deg;C (70&deg; and 85&deg;F). High temperatures keep the air warm and wet, with an average humidity of between 77 percent and 88 percent. Such humid air produces extreme and frequent rainfall, ranging between 200-1000 centimeters (80-400 inches) per year. Tropical rainforests are so warm and moist that they produce as much as 75 percent of their own rain through&nbsp;evaporation&nbsp;and&nbsp;transpiration.</p>

<p>Such ample sunlight and moisture are the&nbsp;essential&nbsp;building blocks for tropical rainforests&rsquo; diverse flora and fauna. Roughly half of the world&rsquo;s species can be found here, with an estimated 40 to 100 or more different species of trees present in each hectare.</p>

<p>Tropical rainforests are the most biologically diverse&nbsp;terrestrial&nbsp;ecosystems in the world. The Amazon rainforest is the world&rsquo;s largest tropical rainforest. It is home to around 40,000 plant species, nearly 1,300 bird species, 3,000 types of fish, 427 species of mammals, and 2.5 million different insects. Red-bellied piranhas (<em>Pygocentrus nattereri</em>) and pink river dolphins swim its waters. Jewel-toned parrots squawk and fly through its trees. Poison dart frogs warn off predators with their bright colors. Capuchin and spider monkeys swing and&nbsp;scamper&nbsp;through the branches of the rainforest&rsquo;s estimated 400 billion trees. Millions of mushrooms and other fungi decompose dead and dying plant material, recycling nutrients to the&nbsp;soil&nbsp;and organisms in the understory. The Amazon rainforest is truly an ecological&nbsp;kaleidoscope, full of colorful sights and sounds.</p>

<p><em>Temperate Rainforests&nbsp;</em></p>

<p>Temperate rainforests are located in the mid-latitudes, where temperatures are much more mild than the tropics. Temperate rainforests are found mostly in&nbsp;coastal, mountainous areas. These geographic conditions help create areas of high rainfall. Temperate rainforests can be found on the coasts of the Pacific Northwest in North America, Chile, the United Kingdom, Norway, Japan, New Zealand, and southern Australia.</p>

<p>As their name implies, temperate rainforests are much cooler than their tropical cousins, averaging between 10&deg; and 21&deg;C (50&deg; and 70&deg;F). They are also much less sunny and rainy, receiving anywhere between 150-500 centimeters (60-200 inches) of rain per year. Rainfall in these forests is produced by warm, moist air coming in from the coast and being trapped by nearby mountains.&nbsp;</p>

<p>Temperate rainforests are not as biologically diverse as tropical rainforests. They are, however, home to an incredible amount of biological productivity, storing up to 500-2000 metric tons of leaves, wood, and other organic matter per hectare (202-809 metric tons per acre). Cooler temperatures and a more stable climate slow down decomposition, allowing more material to&nbsp;accumulate. The&nbsp;old-growth forests&nbsp;of the Pacific Northwest, for example, produce three times the&nbsp;biomass&nbsp;(living or once-living material) of tropical rainforests.</p>

<p>This productivity allows many plant species to grow for incredibly long periods of time. Temperate rainforest trees such as the coast redwood in the U.S. state of California and the alerce in Chile are among the oldest and largest tree species in the world.&nbsp;</p>

<p>The animals of the temperate rainforest are mostly made up of large mammals and small birds, insects, and reptiles. These species vary widely between rainforests in different world regions. Bobcats (<em>Lynx rufus</em>), mountain lions (<em>Puma concolor</em>), and black bears (<em>Ursus americanus</em>) are major predators in the rainforests of the Pacific Northwest. In Australia, ground dwellers such as wallabies, bandicoots, and potoroos (small&nbsp;marsupials&nbsp;that are among Australia&rsquo;s most endangered animals) feast on the foods provided by the forest floor. Chile&rsquo;s rainforests are home to a number of unique birds such as the Magellanic woodpecker and the Juan Fern&aacute;ndez firecrown, a hummingbird species that has a crown of color-changing feathers.</p>

<p><strong>People and the Rainforest</strong></p>

<p>Rainforests have been home to thriving, complex communities for thousands of years. For instance, unique rainforest ecosystems have influenced the diet of&nbsp;cultures&nbsp;from Africa to the Pacific Northwest.</p>

<p><em>Mbuti</em></p>

<p>The Mbuti, a community indigenous to the Ituri rainforest in Central Africa, have&nbsp;traditionally&nbsp;been&nbsp;hunter-gatherers. Their diet consists of plants and animals from every layer of the rainforest.</p>

<p>From the forest floor, the Mbuti hunt fish and crabs from the Ituri River (a&nbsp;tributary&nbsp;of the Congo), as well as gather berries from low-lying shrubs. The giant forest hog, a species of wild boar, is also frequently targeted by Mbuti hunters, although this species is hunted for sale more often than food. From the understory, the Mbuti may gather honey from bee hives, or hunt monkeys. From the canopy and emergent layers, Mbuti hunters may set nets or traps for birds.</p>

<p>Although they are a&nbsp;historically&nbsp;nomadic&nbsp;society,&nbsp;agriculture&nbsp;has become a way of life for many Mbuti communities today as they&nbsp;trade&nbsp;and barter with neighboring agricultural groups such as the Bantu for&nbsp;crops&nbsp;such as manioc, nuts, rice, and plantains.</p>

<p><em>Chimbu</em></p>

<p>The Chimbu people live in the highland rainforest on the island of New Guinea. The Chimbu practice&nbsp;subsistence agriculture&nbsp;through&nbsp;shifting cultivation. This means they have gardens on&nbsp;arable&nbsp;land that has been cleared of vegetation. A portion of the plot may be left fallow for months or years. The plots are never&nbsp;abandoned&nbsp;and are passed on within the family.</p>

<p>Crops&nbsp;harvested&nbsp;in Chimbu garden plots include sweet potatoes, bananas, and beans. The Chimbu also maintain&nbsp;livestock, particularly pigs. In addition to their own diet, pigs are valuable&nbsp;economic&nbsp;commodities for trade and sale.</p>

<p><em>Tlingit</em></p>

<p>The temperate rainforest of the northwest coast of North America is the home of the Tlingit. The Tlingit enjoy a diverse diet, relying on both&nbsp;marine&nbsp;and freshwater species, as well as&nbsp;game&nbsp;from inland forests.</p>

<p>Due to&nbsp;bountiful&nbsp;Pacific&nbsp;inlets, rivers, and streams, the traditional Tlingit diet consists of a wide variety of&nbsp;aquatic&nbsp;life: crab, shrimp, clams, oysters,&nbsp;seals, and fish such as herring, halibut, and, crucially, salmon. Kelps and other&nbsp;seaweeds&nbsp;can be harvested and eaten in soups or dried. One familiar Tlingit saying is &ldquo;When the&nbsp;tide&nbsp;is out, our table is set.&rdquo;</p>

<p>In more inland areas, historic Tlingit hunters may have targeted deer, elk, rabbit, and mountain goats. Plants gathered or harvested include berries, nuts, and wild celery.&nbsp;</p>

<p><em>Yanomami</em></p>

<p>The Yanomami are a people and culture native to the northern Amazon rainforest, spanning the&nbsp;border&nbsp;between Venezuela and Brazil. Like the Chimbu, the Yanomami practice both hunting and shifting-cultivation agriculture.</p>

<p>Game hunted by the Yanomami include deer, tapirs (an animal similar to a pig), monkeys, birds, and armadillos. The Yanomami have hunting dogs to help them search the understory and forest floor for game.&nbsp;</p>

<p>The Yanomami practice&nbsp;slash-and-burn&nbsp;agriculture to clear the land of vegetation&nbsp;prior&nbsp;to farming. Crops grown include cassava, banana, and corn. In addition to&nbsp;food crops, the Yanomami also cultivate cotton, which is used for hammocks, nets, and clothing.</p>

<p><strong>Benefits of Rainforests&nbsp;</strong></p>

<p><em>Ecological Well-Being</em></p>

<p>Rainforests are critically important to the well-being of our planet. Tropical rainforests encompass approximately 1.2 billion hectares (3 billion acres) of vegetation and are sometimes described as the Earth&rsquo;s&nbsp;thermostat.</p>

<p>Rainforests produce about 20% of our oxygen and store a huge amount of carbon dioxide, drastically reducing the impact of&nbsp;greenhouse gas&nbsp;emissions.&nbsp;Massive&nbsp;amounts of&nbsp;solar radiation&nbsp;are absorbed, helping regulate temperatures around the globe. Taken together, these processes help to&nbsp;stabilize&nbsp;Earth&rsquo;s climate.</p>

<p>Rainforests also help maintain the world&rsquo;s&nbsp;water cycle. More than 50% of&nbsp;precipitation&nbsp;striking a rainforest is returned to the&nbsp;atmosphere&nbsp;by&nbsp;evapotranspiration, helping regulate healthy rainfall around the planet. Rainforests also store a considerable percentage of the world&rsquo;s freshwater, with the Amazon&nbsp;Basin&nbsp;alone storing one-fifth.</p>

<p><em>Human Well-Being</em></p>

<p>Rainforests provide us with many products that we use every day. Tropical woods such as teak, balsa, rosewood, and mahogany are used in flooring, doors, windows, boatbuilding, and cabinetry. Fibers such as raffia, bamboo, kapok, and rattan are used to make furniture, baskets,&nbsp;insulation, and cord. Cinnamon, vanilla, nutmeg, and ginger are just a few spices of the rainforest. The ecosystem supports fruits including bananas, papayas, mangos, cocoa and coffee beans.</p>

<p>Rainforests also provide us with many&nbsp;medicinal&nbsp;products. According to the U.S.&nbsp;National&nbsp;Cancer Institute, 70% of plants useful in the treatment of cancer are found only in rainforests. Rainforest plants are also used in the creation of muscle relaxants,&nbsp;steroids, and&nbsp;insecticides. They are used to treat&nbsp;asthma,&nbsp;arthritis,&nbsp;malaria, heart disease, and&nbsp;pneumonia. The importance of rainforest species in&nbsp;public health&nbsp;is even more incredible considering that less than one percent of rainforest species have been&nbsp;analyzed&nbsp;for their medicinal value.</p>

<p>Even rainforest fungi can contribute to humanity&rsquo;s well-being. A mushroom discovered in the tropical rainforest of Ecuador, for example, is capable of consuming&nbsp;polyurethane&mdash;a hard,&nbsp;durable&nbsp;type of&nbsp;plastic&nbsp;used in everything from garden hoses to carpets to shoes. The fungi can even consume the plastic in an oxygen-free environment, leading many environmentalists and&nbsp;businesses&nbsp;to&nbsp;invest&nbsp;in&nbsp;research&nbsp;to&nbsp;investigate&nbsp;if the fungi can help&nbsp;reduce&nbsp;waste&nbsp;in&nbsp;urban&nbsp;landfills.</p>

<p><strong>Threats to Rainforests</strong></p>

<p>Rainforests are disappearing at an alarmingly fast pace, largely due to human&nbsp;development&nbsp;over the past few centuries. Once covering 14% of land on Earth, rainforests now make up only 6%. Since 1947, the total area of tropical rainforests has probably been reduced by more than half, to about 6.2 to 7.8 million square kilometers (3 million square miles).</p>

<p>Many&nbsp;biologists&nbsp;expect rainforests will lose 5-10% of their species each&nbsp;decade.&nbsp;Rampant&nbsp;deforestation&nbsp;could cause many important rainforest habitats to disappear completely within the next hundred years.</p>

<p>Such&nbsp;rapid&nbsp;habitat loss is due to the fact that 40 hectares (100 acres) of rainforest are cleared every minute for agricultural and industrial development. In the Pacific Northwest&rsquo;s rainforests,&nbsp;logging&nbsp;companies cut down trees for&nbsp;timber&nbsp;while paper industries use the wood for&nbsp;pulp. In the Amazon rainforest, large-scale agricultural industries, such as&nbsp;cattle&nbsp;ranching, clear huge tracts of forests for arable land. In the Congo rainforest, roads and other&nbsp;infrastructure&nbsp;development have reduced habitat and cut off&nbsp;migration corridors&nbsp;for many rainforest species. Throughout both the Amazon and Congo,&nbsp;mining&nbsp;and logging operations clear-cut to build roads and dig mines. Some rainforests are threatened by massive&nbsp;hydroelectric power&nbsp;projects, where&nbsp;dams&nbsp;flood acres of land. Development is&nbsp;encroaching&nbsp;on rainforest habitats from all sides.</p>

<p>Economic inequalities fuel this rapid deforestation. Many rainforests are located in developing countries with economies based on&nbsp;natural resources. Wealthy nations drive demand for products, and economic development&nbsp;increases&nbsp;energy use. These demands&nbsp;encourage&nbsp;local governments to develop rainforest acreage at a&nbsp;fraction&nbsp;of its value.&nbsp;Impoverished&nbsp;people who live on or near these lands are also motivated to improve their lives by&nbsp;converting&nbsp;forests into subsistence&nbsp;farmland.</p>

<p><strong>Rainforest Conservation</strong></p>

<p>Many individuals, communities, governments, intergovernmental organizations, and conservation groups are taking&nbsp;innovative&nbsp;approaches to protect threatened rainforest habitats.</p>

<p>Many countries are supporting businesses and&nbsp;initiatives&nbsp;that&nbsp;promote&nbsp;the sustainable use of their rainforests. Costa Rica is a global&nbsp;pioneer&nbsp;in this field, investing in&nbsp;ecotourism&nbsp;projects that&nbsp;financially&nbsp;contribute to local economies and the forests they depend on. The country also signed an agreement with an American&nbsp;pharmaceutical&nbsp;company, Merck, which sets aside a portion of the proceeds from rainforest-derived pharmaceutical compounds to&nbsp;fund&nbsp;conservation projects.</p>

<p>Intergovernmental groups address rainforest conservation at a global scale. The United Nations&rsquo; REDD (Reducing Emissions from Deforestation and forest Degradation) Program, for example, offers financial&nbsp;incentives&nbsp;for reducing&nbsp;carbon emissions&nbsp;created by deforestation to 58 member countries. The Democratic Republic of the Congo used REDD funds to create an online National Forest&nbsp;Monitoring&nbsp;System that tracks and maps data on logging&nbsp;concessions, deforestation in protected areas, and national&nbsp;forestry&nbsp;sector&nbsp;measures. REDD funds were also used to investigate best practices in solving land&nbsp;disputes&nbsp;in Cambodia, which lacks proper forest&nbsp;zoning&nbsp;and&nbsp;boundary&nbsp;enforcement.</p>

<p>Nonprofit organizations&nbsp;are tackling rainforest conservation through a variety of different approaches. The Rainforest Trust, for example, supports local conservation groups around the world in purchasing and managing critically important habitats. In Ecuador, the Rainforest Trust worked with the Fundaci&oacute;n Jocotoco to acquire 495 more hectares (1,222 more acres) for the R&iacute;o Canand&eacute; Reserve, considered to have one of the highest&nbsp;concentrations&nbsp;of&nbsp;endemic&nbsp;and&nbsp;threatened species&nbsp;in the world. Partnering with Burung Indonesia, the Trust created a 8,900-hectare (22,000-acre) reserve on Sangihe Island to protect the highest concentration of threatened bird species in Asia.</p>

<p>The Rainforest Alliance is a nonprofit organization that helps businesses and&nbsp;consumers&nbsp;know that their products conserve rather than degrade rainforests. Products that bear the Rainforest Alliance seal contain ingredients from farms or forests that follow strict guidelines designed to support the&nbsp;sustainable development&nbsp;of rainforests and local communities. The Alliance also allows tourism businesses use of their seal after they complete an education program on&nbsp;efficiency&nbsp;and sustainability. In turn, this seal allows tourists to make ecologically smart vacation plans.</p>
', N'Airway,Train,Buses', N'1', N'Feb 27 2023  2:44PM')
INSERT [dbo].[Place_Details_Table] ([id], [continentid], [countryid], [cid], [sid], [did], [cityname], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (11, 2, 63, 9, 0, 0, N'Egypt and Sudan', N'Sahara Desert', N'Sahara Desert1.jpg', N'Sahara Desert2.jpg', N'Sahara Desert3.jpg', N'Sahara Desert4.jpg', N'Sahara Desert5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15152823.921023553!2d13.074919700520551!3d21.995216335750392!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13883b64fb267151%3A0xd6406bdc582d7390!2sSahara%20Desert!5e0!3m2!1sen!2sin!4v1678101408041!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<h2><strong>SAHARA DESERT, SAHARA DESERT MAP, WHERE IS THE SAHARA DESERT, SAHARA DESERT LOCATION</strong></h2>

<p><a href="https://www.journeytoegypt.com/en/blog/sahara-desert-africa/study-and-exploration">Sahara</a></p>

<h2><strong>DESERT, AFRICA</strong></h2>

<p><strong>Sahara</strong>, (from Arabic ?a?ra?, &ldquo;desert&rdquo;)&nbsp;<strong>largest desert in the world</strong>. Filling nearly all of northern&nbsp;<strong>Africa</strong>, it measures approximately 3,000 miles (4,800 km) from east to west and between 800 and 1,200 miles from north to south and has a total area of some 3,320,000 square miles (8,600,000 square km); the actual area varies as the desert expands and contracts over time. The Sahara is bordered in the west by the&nbsp;<strong>Atlantic Ocean</strong>, in the north by the&nbsp;<strong>Atlas Mountains</strong>&nbsp;and&nbsp;<strong>Mediterranean Sea</strong>, in the east by the&nbsp;<strong>Red Sea</strong>, and in the south by the Sahel&mdash;a semiarid region that forms a transitional zone between the Sahara to the north and the belt of humid savannas to the south.</p>

<p><a href="https://www.journeytoegypt.com/en" target="_self"><img alt="Egypt Tours" src="https://www.journeytoegypt.com/cache/images/widget-buttons/eyJsYWJlbCI6Ilwvd2lkZ2V0XC9ib29rLWJ1dHRvbi5wbmciLCJjYXB0aW9uIjoiRWd5cHQgVG91cnMiLCJmb3JlQ29sb3IiOiIjZmZmZmZmIiwiYmFja0NvbG9yIjoiI2I3MWMxYyJ9.png" /></a></p>

<h2><strong>SAHARA DESERT MAP</strong></h2>

<p><strong><a href="https://www.journeytoegypt.com/en"><img alt="" src="https://d3rr2gvhjw0wwy.cloudfront.net/uploads/mandators/49581/file-manager/sahara-desert-map.jpg" style="height:267px; width:400px" /></a></strong></p>

<h2><strong>PHYSICAL FEATURES</strong></h2>

<h2><strong>PHYSIOGRAPHY</strong></h2>

<p>The principal topographical features of the Sahara include shallow, seasonally inundated basins (chotts and dayas) and large oasis depressions; extensive gravel-covered plains (serirs or regs); rock-strewn plateaus (hammadas); abrupt mountains; and sand sheets, dunes, and sand seas (ergs).&nbsp;<strong>The highest point in the deser</strong>t is the 11,204-foot (3,415-metre) summit of Mount Koussi in the Tibesti Mountains in Chad. The lowest, 436 feet (133 metres) below sea level, is in the Qattara Depression of&nbsp;<a href="https://www.journeytoegypt.com/en/blog/egypt-map">Egypt</a>.</p>

<p><img alt="" src="https://d3rr2gvhjw0wwy.cloudfront.net/uploads/mandators/49581/file-manager/sahara.jpg" style="height:182px; width:400px" /></p>

<p><strong>The name Sahara derives from the Arabic noun ?a?ra</strong>?,&nbsp;<strong>meaning desert</strong>, and its plural, ?a?ara?. It is also related to the adjective a??ar, meaning desertlike and carrying a strong connotation of the reddish colour of the vegetationless plains. There are also indigenous names for particular areas&mdash;such as the&nbsp;<strong>Tanezrouft region</strong>&nbsp;of&nbsp;<strong>southwestern Algeria&nbsp;</strong>and the&nbsp;<strong>T&eacute;n&eacute;r&eacute; region of central Niger</strong>&mdash;which are often of Berber origin.</p>

<p><a href="https://www.journeytoegypt.com/en/egypt-travel-packages" target="_self"><img alt="Egypt Tour Packages" src="https://www.journeytoegypt.com/cache/images/widget-buttons/eyJsYWJlbCI6Ilwvd2lkZ2V0XC9ib29rLWJ1dHRvbi5wbmciLCJjYXB0aW9uIjoiRWd5cHQgVG91ciBQYWNrYWdlcyIsImZvcmVDb2xvciI6IiNmZmZmZmYiLCJiYWNrQ29sb3IiOiIjYjcxYzFjIn0=.png" /></a></p>

<p><strong>The Sahara sits</strong>&nbsp;atop the African Shield, which is composed of heavily folded and denuded Precambrian rocks. Because of the stability of the shield, subsequently deposited Paleozoic formations have remained horizontal and relatively unaltered. Over much of the Sahara, these formations were covered by Mesozoic deposits&mdash;including the limestones of&nbsp;<strong>Algeria</strong>,&nbsp;<strong>southern Tunisia</strong>, and northern Libya, and the&nbsp;<strong>Nubian</strong>&nbsp;sandstones of the Libyan Desert&mdash;and many of the important regional aquifers are identified with them. In the northern Sahara, these formations are also associated with a series of basins and depressions extending from the oases of western&nbsp;<a href="https://www.journeytoegypt.com/en/blog/egypt">Egypt</a>&nbsp;to the chotts of Algeria. In the&nbsp;<strong>southern Sahara</strong>, downwarping of the African Shield created large basins occupied by Cenozoic lakes and seas, such as the ancient Mega-Chad. The serirs and regs differ in character in various regions of the desert but are believed to represent Cenozoic depositional surfaces. A prominent feature of the plains is the dark patina of ferromanganese compounds, called desert varnish, that forms on the surfaces of weathered rocks. The plateaus of the Sahara, such as the Tadema&iuml;t Plateau of Algeria, are typically covered with angular, weathered rock. In the central Sahara, the monotony of the plains and plateaus is broken by prominent volcanic massifs&mdash;including Mount ?Uwaynat and the Tibesti and Ahaggar mountains. Other noteworthy formations include the Ennedi Plateau of Chad, the A&iuml;r Massif of Niger, the Iforas Massif of Mali, and the outcroppings of the Mauritanian Adrar region.</p>

<p>Sand sheets and dunes cover approximately 25 percent of the Sahara&rsquo;s surface. The principal types of dunes include tied dunes, which form in the lee of hills or other obstacles; parabolic blowout dunes; crescent-shaped barchans and transverse dunes; longitudinal seifs; and the massive, complex forms associated with sand seas. Several pyramidal dunes in the Sahara attain heights of nearly 500 feet, while draa, the mountainous sand ridges that dominate the ergs, are said to reach 1,000 feet. An unusual phenomenon associated with desert sands is their &ldquo;singing&rdquo; or booming. Various hypotheses have been advanced to explain the phenomenon, such as those based upon the piezoelectric property of crystalline quartz, but the mystery remains unsolved.</p>

<p><a href="https://www.journeytoegypt.com/en/egypt-nile-cruises" target="_self"><img alt="Nile cruise" src="https://www.journeytoegypt.com/cache/images/widget-buttons/eyJsYWJlbCI6Ilwvd2lkZ2V0XC9ib29rLWJ1dHRvbi5wbmciLCJjYXB0aW9uIjoiTmlsZSBjcnVpc2UiLCJmb3JlQ29sb3IiOiIjZmZmZmZmIiwiYmFja0NvbG9yIjoiI2I3MWMxYyJ9.png" /></a></p>

<p><a href="https://www.journeytoegypt.com/en"><img alt="" src="https://d3rr2gvhjw0wwy.cloudfront.net/uploads/mandators/49581/file-manager/sand-dunes-sahara-morocco.jpg" style="height:265px; width:400px" /></a></p>

<h2><strong>DRAINAGE</strong></h2>

<p>Several rivers originating outside the Sahara contribute to both the surface water and groundwater regimes of the desert and receive the discharge of its drainage networks. Rivers rising in the tropical highlands to the south are particularly prominent: the main tributaries of&nbsp;<a href="https://www.journeytoegypt.com/en/blog/nile-river">the Nile</a>&nbsp;join in the Sahara, and the river flows northward along the desert&rsquo;s eastern margin to the Mediterranean; several rivers discharge into Lake Chad in the southern Sahara, and a significant quantity of water continues northeastward and contributes to the recharge of regional aquifers; and the Niger rises in the Fouta Djallon region of Guinea and flows through the southwestern Sahara before turning southward to the sea. Streams and wadis (ephemeral streams) flowing from the Atlas Mountains and coastal highlands of Libya, Tunisia, Algeria, and&nbsp;<strong>Morocco</strong>&nbsp;contribute additional water. Prominent among these are the Saoura and Dr&acirc;a. Many of the smaller wadis discharge into the chotts of the northern Sahara. Within the desert itself, there are extensive networks of wadis: some are seasonally active remnants of systems formed during more humid periods in the past; some, however, have been shaped by the sudden discharge of historically documented storms, such as the flood that destroyed Tamanrasset, Algeria, in 1922. Particularly significant are the complex network of wadis, lakes, and pools associated with the Tibesti Mountains and those associated with the Tassili n&rsquo;Ajjer region and the Ahaggar Mountains, such as Wadi Tamanrasset. The sand dunes of the Sahara store considerable quantities of rainwater, and seeps and springs issue from various escarpments in the desert.</p>

<p><a href="https://www.journeytoegypt.com/en/egypt-tours/cairo-tours" target="_self"><img alt="Cairo Tours" src="https://www.journeytoegypt.com/cache/images/widget-buttons/eyJsYWJlbCI6Ilwvd2lkZ2V0XC9ib29rLWJ1dHRvbi5wbmciLCJjYXB0aW9uIjoiQ2Fpcm8gVG91cnMiLCJmb3JlQ29sb3IiOiIjZmZmZmZmIiwiYmFja0NvbG9yIjoiI2I3MWMxYyJ9.png" /></a></p>

<h2><strong>SOILS</strong></h2>

<p>The soils of the Sahara are low in organic matter, exhibit only slightly differentiated horizons (strata), and are often biologically inactive, although nitrogen-fixing bacteria are present in some areas. The soils in depressions are frequently saline. At the margins of the desert are soils containing greater concentrations of organic matter. Weatherable minerals are a prominent constituent of these soils, and chemically active expanding-lattice clays are common. Free carbonates are often present, indicating that little leaching has occurred. Compact and indurated layers, or crusts, are largely restricted to the northwestern section of the desert in association with calcareous bedrock. Fine materials, including deposits of diatomaceous earth, are limited to basins and depressions.</p>

<h2><strong>CLIMATE</strong></h2>

<p>The age of&nbsp;<strong>the Sahara</strong>&nbsp;has been a matter of some dispute. Several studies of the rocks in the region indicate that the Sahara became established as a climatic desert approximately 2&ndash;3 million years ago, an interval that spanned from the late Pliocene to the early Pleistocene Epoch. The discovery of 7-million-year-old dune deposits throughout northern Chad in 2006, however, suggests that the region became arid during the Miocene Epoch (23 million to 5.3 million years ago). Since the Pliocene the Sahara has been subject to short- and medium-term oscillations of drier and more humid conditions. Human activity seems to have contributed to the stability of the desert by increasing surface reflectivity and by reducing evapotranspiration. During the past 7,000 years cattle-based animal husbandry in the desert and along its margins apparently has contributed further to the maintenance of these conditions, and the climate of the Sahara has been relatively constant for 2,000 years. A noteworthy departure from existing norms occurred from the 16th to the 18th century, the period of the so-called Little Ice&nbsp;<strong>Age in Europe</strong>: precipitation increased significantly along the tropical margin of the Sahara, in the desert itself, and perhaps along the northern margin as well. By the 19th century, however, a climate similar to that of the present was reestablished.</p>

<p><strong>The Sahara</strong>&nbsp;is dominated by two climatic regimes: a dry subtropical climate in the north and a dry tropical climate in the south. The dry subtropical climate is characterized by unusually high annual and diurnal temperature ranges, cold to cool winters and hot summers, and two precipitation maximums. The dry tropical climate is characterized by a strong annual temperature cycle following the declination of the sun; mild, dry winters; and a hot dry season preceding variable summer rains. A narrow strip of the western coastal zone has a relatively cool, uniform temperature reflecting the influence of the cold Canary Current.</p>

<p>The dry subtropical climate of the northern Sahara is caused by stable high-pressure cells centred over the Tropic of Cancer. The annual range of average daily temperatures is about 36 &deg;F (20 &deg;C). Winters are relatively cold in the northern regions and cool in the central Sahara. For the zone as a whole, average monthly temperatures during the cold season are approximately 55 &deg;F (13 &deg;C). The summers are hot. Daily temperature ranges are considerable during both the winter and summer months. Although precipitation is highly variable, it averages about 3 inches (76 millimetres) per year. Most precipitation falls from December through March. Another maximum occurs in August, characterized by thunderstorms. These storms can cause tremendous flash floods that rush into areas where no precipitation has fallen. Little precipitation falls in May and June. Snowfall occurs occasionally over the northern plateaus. Another feature of the dry subtropics are the hot, southerly winds that often carry dust from the interior. Although they occur at various times of the year, they are especially common during the spring. In Egypt they are known as the khamsin, in Libya as the ghibli, and in Tunisia as the chili. The dust-laden haboob winds of Sudan are of shorter duration, chiefly occur during the summer months, and often usher in heavy rains.</p>

<p>The dry tropical climate to the south is dominated by the same high-pressure cells, but it is regularly influenced by the seasonal interaction of a stable continental subtropical air mass and a southerly, unstable maritime tropical air mass. The annual range in average daily temperatures in the dry tropical regions of the Sahara is approximately 31.5 &deg;F (17.5 &deg;C). Average temperatures for the coldest months are essentially the same as they are for the subtropical zone to the north, but the diurnal range is more moderate. In the higher elevations of the zone, the lows approximate those of more northerly, subtropical regions. For example, absolute lows of 5 &deg;F (&minus;15 &deg;C) have been recorded in the&nbsp;<strong>Tibesti Mountains</strong>. Late spring and early summer are hot; high temperatures of 122 &deg;F (50 &deg;C) are not unusual. Although the massifs of the dry tropics often receive small quantities of precipitation throughout the year, the lowlands have a single summer maximum. As in the north, much of this rainfall occurs as thunderstorms. Precipitation averages are about five inches per year, occasionally including some snowfall in the central massifs. In the western margin of the desert the cold Canary Current reduces air temperatures, thereby reducing convectional rainfall, but resulting in higher humidity and occasional fogs. In the southern Sahara the winter is the period of the harmattan, a dry northeasterly wind laden with sand and other easily transported dust particles.</p>

<h2><strong>PLANT LIFE</strong></h2>

<p>Saharan vegetation is generally sparse, with scattered concentrations of grasses, shrubs, and trees in the highlands, in oasis depressions, and along the wadis. Various halophytes (salt-tolerant plants) are found in saline depressions. Some heat- and drought-tolerant grasses, herbs, small shrubs, and trees are found on the less well-watered plains and&nbsp;<strong>plateaus of the Sahara</strong>.</p>

<p><img alt="" src="https://d3rr2gvhjw0wwy.cloudfront.net/uploads/mandators/49581/file-manager/field-colocynth-fruit-apple-sahara-desert.jpg" style="height:602px; width:400px" /></p>

<p>The vegetation of the Sahara is particularly noteworthy for its many unusual adaptations to unreliable precipitation. These are variously seen in morphology&mdash;including root structure, a broad range of physiological adaptations, site preferences, dependency and affinity relationships, and reproductive strategies. Many of the herbaceous plants are ephemerals that may germinate within three days of adequate rainfall and sow their seeds within 10 or 15 days of germination. Sheltered in the Saharan massifs are occasional stands of relict vegetation, often with Mediterranean affinities.</p>

<p>Prominent among the relict woody plants of the Saharan highlands are species of olive, cypress, and mastic trees. Other woody plants found in the highlands and elsewhere in the desert include species of Acacia and Artemisia, doum palm, oleander, date palm, and thyme. Halophytes such as Tamarix senegalensis are found along the western coastal zone. Grasses widely distributed in the Sahara include species of Aristida, Eragrostis, and Panicum. Aeluropus littoralis and other salt-tolerant grasses are found along the Atlantic coast. Various combinations of ephemerals form important seasonal pastures called acheb.</p>

<p>In the 21st century, recognition that the Sahara and its border region to the south, the Sahel, were creeping southward owing to desertification led to efforts to stall that movement; most notable was the Great Green Wall for the Sahara and Sahel Initiative. The idea that led to the initiative&mdash;planting a &ldquo;wall&rdquo; of trees along the edges of the Sahara that would stretch across the African continent in order to halt further desertification&mdash;was first conceived in 2005 and was later further developed with the assistance of the African Union and other international organizations. It involved plans to plant drought-resistant native trees in a 9-mile- (15-kilometre-) wide swath of territory from the western to the eastern edges of the continent, creating a barrier to keep the desert from further encroaching on the lands to its south.</p>

<h2><strong>ANIMAL LIFE</strong></h2>

<p>Relict tropical fauna of the northern Sahara include tropical catfish and chromides found at Biskra, Algeria, and in isolated oases of the Sahara; cobras and pygmy crocodiles may still exist in remote drainage basins of the Tibesti Mountains. More subtle has been the progressive loss of well-adapted, more mobile species to the advanced firearms and habitat destruction of humans. The North African elephant became extinct during the Roman period, but the lion, ostrich, and other species were established in the desert&rsquo;s northern margins as late as 1830. The last addax in the northern Sahara was killed in the early 1920s; serious depletion of this antelope has also occurred on the southern margins and in the central massifs.</p>

<p>Among the mammal species still found in the Sahara are the gerbil, jerboa, Cape hare, and desert hedgehog; Barbary sheep and scimitar-horned oryx; dorcas gazelle, dama deer, and Nubian wild ass; anubis baboon; spotted hyena, common jackal, and sand fox; and Libyan striped weasel and slender mongoose. Including resident and migratory populations, the birdlife of the Sahara exceeds 300 species. The coastal zones and interior waterways attract many species of water and shore birds. Among the species encountered in the interior regions are ostriches; various raptors; secretary birds, guinea fowl, and Nubian bustards; desert eagle owls and barn owls; sand larks and pale crag martins; and brown-necked and fan-tailed ravens.</p>

<p>Frogs, toads, and crocodiles live in the lakes and pools of the Sahara. Lizards, chameleons, skinks, and cobras are found among the rocks and dunes. The lakes and pools of the Sahara also contain algae and brine shrimp and other crustaceans. The various snails that inhabit the desert are an important source of food for birds and animals. Desert snails survive through aestivation (dormancy), often remaining inactive for several years before being revived by rainfall.</p>

<h2><strong>PEOPLE</strong></h2>

<p>Although as large as the United States, the Sahara (excluding the Nile valley) is estimated to contain only some 2.5 million inhabitants&mdash;less than 1 person per square mile (0.4 per square kilometre). Huge areas are wholly empty, but wherever meagre vegetation can support grazing animals or reliable water sources occur, scattered clusters of inhabitants have survived in fragile ecological balance with one of the harshest environments on earth.</p>

<p><strong>Long before recorded history</strong>, the Sahara was evidently more widely occupied. Stone artifacts, fossils, and rock art, widely scattered through regions now far too dry for occupation, reveal the former human presence, together with that of game animals, including antelopes, buffalo, giraffe, elephant, rhinoceros, and warthog. Bone harpoons, accumulations of shells, and the remains of fish, crocodiles, and hippopotamuses are associated with prehistoric settlements along the shores of ancient Saharan lakes. Among some groups, hunting and fishing were subordinated to nomadic pastoralism, after domesticated livestock appeared in the Sahara almost 7,000 years ago. The cattle-herding groups of the T&eacute;n&eacute;r&eacute; region of Niger are believed to have been either ancestral Berbers or ancestral Zaghawa; sheep and goats were apparently introduced by groups associated with the Capsian culture of northeastern Africa. Direct evidence of agriculture first appears about 6,000 years ago with the cultivation of barley and emmer wheat in Egypt; these appear to have been introduced from Asia. Evidence of the domestication of native African plants is first found in pottery from about 1000 BCE discovered in Mauritania. The cultivators have been associated with the Gangara, the ancestors of the modern Soninke.</p>

<p>Archaeological evidence suggests that the Sahara was increasingly inhabited by diverse populations, and plant and animal domestication led to occupational specialization. While the groups lived separately, the proximity of settlements suggests an increasing economic interdependence. External trade also developed. Copper from Mauritania had found its way to the Bronze Age civilizations of the Mediterranean by the 2nd millennium BCE. Trade intensified with the emergence of the Iron Age civilizations of the Sahara during the 1st century BCE, including the civilization centred in Nubia.</p>

<p>The greater mobility of nomads facilitated their involvement in the trans-Saharan trade. Increasing aridity in the Sahara is documented in the transition from cattle and horses to camels. Although camels were used in Egypt by the 6th century BCE, their prominence in the Sahara dates from only the 3rd century CE. Oasis dwellers in the Sahara were increasingly subject to attack by the Sanhaja (a Berber clan) and other camel-mounted nomads&mdash;many of whom had entered the desert to avoid the anarchy and warfare of the late Roman period in North Africa. Many of the remaining oasis dwellers, among them the Haratin, were subjugated by the nomads. The expansion of Islam into North Africa between the 7th and 11th centuries prompted additional groups of Berbers, as well as Arab groups wishing to retain traditional beliefs, to move into the Sahara. Islam eventually expanded through the trade routes, becoming the dominant social force in&nbsp;<strong>the desert</strong>.</p>

<p><a href="https://www.journeytoegypt.com/en"><img alt="" src="https://d3rr2gvhjw0wwy.cloudfront.net/uploads/mandators/49581/file-manager/camel-caravan-sahara-morocco.jpg" style="height:233px; width:350px" /></a></p>

<p>Despite considerable cultural diversity, the peoples of the Sahara tend to be categorized as pastoralists, sedentary agriculturalists, or specialists (such as the blacksmiths variously associated with herders and cultivators). Pastoralism, always nomadic to some degree, occurs where sufficient scanty pasturage exists, as in the marginal areas, on the mountain borders, and in the slightly moister west. Cattle appear along the southern borders with the Sahel, but sheep, goats, and camels are the mainstays in the desert. Major pastoral groups include the Regeibat of the northwestern Sahara and the Chaamba of the northern Algerian Sahara. Hierarchical in structure, the larger pastoral groups formerly dominated the desert. Warfare and raids (ghazw) were endemic, and in drought periods wide migrations in search of pasture took place, with heavy loss of animals. The Tuareg (who call themselves Kel Tamasheq) were renowned for their warlike qualities and fierce independence. Although they are Islamic, they retain a matriarchal organization, and the women of the Tuareg have an unusual degree of freedom. The Moorish groups to the west formerly possessed powerful tribal confederations. The Teda, of the Tibesti and its southern borderlands, are chiefly camel herders, renowned for their independence and for their physical endurance.</p>

<p>In the desert proper, sedentary occupation is confined to the oases, where irrigation permits limited cultivation of the date palm, pomegranate, and other fruit trees; such cereals as millet, barley, and wheat; vegetables; and such specialty crops as henna. Cultivation is in small &ldquo;gardens,&rdquo; maintained by a great expenditure of hand labour. Irrigation utilizes ephemeral streams in mountain areas, permanent pools (gueltas), foggaras (inclined underground tunnels dug to tap dispersed groundwater in the beds of wadis), springs (?ayn), and wells (bi?r). Some shallow groundwaters are artesian, but it is often necessary to use water-lifting devices. Ancient methods such as the shadoof (a pivoted pole and bucket) and the animal-driven noria (a Persian wheel with buckets) have been replaced by motorized pumps in more accessible oases. Water availability strictly limits oasis expansion, and, in some, overuse of water has produced a serious fall in the water level. Salinization of the soil by the fierce evaporation and burial by encroaching sand are further dangers.</p>

<h2><strong>ECONOMY</strong></h2>

<h2><strong>RESOURCES</strong></h2>

<p>During the century of colonial dominion over the Sahara, which lasted from the mid-19th to the mid-20th century, there was little fundamental change, except for military pacification; colonial powers were little interested in the economic development of what appeared to be an unpromising region. After World War II, however, the discovery of oil, in particular, attracted international interest and investment. Within a few years major discoveries had been made, particularly in mineral resources.</p>

<p>Metallic minerals are of considerable economic importance. Algeria possesses several major deposits of iron ore, and the reserves at Mount Ijill, in western Mauritania, are substantial; less extensive deposits have been found in Egypt, Tunisia, Morocco, Western Sahara, and Niger. Near Akjoujt, in southwestern Mauritania, lie substantial quantities of copper ore; extensive manganese deposits occur south of B&eacute;char, Algeria. Uranium is widely distributed in the Sahara and has been particularly important in Niger. A broad range of other economically significant minerals have been found in the Ahaggar, A&iuml;r, Tibesti, and Eglab regions. Rich phosphate deposits exist in&nbsp;<strong>Morocco</strong>&nbsp;and Western Sahara, and smaller deposits have been found elsewhere.</p>

<p>Fuel resources include coal, oil, and natural gas. Sources of coal include anthracite seams in Morocco and bituminous fields near B&eacute;char. Following the discovery of oil near I-n-Salah, Algeria, after World War II, major reserves have been found in the Western Desert of Egypt, northeastern Libya, and northeastern Algeria. Minor reserves exist in Tunisia and Morocco, as well as in Chad, Niger, and Sudan in the south. Deposits of oil shale have also been discovered in the Sahara. Major fields of natural gas are exploited in Algeria and Egypt, and minor fields exist in Libya and Tunisia.</p>

<p>As a result of geologic and oil prospecting, vast underground reserves of water have also been found in a number of sedimentary basins, mainly within sandstone formations. Some recoverable water is also present in surface sand formations.</p>

<p><strong>Economic development of the deser</strong>t, however, offers enormous difficulties and has not changed the traditional Sahara. Oil and ore extraction have brought modern technology and improved communications to scattered locations, but such activities provide limited opportunities for local employment. Although oil revenues offer the means for desert development, the more immediate and attractive returns possible in inhabited coastal regions tend to take priority. The underground water offers possibilities for major developments in both agriculture and industry; but exploitation on a large scale would be expensive. Heavy exploitation would also result in progressive depletion, and hydrological changes might increase the threat of locust plagues, as locusts congregate into swarms when food supplies are restricted, multiply, and then occupy larger areas when conditions improve.</p>

<p>The desert peoples have benefited little from mineral exploitation&mdash;perhaps indeed the reverse. The decline in nomadic pastoralism, started by pacification, has been accelerated by changing economic conditions and official settlement policies (for nomads are administratively inconvenient). Widespread environmental degradation further encourages the drift of nomads to oases and towns, with resultant overcrowding and poverty. High wages in the oil fields attract labour but disrupt traditional life, and the jobs are relatively few and impermanent. Of the traditional desert products&mdash;animal skins and wool, surplus fruits, salt&mdash;only dates (particularly the daglet nour of the northern oases) retain much commercial importance. Industrial occupations to relieve growing unemployment have as yet made little progress.</p>

<p>In the early 21st century, renewable energy projects, particularly those focusing on wind- and solar-generated power, continued to be under development and had the potential to provide enough energy to allow countries in the region to manufacture and process goods locally, which would be a boon to their economies. However, renewable energy projects were hampered by factors such as the harsh desert climate, a lack of water for operating and maintaining equipment, the overall exorbitant costs involved in such an undertaking, and security issues. Tourism has grown considerably since the mid-20th century, although the difficulties of transport and of providing accommodations have largely limited it to the Sahara&rsquo;s fringes.</p>

<h2><strong>TRANSPORTATION</strong></h2>

<p>Traditionally, travel in the Sahara was by camel caravan and was slow, arduous, and dangerous. To the hazards of losing the way, excessive heat, stifling sandstorms, and death by starvation&mdash;or more probably thirst&mdash;were added those of attack by raiders. Despite all this, trans-Saharan trade along caravan routes linking oases has persisted from very early times. Most of the principal routes were west of the Tibesti Mountains and tended to shift somewhat over time, although the easternmost of these&mdash;which ran northward from Lake Chad to Bilma (now in Niger) and through the Fezzan region to Tripoli&mdash;was used continuously through the centuries. East of the Tibesti Mountains oases are few, but the darb al-arba?in (&ldquo;road of the forty [days]&rdquo;), west of the Nile, was a former slave route. Gold, ivory, slaves, and salt were major items of trade in the earlier days, but today camel caravans have almost ceased, except for a residual trade in salt from Mount Ijill, Bilma, and Taoudenni, Mali. The main routes remain in use, however, by specially equipped motor trucks, often traveling in convoys. Modern highways have been extended farther along the ancient trade routes into the desert. Off of the main routes a network of recognized tracks are motorable, with care; but in the open desert four-wheel drive is virtually essential, with at least two vehicles, ample spares, and large emergency supplies of fuel, food, and water&mdash;particularly in summer, when special regulations apply to all travelers. In large areas maps are inadequate, and navigational methods may be necessary.</p>

<p>To supplement ground travel, numerous international air services cross the Sahara on scheduled flights, while local services link the main inhabited centres to one another. Development of railways has been limited.</p>
', N'Airway,Train,Buses', N'1', N'Mar  6 2023  4:49PM')
INSERT [dbo].[Place_Details_Table] ([id], [continentid], [countryid], [cid], [sid], [did], [cityname], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (18, 4, 10, 11, 0, 0, N'Ushuaia', N'Patagonia', N'Patagonia 1.jpg', N'Patagonia 2.jpg', N'Patagonia 3.jpg', N'Patagonia 4.jpg', N'Patagonia 5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2299.3911500157346!2d-68.32229247497948!3d-54.808242934953775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xbc4c23228a2d475b%3A0x8e34a3d5e5b0a213!2sPatagonia%2C%20Ushuaia%2C%20Tierra%20del%20Fuego%2C%20Argentina!5e0!3m2!1sen!2sin!4v1679681399232!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<p><strong>Patagonia</strong>, semiarid scrub&nbsp;<a href="https://www.britannica.com/science/plateau-landform">plateau</a>&nbsp;that covers nearly all of the southern portion of mainland&nbsp;<a href="https://www.britannica.com/place/Argentina">Argentina</a>. With an area of about 260,000 square miles (673,000 square kilometres), it&nbsp;<a href="https://www.merriam-webster.com/dictionary/constitutes">constitutes</a>&nbsp;a vast area of&nbsp;<a href="https://www.britannica.com/science/steppe-grassland">steppe</a>&nbsp;and&nbsp;<a href="https://www.britannica.com/science/desert">desert</a>&nbsp;that extends south from&nbsp;<a href="https://www.britannica.com/science/latitude">latitude</a>&nbsp;37&deg; to 51&deg; S. It is bounded, approximately, by the Patagonian&nbsp;<a href="https://www.britannica.com/place/Andes-Mountains">Andes</a>&nbsp;to the west, the Colorado River to the north (except where the&nbsp;<a href="https://www.britannica.com/science/region-geography">region</a>&nbsp;extends north of the river into the Andean borderlands), the&nbsp;<a href="https://www.britannica.com/place/Atlantic-Ocean">Atlantic Ocean</a>&nbsp;to the east, and the&nbsp;<a href="https://www.britannica.com/place/Strait-of-Magellan">Strait of Magellan</a>&nbsp;to the south; the region south of the strait&mdash;<a href="https://www.britannica.com/place/Tierra-del-Fuego-archipelago-South-America">Tierra del Fuego</a>, which is divided between Argentina and Chile&mdash;also is often included in Patagonia.</p>

<p>The name Patagonia is said to be derived from Patagones, as the&nbsp;<a href="https://www.britannica.com/topic/Tehuelche-people">Tehuelche</a>&nbsp;Indians, the region&rsquo;s original inhabitants, were called by 16th-century Spanish explorers. According to one account,&nbsp;<a href="https://www.britannica.com/biography/Ferdinand-Magellan">Ferdinand Magellan</a>, the Portuguese navigator who led the first European&nbsp;<a href="https://www.britannica.com/dictionary/expedition">expedition</a>&nbsp;into the area, coined that name because the appearance of the Tehuelche reminded him of Patagon, a dog-headed monster in the 16th-century Spanish romance&nbsp;<em>Amad&iacute;s of Gaul</em>.</p>

<h2>Physical features</h2>

<h2>Physiography</h2>

<p><a href="https://cdn.britannica.com/01/3401-050-AA422539/Patagonian-Desert-mix-tableland-desert-semidesert-Andes.jpg"><img alt="Patagonian Desert" src="https://cdn.britannica.com/01/3401-050-AA422539/Patagonian-Desert-mix-tableland-desert-semidesert-Andes.jpg?w=300" /></a></p>

<p><a href="https://cdn.britannica.com/01/3401-050-AA422539/Patagonian-Desert-mix-tableland-desert-semidesert-Andes.jpg">Patagonian Desert</a></p>

<p>Desert and semidesert cover the Patagonian tableland that extends from the Andes to the Atlantic Ocean. The general aspect of this tableland is one of vast steppelike (i.e., virtually treeless) plains, rising in terrace fashion from high coastal cliffs to the foot of the Andes; but the true aspect of the plains is by no means as simple as such a general description would imply. The land along the&nbsp;<a href="https://www.britannica.com/place/Negro-River-Argentina">Negro River</a>&nbsp;rises in a series of fairly level terraces from about 300 feet (90 metres) at the coast to about 1,300 feet at the junction of the Limay and&nbsp;<a href="https://www.britannica.com/place/Neuquen-province-Argentina">Neuqu&eacute;n</a>&nbsp;rivers and 3,000 feet at the base of the Andes. The tableland region rises to an altitude of 5,000 feet.</p>

<p>South of the Negro River, the plains are much more irregular. Volcanic eruptions occurred in this area until fairly recent times, and basaltic sheets covered the tableland east of Lakes&nbsp;<a href="https://www.britannica.com/place/Buenos-Aires">Buenos Aires</a>&nbsp;and Pueyrred&oacute;n. Near the Chico and Santa Cruz rivers, the plains have spread to within about 50 miles (80 kilometres) of the coast and reach almost to the coast south of the Coig and Gallegos rivers. In places, basaltic massifs (mountain masses) are the&nbsp;<a href="https://www.merriam-webster.com/dictionary/salient">salient</a>&nbsp;features of the landscape.</p>

<p>The coast consists largely of high cliffs separated from the sea by a narrow coastal plain. Thus, the plateaus are formed of horizontal strata, some of&nbsp;<a href="https://www.britannica.com/science/sedimentary-rock">sedimentary rocks</a>&nbsp;and others of&nbsp;<a href="https://www.britannica.com/science/lava-volcanic-ejecta">lava</a>&nbsp;flows. Areas of hilly land, composed of resistant crystalline rocks, stand above the plateaus.</p>

<h2>Drainage and soils</h2>

<p>The deep, wide valleys bordered by high cliffs that cut the tablelands from west to east are all beds of former&nbsp;<a href="https://www.britannica.com/science/river">rivers</a>&nbsp;that flowed from the Andes to the Atlantic; only a few now carry permanent streams of Andean origin (the&nbsp;<a href="https://www.britannica.com/place/Colorado-River-Argentina">Colorado</a>, Negro,&nbsp;<a href="https://www.britannica.com/place/Chubut-River">Chubut</a>,&nbsp;Senguerr,&nbsp;Chico, and&nbsp;<a href="https://www.britannica.com/place/Santa-Cruz-River">Santa Cruz rivers</a>). Most of the valleys either have&nbsp;<a href="https://www.merriam-webster.com/dictionary/intermittent">intermittent</a>&nbsp;streams&mdash;such as the&nbsp;Shehuen,&nbsp;Coig, and&nbsp;Gallegos rivers, which have their sources east of the Andes&mdash;or contain streams like the&nbsp;<a href="https://www.britannica.com/place/Deseado-River">Deseado River</a>, which completely dry up along all or part of their courses and are so altered by the combined effect of&nbsp;<a href="https://www.britannica.com/science/wind">wind</a>&nbsp;and&nbsp;<a href="https://www.britannica.com/science/sand">sand</a>&nbsp;as to afford little surface evidence of the rivers that once flowed in them. Still other streams, such as the&nbsp;Perdido, terminate in basins containing salt flats or salt ponds. The&nbsp;<a href="https://www.britannica.com/place/Canyon-Texas">canyon</a>&nbsp;bottoms consist mostly of deep beds of coarse alluvial sands and&nbsp;<a href="https://www.britannica.com/science/gravel">gravels</a>, which act as&nbsp;<a href="https://www.britannica.com/science/groundwater">groundwater</a>&nbsp;<a href="https://www.britannica.com/dictionary/reservoirs">reservoirs</a>&nbsp;to supplement the scanty surface water.</p>

<p><a href="https://premium.britannica.com/premium-membership/?utm_source=premium&amp;utm_medium=inline&amp;utm_campaign=variant-1"><img src="https://assets.codepen.io/7072962/THISTLE+BLUE+DARK.png" /></a></p>

<p>Get a Britannica Premium subscription and gain access to exclusive content.</p>

<p><a href="https://premium.britannica.com/premium-membership/?utm_source=premium&amp;utm_medium=inline&amp;utm_campaign=variant-1">Subscribe Now</a></p>

<p><a href="https://cdn.britannica.com/74/83874-050-F2F583CE/parts-Argentina-one-Perito-Moreno-glacier-Patagonia.jpg"><img alt="Perito Moreno glacier" src="https://cdn.britannica.com/74/83874-050-F2F583CE/parts-Argentina-one-Perito-Moreno-glacier-Patagonia.jpg?w=300" /></a></p>

<p><a href="https://cdn.britannica.com/74/83874-050-F2F583CE/parts-Argentina-one-Perito-Moreno-glacier-Patagonia.jpg">Perito Moreno glacier</a></p>

<p>The line of contact between the Patagonian tableland and the Patagonian Andes is marked by a chain of&nbsp;<a href="https://www.britannica.com/science/lake">lakes</a>&nbsp;found in&nbsp;<a href="https://www.britannica.com/science/glacier">glacier</a>&nbsp;troughs or&nbsp;<a href="https://www.britannica.com/science/cirque">cirques</a>&nbsp;that are dammed downslope by&nbsp;<a href="https://www.britannica.com/science/moraine">moraines</a>&nbsp;and other glacial landforms consisting of unconsolidated and unsorted&nbsp;<a href="https://www.britannica.com/science/till">till</a>. From&nbsp;<a href="https://www.britannica.com/place/Lake-Nahuel-Huapi">Lake Nahuel Huap&iacute;</a>&nbsp;northward, the lakes&mdash;except for Lake L&aacute;car&mdash;drain to the Atlantic. South of Lake Nahuel Huap&iacute;, however, all the lakes except Viedma and Argentino drain to the Pacific through deep canyons that have been cut from west to east across the&nbsp;<a href="https://www.britannica.com/science/cordillera">cordillera</a>&nbsp;by headward erosion.</p>

<p>The best&nbsp;<a href="https://www.britannica.com/science/soil">soils</a>&nbsp;in Patagonia are found north of the Negro River, especially where they are formed from&nbsp;<a href="https://www.britannica.com/science/extrusive-rock">volcanic rock</a>. Proceeding south, the soils become increasingly arid and stony, and broad expanses of stream-rounded pebbles, called&nbsp;<em><a href="https://www.britannica.com/science/grava-patagonica">grava patag&oacute;nica</a></em>, often are found on level ground.</p>

<h2>Climate</h2>

<p>Patagonia is influenced by the South Pacific westerly air current, which brings humid winds from the&nbsp;<a href="https://www.britannica.com/science/ocean">ocean</a>&nbsp;to the&nbsp;<a href="https://www.britannica.com/science/continent">continent</a>. These winds, however, lose their&nbsp;<a href="https://www.britannica.com/science/humidity">humidity</a>&nbsp;(through cooling and&nbsp;<a href="https://www.britannica.com/science/condensation-phase-change">condensation</a>) as they blow over the west coast of&nbsp;<a href="https://www.britannica.com/place/South-America">South America</a>&nbsp;and over the Andes, and they are dry when they reach Patagonia. Patagonia can be divided into two main climatic zones&mdash;northern and southern&mdash;by a line drawn from the Andes at about latitude 39&deg; S to a point just south of the Vald&eacute;s Peninsula, at about 43&deg; S.</p>

<p>The northern zone is semiarid, with annual mean temperatures between about 54 and 68 &deg;F (12 and 20 &deg;C); recorded maximum temperatures vary from about 106 to 113 &deg;F (41 to 45 &deg;C), and minimum temperatures from 12 to 23 &deg;F (&minus;11 to &minus;5 &deg;C). Sunshine, minimal along the coast, is most plentiful inland to the northwest. Annual rainfall amounts vary from about 3.5 to 17 inches (90 to 430 millimetres). The&nbsp;<a href="https://www.britannica.com/dictionary/prevailing">prevailing</a>&nbsp;winds, from the southwest, are dry, cold, and strong.</p>

<p>The&nbsp;<a href="https://www.britannica.com/science/climate-meteorology">climate</a>&nbsp;of the southern zone is sharply distinct from the humid conditions of the Andean cordillera to the west. In the northern part of the zone, Atlantic influences are practically nonexistent&mdash;probably because of the relatively high elevations of the coastal region, which reach 900 to 1,800 feet around San Jorge Gulf&mdash;although cold Pacific winds from the west and the cold&nbsp;<a href="https://www.britannica.com/place/Falkland-Current">Falkland Current</a>&nbsp;off the Atlantic coast do have some effect. In the southern part, which becomes increasingly peninsular with higher latitude, the Atlantic exerts some influence. The zone has a cold, dry climate, with temperatures that are higher along the coast than they are inland and with strong west winds. Mean annual temperatures range from 40 to 55 &deg;F (4 to 13 &deg;C), with the maximum temperature reaching about 93 &deg;F (34 &deg;C) and minimum temperatures between 16 and &minus;27 &deg;F (&minus;9 and &minus;33 &deg;C). Heavy&nbsp;<a href="https://www.britannica.com/science/snow-weather">snows</a>&nbsp;fall in winter, and&nbsp;<a href="https://www.britannica.com/science/frost-meteorology">frosts</a>&nbsp;can occur throughout the year; spring and autumn provide only short&nbsp;<a href="https://www.britannica.com/dictionary/transitions">transitions</a>&nbsp;between summer and winter. Average annual&nbsp;<a href="https://www.britannica.com/science/precipitation">precipitation</a>&nbsp;(rain and snow) ranges between about 5 and 8 inches, though as much as 19 inches has been recorded. Less precipitation falls in the arid central areas, which also receive more sunshine than the coast or the Andean cordillera.</p>

<h1>Plant life</h1>

<p>The long, narrow strip of Patagonia&rsquo;s western border supports vegetation like that found in the&nbsp;<a href="https://www.merriam-webster.com/dictionary/adjacent">adjacent</a>&nbsp;cordillera, primarily&nbsp;<a href="https://www.britannica.com/science/deciduous-forest">deciduous</a>&nbsp;and&nbsp;<a href="https://www.britannica.com/science/coniferous-forest">coniferous forests</a>. The vast tableland&nbsp;<a href="https://www.britannica.com/science/region-geography">region</a>&nbsp;is divided into northern and southern zones, each of which has its own characteristic vegetation.</p>

<p>The larger northern&nbsp;<a href="https://www.britannica.com/science/steppe-grassland">steppe</a>&nbsp;zone extends south to about&nbsp;<a href="https://www.britannica.com/science/latitude">latitude</a>&nbsp;46&deg; S. In the north is found&nbsp;<em>monte</em>&nbsp;vegetation&mdash;<a href="https://www.britannica.com/plant/xerophyte">xerophytic</a>&nbsp;(drought-tolerant)&nbsp;<a href="https://www.britannica.com/science/scrubland">scrub</a>&nbsp;forests&mdash;which gives way farther south to open bushland of widely spaced thickets between about 3 and 7 feet high.&nbsp;<a href="https://www.britannica.com/plant/grass">Grasses</a>&nbsp;flourish in the sandy areas, while halophytic (salt-tolerant) grasses and shrubs predominate in the salt flats. The southern, more arid, zone extends south of 46&deg; S. The vegetation is low and considerably more&nbsp;<a href="https://www.britannica.com/dictionary/sparse">sparse</a>&nbsp;and needs almost no water.</p>

<h2>Animal life</h2>

<p><a href="https://cdn.britannica.com/61/7161-004-CA225413/cavy.jpg"><img alt="Patagonian cavy" src="https://cdn.britannica.com/61/7161-004-CA225413/cavy.jpg?w=300" /></a></p>

<p><a href="https://cdn.britannica.com/61/7161-004-CA225413/cavy.jpg">Patagonian cavy</a></p>

<p><a href="https://cdn.britannica.com/95/3895-050-73803876/Herd-guanacos-Patagonia-Argentina-Valdes-Peninsula.jpg"><img alt="guanacos" src="https://cdn.britannica.com/95/3895-050-73803876/Herd-guanacos-Patagonia-Argentina-Valdes-Peninsula.jpg?w=300" /></a></p>

<p><a href="https://cdn.britannica.com/95/3895-050-73803876/Herd-guanacos-Patagonia-Argentina-Valdes-Peninsula.jpg">guanacos</a></p>

<p>Among the Patagonian&nbsp;<a href="https://www.britannica.com/animal/bird-animal">birds</a>&nbsp;are&nbsp;<a href="https://www.britannica.com/animal/heron">herons</a>&nbsp;and other waders; predators such as the shielded eagle, the&nbsp;<a href="https://www.britannica.com/animal/sparrowhawk">sparrow hawk</a>, and the chimango (or beetle eater); and the almost extinct&nbsp;<a href="https://www.britannica.com/animal/rhea-bird-group">rhea</a>&nbsp;(nandu). The coast harbours the nesting grounds of the&nbsp;<a href="https://www.britannica.com/animal/Magellanic-penguin">Magellanic penguin</a>&nbsp;(<em>Spheniscus magellanicus</em>).&nbsp;<a href="https://www.britannica.com/animal/bat-mammal">Bat</a>&nbsp;species include a long-eared variety.&nbsp;<a href="https://www.britannica.com/animal/armadillo-mammal">Armadillos</a>,&nbsp;<a href="https://www.britannica.com/animal/pichi">pichis</a>&nbsp;(small armadillos),&nbsp;<a href="https://www.britannica.com/animal/fox-mammal">foxes</a>,&nbsp;<a href="https://www.britannica.com/animal/ferret">ferrets</a>,&nbsp;<a href="https://www.britannica.com/animal/skunk">skunks</a>, mountain cats, and&nbsp;<a href="https://www.britannica.com/animal/puma-mammal-species">pumas</a>&nbsp;are to be found, as are the Patagonian&nbsp;<a href="https://www.britannica.com/animal/cavy">cavy</a>&nbsp;(or mara) and different kinds of burrowing&nbsp;<a href="https://www.britannica.com/animal/rodent">rodents</a>, such as the vizcacha and the&nbsp;<a href="https://www.britannica.com/animal/tuco-tuco">tuco-tuco</a>. Of the larger mammals, the most noteworthy is the&nbsp;<a href="https://www.britannica.com/animal/guanaco">guanaco</a>, a camelid, which has been hunted almost to&nbsp;<a href="https://www.britannica.com/science/extinction-biology">extinction</a>.</p>

<p>Patagonia has a number of species of poisonous&nbsp;<a href="https://www.britannica.com/animal/snake">snakes</a>, as well as&nbsp;<a href="https://www.britannica.com/animal/tortoise">tortoises</a>&nbsp;and a variety of&nbsp;<a href="https://www.britannica.com/animal/lizard">lizards</a>. Among the&nbsp;<a href="https://www.britannica.com/animal/arthropod">arthropods</a>&nbsp;and&nbsp;<a href="https://www.britannica.com/animal/arachnid">arachnids</a>&nbsp;are vinchucas (winged bugs), bloodsucker insects (transmitters of American&nbsp;<a href="https://www.britannica.com/science/trypanosomiasis">trypanosomiasis</a>, or&nbsp;<a href="https://www.britannica.com/science/Chagas-disease">Chagas disease</a>), scorpions, and several kinds of spiders, including one&nbsp;<a href="https://www.merriam-webster.com/dictionary/endemic">endemic</a>&nbsp;genus called&nbsp;<em>Mecysmanchenius</em>. The rivers and lakes are naturally poor in&nbsp;<a href="https://www.britannica.com/animal/fish">fish</a>, but some have been stocked with&nbsp;<a href="https://www.britannica.com/animal/salmon">salmon</a>&nbsp;and&nbsp;<a href="https://www.britannica.com/animal/trout">trout</a>. Marine fish, however, as well as&nbsp;<a href="https://www.britannica.com/animal/crustacean">crustaceans</a>&nbsp;and&nbsp;<a href="https://www.britannica.com/animal/mollusk">mollusks</a>&nbsp;are plentiful off the coast.</p>

<p>The Vald&eacute;s Peninsula, located on the Atlantic coast of Patagonia, was designated a UNESCO&nbsp;<a href="https://www.britannica.com/topic/World-Heritage-site">World Heritage site</a>&nbsp;in 1999. Its waters are home to numerous marine mammals such as&nbsp;<a href="https://www.britannica.com/animal/whale">whales</a>,&nbsp;<a href="https://www.britannica.com/animal/elephant-seal">elephant seals</a>, and&nbsp;<a href="https://www.britannica.com/animal/sea-lion">sea lions</a>. In addition, rheas,&nbsp;<a href="https://www.britannica.com/animal/mara-rodent">maras</a>, and guanacos are prominent on the peninsula.</p>

<h2>Economy</h2>

<h2>Resource exploitation</h2>

<p>The&nbsp;<a href="https://www.britannica.com/science/petroleum">oil</a>&nbsp;fields around&nbsp;<a href="https://www.britannica.com/place/Comodoro-Rivadavia">Comodoro Rivadavia</a>&nbsp;and near Neuqu&eacute;n contain most of Argentina&rsquo;s reserves, and&nbsp;<a href="https://www.britannica.com/science/natural-gas">natural gas</a>&nbsp;also has been found in these two areas; these are Patagonia&rsquo;s most valuable&nbsp;<a href="https://www.britannica.com/science/mineral-chemical-compound">mineral</a>&nbsp;<a href="https://www.britannica.com/dictionary/assets">assets</a>. In addition, deposits of&nbsp;<a href="https://www.britannica.com/science/iron-chemical-element">iron</a>&nbsp;ore are worked at Sierra Grande, and some&nbsp;<a href="https://www.britannica.com/science/coal-fossil-fuel">coal</a>&nbsp;is mined in the south near R&iacute;o Turbino. Other mineral deposits include&nbsp;<a href="https://www.britannica.com/science/manganese">manganese</a>,&nbsp;<a href="https://www.britannica.com/science/tungsten-chemical-element">tungsten</a>&nbsp;(wolframite),&nbsp;<a href="https://www.britannica.com/science/fluorite">fluorite</a>&nbsp;(calcium fluoride),&nbsp;<a href="https://www.britannica.com/science/lead-chemical-element">lead</a>, heavy spar (<a href="https://www.britannica.com/science/barite">barite</a>, the principal&nbsp;<a href="https://www.britannica.com/science/ore-mining">ore</a>&nbsp;of&nbsp;<a href="https://www.britannica.com/science/barium">barium</a>),&nbsp;<a href="https://www.britannica.com/science/copper">copper</a>&nbsp;and&nbsp;<a href="https://www.britannica.com/science/gold-chemical-element">gold</a>,&nbsp;<a href="https://www.britannica.com/science/vanadium">vanadium</a>,&nbsp;<a href="https://www.britannica.com/science/zinc">zinc</a>-lead ore, and&nbsp;<a href="https://www.britannica.com/science/uranium">uranium</a>. There also are deposits of&nbsp;<a href="https://www.britannica.com/science/kaolin">kaolin</a>&nbsp;and&nbsp;<a href="https://www.britannica.com/science/gypsum">gypsum</a>.</p>

<p><a href="https://cdn.britannica.com/54/75954-050-A9B93F84/Gauchos-cattle-region-Patagonia-Argentina.jpg"><img alt="Patagonia: cattle drive" src="https://cdn.britannica.com/54/75954-050-A9B93F84/Gauchos-cattle-region-Patagonia-Argentina.jpg?w=300" /></a></p>

<p><a href="https://cdn.britannica.com/54/75954-050-A9B93F84/Gauchos-cattle-region-Patagonia-Argentina.jpg">Patagonia: cattle drive</a></p>

<p>Dams have been constructed on the&nbsp;<a href="https://www.britannica.com/place/Neuquen-River">Neuqu&eacute;n</a>&nbsp;and&nbsp;<a href="https://www.britannica.com/place/Limay">Limay</a>&nbsp;rivers in order to exploit the hydroelectric potential of the western portion of Patagonia. These projects also have created large reservoirs that have made extensive irrigated agriculture possible in the Negro River region. Among the major crops grown are&nbsp;<a href="https://www.britannica.com/plant/peach">peaches</a>,&nbsp;<a href="https://www.britannica.com/plant/plum">plums</a>,&nbsp;<a href="https://www.britannica.com/plant/almond">almonds</a>,&nbsp;<a href="https://www.britannica.com/plant/apple-fruit-and-tree">apples</a>,&nbsp;<a href="https://www.britannica.com/plant/pear">pears</a>,&nbsp;<a href="https://www.britannica.com/plant/olive-plant">olives</a>,&nbsp;<a href="https://www.britannica.com/plant/grape">grapes</a>,&nbsp;<a href="https://www.britannica.com/plant/hop">hops</a>, dates,&nbsp;<a href="https://www.britannica.com/topic/vegetable">vegetables</a>, aromatic plants, and&nbsp;<a href="https://www.britannica.com/plant/alfalfa">alfalfa</a>.&nbsp;<a href="https://www.britannica.com/animal/domesticated-sheep">Sheep</a>&nbsp;raising is an important economic activity in Patagonia, although in the early 21st century overgrazing was a growing concern.</p>

<p><a href="https://cdn.britannica.com/62/95062-050-8FF9186F/Perito-Moreno-Glacier-Argentina-Los-Glaciares-National.jpg"><img alt="Perito Moreno Glacier, Los Glaciares National Park" src="https://cdn.britannica.com/62/95062-050-8FF9186F/Perito-Moreno-Glacier-Argentina-Los-Glaciares-National.jpg?w=300" /></a></p>

<p><a href="https://cdn.britannica.com/62/95062-050-8FF9186F/Perito-Moreno-Glacier-Argentina-Los-Glaciares-National.jpg">Perito Moreno Glacier, Los Glaciares National Park</a></p>

<p><a href="https://www.britannica.com/topic/tourism">Tourism</a>&nbsp;has become important since the end of&nbsp;<a href="https://www.britannica.com/event/World-War-II">World War II</a>, as wildlife reserves and the national parks located along the Patagonian Andes have brought in growing numbers of those seeking recreation. There also has been an increase in scientific study (e.g.,&nbsp;<a href="https://www.britannica.com/science/glacier">glacier</a>&nbsp;research) and in detailed mapping and surveying for mineral exploitation.</p>

<h2>Transportation</h2>

<p><a href="https://www.britannica.com/place/Comodoro-Rivadavia">Comodoro Rivadavia</a>&nbsp;is connected to&nbsp;<a href="https://www.britannica.com/place/Buenos-Aires">Buenos Aires</a>&nbsp;by a&nbsp;<a href="https://www.britannica.com/technology/road">road</a>&nbsp;that runs more than 1,860 miles through the Patagonian coastal region. The roads farther inland, however, are few and of poor quality. Several railroads&nbsp;<a href="https://www.merriam-webster.com/dictionary/traverse">traverse</a>&nbsp;the region from east to west; two that reach the foothills of the Andes are connected to Buenos Aires. Air services are focused chiefly on the towns of the coastal region. The chief ports are Rawson, Deseado, and&nbsp;<a href="https://www.britannica.com/place/Rio-de-Janeiro-Brazil">R&iacute;o</a>&nbsp;Gallegos;&nbsp;<a href="https://www.britannica.com/place/San-Antonio-Texas">San Antonio</a>&nbsp;Oeste and Puerto Madryn, both on protected bays and developed for international traffic; and Comodoro Rivadavia, an outlet for&nbsp;<a href="https://www.britannica.com/science/petroleum">petroleum</a>&nbsp;products.</p>

<h2>History</h2>

<p>The original inhabitants of Patagonia consisted mostly of&nbsp;<a href="https://www.britannica.com/topic/Tehuelche-people">Tehuelche</a>&nbsp;Indians, who are thought to have come from&nbsp;<a href="https://www.britannica.com/place/Tierra-del-Fuego-archipelago-South-America">Tierra del Fuego</a>. The most ancient&nbsp;<a href="https://www.merriam-webster.com/dictionary/artifacts">artifacts</a>, such as harpoons, found in the caves along the&nbsp;<a href="https://www.britannica.com/place/Strait-of-Magellan">Strait of Magellan&nbsp;</a>suggest that these people were moving up the mainland coast about 5,100 years ago. The&nbsp;<a href="https://www.merriam-webster.com/dictionary/robust">robust</a>&nbsp;and tall Tehuelche were divided into northern and southern groups, each with its own&nbsp;<a href="https://www.merriam-webster.com/dictionary/dialect">dialect</a>.&nbsp;<a href="https://www.britannica.com/topic/history-of-Spain">Spanish</a>&nbsp;<a href="https://www.britannica.com/topic/European-exploration">explorers</a>&nbsp;found the Tehuelche living as nomadic hunters of guanaco and rhea. The surviving descendants of these people are few in number, nearly all of them having been&nbsp;<a href="https://www.merriam-webster.com/dictionary/assimilated">assimilated</a>&nbsp;into Spanish&nbsp;<a href="https://www.merriam-webster.com/dictionary/culture">culture</a>.</p>

<p>Toward the end of the 16th century, the Spaniards attempted to colonize the Patagonian coastal region to clear it of English pirates, but a&nbsp;<a href="https://www.britannica.com/topic/Jesuits">Jesuit</a>&nbsp;settlement on San Mat&iacute;as Gulf came to nothing. In 1778 the English tried to settle on the same bay, and the Spaniards reacted by founding Patagonia&rsquo;s first two towns, San Jos&eacute; and Viedma (originally named Nuestra Se&ntilde;ora del Carmen). A Spanish settlement at Puerto Deseado lasted from 1780 to 1807, but three years later this region again was devoid of European settlement.</p>

<p>After&nbsp;<a href="https://www.britannica.com/place/Argentina">Argentina</a>&nbsp;became independent, Patagonia largely was left alone, until it was cleared of Indian occupation in the Conquest of the Desert campaigns of the 1870s. An attempt was then made to settle the region and to make it part of the national state.&nbsp;<a href="https://www.britannica.com/topic/immigration">Immigration</a>, however, was not massive, though people came for various reasons: some to exploit the economic resources and others (e.g., the Welsh) to enjoy religious or political liberties. The mineral wealth of the region in particular attracted immigrants from&nbsp;<a href="https://www.britannica.com/place/Chile">Chile</a>, and Chileans seeking temporary work rather than a fixed domicile now&nbsp;<a href="https://www.merriam-webster.com/dictionary/constitute">constitute</a>&nbsp;the largest proportion of the population. Apart from major concentrations at Comodoro Rivadavia and in the towns strung out along the upper valley of the&nbsp;<a href="https://www.britannica.com/place/Negro-River-Argentina">Negro River</a>, Patagonia&rsquo;s sparse population is mostly rural.</p>
', N'Airway,Train,Buses', N'1', N'Mar 25 2023  9:12AM')
INSERT [dbo].[Place_Details_Table] ([id], [continentid], [countryid], [cid], [sid], [did], [cityname], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (6, 1, 99, 1, 29, 164, N'Aravalli range', N'Mount Abu', N'mount_abu3.jpg', N'mount_abu2.jpg', N'mount_abu1.jpg', N'mount_abu4.jpg', N'mount_abu5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29023.042385963603!2d72.70325693914512!3d24.59332696024694!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395d2a7b9c58c24f%3A0x41ec48d89a772ec9!2sMount%20Abu%2C%20Rajasthan%20307501!5e0!3m2!1sen!2sin!4v1677492525108!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<h1><strong>MOUNT ABU</strong></h1>

<p><big>PREFERRED LEISURE DESTINATION OF MANY</big></p>

<p>Serving as a source of comfort from the sultry dessert climate of Rajasthan, Mount Abu, the state&rsquo;s only hill station stands at a height of 1722 metres above sea level, and is embraced by lush green hills of the Aravalli range.</p>

<p>Studded with a colourful mix of rustic abodes of tribal communities and posh houses inclusive of British style bungalows and royal holiday lodges, Mount Abu appears to be no less than a wonder in this dessert state. Covered in vast stretches of green forests, serene lakes, and effusive waterfalls, this region allows you to revel amidst panoramic vistas, all year round.</p>

<p>Other than its scenic beauty, Mount Abu is also popular as a seat of religious importance for Jains. The structural architectural wonders in Mount Abu, among other places to visit, have been drawing history buffs and architecture enthusiasts from different corners of the world.</p>

<p>All most all tour packages, including those by Rajasthan Tourism have Mount Abu as one of the most significant destinations to be covered.</p>

<p><strong>A little into the background</strong></p>

<p>Myths and Legends - The history of Mount Abu can be traced back to the Puranas. Known as &ldquo;Arbudaranya&rdquo; or &ldquo;the forest of Arbhuda&rdquo; in the Puranic Age, Mount Abu is described to have served as a retreat for Sage Vashistha, following his spur with Sage Vishwamitra.</p>

<p>A popular mythology story associated with Mount Abu mentions a serpent named Arbhuda, who had saved the life of Nandi, Lord Shiva&rsquo;s mount, here. The name &ldquo;Mount Abu&rdquo; is a diminutive of its original name which was kept after Arbhuda.</p>

<p>Another legend suggests that Sage Vashistha had performed a yajna at the peak of this very mountain range, seeking provision for the defence of righteousness on earth, from the Gods. His prayer was answered by a youth who sprang out of the yajna fire, known to be the first of the Agnivamsha Rajputs.</p>

<p><strong>History of Mount Abu</strong></p>

<p>Arbhuda Mountains or Mount Abu is also popular for having been the home of Gurjaras. Multiple inscriptions including Dhanpala&rsquo;s &ldquo;Tilakmanajari&rdquo; lay stress on the association of this place with that of Gurjaras.</p>
', N'Airway,Train,Buses', N'1', N'Feb 27 2023  3:45PM')
INSERT [dbo].[Place_Details_Table] ([id], [continentid], [countryid], [cid], [sid], [did], [cityname], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (8, 3, 38, 7, 0, 0, N'Alberta', N'Banff National Park', N'Banff National Park1.jpg', N'Banff National Park2.jpg', N'Banff National Park3.jpg', N'Banff National Park4.jpg', N'Banff National Park5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d320228.5217512421!2d-115.51867800000001!3d51.167747!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5370ca45910c4afd%3A0xcaafaebedaac9463!2sBanff%2C%20AB!5e0!3m2!1sen!2sca!4v1678092004487!5m2!1sen!2sca" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<h2>Fast Facts</h2>

<p><strong>Location:</strong>&nbsp;Alberta<br />
<strong>Date established:</strong>&nbsp;1885<br />
<strong>Size:</strong>&nbsp;1,641,027 acres<br />
<strong>Annual visitors</strong>: 4 million<br />
<strong>Entrance fees:</strong>&nbsp;$9.80 per adult; 17 and under free</p>

<h2><strong>Why go and what to know</strong></h2>

<h2>&nbsp;</h2>

<p>Simplicity marks the origin of&nbsp;<a href="https://banff.ca/" target="_blank">Banff</a>&mdash;Canada&rsquo;s first national park. In 1883, on the slopes of the Canadian Rocky Mountains, three railway workers discovered a natural hot spring, and from there the park was born. Nowadays, Banff is one of the world&rsquo;s premier destinations, spanning a region of unparalleled majestic mountain scenery. Every year, millions of visitors make the pilgrimage to Banff to take in its stunning views and arsenal of activities. (<a href="https://www.nationalgeographic.com/travel/article/alberta-rocky-mountains-epic-road-trip" target="_blank">Take a majestic mountain drive through Alberta.</a>)</p>

<p><strong>Cave and Basin Hot Springs&nbsp;</strong>is now a national historic site that offers a high-definition movie, living history activities, a ranger-led&nbsp;<strong>biodiversity experience&nbsp;</strong>in the surrounding marshlands, and an evening&nbsp;<strong>lantern tour</strong>. It&rsquo;s no longer possible to take a dip in the soothing waters, but just 10 minutes away is&nbsp;<strong>Banff Upper Hot Springs</strong>, a modern spa with outdoor pools, changing rooms, and a cafe&acute;.</p>

<p><strong>Banff village&nbsp;</strong>has evolved from a whistle-stop into a thriving year-round resort town with hotels, restaurants, art galleries, and outdoor adventure outfitters. Lodged inside a mock-Tudor building,&nbsp;<strong><a href="https://www.pc.gc.ca/en/pn-np/ab/banff/visit/installations-facilities" target="_blank">Banff National Park Visitor Centre</a>&nbsp;</strong>has everything you need to know about places, activities, road conditions, and weather in the park. (<a href="https://www.nationalgeographic.com/travel/article/best-trips-2017-banff-canada" target="_blank">Find beauty and peace in Canada&rsquo;s first national park.</a>)</p>

<p>Two blocks down the main street is the&nbsp;<strong><a href="https://www.pc.gc.ca/en/lhn-nhs/ab/banff" target="_blank">Banff Park Museum National Historic Site</a>,&nbsp;</strong>which doubles as a rustic architectural wonder and storehouse of Victorian-era zoological, botanical, and geological specimens. The nearby&nbsp;<strong><a href="https://www.whyte.org/" target="_blank">Whyte Museum of the Canadian Rockies</a></strong>&nbsp;specializes in regional art and architecture, including paintings, sculptures, photography, and heritage homes on display in the gardens.</p>

<p>&nbsp;</p>

<p>Outdoor recreation of one sort or another surrounds the village. Laid out in 1911, the public nine-hole&nbsp;<strong><a href="https://banffspringsgolfclub.com/" target="_blank">Banff Springs Golf Club</a>&nbsp;</strong>takes full advantage of its location in the Rockies with epic mountain views and fairways along Bow River. Along the river&rsquo;s north bank, the&nbsp;<strong><a href="https://www.tripadvisor.com/Attraction_Review-g154911-d3383594-Reviews-Banff_Legacy_Trail-Banff_Banff_National_Park_Alberta.html" target="_blank">Banff Legacy Trail</a>&nbsp;</strong>(16.65 miles) between Canmore town and Banff village is just one of the park&rsquo;s many scenic cycling and mountain biking routes.&nbsp;<strong>Bow River&nbsp;</strong>between Lake Louise and Canmore offers plenty of scope for fly-fishing, self-guided kayaking, and guided float trips of the type offered by&nbsp;<strong><a href="https://banffrafttours.com/" target="_blank">Rocky Mountain Raft Tours</a></strong>.</p>

<p>Towering high above the village,&nbsp;<strong>Mount Norquay&nbsp;</strong>provides skiing, snowboarding, and tubing in winter; hiking and biking trails; a&nbsp;<strong>via ferrata&nbsp;</strong>rock climbing route; and chairlift flightseeing in summer. Just 20 minutes outside town is&nbsp;<strong>Lake Minnewanka</strong>, a long fjord-like body of water with plenty of options to get wet, including swimming, kayaking, fishing, motor boating, or even scuba diving the ruins of a sunken village. One-hour scenic boat tours cruise the lake to&nbsp;<strong>Devil&rsquo;s Gap</strong>.</p>

<p><img alt="" src="https://i.natgeofe.com/n/34ddf1fa-80f7-4761-ab7e-1161d963520e/0000015e-2a5f-d466-a57e-badf606c0000_16x9.jpg?w=212.00000631809235&amp;h=119.3333368897438" /></p>

<p>1:48</p>

<p>EPIC WINTER ADVENTURES AWAIT IN THESE CANADIAN MOUNTAINS</p>

<p>Explore Alberta&rsquo;s Canadian Rocky Mountains with National Geographic Adventurer Mike Libecki. Skiing, ice climbing, and snowshoeing are just some of the amazing adventures you can go on! You will never run out of places to discover in this winter wonderland.</p>

<p>&nbsp;</p>

<p>An hour farther up the Bow River Valley via the&nbsp;<strong>Trans-Canada Highway&nbsp;</strong>is drop-dead-gorgeous&nbsp;<strong>Lake Louise</strong>. Named after Queen Victoria&rsquo;s fourth daughter, the stunning alpine lake is a bit cold for swimming but ideal for paddle sports in summer or lake fishing and ice-skating come the winter freeze-over.</p>

<p>Looming above the east shore is the historic&nbsp;<strong><a href="https://www.fairmont.com/lake-louise/?cmpid=google_cll_search-branded-us_branded-e-revsh&amp;gclid=Cj0KCQjwz8bsBRC6ARIsAEyNnvohylIwVqlafBKHLiai8EMwIp4o6O1RRq7Jn5Fjb8vZu--fNiAxftAaAlUxEALw_wcB" target="_blank">Cha^teau Lake Louise</a></strong>, opened in 1911 and still Canada&rsquo;s ideal national park lodge.&nbsp;<strong>Afternoon tea&nbsp;</strong>in the lounge&mdash;with huge picture windows overlooking the lake&mdash;is a long tradition. Of the area&rsquo;s many hikes,&nbsp;<strong>Plain of the Six Glaciers Trail&nbsp;</strong>is the most popular, a (8.1 mile) round loop along the lakeshore and up a glacial valley, with a chance to sip at the log cabin&nbsp;<strong><a href="http://www.lakeagnesteahouse.com/" target="_blank">Lake Agnes Tea House</a>&nbsp;</strong>located on the mountainside.</p>

<p><strong><a href="https://www.brewsteradventures.com/" target="_blank">Brewster Stables</a>&nbsp;</strong>organizes summer trail rides to the teahouse, as well as a full-day expedition ride up to Paradise Valley and winter horse-drawn sleigh rides around the shore. Another way to discover the lake area is by the private guided hikes offered by&nbsp;<strong><a href="https://www.greatdivide.ca/" target="_blank">Great Divide Nature Interpretation</a></strong>. Themed treks revolve around glaciers, grizzlies, birding, autumn leaves, or dozens of other topics.</p>

<ul>
	<li><a href="https://www.nationalgeographic.com/expeditions/?cmpid=int_org=ngp::int_mc=website::int_src=ngp::int_cmp=exp_dotcom_inpage::int_add=ngpexp-inpagepromo" target="_blank">NAT GEO EXPEDITIONS</a></li>
</ul>

<p><a href="https://www.nationalgeographic.com/expeditions/?cmpid=int_org=ngp::int_mc=website::int_src=ngp::int_cmp=exp_dotcom_inpage::int_add=ngpexp-inpagepromo" target="_blank">Book your next trip with Peace of Mind</a></p>

<p><a href="https://www.nationalgeographic.com/expeditions/?cmpid=int_org=ngp::int_mc=website::int_src=ngp::int_cmp=exp_dotcom_inpage::int_add=ngpexp-inpagepromo" target="_blank">SEARCH TRIPS</a></p>

<p>Down in the village,&nbsp;<strong><a href="https://www.travelalberta.com/us/listings/lake-louise-visitor-information-centre-2623/" target="_blank">Lake Louise Visitor Centre</a>&nbsp;</strong>offers another chance to fetch information, brochures, maps, and books about the park. Clinging to the eastern side of the valley is&nbsp;<strong><a href="https://www.skilouise.com/" target="_blank">Lake Louise Ski Resort</a></strong>, which sets itself apart from other winter sports resorts in the region with activities like&nbsp;<strong>Torchlight Dinner and Ski&nbsp;</strong>evenings, a spring music festival, guided snowshoe tours, and backcountry ski tours.</p>

<p>&nbsp;</p>

<p>Just north of Lake Louise, the Trans-Canada Highway veers off to the west and into British Columbia. But another famous roadway continues north along Bow River: the celebrated&nbsp;<strong>Icefields Parkway&nbsp;</strong>(Highway 93), which meanders 167 miles through the heart of the Canadian Rockies to Jasper. Flanked by rivers, waterfalls, snowy peaks, and more than a hundred glaciers, the route offers plenty of reasons to pull over, snap a photo, take a short walk, or simply take in views of nature&rsquo;s splendid canvas.</p>

<p><strong>Bow Lake&nbsp;</strong>is a great place to pause, for a peek at historic&nbsp;<strong><a href="https://www.num-ti-jah.com/" target="_blank">Num-Ti-Jah Lodge</a>&nbsp;</strong>or a hike along the&nbsp;<strong>Bow Glacier Falls Trail&nbsp;</strong>(5.78 miles round-trip) to the namesake cascade fed by meltwater from Wapta Glacier. The parkway reaches its highest point at&nbsp;<strong>Peyto Lake</strong>, with its jaw-dropping views back down the valley. Another waterfall tumbles through the slot canyon at&nbsp;<strong>Mistaya&nbsp;</strong>before the parkway leaps across the&nbsp;<strong>Saskatchewan River&nbsp;</strong>at a place called the&nbsp;<strong>Crossing</strong>, which marks the halfway point between Banff and Jasper villages. Fifty kilometers (30.1 miles) farther up the parkway is Columbia Icefield and the start of Jasper National Park.</p>

<h2>Plan your trip</h2>

<p><strong>Get there:&nbsp;</strong><a href="http://www.pc.gc.ca/eng/pn-np/ab/banff/index.aspx" target="_blank">Banff National Park</a>&nbsp;is located 80 miles west of Calgary. Calgary&rsquo;s&nbsp;<a href="http://www.yyc.com/" target="_blank">international airport</a>&nbsp;is serviced by major national and international carriers with multiple flights arriving daily. From the airport, rent a car and take Trans-Canada 1 west from Calgary straight into the park, through Banff and Lake Louise. A direct bus service from the airport or downtown Calgary is also available to Banff and Lake Louise, as are shuttle services through tour operators.</p>

<p><strong>When to go:&nbsp;</strong>Open year-round, Banff offers amazing wildlife viewing and sightseeing, plus plentiful shopping and dining options, any time of the year. Summer is popular for hiking, paddling, mountain biking and cycling, photography, and climbing. The best time for viewing seasonal color is fall, when the larch trees&mdash;the only coniferous trees to lose their needles in winter&mdash;turn yellow.</p>

<p>&nbsp;</p>

<p>In winter, the mountain landscape makes for incredible downhill and cross-country skiing. In fact, three major downhill ski resorts operate within the park.&nbsp;<a href="https://www.skilouise.com/" target="_blank">Lake Louise Ski Resort</a>,&nbsp;<a href="http://www.skibanff.com/" target="_blank">Sunshine Village</a>, and&nbsp;<a href="http://winter.banffnorquay.com/" target="_blank">Mount Norquay</a>&nbsp;combine to offer a large skiable terrain, not to mention the backcountry trails available throughout the park. The ski season, which runs from November to May, is one of the longest in North America. Visitors can also enjoy wildlife tours, ice walks, snowshoeing, and dogsled and horse sleigh rides.</p>

<p><strong>Get around:&nbsp;</strong>Visiting the park by car or tour bus is most common. In the town of Banff you can also catch the&nbsp;<a href="http://roamtransit.com/" target="_blank">ROAM bus</a>, a publicly accessible and environmentally friendly hybrid outfitted with wildlife information. Pick up a map or bus schedule at the Banff or Lake Louise visitor information centers. GPS guides are also available.</p>

<p><strong>Where to stay:</strong>&nbsp;Iconic national park lodging at a classic location,&nbsp;<strong><a href="https://www.accorhotels.com/gb/hotel-A563-fairmont-chateau-lake-louise/index.shtml?adults=&amp;children=&amp;nights=&amp;dateIn=&amp;gclid=Cj0KCQjwz8bsBRC6ARIsAEyNnvo2hjfjf9KYJbIq9vxcAlKxRmzteug0xqTwldW3YIPFOzKeSFLShGYaAjNPEALw_wcB" target="_blank">Cha^teau Lake Louise</a>&nbsp;</strong>offers<strong>&nbsp;</strong>restaurants, bars, a spa, and kids&rsquo; camp.&nbsp;<strong><a href="https://bakercreek.com/?gclid=Cj0KCQjwz8bsBRC6ARIsAEyNnvpPWD2vs-g5D3ctp-lOo_TWV9SaCcZgemmfFmFXE9UlKlsHNjW8suMaAq8oEALw_wcB" target="_blank">Baker Creek Mountain Resort</a></strong>&nbsp;holds log cabins along the Bow River south of Lake Louise with bikes and fishing rods to rent.&nbsp;<strong><a href="https://www.fairmont.com/banff-springs/?WBCMODE=WF" target="_blank">Banff Springs Hotel</a>&nbsp;</strong>is a historic national park property founded in 1888.</p>
', N'Airway,Train,Buses', N'1', N'Mar  6 2023  2:11PM')
INSERT [dbo].[Place_Details_Table] ([id], [continentid], [countryid], [cid], [sid], [did], [cityname], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (3, 1, 99, 3, 18, 624, N'Kochi', N'Kochi (Cochin)', N'a-beautiful-pond-inside.jpg', N'backwater-tourism-cochin.jpg', N'cheeyappara-waterfalls-cochin4.jpg', N'kerala-folklore-theatre-cochin2.jpg', N'kovalam-beach-is-one-cochin5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d502965.5552124438!2d76.02072159243045!3d9.982255021060084!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b080d514abec6bf%3A0xbd582caa5844192!2sKochi%2C%20Kerala!5e0!3m2!1sen!2sin!4v1677216512197!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<h1>KOCHI</h1>

<h2>QUEEN OF ARABIAN SEA</h2>

<p>Kochi, also known as Cochin, is one of the most picturesque destinations on the southwest coast line of Kerala. An all-weather harbour and a grand seascape mark it as the &ldquo;Queen of the Arabian Sea&rdquo;. Cochin Port is a cruise port and has witnessed an encouraging growth with the arrival of luxury cruise liners to its shores. The peaceful city is also one of the leading commercial centres of southern India. It is the top supplier of aromatic spices to global markets, so if you&rsquo;re looking for spices for your curries this is the place to buy them. Moreover, voyagers also coveted fine sandalwood, perfumes and gold that came from this market-town. Kochi kingdom dates back to the 12th century. It is believed that Chinese and Arab traders were the first visitors to Kochi who paved the way for Portuguese and Dutch visitors, followed by the British Raj in this region. This place has been a safe haven for travel enthusiasts for several decades.</p>

<h3>MAJOR ATTRACTIONS</h3>

<p>Situated on beach-side, Kochi is a bustling commercial port with a trading history that dates back to at least 600 years, and is till today the financial capital of Kerala. This cosmopolitan town has upmarket stores, art galleries and some of the finest heritage accommodations. This lovely seaside city is flanked by the Western Ghats on the east and the Arabian Sea on the west.</p>

<p><a href="https://www.incredibleindia.org/content/incredibleindia/en/destinations/kochi/dutch-palace.html"><img alt="major Attraction" src="https://www.incredibleindia.org/content/dam/incredibleindia/images/places/kochi/kochi-dutch-palace-42.jpg/_jcr_content/renditions/cq5dam.web.480.271.jpeg" style="height:169px; width:300px" /></a></p>

<h3>DUTCH PALACE</h3>

<p><a href="https://www.incredibleindia.org/content/incredibleindia/en/destinations/kochi/dutch-palace.html">Built and presented by the Portuguese to the Kochi Maharaja Veera Kerala Varma around the year 1555.</a></p>

<p><a href="https://www.incredibleindia.org/content/incredibleindia/en/destinations/kochi/fort-kochi.html"><img alt="major Attraction" src="https://www.incredibleindia.org/content/dam/incredibleindia/images/places/kochi/fort-kochi.jpg/_jcr_content/renditions/cq5dam.web.480.271.jpeg" style="height:169px; width:300px" /></a></p>

<h3>FORT KOCHI</h3>

<p><a href="https://www.incredibleindia.org/content/incredibleindia/en/destinations/kochi/fort-kochi.html">Situated in Rampart Road, Fort Kochi was Built by the Portuguese in 1506.</a></p>

<p><a href="https://www.incredibleindia.org/content/incredibleindia/en/destinations/kochi/pardesi-synagogue.html"><img alt="major Attraction" src="https://www.incredibleindia.org/content/dam/incredibleindia/images/places/kochi/kochi-pardesi-synagogue-10.jpg/_jcr_content/renditions/cq5dam.web.480.271.jpeg" style="height:169px; width:300px" /></a></p>

<h3>PARDESI SYNAGOGUE</h3>

<p>&nbsp;</p>
', N'Airway,Train,Buses', N'1', N'Feb 24 2023 11:06AM')
INSERT [dbo].[Place_Details_Table] ([id], [continentid], [countryid], [cid], [sid], [did], [cityname], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (7, 6, 105, 5, 0, 0, N'Roma RM', N'The Colosseum', N'colosseum-1.jpg', N'colosseum-2.jpg', N'colosseum-3.jpg', N'rome-4.jpg', N'rome-5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2970.0888063382326!2d12.490850114815158!3d41.89094717259025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f61b70b7b2079%3A0x527c695197775609!2sPiazza%20del%20Colosseo%2C%2000184%20Roma%20RM%2C%20Italy!5e0!3m2!1sen!2sin!4v1678076576164!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<p>The Colosseum, also named the Flavian Amphitheater, is a large amphitheater in Rome. It was built during the reign of the Flavian&nbsp;emperors&nbsp;as a gift to the&nbsp;Roman&nbsp;people.</p>

<p>Construction of the Colosseum began sometime between C.E. 70 and 72 under the emperor Vespasian. It opened nearly a decade later and was modified several times in the following years. The&nbsp;massive&nbsp;structure measured approximately 189 by 156 meters (620 by 513 feet), towered four stories high, and included eighty entrances to the amphitheater&mdash;seventy-six for the patrons, two for participants of events, and two&nbsp;exclusively&nbsp;for the emperor to use. The sheer number of entrances proved to be necessary: the Colosseum could hold more than 50,000 spectators at its maximum capacity.</p>

<p>When the Colosseum first opened, the emperor Titus celebrated with a hundred days of gladiatorial games. Emperors traditionally attended the games. The emperor Commodus is known to have performed in the arena on hundreds of occasions. Aside from the games, the Colosseum also hosted dramas, reenactments, and even public executions.</p>

<p>Eventually, the Romans&rsquo; interest in the games&nbsp;waned. After the fall of the Western Roman&nbsp;Empire, the Colosseum began to deteriorate. A series of earthquakes during the fifth century C.E. damaged the structure, and it also suffered from neglect. By the 20th century, nearly two-thirds of the original building had been destroyed. Nevertheless, a restoration project began in the 1990s to repair the Colosseum. Today it is one of modern-day Rome&rsquo;s most popular tourist attractions, hosting millions of visitors a year.</p>
', N'Airway,Train,Buses', N'1', N'Mar  6 2023  1:53PM')
INSERT [dbo].[Place_Details_Table] ([id], [continentid], [countryid], [cid], [sid], [did], [cityname], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (9, 1, 104, 8, 0, 0, N'Jerusalem', N'Church of the Holy Sepulchre', N'Church of the Holy Sepulchre1.jpg', N'Church of the Holy Sepulchre2.jpg', N'Church of the Holy Sepulchre3.jpg', N'Church of the Holy Sepulchre4.jpg', N'Church of the Holy Sepulchre5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3391.706655746464!2d35.22741151449008!3d31.778485841531886!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x150329cf1c246db5%3A0x2d04a75cfc390360!2sChurch%20of%20the%20Holy%20Sepulchre!5e0!3m2!1sen!2sin!4v1678093247470!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<h1>Church of the Holy Sepulchre</h1>

<p>The site of the Church of the Holy Sepulchre in Jerusalem is identified as the place both of the crucifixion and the tomb of Jesus of Nazareth. The church has long been a major pilgrimage center for Christians worldwide.</p>

<p>According to the New Testament, Jesus was crucified at Golgotha, &ldquo;the place of the skull&rdquo; (Matt. 27:33&ndash;35; Mark 15:22&ndash;25; John 19:17&ndash;24). This has been identified as an area of abandoned stone quarries just outside the city wall.</p>

<p>&nbsp;</p>

<p>About 10 years after the crucifixion, a third wall was built that enclosed the area of the execution and burial within the city, which accounts for the Holy Sepulchre&rsquo;s location inside the Old City of Jerusalem today.</p>

<p><img alt="Holy Prison" src="https://churchoftheholysepulchre.net//wp-content/uploads/2015/04/Holy-Jesus-Prison-inside-Church-of-the-Holy-Sepulchre-300x197.jpg" style="height:197px; width:300px" />The Roman emperor Constantine I, a convert to Christianity, had the temple of Venus in Jerusalem demolished to make way for a church. In the course of the demolition, a tomb was discovered that was thought to be the tomb of Jesus.</p>

<p>&nbsp;</p>

<p>The first Church of the Holy Sepulchre was approached by a flight of steps from the Cardo, the main street of Jerusalem.</p>

<p>Then pilgrims went through a narthex; a basilica; and an open area, the &ldquo;holy garden,&rdquo; which had the rock of Golgotha, finally reaching the Holy Sepulchre itself.</p>

<p>The rock-cut tomb was initially open to the elements but was later protected by a small building.</p>

<p>The whole complex was richly decorated, as we know from the description by Constantine&rsquo;s biographer Eusebius of Caesarea, from pictures in the Church of St. Pudenziana in Rome dating from early in the fifth century and on the Madaba mosaic map from the sixth, and from modern excavations.</p>

<p>&nbsp;</p>

<p>In 326, Constantine&rsquo;s mother, Saint Helena, made a pilgrimage to Jerusalem, where, according to legend, she discovered the relic of the cross of Jesus (the &ldquo;True Cross&rdquo;).</p>

<p>The story of the discovery of the cross was current early in the fifth century, and in the 11th century, a cave deep below the ruins of the basilica came to be known as the Chapel of the Invention of the Cross.</p>

<p>In 614, a Persian army destroyed the church and the True Cross was taken away, but in 631 the Byzantine emperor Heraclius negotiated its return.</p>

<p><img alt="Interior dome" src="https://churchoftheholysepulchre.net//wp-content/uploads/2015/04/Interior-Dome-of-Church-of-the-Holy-Sepulchre-300x200.jpg" style="height:200px; width:300px" />The Arab conquest in 638 was initially less disruptive, as Christians were treated with tolerance, but 300 years later the entrance to the basilica was converted into a mosque, and in 966 the dome was destroyed by fire during anti-Christian riots.</p>

<p>In 1009, the fanatical Fatimid caliph al-Hakim ordered the destruction of the church.</p>

<p>The Byzantine emperor Constantine IX Monomachus (1042&ndash;1055) funded its rebuilding, but on a different plan, with the entrance on the south side.</p>

<p>This was the church that drew pilgrims from all over Christendom in the later 11th century, and for much of that period the Muslim rulers of the city treated them well.</p>

<p>&nbsp;</p>

<p><img alt="Crucifixion altar" src="https://churchoftheholysepulchre.net//wp-content/uploads/2015/04/Crucifiction-Altar-in-Jerusalem-300x199.jpg" style="height:199px; width:300px" />It was only after the capture of the city by the Seljuk Turks in 1077 that rumors began to circulate that Christian pilgrims were being ill-treated and denied access to the church.</p>

<p>The liberation of the holy places, the foremost of which was the Holy Sepulchre, was an important motivation for the First Crusade between 1096 and 1099.</p>

<p>After the capture of the city by the crusaders in 1099, eyewitnesses tell how the survivors of the expedition prayed in the Church of the Holy Sepulchre, which struck them as unusual because it was open to the sky.</p>

<p>During the next half-century, the church of Constantine IX Monomachus was largely reconstructed.</p>

<p><img alt="Chapel of Insults" src="https://churchoftheholysepulchre.net//wp-content/uploads/2015/04/Chapel-of-Insults-300x199.jpg" style="height:199px; width:300px" />Although the building&rsquo;s footprint was preserved, the church acquired the attributes of a cathedral on the Western model. The holy garden became the basilica of the crusaders&rsquo; church, and the rock of Golgotha was given its own chapel.</p>

<p>The Church of the Holy Sepulchre was reconsecrated on July 15, 1149, 50 years to the day after the capture of Jerusalem by the First Crusade, but in fact work continued on the building for some years afterward. Nevertheless, the church of the crusaders is essentially the church that is to be seen today.</p>

<p>The crusaders&rsquo; church attracted enormous numbers of pilgrims, whose entry and circulation had to be controlled: the twin doorways can still be seen, although the elaborately carved lintels under which the pilgrims passed were removed after the earthquake of 1927 and are now in the Rockefeller Museum in Jerusalem.</p>

<p><img alt="Stone of Unction" src="https://churchoftheholysepulchre.net//wp-content/uploads/2015/04/Pilgrims-at-Stone-of-Unction-300x199.jpg" style="height:199px; width:300px" />The right-hand door was blocked up after the Muslim reconquest of the city in 1187. However, even during periods of Muslim occupation, pilgrims continued to be admitted to the site, and indeed Western leaders were anxious to negotiate rights of entry.</p>

<p>Some features of the medieval church can no longer be seen&mdash;for example, the tombs of the first rulers, Godfrey of Bouillon and Baldwin I, which were removed in the early 19th century when the Greeks were carrying out restoration work. All of the kings of Jerusalem up to 1187 (except Queen Melisende) were buried in the Calvary Chapel.</p>

<p>As 12th-century maps reveal, the Holy Sepulchre in Jerusalem was the spiritual focus of Christendom and its most important pilgrimage center. The church was laid out to enable pilgrims to move from the chapel to chapel, their visit culminating in the Holy Sepulchre itself.</p>

<p><img alt="Old Columns" src="https://churchoftheholysepulchre.net//wp-content/uploads/2015/04/Church-Old-Columns-300x199.jpg" style="height:199px; width:300px" />At Golgotha, to mark the completion of their pilgrimage, they would leave the crosses they had carried on the journey, and a great pile of these would be burnt on Easter Eve.</p>

<p>On Holy Saturday, the ceremony of the Holy Fire took place. The patriarch entered the edicule, where the Easter Fire was kindled and then passed from hand to hand. This was witnessed by the chroniclers Ekkehard of Aura in 1101 and Caffaro in 1102.</p>

<p>Despite the mutilations of the centuries, the Holy Sepulchre remains a fascinating complex of structures and is of key importance for several phases of medieval architectural history, &lsquo;imitations&rsquo; being built all over Europe. Today, the Church of the Holy Sepulchre is one of Jerusalem&rsquo;s main landmarks and continues to draw many pilgrims and visitors.</p>
', N'Airway,Train,Buses', N'1', N'Mar  6 2023  2:43PM')
INSERT [dbo].[Place_Details_Table] ([id], [continentid], [countryid], [cid], [sid], [did], [cityname], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (10, 1, 99, 3, 14, 63, N'Kullu', N'Kullu Manali', N'kullu manali1.jpg', N'kullu manali2.jpg', N'kullu manali3.jpg', N'kullu manali4.jpg', N'kullu manali5.jpg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26997.521594298196!2d77.16961015129452!3d32.239507142069826!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39048708163fd03f%3A0x8129a80ebe5076cd!2sManali%2C%20Himachal%20Pradesh!5e0!3m2!1sen!2sin!4v1678098519804!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<p>A trip to Kullu Manali is the medicine for fatigued minds and tired souls. Nature has blessed them generously, and yet, one is different from the kind of experiences they offer. Kullu is called the &ldquo;land of the gods&rdquo;, and quite aptly so. Stretched out leisurely on the banks of the River Beas, it is blessed with a magnificent scenery characterized by forests, valleys, streams, rivers and orchards. Mystical Malana to serene Manikaran, it lures tourists for many reasons. The town of Manali is seated comfortably in the River Beas Valley, and its popularity has increased faster than the clouds that dance on its hilltops. Wonderfully combining nature and adventure, it is serenity, history, nature, spirituality and shopping, all merged into one. Holidays in Kullu Manali then, is about sightseeing, but it is also about adventure, spirituality &amp; being prepared to be constantly surprised.</p>

<h2>An Insight into Kullu Manali Tourism</h2>

<p>Both Kullu and Manali, top tourist destinations of Himachal Pradesh, seem to outdo the other in their scenic magnificence and opportunities for sightseeing &amp; adventure. Kullu, the town believed to be apt for the gods, pleasantly surprises the visitor with the diversity it offers. In Manali, what you see is what you get, raw beauty with serenity, the likes of which you may have only dreamt about.</p>

<p>There are many things to see in Kullu, like the&nbsp;<a href="https://www.tourmyindia.com/states/himachal/great-himalayan-national-park.html" target="_blank">Great Himalayan National Park.</a>&nbsp;It is a UNESCO World Heritage Site which houses a rich variety of wildlife. Several of these are classified as endangered, including Himalayan Brown Bear, Blue Sheep and Snow Leopard. Spotting of Monal and Western Tragopan is not uncommon. Trekking and outdoor camping are also pursued enthusiastically in the park.</p>

<p>Manikaran is another place to see in Kullu which is most famous for its gurudwara. Here, the hot sulphur springs are believed to contain therapeutic properties. Kasol, fondly referred to as mini-Israel for attracting Israelis in large numbers, allures more than its fair share of honeymooners, while the village of Malana has that ancient look to it. Banjar, located almost 2 hours away from Kullu, affords a lot of opportunities in angling, thanks to River Tirthan and its pure as crystal waters. At about the same distance lies Shoja, a valley wrapped in contemplative silence and undisturbed beauty, and truly meditator&rsquo;s paradise. Another place which you should visit during your trip to Kullu is Jalori Pass. From here, you can take a day hike to Serolsar Lake.</p>

<p>Adventure enthusiasts also find a lot to celebrate in Kullu. Battling the rapids while white water rafting on River Beas is fun, as is camping in Raison, surrounded by peach, plum and apple orchards. Hike towards the Bijli Mahadev Temple though, where lovely views of the Kullu Valley await you. Inside the temple is a Shiva Linga, which, besides being pillar shaped, is held together with butter. Every year, fiery bolts of lightning destroy this pillar, until it is rebuilt by the priests with butter.</p>

<p>Manali is another top tourist destination in Himachal Pradesh, popular both among honeymooners and vacationers. This quaint town shows you how to have a good time. It is hugged by the valley, which itself is covered with pine forests, streams and perpetually snow-covered peaks. There are as many opportunities for adventure as sightseeing, besides a third one, which is enjoying the lovely landscape and doing nothing.</p>

<p>The greatest tourist attraction though, is Rohtang Pass. About 51 km from Manali, it is the gateway to Lahaul and Spiti, and offers a chance to enjoy activities like&nbsp;<a href="https://www.tourmyindia.com/states/himachal/paragliding-in-himachal.html" target="_blank">paragliding</a>,&nbsp;<a href="https://www.tourmyindia.com/states/himachal/skiing-in-himachal.html" target="_blank">skiing</a>&nbsp;and trekking. Along the way, you are treated to views of waterfalls, pastures and streams. The tired eyes and the fatigued mind rejoice at such beautiful sights.</p>

<p>However, it should be remembered that you will have to obtain a special permit for&nbsp;<a href="https://www.tourmyindia.com/states/himachal/rohtang-pass.html" target="_blank">visiting Rohtang Pass.</a>&nbsp;During the winters, it wears a white coat, with fir trees acting as its embroidery. During the summers, it discards it, and replaces it with an easily flowing green garment. That&rsquo;s Solang Valley for you, located about 13 km from Manali and a magnificent place to see in Himachal Pradesh. A variety of adventure activities can be enjoyed, from zorbing to a ropeway ride. Come winters, and skiing is all the rage, with state and national level ski championships being held regularly.</p>

<p>Another tourist attraction in Manali is the&nbsp;<a href="https://www.tourmyindia.com/states/himachal/hadimba-temple-manali.html" target="_blank">Hadimba Devi Temple</a>, a four tier pagoda style wood and stone structure which is believed to contain the imprints of Hadimba Devi. You could also head to Naggar, located about 22 km from Manali. It served as the capital of the principality before it was shifted to Kullu in 1660 AD. There are many monuments here that remind you of its glorious past, including a 500 year old castle. Nowadays, it functions as a museum and heritage hotel. Vashisht Village is famous, as is the&nbsp;<a href="https://www.tourmyindia.com/states/himachal/brighu-lake.html" target="_blank">Bhrigu Lake</a>, which is believed to be the meditation spot of Sage Bhrigu.</p>

<p>Other places to see during your Kullu Manali tour are Nehru Kund, Jagat Sukh Village,&nbsp;<a href="https://www.tourmyindia.com/states/himachal/manali-sanctuary.html" target="_blank">Manali Wildlife Sanctuary</a>&nbsp;and Mountaineering Institute. If a little bit of sightseeing is all that you need, there are other ways to enjoy yourself. You can hang around at The Mall, explore the bazaar for some travel souvenirs, woolens and Himachali handloom products or head towards Old Manali, which is much more quieter than New Manali. Oh, and you can also enjoy various types of Mexican, Italian and Israeli dishes from a restaurant&rsquo;s rooftop.</p>

<p>There are some exciting Kullu Manali holiday packages that you can check out before planning your trip. These come with the best deals and offers and ensure that you have a great time filled with loads of fun and adventure.</p>

<h2>Popular Tourist Attractions in Kullu Manali</h2>

<p>The popular tourist attractions in Kullu Manali offer lovely opportunities for sightseeing and adventure. Visit Kullu to explore the Great Himalayan National Park, enjoy the romance of Kasol &amp; try white water rafting on River Beas. In Manali, enjoy ropeway ride, visit Hadimba Temple, hang around at The Mall &amp; take in the serenity of Old Manali.</p>

<ul>
	<li><a href="https://www.tourmyindia.com/states/himachal/rohtang-pass.html"><img alt="rohtang-pass" src="https://www.tourmyindia.com/states/himachal/images/rohtang-pass.jpg" /></a>

	<h3><a href="https://www.tourmyindia.com/states/himachal/rohtang-pass.html">ROHTANG PASS</a></h3>
	</li>
	<li><a href="https://www.tourmyindia.com/states/himachal/hadimba-temple-manali.html"><img alt="hadimba-temple-manali" src="https://www.tourmyindia.com/states/himachal/images/hadimba-temple-manali.jpg" /></a>
	<h3><a href="https://www.tourmyindia.com/states/himachal/hadimba-temple-manali.html">HADIMBA TEMPLE</a></h3>
	</li>
	<li><a href="https://www.tourmyindia.com/states/himachal/vashisht-temple-manali.html"><img alt="vashisht-temple-manali" src="https://www.tourmyindia.com/states/himachal/images/vashisht-temple-manali.jpg" /></a>
	<h3><a href="https://www.tourmyindia.com/states/himachal/vashisht-temple-manali.html">VASHISHT TEMPLE</a></h3>
	</li>
	<li><a href="https://www.tourmyindia.com/states/himachal/solang-valley-manali.html"><img alt="solang-valley-manali" src="https://www.tourmyindia.com/states/himachal/images/solang-valley-manali.jpg" /></a>
	<h3><a href="https://www.tourmyindia.com/states/himachal/solang-valley-manali.html">SOLANG VALLEY</a></h3>
	</li>
</ul>

<p><a href="https://www.tourmyindia.com/states/himachal/kullu-manali-tourist-attractions.html">VIEW MORE<img alt="View More" src="https://www.tourmyindia.com/imagesh/find-more-icone.png" /></a></p>

<h2>Explore Popular Tour Packages for Kullu Manali</h2>

<p>There are a wide variety of Kullu Manali tour packages that you can choose from. Plan your trip with holiday packages to Kullu Manali and enjoy sightseeing with your parents, friends or spouse. Our tour packages come with the best deals, check them out.</p>

<ul>
	<li><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/manali-tour-package.html"><img alt="Manali Tour Package" src="https://www.tourmyindia.com/states/himachal/images/manali-tour-package1.jpg" /></a>

	<h3><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/manali-tour-package.html">MANALI TOUR PACKAGE</a></h3>

	<p><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/manali-tour-package.html">3N/4D</a></p>
	</li>
	<li><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/kullu-manali-tour.html"><img alt="Kullu Manali Tour" src="https://www.tourmyindia.com/states/himachal/images/kullu-manali-tour1.jpg" /></a>
	<h3><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/kullu-manali-tour.html">KULLU MANALI TOUR</a></h3>

	<p><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/kullu-manali-tour.html">4N/5D</a></p>
	</li>
	<li><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/manali-honeymoon-tour.html"><img alt="manali-honeymoon-tour" src="https://www.tourmyindia.com/states/himachal/images/manali-honeymoon-tour1.jpg" /></a>
	<h3><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/manali-honeymoon-tour.html">MANALI HONEYMOON TOUR</a></h3>

	<p><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/manali-honeymoon-tour.html">4N/5D</a></p>
	</li>
	<li><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/manali-volvo-package-from-delhi.html"><img alt="Manali Volvo Package From Delhi" src="https://www.tourmyindia.com/states/himachal/images/manali-volvo-package-from-delhi1.jpg" /></a>
	<h3><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/manali-volvo-package-from-delhi.html">MANALI VOLVO PACKAGE FROM DELHI</a></h3>

	<p><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/manali-volvo-package-from-delhi.html">4N/5D</a></p>
	</li>
</ul>

<p><a href="https://www.tourmyindia.com/packages-tour-india/hill-stations/himachal-hill-stations-tours.html">VIEW MORE<img alt="View More" src="https://www.tourmyindia.com/imagesh/find-more-icone.png" /></a></p>

<h2>Best Hotels &amp; Resorts to Stay in Kullu Manali</h2>

<p>You will find excellent staying options during your trip to Kullu Manali, and finding an accommodation of your choice will hardly be a problem. You can find the right staying options depending on your budget and preferences. There are several 3 and 4 star hotels which you can choose from, apart from an impressive variety of budget hotels. You can also choose to stay at a heritage hotel in Kullu and Manali.</p>

<ul>
	<li><a href="https://www.tourmyindia.com/hotelsinindia/white-meadows-manali.html"><img alt="white-meadows-manali" src="https://www.tourmyindia.com/states/himachal/images/white-meadows-manali.jpg" /></a>

	<h3><a href="https://www.tourmyindia.com/hotelsinindia/white-meadows-manali.html">WHITE MEADOWS</a></h3>
	</li>
	<li><a href="https://www.tourmyindia.com/hotelsinindia/silmog-garden-manali.html"><img alt="Orange Village Resort, Gangtok" src="https://www.tourmyindia.com/states/himachal/images/silmog-garden-manali.jpg" /></a>
	<h3><a href="https://www.tourmyindia.com/hotelsinindia/silmog-garden-manali.html">SILMOG GARDEN</a></h3>
	</li>
	<li><a href="https://www.tourmyindia.com/hotelsinindia/span-resort-and-spa-manali.html"><img alt="Span Resort &amp; Spa" src="https://www.tourmyindia.com/states/himachal/images/span-resort-and-spa-manali.jpg" /></a>
	<h3><a href="https://www.tourmyindia.com/hotelsinindia/span-resort-and-spa-manali.html">SPAN RESORT &amp; SPA</a></h3>
	</li>
	<li><a href="https://www.tourmyindia.com/hotelsinindia/the-himalayan-manali.html"><img alt="the-himalayan-manali" src="https://www.tourmyindia.com/states/himachal/images/the-himalayan-manali.jpg" /></a>
	<h3><a href="https://www.tourmyindia.com/hotelsinindia/the-himalayan-manali.html">THE HIMALAYAN</a></h3>
	</li>
</ul>

<p><a href="https://www.tourmyindia.com/hotelsinindia/kullu-manali.html">VIEW MORE<img alt="View More" src="https://www.tourmyindia.com/imagesh/find-more-icone.png" /></a></p>
', N'Airway,Train,Buses', N'1', N'Mar  6 2023  4:03PM')
INSERT [dbo].[Place_Details_Table] ([id], [continentid], [countryid], [cid], [sid], [did], [cityname], [placeName], [placeImage1], [placeImage2], [placeImage3], [placeImage4], [placeImage5], [placeMap], [placeIntro], [placeDiscription], [transport], [status], [rts]) VALUES (12, 1, 99, 10, 29, 164, N'Sirohi', N'Sirohi Fort', N'sirohi fort 2.jpeg', N'sirohi fort 3.jpeg', N'sirohi fort 1.jpeg', N'sirohi fort 2.jpeg', N'sirohi fort 3.jpeg', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29023.051433148077!2d72.70325692357275!3d24.5932879375378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395d2a7b9c58c24f%3A0x41ec48d89a772ec9!2sMount%20Abu%2C%20Rajasthan%20307501!5e0!3m2!1sen!2sin!4v1676886981085!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'"Welcome to our extraordinary destination, where adventure meets relaxation, and memories are made. Come discover your next unforgettable experience with us."', N'<p>Rajasthan, situated in the western part of India, is the largest state of India and holds a very exceptional place at its southern division known as Sirohi District. The district lies between the parallel of 24&deg;20&prime; and 25&deg;17&prime; North Latitude and 72&deg;16&prime; and 73&deg;10&prime; East Longitude. It has a geographical area of 5136 sq. km which is about 1.52% of the total area of the Rajasthan state. After Dungarpur and Banswara, the Sirohi district comes as the 3rd smallest district in the state. It is edged by Pali district in the north-east, Jalore in the west, Banaskantha district in the south which comes in Gujarat, and Udaipur district in the east.</p>

<p><strong><strong>Sirohi The City Of God | Sirohi District| Road Trip | ??????? ?????? | ?????? ??? | Sirohi Rajasthan</strong></strong></p>

<p><strong>SIROHI CITY AERIAL VIEW DRONE VIEW || Jannat production ft Mavik air</strong></p>

<p>Sirohi is further divided into hills and mountain ranges. The headquarters of the district in Sirohi Rajasthan lies in its heart that is the Sirohi town. It was ranked first amongst the thirty-three districts of Rajasthan in the year 2014 for its cleanliness and hygiene under the Indian government scheme of &ldquo;Swachh Bharat Abhiyan&rdquo;.</p>

<h2>Sirohi History&nbsp;</h2>

<p>Sirohi in Rajasthan was taken under the Bombay government from 5 January 1949 to 25 January 1950. After around one year only, on 25 January 1950, the portion of Delwara tehsil was associated with Bombay when the former state got a partition with Abu Road tehsil and the rest portion got merged with Rajasthan. Presently, the Sirohi district involves five tehsils &ndash; Abu Road, Sheoganj, Reodar, Pindwara, and Sirohi.<br />
Having numerous shrines and temples, Sirohi is also known to be called &ldquo;Dev Nagari&rdquo; since old times. It had been ruled by &ldquo;Chauhan Deora rulers&rdquo; in ancient times and, therefore, it has also happened to get popular as the manufacturers of double-edged swords.<br />
Sirohi history has fascinated many tourists all over the world. One story of the evolution of the name Sirohi marks from the area where it is situated. The area has hills on the western slope which are known as &ldquo;Siranwa&rdquo; and from this name, the name Sirohi has emerged. &ldquo;Sir&rdquo; to be the head of the desert &ldquo;Rohi&rdquo;. Another story says that the name has been derived from the word &ldquo;Sword&rdquo; as in the past times the area had been ruled by many great rulers. Sirohi is still known Nationwide for&nbsp;<a href="https://www.sirohishehar.com/sirohi-talwar/">Sirohi Talwar (Sword)</a>.<br />
Yet another story for the name is &ndash; Sirohi = Sir + Uhi. The saying goes like even if the head has to be detached the self-respect will not be sacrificed. Earlier, the Rajput rulers could die for self-respect.</p>

<p><strong>PRESENT MAHARAO OF SIROHI</strong></p>

<p><img alt="MAHARAO RAGHUVEER SINGH BAHADUR" src="https://www.sirohishehar.com/wp-content/uploads/2020/09/MAHARAO-RAGHUVEER-SINGH-BAHADUR-257x300.jpg?ezimgfmt=rs:204x238/rscb1/ng:webp/ngcb1" /></p>
', N'Airway,Train,Buses', N'1', N'Mar 22 2023 11:32PM')
INSERT [dbo].[Review_Table] ([id], [userid], [pid], [subpid], [review], [rating], [status], [rts]) VALUES (7, 20, 6, 0, N'This place is the best i have ever visited !', 2, N'1', N'Mar 29 2023 12:35PM')
INSERT [dbo].[Review_Table] ([id], [userid], [pid], [subpid], [review], [rating], [status], [rts]) VALUES (8, 20, 4, 6, N'This place is the best i have ever visited !', 4, N'1', N'Mar 29 2023 12:37PM')
INSERT [dbo].[Review_Table] ([id], [userid], [pid], [subpid], [review], [rating], [status], [rts]) VALUES (9, 20, 6, 0, N'mount abu is best', 3, N'1', N'Mar 29 2023  6:50PM')
INSERT [dbo].[Review_Table] ([id], [userid], [pid], [subpid], [review], [rating], [status], [rts]) VALUES (10, 20, 6, 0, N'mount abu is very good', 4, N'1', N'Mar 29 2023  6:50PM')
INSERT [dbo].[Review_Table] ([id], [userid], [pid], [subpid], [review], [rating], [status], [rts]) VALUES (13, 20, 4, 6, N'Good And Best', 5, N'1', N'Mar 29 2023 12:37PM')
INSERT [dbo].[Review_Table] ([id], [userid], [pid], [subpid], [review], [rating], [status], [rts]) VALUES (11, 20, 6, 0, N'very good', 5, N'1', N'Mar 29 2023  6:50PM')
INSERT [dbo].[Review_Table] ([id], [userid], [pid], [subpid], [review], [rating], [status], [rts]) VALUES (12, 20, 6, 0, N'bad', 1, N'1', N'Mar 29 2023  6:50PM')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (0, N'', N'0')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (1, N'Andaman & Nicobar Islands', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (2, N'Andhra Pradesh', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (3, N'Arunachal Pradesh', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (4, N'Assam', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (5, N'Bihar', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (6, N'Chandigarh', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (7, N'Chhattisgarh', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (8, N'Dadra & Nagar Haveli', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (9, N'Daman & Diu', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (10, N'Delhi', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (11, N'Goa', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (12, N'Gujarat', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (13, N'Haryana', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (14, N'Himachal Pradesh', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (15, N'Jammu & Kashmir', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (16, N'Jharkhand', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (17, N'Karnataka', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (18, N'Kerala', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (19, N'Lakshadweep', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (20, N'Madhya Pradesh', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (21, N'Maharashtra', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (22, N'Manipur', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (23, N'Meghalaya', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (24, N'Mizoram', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (25, N'Nagaland', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (26, N'Odisha', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (27, N'Puducherry', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (28, N'Punjab', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (29, N'Rajasthan', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (30, N'Sikkim', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (31, N'Tamil Nadu', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (32, N'Tripura', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (33, N'Uttar Pradesh', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (34, N'Uttarakhand', N'Active')
INSERT [dbo].[State_Table] ([state_id], [state_title], [status]) VALUES (35, N'West Bengal', N'Active')
INSERT [dbo].[UserTable] ([uid], [uname], [uemail], [umobile], [upassword], [usalt], [uimage], [uaddress], [ucity], [ucountry], [uzipcode], [uabout], [status], [rts]) VALUES (22, N'om sharma', N'omsharma9367@gmail.com', N'', N'3116a9MSxLrVEEtQ5bOQeFOCsVsdiEI7HU4ug2Cymy8=', N'fTpEVhjz2zJvuEmd+sAvJg==', N'om sharma.jpeg', N'', N'', N'', N'', N'', N'1', N'Apr  6 2023  5:42PM')
USE [master]
GO
ALTER DATABASE [placetogo] SET  READ_WRITE 
GO
