class Complement

  VALID = /[GCTCA]/

  def   self.of_dna dna
    if dna.chars.all?{|a| a.match?(VALID)}
      dna.gsub!(VALID, {"G" => "C", "C" => "G", "T" => "A", "A" => "U"})
    else
      ""
    end
  end

end
