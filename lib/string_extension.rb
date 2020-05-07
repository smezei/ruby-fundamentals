class String
  def color(color)
    "\033[#{color}m#{self}\033[0m"
  end

  def red
    color 31
  end

  def green
    color 32
  end

  def yellow
    color 33
  end
end
