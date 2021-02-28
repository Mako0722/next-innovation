# == Schema Information
#
# Table name: results
#
#  id         :bigint           not null, primary key
#  detail     :text
#  github     :text
#  subtitle   :string
#  title      :string
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_results_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Result < ApplicationRecord

  validates :subtitle, length: { maximum: 150 }, presence: true
  validates :title, length: { maximum: 100 }, presence: true

  validates :detail, length: { maximum: 65535 }
  validates :url, length: { maximum: 65535 }, presence: true
  validates :github, length: { maximum: 65535 }
end
