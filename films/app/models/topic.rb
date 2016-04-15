class Topic < ActiveRecord::Base
	belongs_to :forum
	belongs_to :user
	has_many :posts, :dependent => :destroy
	delegate :name, to: :user, prefix: true #-> @order.user_name
end


