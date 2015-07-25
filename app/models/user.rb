class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable #:lockable, :timeoutable
  
  def confirm!
    welcome_email
  end

  private
    def welcome_email
      UserMailer.welcome_email(self).deliver
    end
end
