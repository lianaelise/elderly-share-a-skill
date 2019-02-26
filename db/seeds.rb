# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying'

# Teacher.destroy_all
# Student.destroy_all
# Subject.destroy_all
# # Skill.destroy_all
# Review.destroy_all

puts 'completed'


puts 'Creating teachers'
user1 = Teacher.create(first_name:'Carlos', last_name:'Perez', email: 'carlos@gmail.com', password:'123456', address:'Calle Maestro Victoria, 2, 28013 Madrid, Spain', phone_number:'048928583')
user2 = Teacher.create(first_name:'Paul', last_name:'Smith', email: 'paul@gmail.com', password:'123456', address:'75008 Paris, France', phone_number:'94852985')
user3 = Teacher.create(first_name:'John', last_name:'Davis', email: 'john@gmail.com', password:'123456', address:'24 Inverness St, Camden Town, London NW1 7HJ, UK', phone_number:'4536357')
user4 = Teacher.create(first_name:'Jennifer', last_name:'Wilson', email: 'Jennifer@gmail.com', password:'123456', address:'769A Washington Ave, Brooklyn, NY 11238, USA', phone_number:'9856735')

puts 'Creating students'
Student.create(first_name:'Linda', last_name:'Hill', email:'linda@gmail.com', password:'123456', address:'Kurfürstenstraße 76, 10787 Berlin, Germany', phone_number:'45809852')
Student.create(first_name:'Mary', last_name:'Lopez', email:'mary@gmail.com', password:'123456', address:'Klausner St 12, Tel Aviv-Yafo', phone_number:'054677575')
Student.create(first_name:'Jeremy', last_name:'Foster', email:'jeremy@gmail.com', password:'123456', address:'Tagore St 30, Tel Aviv-Yafo', phone_number:'050484735')
Student.create(first_name:'Emily', last_name:'Ward', email:'emily@gmail.com', password:'123456', address:'Whithaugh Park, Newcastleton TD9 0TY, UK', phone_number:'050484735')

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

Skill.create(name:'Drawing',teacher_id: user1.id, subject_id: sub1.id)
Skill.create(name:'Pâtisserie',teacher_id:user2.id, subject_id: sub2.id)
Skill.create(name:'Origami',teacher_id:user3.id, subject_id: sub3.id)
