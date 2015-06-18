class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at
  # arguments passed to the attributes method are serialized. Custom data can be
  # sent by defining a method below and passing it as an argument
  
  def created_at # overwriting what this method returns
      object.created_at.strftime('%B %d, %Y') # Object represents the instance
  end
end
