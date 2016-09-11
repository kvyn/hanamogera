class Hanamogera
  STR = 'あいうえおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろわをんー'

  def self.word(len)
    res = ''
    while len > res.size do
      r = rand(0...76)
      next if res.size == 0 && 'ぁぃぅぇぉっゃゅょゎをんー'.include?(STR[r])
      res += STR[r]
    end
    res
  end

  def self.haiku
    puts 'ハナモゲラ語 川柳五七五'
    puts word(5)
    puts word(7)
    puts word(5)
  end
  def self.tanka
    puts 'ハナモゲラ語短歌 五七五七七'
    puts word(5)
    puts word(7)
    puts word(5)
    puts word(7)
    puts word(7)
  end
  def self.choka
    puts 'ハナモゲラ語長歌 五七五七...五七七'
    cnt = rand(3...10)
    cnt.times do |n|
      puts word(5)
      puts word(7)
    end
    puts word(7)
  end
end


puts '----------------------'
Hanamogera.haiku
puts '----------------------'
Hanamogera.tanka
puts '----------------------'
Hanamogera.choka
