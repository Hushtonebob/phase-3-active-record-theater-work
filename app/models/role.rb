class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |t|
            t.actor
        end
    end

    def locations
        self.auditions.map do |t|
            t.location
        end
    end

    def lead
        self.auditions.first
    end

    def understudy
        self.auditions.second
    end




  end