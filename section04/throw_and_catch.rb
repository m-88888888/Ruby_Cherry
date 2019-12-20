# Rubyにおけるthrowとcatchは例外処理ではなく、繰り返しを脱出するbreakと似た役割を持つコードである

fruits = ['apple', 'melon', 'orange']
numbers = [1,2,3]
catch :done do
    fruits.shuffle.each do |fruit|
        numbers.shuffle.each do |number|
            puts "#{fruit}, #{number}"
            if fruit == 'orange' && number == 3
                # fruitsとnumbersのループを一気に抜ける
                throw :done
            end
        end
    end
end