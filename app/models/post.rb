class Post < ApplicationRecord
  #ここの二行を追加（できていないけど）
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 500 }
end
