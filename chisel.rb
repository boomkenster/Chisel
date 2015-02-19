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
       if item[0..1] == "##"
         puts "<h2>#{item[2..-1]}</h2>\n"
       elsif item[0] == "#"
         puts "<h1>#{item[1..-1]}</h1>\n"
       elsif item == "\""
         puts "<p>\n#{item[1..-2].join(" ")}\n</p>"
       else
         item
       end
     end
  end

  def splitter(document)
    document = document.split("\\n")
  end

end
document = '# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."'

parser = Chisel.new
puts parser.parse(document)
