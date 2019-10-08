class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable, :lockable, :timeoutable
  has_many :permissions
  has_many :permissions, through: :permissions

  def role?(role, id = nil)
    if id.present?
      roles.where(id: id, name: role).any?
    else
      logger.warn "Role check used without an entity id presented"
      #{role} called for #{id} user"
      roles.any? {|r| r.name.to_sym == role}
    end
  end
end
