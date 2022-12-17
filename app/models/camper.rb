class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, presence: true
    # validates :age, length: {in: 8..18} this will giv eyou the number of characters
    validates :name, numericality: {greater_than_or_equal_to: 8, less_than_or_equal_to: 18}
    # new versions of Rails: validates :age, numericality: {in: 8..18}
end
