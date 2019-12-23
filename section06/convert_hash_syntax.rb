def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end


old_syntax = <<~TEXT
{
  :name => 'Alice',
  :age=>20,
  :gender  =>  :female
}
TEXT

actual = convert_hash_syntax(old_syntax)
puts actual
