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
class Result < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :detail, length: { mximum: 65535 }
  validates :url, length: { mximum: 65535 }
  validates :github, length: { mximum: 65535 }
end
