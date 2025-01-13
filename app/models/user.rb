# app/models/user.rb
class User < ApplicationRecord
  enum role: { student: 0, client: 1, admin: 2 }
  after_initialize :set_default_role, if: :new_record?

  has_one_attached :avatar

  def set_default_role
    self.role ||= :student
  end

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
