class Listing < ActiveRecord::Base
   belongs_to :neighborhood
   belongs_to :host, :class_name => "User" #alias este user practic

   has_many :reservations
   has_many :guests, through: :reservations
   has_many :reviews, through: :reservations
  end