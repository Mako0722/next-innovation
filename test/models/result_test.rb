# == Schema Information
#
# Table name: results
#
#  id         :bigint           not null, primary key
#  detail     :text
#  github     :text
#  title      :string
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ResultTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
