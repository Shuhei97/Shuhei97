# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tag < ApplicationRecord
  has_many :board_tag_relations, dependent: :delete_all#destroyメソッドのみ #複数形hukusuukei
  has_many :boards, through: :board_tag_relations
end
