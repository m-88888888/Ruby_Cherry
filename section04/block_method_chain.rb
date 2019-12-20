names = ['田中','鈴木','佐藤']
san_names = names.map { |name| "#{name}さん"}
p san_names.join('と')
# "田中さんと鈴木さんと佐藤さん"

# {}やdo..endに対してメソッドチェーンを使用することができる
names = ['田中','鈴木','佐藤']
p names.map { |name| "#{name}さん"}.join('と')
# "田中さんと鈴木さんと佐藤さん"