require "csv"  
 
 puts "1(新規でメモを作成) 2(既存のメモを編集する)"
 memo_type = gets.to_i
 
 if memo_type == 1
 
 puts "メモを新規作成します。拡張子を除いたファイル名を入力してください"
   file_name = gets.chomp
   
  puts "メモの内容を記入して下さい。Ctrl+Dで保存します。"
  imput_memo = STDIN.read
  memo = imput_memo.chomp
  
  CSV.open("#{file_name}.csv" , "w") do |csv|
  csv.puts ["#{memo}"]
 end
 
 elsif memo_type == 2
  puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
    file_name = gets.chomp
  
  CSV.open("#{file_name}.csv", "w") do |csv|
  
  puts "編集内容を入力してください。Ctr+Dで入力が完了します。"
  imput_memo = STDIN.read
  memo = imput_memo.chomp
  csv.puts ["#{memo}"]
 end
 
 end