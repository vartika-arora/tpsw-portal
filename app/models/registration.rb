class Registration
  include Mongoid::Document

  field :type,                        type: String, default: ""
  belongs_to :user
  belongs_to :company
end
