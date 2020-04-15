def bot_answer_to(a_question, user_name)
  if a_question.match?(/(Hi|Hey|Bonjour|Hi there|Hey there|Hello).*/i)
    "Hello " + user_name + ", how are you doing today?"
  elsif a_question.match?(/([\p{Hiragana}\p{Katakana}\p{Han}]+)/)
    bot_jp_answer_to(a_question, user_name)
  elsif a_question.match?(/how\s+.*are\s+.*you.*/i)
    "I am fine, " + user_name
  elsif a_question.match?(/.*le wagon.*/i)
    "Wait " + user_name + "... did you mean Le Wagon Kyoto!? These guys are just great!"
  elsif a_question.end_with?('?')
    "Good question, " + user_name + "!"
  else
    ["I couldn't agree more.", "Great to hear that.", "Kinda make sense."].sample
  end
end

def bot_jp_answer_to(a_question, user_name)
  if a_question.match?(/(おはよう|こんにちは|こんばんは|ヤッホー|ハロー).*/)
    "こんにちは#{user_name}さん！お元気ですか?"
  elsif a_question.match?(/.*元気.*(？|\?｜か)/)
    "私は元気です、#{user_name}さん"
  elsif a_question.match?(/.*(le wagon|ワゴン|バゴン).*/i)
    "#{user_name}さん... もしかして京都のLE WAGONプログラミング学校の話ですかね？ 素敵な画っこと思います！"
  elsif a_question.end_with?('?','？')
    "いい質問ですね、#{user_name}さん！"
  else
    ["そうですね！", "確かに！", "間違い無いですね！"].sample
  end
end
puts bot_answer_to("Hi there!","Yann")
