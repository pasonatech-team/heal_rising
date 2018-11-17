class User < ApplicationRecord
    has_many :action
    
    def levelup
        levelup = 500*(self.level-1)+1000
    end
    
    # 今の経験値から次のレベルに行くまで
    def reft_next_level
        (self.levelup - self.experience).to_i
    end
    
    def progress_percent
        @reft_percent = self.reft_next_level/500*100.0
        100-@reft_percent
    end
    
end
