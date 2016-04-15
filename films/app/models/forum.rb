class Forum < ActiveRecord::Base
	has_many :topics, :dependent => :destroy

	def most_recent_post
		#topic = Topic.first(:order => 'last_post_at DESC', :conditions => ['forum_id = ?', self.id])
		topic = Topic.order("updated_at DESC").where('forum_id = ?', self.id).first
		return topic
	end

end


