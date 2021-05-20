puts "じゃんけん・・・"

#じゃんけんの処理
def zyanken
 puts "0(グー)1(チョキ)2(パー)"
 zyanken_zibun = gets.to_i
 zynaken_aite = rand(3)
 hands = ["グー","チョキ","パー"]
 puts "ホイ!"
 puts "-------------"
 puts "あなたは#{hands[zyanken_zibun]}を出しました！"
 puts "相手は#{hands[zynaken_aite]}を出しました！"
 if zyanken_zibun > 2
  puts "-------------"
  puts "0-2から選択してください"
  return true
 end
 puts "-------------"

 #あいこの処理
  if (zyanken_zibun == zynaken_aite) 
   puts "あいこで・・・"
   return true
   
  #じゃんけんに勝った時の処理
  elsif (zyanken_zibun == 0 and zynaken_aite == 1)||(zyanken_zibun == 1 and zynaken_aite == 2)||(zyanken_zibun == 2 and zynaken_aite == 0)
    puts "じゃんけんに勝ったぞ！"
    puts "あっちむいて・・・"
    puts "0(↑)1(→)2(↓)3(←)"
    attimuite_zibun = gets.to_i
    attimuite_aite = rand(4)
    directions = ["↑","→","↓","←"]
    puts "ほい！"
    puts "-------------"
    puts "あなたは#{directions[attimuite_zibun]}を指しましした!"
    puts "相手は#{directions[attimuite_aite]}を向きました！"
    if zyanken_zibun > 3
     puts "-------------"
     puts "0-3から選択してください"
     return 
    end
    puts "-------------"
    
    #指した方向と同じ方向を向いた時の処理
    if attimuite_zibun == attimuite_aite
     puts "あなたの勝利です！"
    #指した方向と別の方向を向いた時の処理
    else 
     puts "残念！"
     puts "じゃんけん・・・"
     return true
    end
   
   #じゃんけんに負けた時の処理
   elsif (zyanken_zibun == 0 and zynaken_aite == 2)||(zyanken_zibun == 1 and zynaken_aite == 0)||(zyanken_zibun == 2 and zynaken_aite == 1)
    puts "じゃんけんに負けたぞ！"
    puts "あっちむいて・・・"
    puts "0(↑)1(→)2(↓)3(←)"
    attimuite_zibun = gets.to_i
    attimuite_aite = rand(4)
    directions = ["↑","→","↓","←"]
    puts "ほい！"
    puts "-------------"
    puts "あなたは#{directions[attimuite_zibun]}を向きました!"
    puts "相手は#{directions[attimuite_aite]}を指しました！"
    
    puts "-------------"
    
    #向いた方向に対して同じ方向を指された時の処理
    if attimuite_zibun == attimuite_aite
     puts "あなたは負けてしまいました・・・残念！"
     return false
    #向いた方向に対して別の方向を指された時の処理
    else
     puts "危ない！"
     puts "じゃんけん・・・"
     return true
    end
   end
end

next_game = true

while next_game do
 next_game = zyanken
end