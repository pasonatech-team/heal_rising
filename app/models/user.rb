class User < ApplicationRecord
    has_many :action
    
    def levelup
        #levelup = (500)*(self.level-1)+1000
        levelup = 250 * (self.level)*(self.level) + 750*self.level
    end
    
   
end
