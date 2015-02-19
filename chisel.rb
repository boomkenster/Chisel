class Chisel


  def initialize
    @document = '# My Life in Desserts

    ## Chapter 1: The Beginning

    "You just *have* to try the cheesecake," he said. "Ever since it appeared in
    **Food & Wine** this place has been packed every night."'
  end
  def parse(document)
    document = document.split(" ")
    you_place = document.index("You")
    document.map do |item|
      if item == "##"
        puts "<h2>#{document[6..9].join(" ")}</h2>\n\n"
      elsif item == "#"
        puts "<h1>#{document[1..4].join(" ")}</h1>"
      elsif item == "You"
        puts "<p>\n#{document[10..-1].join(" ")}\n</p>"
      else
      end
    end
  end

end
document = '# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."'

parser = Chisel.new
print parser.parse(document)
