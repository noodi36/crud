class Box < ActiveRecord::Base
    has_many    :comments
    validates :title, presence: true
end
