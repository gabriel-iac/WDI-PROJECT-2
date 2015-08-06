User.destroy_all
Project.destroy_all
Reward.destroy_all
Comment.destroy_all
Category.destroy_all

u1 = User.create!(name: 'Gabriel iac', username: 'ninja', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://rs581.pbsrc.com/albums/ss252/sarge0946/Big%20Cats/tiger1b.jpg~c200')
u2 = User.create!(name: 'Chuck Norris', username: 'god', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'https://usahitman.com/wp-content/uploads/2012/06/Chuck-norris1.jpg')
u3 = User.create!(name: 'Vittorio Sgarbi', username: 'capra', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://www.trapanioggi.it/wp-content/uploads/2014/05/Sgarbi_capra.jpg')
u4 = User.create!(name: 'Spidermn', username: 'spider', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://s1.static.gotsmile.net/images/2011/08/22/black-spiderman-fail_13140071484.jpg')

cat1 = Category.create!(name: 'Games')
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

p4 = u2.projects.create!(name: 'Memory', creator: 'Memo co.', description: 'Lorem ipsum dolor esset', image: 'http://thetraveljam.com/wp-content/uploads/2015/01/Miky-in-Norway-Geiranger.jpg', goal: 300000000, user_id: 1, category_id:6)

p5 = u1.projects.create!(name: 'Fun with flags', creator: 'Cooper co.', description: 'Lorem ipsum dolor esset', image: 'http://thetraveljam.com/wp-content/uploads/2015/01/Miky-in-Norway-Geiranger.jpg', goal: 300000000, user_id: 4, category_id:5)

p6 = u3.projects.create!(name: 'Foosball', creator: 'Italians rules co.', description: 'Lorem ipsum dolor esset', image: 'http://thetraveljam.com/wp-content/uploads/2015/01/Miky-in-Norway-Geiranger.jpg', goal: 300000000, user_id: 4, category_id:4)



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


