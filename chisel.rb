class Chisel


  def initialize

  end
  def parse(document)
    document = document.split(" ")

   document.map do |item|

      if item == "##"
        print "<h2>#{document[6..9].join(" ")}</h2>"
      elsif item == "#"
        print "<h1>#{document[1..4].join(" ")}</h1>"
      else
      end
    end
  #   # elsif
  #   # else document[0] == "\" "
  #   #   print "<p>\n#{document[1..-2]}\n</p>"
  #   # end
  end


  def doc
    print @document.split.(" ")
  end
end
document = '# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."'

parser = Chisel.new
print parser.parse(document)
# parser.parse("# My Life in Desserts")
