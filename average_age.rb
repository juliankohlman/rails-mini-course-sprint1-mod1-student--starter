# frozen_string_literal: true

def average_age(people)
	ages = []
	people.map { |p| ages << p[:age] }
	total = ages.reduce { |sum, age| sum.+ age }
	avg = (total.to_f / people.length).round(2)
	avg
end
