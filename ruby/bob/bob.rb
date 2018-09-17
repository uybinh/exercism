class Bob
  def self.hey remark
    string = remark.strip
    if (!string.match(/[a-zA-Z]/) && !!string.match(/\?\z/))
      return 'Sure.'
    end
    if (string == string.upcase && !!string.match(/\?\z/))
      return "Calm down, I know what I'm doing!"
    end
    if (string == string.upcase && string.match(/\w[a-zA-Z]+/))
      return "Whoa, chill out!"
    end
    return "Fine. Be that way!" if string == ''
    return 'Sure.' if string.match(/.*\?\z/)
    'Whatever.'
  end
end

module BookKeeping
  VERSION = 2
end