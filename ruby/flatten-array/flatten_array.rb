class FlattenArray
  def self.flatten array, finalArray = []
    array.each do |child|
      if (child.is_a?(Array))
        flatten child, finalArray
      else
        finalArray.push(child) if child
      end
    end
    finalArray
  end
end

module BookKeeping
  VERSION = 1
end