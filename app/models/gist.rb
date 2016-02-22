class Gist < ActiveRecord::Base
  belongs_to :category

  private

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("content LIKE ?", "%#{search}%")
  end
end
