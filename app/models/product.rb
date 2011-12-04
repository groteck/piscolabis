class Product < ActiveRecord::Base
  default_scope :order => 'title'  
  belongs_to :type
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  has_attached_file :image
  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors[:base] << "Line Items present"
      return false
    end
  end

end
