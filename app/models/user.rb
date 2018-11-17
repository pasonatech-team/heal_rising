class User < ApplicationRecord
    has_many :action
    
    def levelup
        levelup = 500*(self.level-1)+1000
    end
    
   
end
