class Comment < ApplicationRecord
  # COMMENT MUST HAVE A VALUE FOR 'BODY'
  validates :body, :presence => true
  belongs_to :prayer
end
