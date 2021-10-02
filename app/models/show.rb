class Show < ActiveRecord::Base
    has_many :tickets
    has_many :guests, through: :tickets

    def self.highest_rating
        Show.all.maximum(:rating)
    end


    def self.most_popular_show
        Show.where(:rating == Show.all.maximum(:rating)).first
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
     
        Show.order(:rating).first
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where("rating > ? ", 5)
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end







end
