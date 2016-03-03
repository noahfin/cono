class Category < ActiveRecord::Base
  belongs_to :user
  #adds relationship to user
end
