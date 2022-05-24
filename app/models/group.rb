class Group < ApplicationRecord
  has_many :discussions, dependent: :destroy
end
