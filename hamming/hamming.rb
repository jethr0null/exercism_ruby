class Hamming
  VERSION = 1
  def self.compute(string1, string2)
    unless string1.length == string2.length
      raise ArgumentError.new("Strings must be same length.")
    end
    if string1 == string2
      0
    else
      counter = 0
      (0..string1.length).each do |i|
        if string1[i] != string2[i]
          counter += 1
        else
          next
        end
      end
      counter
    end
  end
end
