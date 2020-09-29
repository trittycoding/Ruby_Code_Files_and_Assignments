class Pangram
  def initialize; end

  def self.is_pangram?(string)
    alphabet = 'a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z'
    letters = alphabet.split(',')
    string_array = string.downcase.split(//).uniq
    flag = true
    letters.each do |letter|
      unless string_array.include? letter
        flag = false
        puts "Missing Letter: #{letter}"
      end
    end
    flag
  end
end

str = 'the quick brown fish jumps over the lazy dog'
str1 = 'a quick movement of the enemy will jeopardize five gunboats'
str2 = 'the_quick_brown_fox_jumps_over_the_lazy_dog'
str3 = '"Five quacking Zephyrs jolt my wax bed."'
str4 = 'the 1 quick brown fox jumps over the 2 lazy dogs'
puts Pangram.is_pangram?(str)
puts Pangram.is_pangram?(str1)
puts Pangram.is_pangram?(str2)
puts Pangram.is_pangram?(str3)
puts Pangram.is_pangram?(str4)
