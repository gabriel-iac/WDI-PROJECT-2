User.destroy_all
Project.destroy_all
Reward.destroy_all
Comment.destroy_all
Category.destroy_all

u1 = User.create!(name: 'Gabriel Iacopetti', username: 'ninja', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://rs581.pbsrc.com/albums/ss252/sarge0946/Big%20Cats/tiger1b.jpg~c200')
u2 = User.create!(name: 'Chuck Norris', username: 'god', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'https://usahitman.com/wp-content/uploads/2012/06/Chuck-norris1.jpg')
u3 = User.create!(name: 'Vittorio Sgarbi', username: 'capra', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://www.trapanioggi.it/wp-content/uploads/2014/05/Sgarbi_capra.jpg')
u4 = User.create!(name: 'Spidermn', username: 'spider', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://s1.static.gotsmile.net/images/2011/08/22/black-spiderman-fail_13140071484.jpg')

cat1 = Category.create!(name: 'Photography')
cat2 = Category.create!(name: 'Social')
cat3 = Category.create!(name: 'Small Business')
cat4 = Category.create!(name: 'Tech')
cat5 = Category.create!(name: 'Entertainment')
cat6 = Category.create!(name: 'Music')

# projects(id: integer, name: string, creator: string, description: text, image: text, deadline: date, goal: float, user_id: integer, created_at: datetime, updated_at: datetime)

p1 = u1.projects.create!(name: 'Reboot the Suit', creator: 'Smithsonian Institution', description: "July 2019 marks the 50th anniversary of the Apollo 11 Moon landing, a feat so breathtaking in its scope and ambition that it captured the collective imaginations of audiences around the world. At the Smithsonian’s National Air and Space Museum, we use the power of real objects to tell stories like this one – stories of the vision, intellect, and courage of men and women who have overcome challenges and pushed boundaries to take the next giant leap for humankind.

For the Smithsonian’s first-ever Appstarter campaign, we are proud to announce plans to conserve, digitize, and display Neil Armstrong’s Apollo 11 spacesuit in time for this milestone anniversary. We want to preserve Armstrong’s spacesuit – and the story it tells of its incredible journey – down to the particles of lunar dust that cling to its surface. Just like the Apollo program, we will accomplish this in collaboration of thousands of people across the country and around the world. And that’s where you come in.

Isn't the Smithsonian federally funded? Good question! Federal appropriations provide the foundation of the Smithsonian's operating budget and support core functions, such as building operations and maintenance, research, and safeguarding the collections. Projects like Reboot the Suit aren’t covered by our federal appropriations, which means we can only undertake them if we can fund them some other way. ", image: 'https://ksr-ugc.imgix.net/projects/1950682/photo-original.jpg?v=1435699216&w=218&h=162&fit=crop&auto=format&q=92&s=8fd69b8ad600741bc99f0d61e9a444a6', goal: 500000, user_id: 1, category_id: 2)

p2 = u3.projects.create!(name: 'Phosphorences', creator: 'Hurricane Films', description: "The documentary will be an essential companion piece to the narrative. Narrated by Cynthia Nixon (who plays Emily in the feature film) PHOSPHORESCENCE will take us on a journey through the seasons of Emily's life in mid 1800’s New England as we engage with her passionate relationships via her letters and poems. Emily’s deep love of horticulture and music as well as her closeness to her family and friends will form a rich tapestry - combining elements of a natural history film and a Koyaanisqatsi-esque travelogue. Together with an ensemble cast of highly recognized actors lending their voices to her many correspondences not dissimilar in tone and feel to Ken Burns' American Civil War. And with the differing views and interpretations of her poetry by contemporary experts we aim to weave a story that will both surprise, delight and throw light on some controversial opinion from unexpected quarters. 

 The documentary will endeavor to reflect qualities inspired by its subject, Emily Dickinson – deft words, passionate beliefs, searing individuality and a great story well told. The film has the support of the Emily Dickinson Museum and will be completed in mid 2016.", image: 'http://thetraveljam.com/wp-content/uploads/2015/01/Miky-in-Norway-Geiranger.jpg', goal: 100000, user_id: 2, category_id:5)

p3 = u4.projects.create!(name: "Bring Ai Weiwei's Tree sculptures to London's Royal Academy", creator: 'Royal Academy of Arts', description: "“An act is worth a million thoughts.” Ai Weiwei

The Royal Academy of Arts wants to bring a significant sculpture by visionary Chinese artist Ai Weiwei to the RA Courtyard in the heart of London from September to December 2015. Be a part of a unique opportunity to support the work of Ai Weiwei and collaborate with Britain’s greatest independent artist-run organisation. Join the global conversation about art and activism; transcend national boundaries as people all over the world help us make this happen.

Who are we?

The Royal Academy of Arts (RA) brings major exhibitions to Piccadilly, in the heart of London. A unique, artist-run organisation which was founded by a mandate from King George in 1768, the RA is an independent charity which provides a clear strong voice for art and artists, and which runs the only free three-year postgraduate art school in the UK.

What do we want to do?

We want to enable a huge site-specific installation in the RA’s outdoor courtyard off Piccadilly, which will be free to enjoy by all visitors. The eight enormous Tree sculptures are created by one of China’s most visionary and provocative artists, Ai Weiwei. Ai’s work is brave, provocative and visionary, and gives voice not only to his own beliefs, but also those who have no voice.", image: 'http://thetraveljam.com/wp-content/uploads/2015/01/Miky-in-Norway-Geiranger.jpg', goal: 100000, user_id: 3, category_id:2)

p4 = u2.projects.create!(name: 'Time of Global Inequality', creator: 'Myles Little', description: "
  WORLDWIDE PHOTO EXHIBIT

I'm curating an exhibit of documentary photos about wealth inequality. After two years of work, it's traveling to 7 countries and counting (USA, China, UAE, Nigeria, Guatemala, Bosnia and Wales).

Included are some of the best photographers alive, like Christopher Anderson, Nina Berman and David Chancellor.

It's an exhibit people are calling:

“Haunting” — The Independent

“Incredible...fascinating...unique” — The Washington Post

“Gorgeous” — Refinery29

“Impressive” — Stern

“Glossy and disturbing” curated by “a rising leader and visionary in the industry” —The Huffington Post

Nobel Prize-winning economist Joseph Stiglitz is writing an essay for it. Geoff Dyer, National Book Critics Circle Award-winning author is also writing an essay.

Each of these shows is fully funded and ready to go.

BOOK

Recently, a major European publisher named Hatje Cantz has offered to make a book with the work. But, as is often the case with publishing these days, I’ll need to contribute part of the funding to cover the costs of production.

So I'm launching this Kickstarter campaign to help make that book happen.

FACTS ABOUT INEQUALITY

Take a look at these facts to see why inequality is such an urgent issue right now.

The top 1% of the population owns 50% of global wealth. 
Mexican billionaire Carlos Slim has so much money that the interest he makes off it alone is equivalent to the average annual wages of 400,000 Mexicans. 
Six members of the Walton family own more wealth than the bottom 40% of America. 
In 2014, the top five hedge fund managers in America made about one billion dollars each. 
Inequality in the US is at a 100-year peak. 
From 2009 to 2012, the top 1% of Americans saw their income grow by over 30%. The other 99% saw an increase of under 1%. 
Harvard Business School asked Americans how much they think major CEOs make relative to ordinary workers. The median respondent thought the ratio was perhaps 30 to 1. The reality? It's closer to 350 to 1.", image: 'http://thetraveljam.com/wp-content/uploads/2015/01/Miky-in-Norway-Geiranger.jpg', goal: 29500, user_id: 1, category_id:1)

p5 = u1.projects.create!(name: 'Remix Mini', creator: 'Jide Tech', description: "
Powered by our popular Remix OS, Remix Mini allows you to work and play with the entire Android app ecosystem while taking full advantage of intuitive PC features such as a taskbar, multiple window multi-tasking, mouse and keyboard support, and so much more.



But not in the traditional PC sense. While everyone else is spending top dollar for the latest hardware specs just to check their email and watch Youtube videos, we realized that there’s SO much more to creating a great PC. Through its carefully engineered optimization of hardware and software, Remix Mini is able to undeniably live up to its motto: less can be more.

The Remix Mini features a capacitive touch power button unlike any PC of its kind. Rather than awkwardly feeling around the back panel for that elusive power button, just gently tap the top of your Mini. Within seconds you’ll be able to start working and surfing the internet as you would with any other computer


Remix Mini is powered by the latest 64-bit chipset and delivers up to 20-30% better performance than its 32-bit counterparts. At the core of what makes this so special is actually what Remix Mini doesn’t need you to do. You will never have to worry about whether you’re installing the right bit version ever again. With Android, it all just works. 

Even at its small size, Remix Mini comes equipped with everything you need in order to stay connected: Ethernet, WiFi, Bluetooth, and USB. All of these options gives Remix Mini an unprecedented level of versatility for its size.  

The typical desktop computer clocks in at anywhere between 65 to 250 watts. Remix Mini gives you the same power of desktop computing at a mere 10 watts. By simply leveraging already existing power efficiencies found in mobile CPU architectures, Remix Mini is able to save you so much more in power without sacrificing anything in performance. 

To whom much is given, much is expected. Remix Mini comes in two versions. Both run Remix OS smoothly, but vary depending on how you plan on using your Mini. As a home media center, the 1G RAM + 8 GB storage gives you more than what you need to stream and download that blockbuster movie you’ve been dying to see. Now, if you’re looking for something with a bit more kick and productivity in mind, we highly recommend the 2G RAM + 16GB storage version. No matter what you decide, the choice will quite literally be in your hands.", image: 'http://thetraveljam.com/wp-content/uploads/2015/01/Miky-in-Norway-Geiranger.jpg', goal: 50000, user_id: 4, category_id:4)

p6 = u3.projects.create!(name: 'Community Through Food', creator: 'Benjamin Dailey', description: "COMMUNITY THROUGH FOOD
The Spanish word ‘cebo’ can be defined in many ways. Some of which may include things like; bait used to lure wild game, food as fuel or nourishment, or just plain fodder. The definition we use to represent this project goes more along the lines of ‘anything that is presented to entice’. Great food is an extremely powerful tool in creating a sense of community and interaction among those we serve. Great food, great people, and great memories… theses sometimes forgotten ideals are the foundation of Cebo. Eat Well!

Upon opening Cebo. will offer guests a 28 seat bistro-style craft dining experience utilizing locally sourced products and seasonal menus our elevated take on comfort food and new american cuisine are designed to meet varying price points suitable for multiple demographics. This business model is based on our fundamental belief in the power of food and socialization as well as the simple notion that EVERYONE deserves eat well! It is our sincere mission to create and promote the up and coming cultural revitalization happening in Geneva. We are firmly dedicated to serving our community and supporting other local small businesses and area farmers and producers. 

We have been working hard on renovations to our brick and mortar location at 34 Linden Street in beautiful downtown Geneva, NY. Through out this process we have been working diligently to get this concept up and running as soon as possible and are having some difficulties in raising additional funding to cover the expense of specific equipment installation needed for code compliance. Our fundraising goal of $7,500 for this campaign will cover the total equipment and installation cost of the exact exhaust and fire suppression system we will be required to have in order to operate. With some help from our family, friends, and the community we can get the doors open a lot sooner and move forward in the fun and exciting journey that is sure to come.... 

Thank you to everyone who is visiting this page and to everyone who has supported our mission moving forward. We are very much looking forward to opening the doors and adding to the vibrant and lively atmosphere that is blooming on Linden Street and in the city of Geneva.

We are truly taking a grassroots approach in launching Cebo. so any support will significantly help the cause... whether it be monetary backing, sharing our campaign on your social media page, or just plain word of mouth promotions we are very grateful for every ounce of support we have and will receive. 

", image: 'http://thetraveljam.com/wp-content/uploads/2015/01/Miky-in-Norway-Geiranger.jpg', goal: 7500, user_id: 4, category_id:3)



# Reward(id: integer, title: string, value: float, description: text, quantity: integer, estimated_delivery: date, project_id: integer, created_at: datetime, updated_at: datetime)

r1 = p1.rewards.create!(title: 'T-shirt', value: 100, description: 'A t-shirt with logo', quantity: 50, project_id: 1)
r1 = p1.rewards.create!(title: 'Space suit', value: 4000, description: 'A Completely new spacesuit with google glass', quantity: 10, project_id: 1)


r2 = p2.rewards.create!(title: 'Free dinner', value: 50, description: 'A Dinner', quantity: 50, project_id: 1)
r2 = p2.rewards.create!(title: 'Pool party', value: 4000, description: 'An incredible experience ', quantity: 10, project_id: 1)

r3 = p3.rewards.create!(title: 'Free dinner', value: 50, description: 'A Dinner', quantity: 50, project_id: 1)
r3 = p3.rewards.create!(title: 'Pool party', value: 4000, description: 'An incredible experience ', quantity: 10, project_id: 1)

r4 = p4.rewards.create!(title: 'Free dinner', value: 50, description: 'A Dinner', quantity: 50, project_id: 1)
r4 = p4.rewards.create!(title: 'Pool party', value: 4000, description: 'An incredible experience ', quantity: 10, project_id: 1)

r5 = p5.rewards.create!(title: 'Free dinner', value: 50, description: 'A Dinner', quantity: 50, project_id: 1)
r5 = p5.rewards.create!(title: 'Pool party', value: 4000, description: 'An incredible experience ', quantity: 10, project_id: 1)

r6 = p6.rewards.create!(title: 'Free dinner', value: 50, description: 'A Dinner', quantity: 50, project_id: 1)
r6 = p6.rewards.create!(title: 'Pool party', value: 4000, description: 'An incredible experience ', quantity: 10, project_id: 1)

# pl1 = r1.pledges.create!(amount: 100, user_id:2)
# pl2 = r1.pledges.create!(amount: 1000, user_id:2)
# pl3 = r2.pledges.create!(amount: 1000, user_id:3)
# pl4 = r1.pledges.create!(amount: 1000, user_id:4)



com1 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:1, user_id:2 )
com2 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:1, user_id:3 )

com3 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:2, user_id:4 )
com4 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:2, user_id:2 )

com5 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:3, user_id:2 )
com6 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:3, user_id:1 )

com7 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:4, user_id:3 )
com8 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:4, user_id:4 )

com9 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:5, user_id:1 )
com10 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:5, user_id:3 )
com11 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:6, user_id:4 )
com12 = Comment.create!(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed rutrum ante. Phasellus in neque ante. Sed varius sollicitudin tortor, ut facilisis lorem condimentum et. Aenean neque arcu, posuere a nulla ut, hendrerit commodo nulla. Donec elementum blandit lorem, quis eleifend enim iaculis sed. Aenean vestibulum orci ut velit placerat, id placerat ex pulvinar. Sed id pellentesque ex, ut molestie nisl. Nam et malesuada lorem. Quisque metus felis, auctor non justo sed, euismod accumsan sem. Phasellus ullamcorper nisi porta bibendum consectetur. Mauris at ultrices leo." , project_id:6, user_id:2 )


