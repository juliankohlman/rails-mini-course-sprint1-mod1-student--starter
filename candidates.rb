# frozen_string_literal: true
#num_to_currency => available in rails

jane = {
	first_name: 'Jane',
	last_name: 'Doe',
	level: 'senior_level',
	age: 30,
	occupation: 'Software Developer',
	employed: true,
	# use gsub to replace '_' with ','
	current_salary: "$#{125_000.0.to_f}",
	languages: %w[Ruby JavaScript Go]
}

# jane.each_pair { |k,v| puts "#{k} - #{v}\n"}

sara = {
	first_name: 'Sara',
	last_name: 'Smith',
	level: 'mid_level',
	age: 26,
	occupation: 'Software Developer',
	employed: true,
	# use gsub to replace '_' with ','
	current_salary: "$#{80_000.0.to_f}",
	languages: %w[Ruby Python]
}

# sara.each_pair { |k,v| puts "#{k} - #{v}\n"}

jason = {
	first_name: 'Jason',
	last_name: 'Gray',
	level: 'entry_level',
	age: 23,
	occupation: 'Student',
	employed: false,
	# use gsub to replace '_' with ','
	current_salary: "$#{0.00.to_f}",
	languages: %w[C++ Python]
}

# jason.each_pair { |k,v| puts "#{k} - #{v}\n"}

candidates = [jane, sara, jason]

# average_age
# accept people array
# iterate over array
# extract age values `map`
# sum all ages `reduce`
# divide sum by size of people array to arrive at `avg`

def average_age(people)
	ages = []
	people.map { |p| ages << p[:age] }
  # total = ages.reduce { |sum, age| sum.+ age }
  total = ages.reduce(:+)
	avg = (total.to_f / people.length).round(2)
	avg
end

# return members that know language
# language comp's should be case insensitive
def language_screening(people, language)
	people.select! { |p| p[:languages].any? { |l| l.casecmp(language).zero? } }

	people
end

# puts language_screening(candidates, 'Python')
# puts language_screening(candidates, 'GO')
# puts language_screening(candidates, 'javascript')

puts average_age(candidates)
