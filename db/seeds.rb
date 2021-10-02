Show.delete_all
Guest.delete_all
Ticket.delete_all

mofia = Show.create(name: "Cypress", network: "What", day: "Wed", rating: 4, season: "fall")
janet = Show.create(name: "Cali", network: "CBC", day: "Friday", rating: 5, season: "spring")
ife = Show.create(name: "Home", network: "CBC", day: "Friday", rating: 5, season: "spring")

george = Guest.create(name: "George", email: "CBS@outlook.com")
jefferson = Guest.create(name: "Mr. Jefferson", email: "NBC@gmail.com")
liz = Guest.create(name: "Liz", email: "ABC@yahoo.com")

gma= Ticket.create(date: "08/03", guest_id: george.id, show_id: mofia.id)
jj = Ticket.create(date: "08/02", guest_id: jefferson.id, show_id: janet.id)
il = Ticket.create(date: "08/01", guest_id: liz.id, show_id: ife.id)