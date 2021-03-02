# == Schema Information
#
# Table name: notifications
#
#  id         :bigint           not null, primary key
#  check      :boolean          default(FALSE)
#  kind       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  result_id  :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_notifications_on_result_id  (result_id)
#  index_notifications_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (result_id => results.id)
#  fk_rails_...  (user_id => users.id)
#
class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :result
end
