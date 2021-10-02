class Ticket < ActiveRecord::Base
    belongs_to :guest
    belongs_to :show



    def guest_ticket
       puts "Show ticket #{Show.first}  was sold to guest object #{Guest.last}" 
    end


    def shows_guests_name
        puts "Show ticket reciept #{Show.first.name}  was emailed to guest #{Guest.last.name} email address #{Guest.last.email}" 
     end

 
end

