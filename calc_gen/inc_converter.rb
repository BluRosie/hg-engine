require_relative 'helpers'
require 'json'


# gets the values of all variables defined that contain the keyword
# returns an array where every variable is converted to its showdown equivalent
# and each variable's index in the array is set according to its defined value
# ignores any variable with the string "START" in the returned array

# fails to define any variable that doesn't contain keyword
def get_constants file_path, keyword
  # A hash to store variable values
  variables = {}

  # Read and process the file line by line
  File.foreach(file_path) do |line|
    # Remove comments
    line = line.split('//').first.strip
    next if line.empty? # Skip empty or comment-only lines

    # Match lines defining variables that start with "keyword_"
    if line.match?(/^\s*\.equ\s+#{keyword}_(\w+),\s*(.+)/)
      match_data = line.match(/^\s*\.equ\s+#{keyword}_(\w+),\s*(.+)/)
      variable_name = "#{keyword}_#{match_data[1]}"
      expression = match_data[2].strip

      # Replace known variables in the expression
      expression.gsub!(/\b#{keyword}_\w+\b/) do |var|
        if variables.key?(var)
          variables[var].to_s
        else
          "0" # Default to 0 if the variable is not defined yet
        end
      end

      # Evaluate the expression and store the result
      begin
        variables[variable_name] = eval(expression)
      rescue StandardError
        puts "Error evaluating expression for #{variable_name}: #{expression}"
        variables[variable_name] = nil
      end
    end
  end

  # Create the array where the index is the variable value
  ordered_array = []
  variables.each do |key, value|

    ordered_array[value] = showdown_parse(key.split("#{keyword}_")[-1]).gsub("Glastrier","(Glastrier)").gsub("Spectrier", "(Spectrier)") if (!key.include?("START") || key.include?("SLOW_START"))
  end



  return ordered_array
end





