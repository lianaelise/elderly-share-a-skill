# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying'

GEOCODING_COOLDOWN_PERIOD = 2

Review.destroy_all
Skill.destroy_all
Subject.destroy_all
Message.destroy_all
Chat.destroy_all
Teacher.destroy_all
Student.destroy_all

puts 'completed'


puts 'Creating teachers'
user1 = Teacher.create(first_name:'Carlos', last_name:'Perez', email: 'carlos@gmail.com', password:'123456', address:'Calle Maestro Victoria, 2, 28013 Madrid, Spain', phone_number:'048928583', remote_picture_url: "https://images.pexels.com/photos/25758/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
bio:"Still at school Watershed. In 1987 he joined Signal Radio in Stoke-on-Trent, where he presented the Drivetime show, still under his real name, where his vocal style was compared by many to.
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show.", latitude: 40.345967, longitude: -3.822412)
user2 = Teacher.create(first_name:'Paul', last_name:'Smith', email: 'paul@gmail.com', password:'123456', address:'75008 Paris, France', phone_number:'94852985', remote_picture_url:'https://images.pexels.com/photos/334029/pexels-photo-334029.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', bio:"Still at school Watershed. In 1987 he joined Signal Radio in Stoke-on-Trent, where he presented the Drivetime show, still under his real name, where his vocal style was compared by many to.
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show.", latitude: 48.856663, longitude: 2.351556)
user3 = Teacher.create(first_name:'John', last_name:'Davis', email: 'john@gmail.com', password:'123456', address:'24 Inverness St, Camden Town, London NW1 7HJ, UK', phone_number:'4536357', remote_picture_url:'https://images.pexels.com/photos/160422/man-hat-portrait-old-man-160422.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', bio:"Still at school Watershed. In 1987 he joined Signal Radio in Stoke-on-Trent, where he presented the Drivetime show, still under his real name, where his vocal style was compared by many to.
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show.",latitude: 51.539254, longitude: -0.142617)
user4 = Teacher.create(first_name:'Jennifer', last_name:'Wilson', email: 'Jennifer@gmail.com', password:'123456', address:'Shikun Dan', phone_number:'90569838', remote_picture_url:'https://cdn.pixabay.com/photo/2016/03/26/12/10/granny-1280445_1280.jpg', bio:"My favorite thing about being a stay-at-home-mom was dinnertime. I loved to hear my family’s stories from the day. I hope that by teaching my favorite pasta recipes, I can pass this tradition on to other families! When I’m not cooking, I’m tending to my flower garden or playing with my grandkids.",latitude: 32.180586, longitude: 34.893692)
user5 = Teacher.create(first_name:'Dalia', last_name:'Itzik', email: 'dalia@gmail.com', password:'123456', address:"Weizman St 63, Giv'atayim", phone_number:'95837245', remote_picture_url:'https://res.cloudinary.com/twenty20/private_images/t_standard-fit/v1521838928/photosp/de9ef81a-1b17-4f2f-9e6c-b4a613087133/de9ef81a-1b17-4f2f-9e6c-b4a613087133.jpg', bio:"Still at school Watershed. In 1987 he joined Signal Radio in Stoke-on-Trent, where he presented the Drivetime show, still under his real name, where his vocal style was compared by many to.
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show.", latitude: 32.06896, longitude: 34.808738)
user6 = Teacher.create(first_name:'Shlomo', last_name:'Cohen', email: 'shlomo@gmail.com', password:'123456', address:"Shim'oni St 9, Tel Aviv-Yafo", phone_number:'0493834', remote_picture_url:'https://res.cloudinary.com/twenty20/private_images/t_standard-fit/v1521838852/photosp/87249dcb-95ed-42cc-a91d-b3dd9549a788/87249dcb-95ed-42cc-a91d-b3dd9549a788.jpg', bio:"Still at school Watershed. In 1987 he joined Signal Radio in Stoke-on-Trent, where he presented the Drivetime show, still under his real name, where his vocal style was compared by many to.
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show.", latitude: 32.106717 ,longitude: 34.793062)
user7 = Teacher.create(first_name:'Vered', last_name:'Grin', email: 'vered@gmail.com', password:'123456', address:"Kaufmann St 2, Tel Aviv-Yafo", phone_number:'9385730', remote_picture_url:'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/k-168-pom-teddy-6011.jpg?auto=format&bg=F4F4F3&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-1.1.0&mark=rawpixel-watermark.png&markalpha=90&markpad=13&markscale=10&markx=25&q=75&usm=15&vib=3&w=1800&s=29acffd72de6befb9db0f3a53a6a66c6', bio:"Still at school Watershed. In 1987 he joined Signal Radio in Stoke-on-Trent, where he presented the Drivetime show, still under his real name, where his vocal style was compared by many to.
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show.", latitude: 32.085443, longitude:  34.782175)
user8 = Teacher.create(first_name:'Amnon', last_name:'Ben', email: 'amnon@gmail.com', password:'123456', address:"HaCarmel St 11 Street, Tel Aviv-Yafo", phone_number:'896848', remote_picture_url:'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/311-ted3634-eye.jpg?auto=format&bg=F4F4F3&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-1.1.0&mark=rawpixel-watermark.png&markalpha=90&markpad=13&markscale=10&markx=25&q=75&usm=15&vib=3&w=1800&s=1cb93fc7b6f1968aa33975eae6dcdf5e', bio:"Still at school Watershed. In 1987 he joined Signal Radio in Stoke-on-Trent, where he presented the Drivetime show, still under his real name, where his vocal style was compared by many to.
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show.", latitude: 32.068111, longitude: 34.768152)
user9 = Teacher.create(first_name:'Yoav', last_name:'Ben Zvi', email: 'yoav@gmail.com', password:'123456', address:"Shlomo Ibn Gabirol St 12, Tel Aviv-Yafo", phone_number:'9856735', remote_picture_url:'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/262-pom2646-eye.jpg?auto=format&bg=F4F4F3&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-1.1.0&mark=rawpixel-watermark.png&markalpha=90&markpad=13&markscale=10&markx=25&q=75&usm=15&vib=3&w=1800&s=177ae8443fa48849eb32c04dfdf8622d', bio:"I received my undergraduate degree from Hebrew University. After the six-day war, I moved to New York, where I obtained an MBA from the University of NY Rochester. I worked for Israeli Discount Bank until my retirement. When I’m not meeting with students, I’m either catching up on current events, attending a show at the performing arts center or learning something new (currently perfecting my Spanish)!", latitude: 32.085443,longitude: 34.782175)
user10 = Teacher.create(first_name:'Benjamin', last_name:'Morris', email: 'benjamin@gmail.com', password:'123456', address:"Heisteeg 4, 1012 WC Amsterdam, Netherlands", phone_number:'456787654', remote_picture_url:'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/311-ted4110-eye.jpg?auto=format&bg=F4F4F3&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-1.1.0&mark=rawpixel-watermark.png&markalpha=90&markpad=13&markscale=10&markx=25&q=75&usm=15&vib=3&w=1800&s=d786c219cbd845a56c4c412881c871b5', bio:"Still at school Watershed. In 1987 he joined Signal Radio in Stoke-on-Trent, where he presented the Drivetime show, still under his real name, where his vocal style was compared by many to.
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show.", latitude: 52.368873,longitude: 4.888461)
user11 = Teacher.create(first_name:'Shirley', last_name:'Brooks', email: 'shirley@gmail.com', password:'123456', address:"Elifelet St 23, Tel Aviv-Yafo", phone_number:'98765434', remote_picture_url:'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/312-ted8609-ae.jpg?auto=format&bg=F4F4F3&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-1.1.0&mark=rawpixel-watermark.png&markalpha=90&markpad=13&markscale=10&markx=25&q=75&usm=15&vib=3&w=1800&s=d5eca2204c4f2c21fc52c9e983a0048f', bio:"Hi! I’m Shirley! For several years I worked as a museum curator at the Tel Aviv Museum of Art. My current favorite artist is Adonna Khare. In the summers I host art workshops for kids! The workshops include healthy breakfasts and traditional Israeli mazetim for lunch. I love it because I can combine my two passions, art and cooking.", latitude: 32.057134,longitude: 34.76411)
user12 = Teacher.create(first_name:'Dennis', last_name:'Lee', email: 'dennis@gmail.com', password:'123456', address:"Sheinkin St 48, Giv'atayim", phone_number:'34567876', remote_picture_url:'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/312-pai4392-eye.jpg?auto=format&bg=F4F4F3&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-1.1.0&mark=rawpixel-watermark.png&markalpha=90&markpad=13&markscale=10&markx=25&q=75&usm=15&vib=3&w=1800&s=4a52c564a25a54eaeb40a197f72b06c1', bio:"Still at school Watershed. In 1987 he joined Signal Radio in Stoke-on-Trent, where he presented the Drivetime show, still under his real name, where his vocal style was compared by many to.
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show.", latitude: 32.075516,longitude: 34.813706)
user13 = Teacher.create(first_name:'Alice', last_name:'Nelson', email: 'alice@gmail.com', password:'123456', address:"Yishkon St 36, Tel Aviv-Yafo", phone_number:'234567654', remote_picture_url:'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/345-pai3902-jj-r2-01.jpg?auto=format&bg=F4F4F3&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-1.1.0&mark=rawpixel-watermark.png&markalpha=90&markpad=13&markscale=10&markx=25&q=75&usm=15&vib=3&w=1800&s=054820350b49b2b546aed9130a831f69', bio:"After my service in the IDF, I headed to medical school in Rome. I fell in love with the city and its history, and quickly changed my focus. I went on to earn a Ph.D. in Roman History and Archeology and secured a job in the Roman Department of the Israel Antiquities Authority. In my free time, I love to throw parties for my friends – I even brew my own beer!", latitude: 32.068586,longitude: 34.768233)
user14 = Teacher.create(first_name:'Keith', last_name:'Baker', email: 'baker@gmail.com', password:'123456', address:"10 Adelaide St, Covent Garden, London WC2N 4HZ, UK", phone_number:'4567654', remote_picture_url:'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/312-ted7640-chim.jpg?auto=format&bg=F4F4F3&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-1.1.0&mark=rawpixel-watermark.png&markalpha=90&markpad=13&markscale=10&markx=25&q=75&usm=15&vib=3&w=1800&s=fc70e61bb9a409a91cab873638994dbc', bio:"Still at school Watershed. In 1987 he joined Signal Radio in Stoke-on-Trent, where he presented the Drivetime show, still under his real name, where his vocal style was compared by many to.
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show.", latitude: 51.512917,longitude: -0.124156)
user15 = Teacher.create(first_name:'Peter', last_name:'Lewis', email: 'peter@gmail.com', password:'123456', address:"Patision 217, Athina 112 53, Greece", phone_number:'3456054', remote_picture_url:'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/rm22-72-technology-001_1.jpg?auto=format&bg=F4F4F3&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-1.1.0&mark=rawpixel-watermark.png&markalpha=90&markpad=13&markscale=10&markx=25&q=75&usm=15&vib=3&w=1800&s=525c7cf91f2659551554f70678080722', bio:"Still at school Watershed. In 1987 he joined Signal Radio in Stoke-on-Trent, where he presented the Drivetime show, still under his real name, where his vocal style was compared by many to.
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show.", latitude: 38.007790,longitude: 23.734980)


puts 'Creating students'
Student.create(first_name:'Linda', last_name:'Hill', email:'linda@gmail.com', password:'123456', address:'Kurfürstenstraße 76, 10787 Berlin, Germany', phone_number:'45809852', remote_picture_url:'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', latitude: 52.503883, longitude: 13.347797)
Student.create(first_name:'Mary', last_name:'Lopez', email:'mary@gmail.com', password:'123456', address:'Klausner St 12, Tel Aviv-Yafo', phone_number:'054677575', remote_picture_url:'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', latitude: 32.113376, longitude: 34.808415)
Student.create(first_name:'Jeremy', last_name:'Foster', email:'jeremy@gmail.com', password:'123456', address:'Tagore St 30, Tel Aviv-Yafo', phone_number:'050484735', remote_picture_url:'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', latitude: 32.116243, longitude: 34.797249)
Student.create(first_name:'Emily', last_name:'Ward', email:'emily@gmail.com', password:'123456', address:'Israelis St, Tel Aviv-Yafo', phone_number:'050484735', remote_picture_url:'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', latitude: 32.080678, longitude: 34.774566)

puts 'Creatign Subject'
sub1 = Subject.create(name: 'Art')
sub2 = Subject.create(name: 'Cooking')
sub3 = Subject.create(name: 'Crafting')
sub4 = Subject.create(name: 'Language')
sub5 = Subject.create(name: 'Literature')
sub6 = Subject.create(name: 'History')
sub7 = Subject.create(name: 'Math')
sub8 = Subject.create(name: 'Music')
sub9 = Subject.create(name: 'Photography')
sub10 = Subject.create(name: 'Philosophy')
sub11 = Subject.create(name: 'Science')
sub12 = Subject.create(name: 'Writing')
Subject.create(name: 'Others')

puts 'Creating Skills'
Skill.create(name:'Drawing', teacher_id: user1.id, subject_id: sub1.id)
Skill.create(name:'Drawing', teacher_id: user11.id, subject_id: sub1.id)
Skill.create(name:'Pâtisserie', teacher_id: user2.id, subject_id: sub2.id)
Skill.create(name:'Origami', teacher_id: user3.id, subject_id: sub3.id)
Skill.create(name:'Spanish History', teacher_id: user1.id, subject_id: sub1.id)

Skill.create(name:'Hebrew', teacher_id: user5.id, subject_id: sub4.id)
Skill.create(name:'Pasta', teacher_id: user4.id, subject_id: sub2.id)
Skill.create(name:'Piano', teacher_id: user6.id, subject_id: sub8.id)
Skill.create(name:'Hebrew', teacher_id: user7.id, subject_id: sub4.id)
Skill.create(name:'Jewish History', teacher_id: user8.id, subject_id: sub6.id)

Skill.create(name:'Statistics', teacher_id: user9.id, subject_id: sub7.id)
Skill.create(name:'Violin', teacher_id: user10.id, subject_id: sub8.id)
Skill.create(name:'Portaits', teacher_id: user11.id, subject_id: sub9.id)
Skill.create(name:'Landscapes', teacher_id: user12.id, subject_id: sub1.id)
Skill.create(name:'Roman History', teacher_id: user13.id, subject_id: sub6.id)

Skill.create(name:'Physics', teacher_id: user14.id, subject_id: sub11.id)
Skill.create(name:'Gardining', teacher_id: user15.id, subject_id: sub2.id)
Skill.create(name:'Israleli Food', teacher_id: user11.id, subject_id: sub2.id)
Skill.create(name:'Hebrew', teacher_id: user12.id, subject_id: sub4.id)
Skill.create(name:'Hebrew', teacher_id: user13.id, subject_id: sub4.id)
