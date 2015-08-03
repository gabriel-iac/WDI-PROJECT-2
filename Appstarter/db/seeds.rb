User.destroy_all
Project.destroy_all

u1 = User.create!(name: 'Gabriel iac', username: 'ninja', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://rs581.pbsrc.com/albums/ss252/sarge0946/Big%20Cats/tiger1b.jpg~c200')
u2 = User.create!(name: 'Chuck Norris', username: 'god', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'https://usahitman.com/wp-content/uploads/2012/06/Chuck-norris1.jpg')
u3 = User.create!(name: 'Vittorio Sgarbi', username: 'capra', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://www.trapanioggi.it/wp-content/uploads/2014/05/Sgarbi_capra.jpg')
u4 = User.create!(name: 'Spidermn', username: 'spider', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://s1.static.gotsmile.net/images/2011/08/22/black-spiderman-fail_13140071484.jpg')

# projects(id: integer, name: string, creator: string, description: text, image: text, deadline: date, goal: float, user_id: integer, created_at: datetime, updated_at: datetime)

p1 = u1.projects.create!(name: 'Moon landing', creator: 'Amstrong co.', description: 'Lorem ipsum dolor esset', image: 'https://ksr-ugc.imgix.net/projects/1950682/photo-original.jpg?v=1435699216&w=218&h=162&fit=crop&auto=format&q=92&s=8fd69b8ad600741bc99f0d61e9a444a6', goal: 100000000000, user_id: 1)

p2 = u2.projects.create!(name: 'Everest Cruise', creator: 'Schettino co.', description: 'Lorem ipsum dolor esset', image: 'http://thetraveljam.com/wp-content/uploads/2015/01/Miky-in-Norway-Geiranger.jpg', goal: 300000000, user_id: 1)

# Reward(id: integer, title: string, value: float, description: text, quantity: integer, estimated_delivery: date, project_id: integer, created_at: datetime, updated_at: datetime)

r1 = p1.rewards.create!(title: 'T-shirt', value: 100, description: 'A t-shirt with logo', quantity: 50, project_id: 1)
r1 = p1.rewards.create!(title: 'Space suit', value: 4000, description: 'A Completely new spacesuit with google glass', quantity: 10, project_id: 1)