class Chisel

  def parse(document)
    lines = document.split("\n\n")
    new_doc = lines.map do |line|
      format_line(line)
    end

    new_doc
  end

  def format_line(line)
    case
    when line.start_with?("####")
      format_tag(line, "h4")
    when line.start_with?("###")
      format_tag(line, "h3")
    when line.start_with?("##")
      format_tag(line, "h2")
    when line.start_with?("#")
      format_tag(line, "h1")
    else
      format_paragraph_tag(line, "p")
        # line = line.split(" ")
        # line.map do |words|
        # format_paragraph_line(words)
      #   end
      # line.join(" ")
    end
  end

  def format_paragraph_line(words)
    case
    when words.start_with?("**")
      format_italic_tag(words,"em")
    when words.start_with?("*")
      format_strong_tag(words,"strong")
    end
  end

  def format_italic_tag(words, tag)
    words.delete!("**")
    "<#{tag}>#{words}</#{tag}>"
  end

  def format_strong_tag(words, tag)
    words.delete!("*")
    "<#{tag}>#{words}</#{tag}>"
  end

  def format_tag(line, tag)
    line.delete!("#")
    "<#{tag}>#{line}</#{tag}>\n"
  end

  def format_paragraph_tag(line, tag)
    line.delete!("#")
    "<#{tag}>\n#{line}\n</#{tag}>\n"
  end
end
document = '# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."

New line, new paragraph'

parser = Chisel.new
puts parser.parse(document)
