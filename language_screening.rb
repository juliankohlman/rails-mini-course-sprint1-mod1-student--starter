# frozen_string_literal: true
# return members that know language
# language comp's should be case insensitive
def language_screening(people, language)
	people.select! { |p| p[:languages].any? { |l| l.casecmp(language).zero? } }

	people
end
