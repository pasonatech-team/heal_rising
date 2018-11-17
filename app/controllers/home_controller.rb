class HomeController < ApplicationController
    
    def about
      @Level= [
          0,
          1000,
          1500,
          2000,
          2500,
          3000,
          3500,
          4000,
          4500,
          5000,
          5500,
          6000]
      
      @user=User.find(1)
      
      experience_sum=@Level.slice(0,@user.level).sum
      
      @now_experience = @user.experience - experience_sum
      @next_experience = @Level[@user.level] - @now_experience
    end 
    
    def breaktime
      @time=Action.find(1)
    end
    
    def select
      # @type=type.find_by(action_name:"")
    end
    
    def stopwatch
      @time=Action.find(1)
    end
    
    def result
    @Level= [
          0,
          1000,
          1500,
          2000,
          2500,
          3000,
          3500,
          4000,
          4500,
          5000,
          5500,
          6000]
      
      @user=User.find(1)
      
      experience_sum=@Level.slice(0,@user.level).sum
      
      @now_experience = @user.experience - experience_sum
      @next_experience = @Level[@user.level] - @now_experience
    end
    
    def start
    end
end
