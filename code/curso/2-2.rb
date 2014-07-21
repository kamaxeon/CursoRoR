def traducir language, word
 case language
  when :ingles
    word + "eishon"
  when :frances
    word + "é"
  when :aleman
    word + "frufrunguen" 
 end
end


traducir "ingles", "thola"
