# == Schema Information
#
# Table name: profiles
#
#  id              :bigint           not null, primary key
#  github_account  :string           default("")
#  skill           :string           default("")
#  twitter_account :string           default("")
#  yourself        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :bigint
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Profile < ApplicationRecord
  belongs_to :user

  validates :yourself, length: { maximum: 150 }
  validates :skill, length: {maximum: 150 }
  validates :twitter_account, length: { maximum: 15 }
  validates :github_account, length: { maximum: 200 }
end
