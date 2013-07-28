class String

  def to_a
    split(',').map(&:strip)
  end

end
