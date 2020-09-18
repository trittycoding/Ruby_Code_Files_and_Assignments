# Question 4
# Test class that checks to see if a sentence is a Pangram
# I.e. a sentence that contains each letter of the alphabet at least once
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
        # puts "Missing Letter: #{letter}" --> for debugging
      end
    end
    flag
  end
end
