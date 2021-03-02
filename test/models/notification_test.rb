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
require 'test_helper'

class NotificationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
