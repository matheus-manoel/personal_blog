module ApplicationHelper

  def full_title(subtitle="")
    base = "matheus-manoel's Blog"
    if subtitle.empty?
      base
    else
      "#{subtitle} | #{base}"
    end
  end

end
