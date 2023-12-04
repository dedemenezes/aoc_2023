def calibration_numbers(string)
  regex = /\d/
  md = string.scan(regex)
  calibration_value = md[0] + md[-1]
  calibration_value.to_i
end

def sum_of_calibration_values(doc)
  split = doc.strip.split(/[\b\n\s]+/)
  sum = split.sum do |el|
    calibration_numbers(el)
  end
  sum
end


doc = ''
filepath = File.join(__dir__, 'input.txt')

File.open(filepath, 'r') do |f|
  f.each_line do |line|
    p line
    doc << line
    doc << ' '
  end
end

sum_of_calibration_values(doc)
