module DeepFreezable
  def deep_freeze(array_of_hash)
    case array_of_hash
    when Array
      array_of_hash.each do |element|
        element.freeze
      end
    when Hash
      array_of_hash.each do |key,value|
        key.freeze
        value.freeze
      end
    end
    array_of_hash.freeze
  end
end