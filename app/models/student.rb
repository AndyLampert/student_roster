class Student < ActiveRecord::Base
  validates :home_phone, :work_phone, :cell_phone, { presence: true, length: { is: 10 } }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
