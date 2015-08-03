User.destroy_all

u1 = User.create!(name: 'Gabriel iac', username: 'ninja', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://rs581.pbsrc.com/albums/ss252/sarge0946/Big%20Cats/tiger1b.jpg~c200')
u2 = User.create!(name: 'Chuck Norris', username: 'god', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'https://usahitman.com/wp-content/uploads/2012/06/Chuck-norris1.jpg')
u3 = User.create!(name: 'Vittorio Sgarbi', username: 'capra', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://www.trapanioggi.it/wp-content/uploads/2014/05/Sgarbi_capra.jpg')
u4 = User.create!(name: 'Spidermn', username: 'spider', password: '123', password_confirmation: '123' , bio: 'i hate errors' , avatar: 'http://s1.static.gotsmile.net/images/2011/08/22/black-spiderman-fail_13140071484.jpg')

# projects(id: integer, name: string, creator: string, description: text, image: text, deadline: date, goal: float, user_id: integer, created_at: datetime, updated_at: datetime)

u1.projects.create!(name: string, creator: string, description: Lorem ipsum dolor esset, image: text, deadline: date, goal: 3000, user_id: 1)