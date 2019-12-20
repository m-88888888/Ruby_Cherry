# よく使うイディオム⑴　条件分岐で変数に代入／&.演算子

# 国名に応じた通過を返す（該当する通過がなければnil）
def find_currency(country)
  currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
  currencies[country]
end

# 指定された国の通過を大文字にして返す
# def show_currency(country)
#   currency = find_currency(country)
#   if currency
#     currency.upcase
#   end
# end

# 変数への代入と条件分岐を同時に実現する
# def show_currency(country)
#   if currency = find_currency(country)
#     currency.upcase
#   end
# end

# &.演算子（ぼっち演算子）を使って書き換える
def show_currency(country)
  currency = find_currency(country)
  currency&.upcase
end

# &.演算子・・・呼び出したオブジェクトがnilでない場合はその結果を、nilならnilを返す


p show_currency(:japan)
p show_currency(:canada)