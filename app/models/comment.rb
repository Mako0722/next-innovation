# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  comment    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  result_id  :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_comments_on_result_id  (result_id)
#  index_comments_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (result_id => results.id)
#  fk_rails_...  (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :result

  validates :comment, presence: true, length: { maximum: 255 }
end
