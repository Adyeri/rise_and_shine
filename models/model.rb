def rise_and_shine_mvp_conditional(school_time,get_ready_time)
        school_time_array=school_time.split(":")
        hour_school_time=school_time_array[0].to_i
        minutes_school_time=school_time_array[1].to_i
        get_ready_time_input=get_ready_time.to_i
    # If input for getting ready is greater than the minutes for school time
        reset_minutes_less_than=60+minutes_school_time-get_ready_time_input
        reset_hours_less_than=hour_school_time-1 
    #If input for getting ready is less than the minutes for school time 
        reset_minutes_greater_than=minutes_school_time-get_ready_time_input
    
    if minutes_school_time < get_ready_time_input
        return "#{reset_hours_less_than}:#{reset_minutes_less_than}"
    elsif minutes_school_time > get_ready_time_input
        return "#{hour_school_time}:#{reset_minutes_greater_than}"
    else
        return "SORRY YOU'RE TERRIBLE AT LIFE"
    end 
end 

 ##puts rise_and_shine_mvp_conditional("9:30","20")

