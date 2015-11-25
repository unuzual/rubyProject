class Artist < ActiveRecord::Base
    before_save { self.name = name.downcase }
    validates :name,  presence: true, length: { maximum: 50 }, uniqueness: {case_sensitive: false}
    has_one :genero
end