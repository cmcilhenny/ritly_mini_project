class Url < ActiveRecord::Base

	validates :link, presence: true, length: {minimum: 7}, uniqueness: true

	validates :random_string, presence: true, uniqueness: {case_sensitive: true}

end
