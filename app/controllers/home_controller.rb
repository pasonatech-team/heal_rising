class HomeController < ApplicationController
    
    def about
      @user=User.find(1)
      #@now_experience = @user.experience - experience_sum
      @now_experience = @user.experience.to_i
      @next_experience = (@user.levelup - @now_experience).to_i 
      gon.level=@user.level
    end 
    
    def breaktime
        @elapsedTime = params[:content]
        p @elapsedTime
        @time=Action.find(1)
        gon.level=@user.level
    end
    
    def select
      # @type=type.find_by(action_name:"")
    end
    
    def stopwatch
      @time=Action.find(1)
      @user=User.find(1)
      gon.level=@user.level
    end
    
    def result
      @user=User.find(1)
      @action=Action.find(1)
      @end_time = params[:times]
      @end_time ||= "00:00:00"
      gon.level=@user.level
      times = @end_time.split(/:|;/).map do |value|
          value.to_i
      end
      p times
      p @action
      sec = times[0]*3600 + times[1]*60 + times[2] 
    #   @exp = 100 * @action.type.strength
       @exp = sec * @action.type.strength

      @user.experience += @exp
      while true do
          if @user.levelup < @user.experience && @user.level < 30 then
              @user.level += 1
          else
              break
          end
      end
      @user.save!
    end
    
    def start
    end
end
