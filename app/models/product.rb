class Product < ActiveRecord::Base
  def user_owns?(u)
    self.user == u
  end

  def user_can_change?(u)
    self.user_owns?(u)
  end
end
