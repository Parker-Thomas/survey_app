class Response < ActiveRecord::Base
  belongs_to :question
  has_many :submissions
end
