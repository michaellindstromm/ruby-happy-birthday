require 'date'

# def my_birthday(date, proc)
#     bday = Date.parse(date)
#     byear = bday.year
#     bmonth = bday.month
#     bday = bday.day
#     current_year = DateTime.now.year
#     current_month = DateTime.now.month
#     current_day = DateTime.now.day
#     if (current_month - bmonth) > 0
#         how_old = current_year - byear
#     elsif (current_month - bmonth < 0)
#         how_old = current_year - byear - 1
#     elsif (current_month - bmonth == 0 && current_day - bday > 0)
#         how_old = current_year - byear
#     elsif (current_month - bmonth == 0 && current_day - bday < 0)
#         how_old = current_year - byear - 1
#     else 
#         how_old = current_year - byear
#     end

#     how_old.times {proc.call}

#     # how_old

# end

# my_proc = Proc.new { |x| puts "Happy Birthday" }

# my_birthday("1994-10-17", my_proc)



def how_old_in_2020?(&block)
    t_year = 2020

    bday = block.call

    bday = Date.parse(bday).year
    
    dif =  t_year - bday
    
    todays_year = DateTime.now.year

    num_years = t_year - todays_year

    years_until_t_year = Array.new(num_years) {|i| i+1}

    years_until_t_year.each do |x|
        if x + todays_year == 2020
            p "Happy #{todays_year - bday + x} Birthday"
        else 
            p "#{x + todays_year}: #{todays_year - bday + x}"

        end

    end


end

how_old_in_2020? {'1994-01-29'}
