require "csv"

puts "1(新規メモを作成) 2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type == 1 then
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dを押します"
    CSV.open("#{file_name}.csv",'w') do |csv|
     memo_text = STDIN.read
     csv << ["#{memo_text}"]
    end
elsif memo_type == 2 then
    puts "編集したいファイルを選んでください"
    file_name = gets.chomp
    puts "追記したいメモを記入してください"
    CSV.open("#{file_name}.csv",'a') do |csv|
    memo_text = STDIN.read
    csv << ["#{memo_text}"]
    end

end


