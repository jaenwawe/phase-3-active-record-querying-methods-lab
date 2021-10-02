class Guest < ActiveRecord::Base
    has_many :shows
    has_many :shows, through: :tickets
end