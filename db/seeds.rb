# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Tarea 10: Crear 5 usuarios

#5.times do |usuario|
  #nusuario => 0 + 1 = 1
  #nusuario => 1 + 1 = 2
  #nusuario => 2 + 1 = 3
  #nusuario => 3 + 1 = 4
  #nusuario => 4 + 1 = 5
#t = User.new
#t.first_name = "Usuario #{nusuario + 1}"
#t.last_name = "Lobos"
#t.email_address = "rita@gmail.com"
#t.save()

  #1.upto(5) do |nusuario|
  #nusuario => 1 
  #nusuario => 2
  #nusuario => 3
  #nusuario => 4
  #nusuario => 5
  
#t = User.new
#t.first_name = "Usuario #{nusuario}"
#t.last_name = "Lobos"
#t.email_address = "rita@gmail.com"
#t.save()

t = User.new
t.first_name = "Usuario 1"
t.last_name = "Lobos"
t.email_address = "rita@gmail.com"
t.save()

t = User.new
t.first_name = "Usuario 2"
t.last_name = "Fuentes"
t.email_address = "marcela@gmail.com"
t.save()

t = User.new
t.first_name = "Usuario 3"
t.last_name = "Alanis"
t.email_address = "roberto@gmail.com"
t.save()

t = User.new
t.first_name = "Usuario 4"
t.last_name = "Bustos"
t.email_address = "juan@gmail.com"
t.save()

t = User.new
t.first_name = "Usuario 5"
t.last_name = "Uribe"
t.email_address = "milca@gmail.com"
t.save()

puts "Usuarios creados: #{User.all.count}"
puts "Tarea 10. Hecha"

#Tarea 11: Crear blogs

#1.upto(5) do |nblog|
#t = Blog.new
#t.name = "Blog #{nblog}"
#t.description = "Descripcion blog 1"
#t.save()

t = Blog.new
t.name = "Blog 1"
t.description = "Descripcion blog 1"
t.save()

t = Blog.new
t.name = "Blog 2"
t.description = "Descripcion blog 2"
t.save()

t = Blog.new
t.name = "Blog 3"
t.description = "Descripcion blog 3"
t.save()

t = Blog.new
t.name = "Blog 4"
t.description = "Descripcion blog 4"
t.save()

t = Blog.new
t.name = "Blog 5"
t.description = "Descripcion blog 5"
t.save()

puts "Blogs creados: #{Blog.all.count}"
puts "Tarea 11. Hecha"

#Tarea 12: Esteblecer que los tres primeros blog pertenezcan al primer usuario.

#1.upto(3) do |nblog|
  #ow = Owner.new
  #ow.user = User.where(first_name: "Usuario 1").first
  #ow.blog = Blog.where(name: "Blog #{nblog}").first
  #ow.save

ow = Owner.new
ow.user = User.where(first_name: "Usuario 1").first
ow.blog = Blog.where(name: "Blog 1").first
ow.save

ow = Owner.new
ow.user = User.where(first_name: "Usuario ").first
ow.blog = Blog.where(name: "Blog 2").first
ow.save

ow = Owner.new
ow.user = User.where(first_name: "Usuario 1").first
ow.blog = Blog.where(name: "Blog 3").first
ow.save

puts User.where(first_name: "Usuario 1").first.owner.count
puts "Tarea 12. Hecha"

#Tarea 13: Establecer que el blog 4, pertenezcan al segundo usuario

ow = Owner.new
ow.user = User.where(first_name: "Usuario 2").first
ow.blog = Blog.where(name: "Blog 4").first
ow.save

puts User.where(first_name: "Usuario 2").first.owner.count
puts "Tarea 13. Hecha"

#puts "#propiedades: #{User.where(first_name: "Usuario 2")
#.first.owner.count}"


#Tarea 14: Establecer que el blog 5, pertenezca al ultimo usuario.

ow = Owner.new
ow.user = User.where(first_name: "Usuario 5").first
ow.blog = Blog.where(name: "Blog 5").first
ow.save

puts User.where(first_name: "Usuario 5").first.owner.count
puts "Tarea 14. Hecha"

#Respuesta 2 es más completa
#puts User.where(first_name: "Usuario 5")
  #.first.owner
  #.where(blog: Blog.where(name: "Blog 5").first).count


#Tarea 15: Establecer que el tercer usuario sea propietario de todos los los Blogs.


#1.upto(5) do |nblog|
#ow = Owner.new
#ow.user = User.where(first_name: "Usuario 3").first
#ow.blog = Blog.where(name: "Blog #{nblog}").first
#ow.save

ow = Owner.new
ow.user = User.where(first_name: "Usuario 3").first
ow.blog = Blog.where(name: "Blog 1").first
ow.save

ow = Owner.new
ow.user = User.where(first_name: "Usuario 3").first
ow.blog = Blog.where(name: "Blog 2").first
ow.save

ow = Owner.new
ow.user = User.where(first_name: "Usuario 3").first
ow.blog = Blog.where(name: "Blog 3").first
ow.save

ow = Owner.new
ow.user = User.where(first_name: "Usuario 3").first
ow.blog = Blog.where(name: "Blog 4").first
ow.save

ow = Owner.new
ow.user = User.where(first_name: "Usuario 3").first
ow.blog = Blog.where(name: "Blog 5").first
ow.save

#puts User.where(first_name: "Usuario 3").first.owner.count

puts User.where(first_name: "Usuario 3").first.owner
  .where(blog: Blog
    .where(name: [
      "Blog 1", "Blog 2", "Blog 3", "Blog 4", "Blog 5"])).count

puts "Tarea 15. Hecha"

#Tarea 16 

1.upto (3) do |npost|
  p = Post.new
  p.title = "Post #{npost}"
  p.content = "Contenido 1"
  p.blog = Blog.where(name: "Blog 2").first
  p.user = User.where(first_name: "Usuario 1").first
  p.save()
end

ue = User.where(first_name: "Usuario 1").first
be = Blog.where(name: "Blog 2").first

puts "Post: #{Post.where(user: ue, blog: be).count}"
puts "Tarea 16. Hecha"

#Tarea 17 Haz que el segundo usuario cree 5 publicaciones para el ultimo blog

us2 = User.where(first_name: "Usuario 2").first
ulb = Blog.where(name: "Blog 5").first

1.upto(5) do |npost|
p = Post.new
p.title = "Post #{npost}"
p.content = "Contenido"
p.user = us2
p.blog = ulb
p.save
end

puts "Post: #{Post.where(blog: ulb, user: us2).count}"
puts "Tarea 17. Hecho."
