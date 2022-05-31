# could be improved for sure, but it's not worth spending time on
class Numeric
  def nice round: nil, dec: nil
    x= self
    x= x.round round if round
    s= x.to_f.to_s
    loop do
      case s[-1]
      when ?0
        s= s[0..-2]
      when ?.
        s= s[0..-2]
        break
      else
        break
      end
    end
    dec ? s.gsub(?., dec) : s
  end
end
