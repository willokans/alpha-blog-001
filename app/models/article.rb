class Article < ActiveRecord::Base
    #Set up one associate with User
    belongs_to :user
    
    #ensure all article belong to a user
    validates :user_id, presence: true
    
    validates :title, presence: true, length: {minimum: 3, maximum: 50 }
    validates :description, presence: true, length: {minimum: 10, maximum: 300 }
end