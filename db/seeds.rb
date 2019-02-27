# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying'

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
He went on to appear on Cardiff's Red Dragon FM, followed by a presented the late night 10pm – 2am show. ")
user2 = Teacher.create(first_name:'Paul', last_name:'Smith', email: 'paul@gmail.com', password:'123456', address:'75008 Paris, France', phone_number:'94852985', remote_picture_url:'https://images.pexels.com/photos/334029/pexels-photo-334029.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
user3 = Teacher.create(first_name:'John', last_name:'Davis', email: 'john@gmail.com', password:'123456', address:'24 Inverness St, Camden Town, London NW1 7HJ, UK', phone_number:'4536357', remote_picture_url:'https://images.pexels.com/photos/160422/man-hat-portrait-old-man-160422.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
user4 = Teacher.create(first_name:'Jennifer', last_name:'Wilson', email: 'Jennifer@gmail.com', password:'123456', address:'Israelis St, Tel Aviv-Yafo', phone_number:'9856735', remote_picture_url:'https://images.pexels.com/photos/70578/dependent-dementia-woman-old-70578.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')

puts 'Creating students'
Student.create(first_name:'Linda', last_name:'Hill', email:'linda@gmail.com', password:'123456', address:'Kurfürstenstraße 76, 10787 Berlin, Germany', phone_number:'45809852', remote_picture_url:'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
Student.create(first_name:'Mary', last_name:'Lopez', email:'mary@gmail.com', password:'123456', address:'Klausner St 12, Tel Aviv-Yafo', phone_number:'054677575', remote_picture_url:'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
Student.create(first_name:'Jeremy', last_name:'Foster', email:'jeremy@gmail.com', password:'123456', address:'Tagore St 30, Tel Aviv-Yafo', phone_number:'050484735', remote_picture_url:'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
Student.create(first_name:'Emily', last_name:'Ward', email:'emily@gmail.com', password:'123456', address:'Israelis St, Tel Aviv-Yafo', phone_number:'050484735', remote_picture_url:'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')

puts 'Creatign Subject'
sub1 = Subject.create(name: 'Art')
sub2 = Subject.create(name: 'Cooking')
sub3 = Subject.create(name: 'Crafting')
sub4 = Subject.create(name: 'Language')
sub5 = Subject.create(name: 'Literature')
Subject.create(name: 'History')
Subject.create(name: 'Math')
Subject.create(name: 'Music')
Subject.create(name: 'Photography')
Subject.create(name: 'Philosophy')
Subject.create(name: 'Sience')
Subject.create(name: 'Writing')
Subject.create(name: 'Others')

puts 'Creating Sskills'
Skill.create(name:'Drawing',teacher_id: user1.id, subject_id: sub1.id)
Skill.create(name:'Pâtisserie',teacher_id:user2.id, subject_id: sub2.id)
Skill.create(name:'Origami',teacher_id:user3.id, subject_id: sub3.id)
Skill.create(name:'Spanish History',teacher_id: user1.id, subject_id: sub1.id)
