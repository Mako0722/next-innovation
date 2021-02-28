# == Schema Information
#
# Table name: goods
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  result_id  :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_goods_on_result_id              (result_id)
#  index_goods_on_user_id                (user_id)
#  index_goods_on_user_id_and_result_id  (user_id,result_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (result_id => results.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class GoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
