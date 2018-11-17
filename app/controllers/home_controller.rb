class HomeController < ApplicationController
    
    def about

      @Level= [
          0,1000,1500,2000,2500,3000,
          3500,4000,4500,5000,5500,
          6000,6500,7000,7500,8000,
          8500,9000,9500,10000,10500,
          11000,11500,12000,12500,13000,
          13500,14000,14500,15000,15500
          ]
      

      @user=User.find(1)
      
      experience_sum=@Level.slice(0,@user.level).sum
      
      @now_experience = @user.experience - experience_sum
      @next_experience = @Level[@user.level] - @now_experience
    end 
    
    def breaktime
        @elapsedTime = params[:content]
        p @elapsedTime
        @time=Action.find(1)
    end
    
    def select
      # @type=type.find_by(action_name:"")
    end
    
    def stopwatch
      @time=Action.find(1)
    end
    
    def result

      @user=User.find(1)
      @action=Action.find(1)
      times = @action.end_time.split(/:|;/).map do |value|
          value.to_i
      end
      sec = times[0]*3600 + times[1]*60 + times[2] 
    #   @exp = 100 * @action.type.strength
       @exp = sec * @action.type.strength

      @user.experience += @exp
      while true do
          if @user.levelup < @user.experience then
              @user.level += 1
          else
              break
          end
      end

    end
    
    def start
    end
end
