class HomeController < ApplicationController
    
    def about
      
      @user=User.find(1)
      
      
      
      #@now_experience = @user.experience - experience_sum
      @now_experience = @user.experience
      @next_experience = @user.levelup - @now_experience 
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
<<<<<<< HEAD
      end_time = params[:times]
      end_time ||= "00:00:00"
      times = end_time.split(/:|;/).map do |value|
=======

      times = @action.end_time.split(/:|;/).map do |value|
>>>>>>> result_view
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
