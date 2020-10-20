require 'pry'

def clock_angle(time)
    hour = time.split(":")[0].to_f
    if hour == 12.0
        hour = 0.0
    end
    minute = time.split(":")[1].to_f
    hour_angle = (hour * 30.0) + (minute * 0.5)
    minute_angle = minute * 6.0
    angle = (360 - minute_angle) + hour_angle
    if angle >= 360
        angle -= 360
    end
    angle
    #binding.pry
end
