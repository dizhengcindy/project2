class Tag < ApplicationRecord
    has_many :picture_tags
    has_many :pictures, through: :picture_tags 

    def self.sort
        Tag.all.sort_by{|tag| -tag.pictures.count}
    end
    def self.top_tags
        array =[]
        Tag.sort.each {|tag| array<< tag}
        array[0..5]
    end
    
end
