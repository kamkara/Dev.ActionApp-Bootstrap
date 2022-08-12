class Article < ApplicationRecord
  has_one_attached :heroImg
  belongs_to :user
  has_rich_text :content
 

  STATUS= ["Encours", "Approbation", "Public", "La lune", "Archive"]
  validates :title, :content, :write_date, :slug, presence: true
  validates :title, :content, length: { minimum:5}


   ################## SLUG ###############
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  def should_generate_new_friendly_id?
   title_changed?
  end
end
