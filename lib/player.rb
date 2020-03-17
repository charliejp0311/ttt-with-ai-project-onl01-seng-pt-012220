class Player
  attr_reader :token
  include Concerns::InstanceMethods
  extend Concerns::ClassMethods
  def initialize(token)
    @token = token
  end

end
