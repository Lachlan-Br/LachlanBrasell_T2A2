# README


# Lachlan Brasell T2A2 Marketplace Assessment

Marketplace Assessment - Coders Academy - T2A2


## The Problem trying to be solved via this App:

A central place for people / investors / recruiters to find beginner devs that show promise in their applications etc. 
easy access for developers to show their promise and a revamp of current websites allowing these practices. (TLDR - Recruitment and image revamp of tech.)

There are many different websites out there that allow a user to sell items to investors / recruiters / everyday people, website like this for
applications are flooded with information on each page, not user-friendly, no focus for starting developers and usually are just junk spaces
of semi-broken applications and a dump for the creators "easy to use mobile app to get money". This website is there for serious developers
to show thier skills in the form of applications and websites for people to view / buy and potentially recruit the original dev/devs. 
In lamens it's a website designed to bypass the money laundering of current application websites, allow devs for exposure and to trying
allow the everyday person to appreciate / purchase said apps.
In the current circumstances of a epidemic many have resorted to learning / understanding more in-depth the code / tech industry and thus
websites like these are needed so the image of said industry is not that of the previously mentioned websites. Overall a revamp so to say on the current
herrondous state of startup apps / recruitment of small devs.

## Why is it a problem that needs solving?

It isn’t very easy to show people your application in places such as linkedin or github as linkedin won’t be able to display what you wish very
 easily and github files can be forked / edited as people please if set to public for showing others. The issue is acecssability and advertisement issues. 
This is a middle ground to allow both people of the trade to view works and ideas as well as people trying to get into tech. 
With the previoulsy mentioned much needed revamp of these sites which are usualy just money grabs of some sort.

## URL to your deployed app.

Unfortunately due to development issues the website is not accessable but would be: vendapps.herokuapp.com

## GitHub repository (repo).

Current repo for Marketplace Assessment: https://github.com/Lachlan-Br/LachlanBrasell_T2A2

## Description of your marketplace app (website), including:

Purpose
Allow small time devs to sell applications - get hired into bigger corporations- allow everyday people to view potential apps they could use - allow investors and or managers to recruit or invest into applications
that would otherwise not be seen.

Functionality / features
Application listing - User system - opt in seller system - picture (maybe video) upload system - 
detailing of selling piece - custom UI for ease of access - admin acc function - Stretch: Multiple picture upload for sellers 
/ Options for purchases - comments and reviews - search bar for items - seller item lists and contact via email system.

Sitemap:
*************** PICTURE HERE

Target audience:

the target audiance are those who are interested in tech and starting up if self-taught or just graduating / in schooling - 
For tech savvy people who wish to view potential everyday apps without a third party payment -
investors trying to invest in small time app devs or 
applications in general - recruiters looking for some talent within thier company - 
People in general who are curious of app development. (TLDR)
In general People who wish to invest time/money into applications made via smaller developers.

Tech stack:
Heroku: Heroku itself is a PaaS - Platform as a service - It in general is a container-based cloud PaaS, 
heroku is used for deploying and management of apps. The application in focus will be using heroku’s free model for smaller applications. 
A big benefit of this application is the Git integration which allows for updates and branch pushes to be very efficient.

SCSS/CSS: CSS is a style language that is used to style and create web pages. While SCSS is a particular type of file for SASS, 
it used the Ruby language, which assembles the browser's CSS style sheets. SCSS contains advanced and modified features. SCSS is more expressive
 than CSS. (attr https://www.geeksforgeeks.org/what-is-the-difference-between-css-and-scss/)

Ruby: Ruby is a pure object-oriented programming language. with a focus on simplicity and productivity. 
It has an elegant syntax that is natural to read and easy to write. it is a general-purpose language similar to Python, so it has many other
 applications like data analysis, prototyping, and proof of concepts. (attr https://careerkarma.com/blog/what-is-ruby-used-for/ )

Rails / Ruby on rails: Ruby on Rails is an open-source software used to build web applications. Rails is a framework used to create
 websites using the general-purpose programming language Ruby.  It's known for efficiency and scalability. You can write rich functionality 
 with much fewer lines of code. (attr https://www.mindbowser.com/what-is-ruby-on-rails/)

HTML: Hypertext Markup Language (HTML) is a language that uses markup codes. 
The HTML document is a plain text file with embedded markup codes. The markup codes are typed into a document and control the formatting 
and layout of your finished document. (attr https://library.salve.edu/tutorials/javascript/ch1_1.html)
## User stories for your app

Trello picture **************
## Wireframes for your app

Picture upload *****************
## An ERD for your app

Picture upload ****************
## Explain the different high-level components (abstractions) in your app

Within the application there are a multitude of controllers which interact with the User and or storage of
various data within some models, these act together to render out a view. In short the data from models are used from the
stated controllers to turn things within the view into rendered pieces.

For the most part of the piece, devise has been set up with simple forms for the app to authorise users easily
 with signing up and signing in. There is a home controller allowing for listing visuals and models (with a home page) that use 
 ruby logic to render said pieces as separates items. The listings are labelled within the corresponding users through param access for further 
 clarification which the bulk again is done via CRUD within previously mentioned param access. The implementation of payments via webhooks / 
 payments controller allowing for successful payment actions (with stripe) This however may be out of scope and not implemented in time due to 
 constraints. Most of the data is relied upon of the Items_app as it is the main operational point within the application, this allows for comments
 to link upon and render and for implementaion of application details.

## Third party services used in this application:

Cloudinary (Not used due to complications) ->  This is a image cloud hosting service allowing for the off-loading of multiple pieces 
/ tasks (upload / handling) of image assets. This allows for fast and efficient uploading.

Heroku -> Heroku itself is a PaaS - Platform as a service - It in general is a container-based cloud PaaS, heroku is used for
 deploying and management of apps. The application in focus will be using heroku’s free model for smaller applications. A big benefit of this 
 application is the Git integration which allows for updates and branch pushes to be very efficient.

Git -> Git is a very well known storage / cloud-based service helping many devs with storage and management of their codes, 
it is a version control service which is extremely helpful in times of backups / hiccups in coding. Perfect for tracking and controlling 
changes within ones code.

Stripe -> Stripes software includes both a payment processing platform, as well as a credit card payment gateway, and both are required
 in each successful online transaction - If errors occur Stripe has an automated system of declining and returning with notification of 
 using a different method. Overall a very easy to use and efficient software for payments.

## Project models relations - Database relations implemented

A database created within rails uses the ARA or active record associations to be able to relate/ 
create relationships between the different pieces (models) present within the database itself. With the implementation of FK (foriegn keys)
 and PK (primary keys) which take the forefront and foundations of the said relation databases. The keys themselves are used to help with 
 connections between different models and rely on said PK for identification and FK for references. This database is relied upon / build using 
 postgreSQL.

Within the structure this database relies upon Users and Sellers, the two largest pieces which will be seen in the Structure
 diagram. Depending on each other with FK and thus items cannot be created without having a Seller account and User ID. Each person 
 (user/seller) has their logins for tracking of images and username identification (seen on navbar) and is used for linkage of images within apps.
  Each application hold a large amount of data which links itself to items within the seller opt.

## Describe the way tasks are allocated and tracked in your project

Trello picture *****************