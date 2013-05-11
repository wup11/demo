class Mail < ActiveRecord::Base
  attr_accessible :receiver, :sender
end
