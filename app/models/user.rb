class User < ApplicationRecord
    has_many :action
    
    def levelup
        #levelup = (500)*(self.level-1)+1000
        levelup = 250 * (self.level)*(self.level) + 750*self.level
    end
    
    # 今の経験値から次のレベルに行くまで
    def reft_next_level
        if level<30
            (self.levelup - self.experience).to_i
        else
            0
        end
    end
    
    def progress_percent
        reft_percent = (self.reft_next_level/500.0)*100.0
    end
end
