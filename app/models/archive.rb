class Archive < ApplicationRecord
    belongs_to :folder
    has_attached_file :file
end
