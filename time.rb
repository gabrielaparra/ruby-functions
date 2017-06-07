def seconds_since_midnight(time)
	Time.parse(time).hour * 3600 + Time.parse(time).min * 60 + Time.parse(time).sec
end

def hours_in_years(years)
	years * 365 * 24
end

def minutes_in_years(years)
	hours_in_years(years) * 60
end

def seconds_old(age)
	minutes_in_years(age) * 60
end 

def minutes_in_decades(decades)
	years = decades * 10
	minutes_in_years(years)
end

def how_old(seconds)
	minutes = seconds / 60
	hours = minutes / 60
	days = hours / 24
	years = days / 365
end

# a cleaner how_old method, but less visually explanatory
def how_old(seconds)
	years = seconds / (60 * 60 * 24 * 365)
end
