class Folder < ApplicationRecord
    has_many :archives
    has_many :children, class_name: "Folder", foreign_key: "parent_id"
    belongs_to :parent, class_name: "Folder", optional: true
end
