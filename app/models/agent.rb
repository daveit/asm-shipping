class Agent < ActiveRecord::Base
   validates :name, presence: true,
                    length: { minimum: 6 }
   has_many :ships
end
