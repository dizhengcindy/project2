class Tag < ApplicationRecord
    has_many :picture_tags
    has_many :pictures, through: :picture_tags 

    def count_tags
        self.pictures.count
    end

    def sort_tags
        Tag.all.sort_by{|tag| -tag.count_tags}
    end

    def self.top_tags
        Tag.limit(6)
    end
end
