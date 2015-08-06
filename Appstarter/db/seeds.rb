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

p1 = u1.projects.create!(name: 'Moon landing', creator: 'Amstrong co.', description: 'Lorem ipsum dolor esset', image: 'https://ksr-ugc.imgix.net/projects/1950682/photo-original.jpg?v=1435699216&w=218&h=162&fit=crop&auto=format&q=92&s=8fd69b8ad600741bc99f0d61e9a444a6', goal: 100000000000, user_id: 1, category_id: 3)

p2 = u3.projects.create!(name: 'Everest Cruise', creator: 'Schettino co.', description: 'Lorem ipsum dolor esset', image: 'http://thetraveljam.com/wp-content/uploads/2015/01/Miky-in-Norway-Geiranger.jpg', goal: 300000000, user_id: 2, category_id:2)

p3 = u4.projects.create!(name: 'Funny pictures', creator: 'just gifs co.', description: 'Lorem ipsum dolor esset', image: 'http://thetraveljam.com/wp-content/uploads/2015/01/Miky-in-Norway-Geiranger.jpg', goal: 300000000, user_id: 3, category_id:1)

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


