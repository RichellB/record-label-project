class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs
    #has_many :users, through: :songs
    belongs_to :user

    
    
    accepts_nested_attributes_for :songs
    
    validates_presence_of :artist_name
    
    def self.alphabetical_order
      order(:artist_name)
    end
  
  end