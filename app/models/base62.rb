class Base62
  ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  BASE = ALPHABET.length

  def self.encode(number)
    return ALPHABET[0] if number == 0 # special case
    result = ""

    while number > 0
      result = ALPHABET[number % BASE] + result
      number /= BASE
    end

    result
  end

  def self.decode(string)

  end
end