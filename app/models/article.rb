class Article < ActiveRecord::Base
  # belongs_to :user, :foreign_key => "author_id"
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  default_scope :order => "#{self.quoted_table_name}.created_at DESC"
end
