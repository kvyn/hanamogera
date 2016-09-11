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
    word(5) + ' / ' + word(7) + ' / ' + word(5)
  end
  def self.tanka
    word(5) + ' / ' + word(7) + ' / ' + word(5) + ' / ' + word(7) + ' / ' + word(7)
  end
  def self.choka
    res = ''
    cnt = rand(3...10)
    cnt.times do |n|
      res += word(5)
      res += ' / ' + word(7) + ' / '
    end
    res + word(7)
  end
end


puts '----------------------'
puts 'ハナモゲラ語自由律俳句 五七五'
puts Hanamogera.haiku
puts '----------------------'
puts 'ハナモゲラ語短歌 五七五七七'
puts Hanamogera.tanka
puts '----------------------'
puts 'ハナモゲラ語長歌 五七五七...五七七'
puts Hanamogera.choka
