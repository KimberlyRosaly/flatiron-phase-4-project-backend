# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Prayer.create( 
    body: "Today was so great that I really hope tomorrow is just as bright.", 
    name: "Lydia D.", 
    city: "Lightly", 
    state: "Hawaii" ,
    star_counter: 7
)

    c1 = Comment.create(
        body: "TOMORROW WILL BE SO BRIGHT FOR YOU!",
        name: "BeetleJuice", 
        city: "Undertoes", 
        state: "Footera",
        prayer_id: 1
    )

    c2 = Comment.create(
        body: "praying 4 you, babe",
        name: "Mouthy",
        city: "Sinclaire",
        state: "AZ",
        prayer_id: 1
    )

# =========================================================

p2 = Prayer.create( 
    body: "TEST b o d y", 
    name: "TEST n a m e", 
    city: "TEST c i t y", 
    state: "TEST s t a t e" ,
    star_counter: 47
)

    c1 = Comment.create(
        body: "C O M M E N T test",
        name: "N A M E test", 
        city: "C I T Y test", 
        state: "S T A T E test",
        prayer_id: 2
    )
