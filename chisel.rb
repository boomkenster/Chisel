class Chisel


  def initialize
    @document = '# My Life in Desserts

    ## Chapter 1: The Beginning

    "You just *have* to try the cheesecake," he said. "Ever since it appeared in
    **Food & Wine** this place has been packed every night."'
  end
  def parse(document)
    document = document.split("\n")
    document.map do |item|
      case
       when item[0..1] == "##"
         puts "<h2>#{item[2..-1]}</h2>\n"
       when item[0] == "#"
         puts "<h1>#{item[1..-1]}</h1>\n"
       when item[0] == "\""
        puts "<p>\n#{item[1..-1]}\n#{document.last.chop}\n</p>"
       else
       end
     end
  end

  def splitter(document)
    document = document.split("\\n")
  end

  def h4_switch(item)
    if item[0..3] == "####"
      item.gsub(/####/, '<h4>') + "</h4>"
    else
    end
  end

  def h3_switch(item)
    if item[0..2] == "###"
      item.gsub(/###/, '<h3>') + "</h3>"
    else
    end
  end

  def h2_switch(item)
    if item[0..1] == "##"
      item.gsub(/##/, '<h2>') + "</h2>"
    else
    end
  end

  def h1_switch(item)
    if item[0] == "#"
      item.gsub(/#/, '<h1>') + "</h1>"
    else
    end
  end

end
document = '# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."'

parser = Chisel.new
puts parser.parse(document)


#if there is quote put a <p> before until the last quote
