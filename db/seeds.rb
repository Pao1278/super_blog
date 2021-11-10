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

#Tarea 18: Haz que el tercer usuario cree varias publicaciones en diferentes blog

#|t| en cada recorrido será una instancia de blog por su recorrido. Siempre que utilice un each este será hacia adelante. Lo más optimo es utilizar p.blog = t
us3 = User.where(first_name: "Usuario 3").first

Blog.all.each do |t|
  p = Post.new
  # p.blog = Blog.find(t.id)
  # p.blog = Blog.where(id: t.id).first
  p.blog = t
  p.user = us3
  p.title = "Un titulo"
  p.content ="Un contenido cualquiera"
  p.save
end

#Contar el numero de post que tiene el usuario 3

puts "#{Post.where(user:us3).count}"
#puts "#{us3.post.count}"
puts "Tarea 18. Hecha"

#Tarea 19: Haz que el tercer usuario cree 2 mensajes para la primera publicación crada y 3 mensajes para la segunda publicación creada.

#us3 = User.where(first_name: "Usuario 3").first

primpub = Post.all[0]
secpub = Post.all[1]

1.upto(2) do |t|
m = Message.new
m.post = primpub
m.user = us3
m.author = "algun author"
m.message = "aqui va algun mensaje"
end


1.upto(3) do |t|
m = Message.new
m.post = secpub
m.user = us3
m.author = "algun author"
m.message = "aqui va algun mensaje"
m.save
end

#Contar el numero de Messages del usuario 3

#puts us3.message.count

puts Message.where(user: us3).count
puts "Tarea 19. Hecha"

#Tarea 20: Haz que el cuarto usuario cree tres mensajes para la ultima publicacion que tu creaste

us4 = User.where(first_name: "Usuario 4").first
ultpub = Post.all.last

1.upto(3) do |t|
m = Message.new
m.post = ultpub
m.user = us4
m.author = "algun author"
m.message = "aqui va algun mensaje"
m.save
end

#Mensajes del usuario 4

#puts "Mensajes: #{us4.message.count}"
puts Message.where(user: us4).count
puts "Tarea 20. Hecha"

#Tarea 21 Cambie el propietario de la segunda publicación para que sea el segundo usuario

#Captura al segundo Post en la varialbe po2(318)
#Captura al ultimo usuario en la variable ulu (319)
#Actualizar usuario (320)

po2 = Post.all[1]
puts "Antes => #{po2.user.first_name}"
ulu = User.all.last
po2.user = ulu
po2.save
puts "Despues => #{po2.user.first_name}"
puts "Tarea 21. Hecha"

#Tarea 22: Cambie el contenido de la segunda publicacion por algo diferente

po2 = Post.all[1]
po2.content = "Un nuevo contenido"
po2.save

puts po2.errors.full_messages
puts "Content: #{po2.content}"
puts "Tarea 22. Hecha"

#Tarea 23: Obtenga todos los blog que son propiedad del tercer usuario (Haz que esto funcione con un simple Usuario.find(3)blogs)

us3 = User.find(3)
owners = us3.owner
blog_ids = owners.pluck(:blog_id)
#blog_id => [45, 3 ,23]
blog = Blog.where(id: blog_ids)
puts "Blog del usuario 3: #{blog}"
puts "Tarea 23. Hecha"

#Tarea 24: Obtena todas las publicaciones que fueron creadas por el tercer usuario
#lineas 352 y 353 con belong_to

us3 = User.find(3)
puts us3.post

#us3 = User.where(first_name: "Usuarios 3").first
#puts Post.where(user:us3)

puts "Tarea 24. Hecha"

#Tarea 25: Obtenga todos los mensajes escritos por el tercer usuario.

us3= User.find(3)
puts us3.message

#Con Belong_to

#use3 = User.where(first_name: "Usuario 3").first

#puts Message.where(user: us3)

puts "Tarea 25. Hecha"

#Tarea 26: Obtenga todas las publicaciones asociadas al blog con el id 5 y quien dejó cada publicacion 

bl5 = Blog.find(5)
post = Post.where(blog: bl5)
user = post.pluck(:user_id)
puts User.where(id: user)

puts "Tarea 26. Hecha"

#Tarea 27: Obtenga todos los mensajes asociados al blog con id 5, junto con toda la información de los usuarios que dejaron los mensajes

bl5 = Blog.find(5)
posts = Post.where(blog: bl5)
msgs = Message.where(post: posts)
users = msgs.pluck(:user_id)
puts User.where(id: users)

puts "Tarea 27. Hecha"

#Tarea 28: Obtenga toda la información de los usuarios que son propietarios del primer blog (haz que esto funicone conun simple Blog.first.pripietarios)

owner = Blog.first.owner
users = owners.pluck(:user_id)
User.where(id: users).each do |t|
puts "#{t.first_name} #{t.last_name} #{t.email_address}"
end

puts "Tarea 28. Hecha"

#Tarea 29: Cambielo, es decir, el primer usuario ya no es el propietario del primer blog

us1 = User.first
usul = User.last
bl1 = Blog.first
own = Owner.where(user: us1, blog: bl1)
own.update_all(user_id: usul.id)

puts Owner.where(user: us1, blog: bl1).count

puts "Tarea 29. Hecha"