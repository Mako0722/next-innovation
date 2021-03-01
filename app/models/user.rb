# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  admin                  :boolean          default(FALSE)
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  skill                  :string           default("")
#  yourself               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

          validates :name, presence: true, length: { maximum: 20 }
          validates :yourself, length: { maximum: 150 }
          validates :skill, length: {maximum: 150 }

  has_many :results, dependent: :destroy
  has_many :goods, dependent: :destroy
  has_many :good_results, through: :goods, source: :result


  def good(result)
    self.goods.find_or_create_by(result_id: result.id)
  end

  def ungood(result)
    good = self.goods.find_by(result_id: result)
    good.destroy if good
  end

  def good?(result)
    self.good_results.include?(result)
  end

  has_many :comments, dependent: :destroy


  # アップデートをcurrent_passwordなし行うためのメソッド
  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end  
end
