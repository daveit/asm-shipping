class Ship < ActiveRecord::Base
  belongs_to :location
  belongs_to :agent
  belongs_to :status
  belongs_to :staff
end
