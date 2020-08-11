class Artist < ApplicationRecord
    has_many :plays
    has_many :instruments, through: :plays
    
    # validates :title, uniqueness: true
    # validates :name, presence: true

end
