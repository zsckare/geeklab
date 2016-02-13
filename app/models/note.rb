class Note < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  has_many :items, dependent: :destroy
end
