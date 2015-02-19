class Chisel


  def initialize
  @document = '# My Life in Desserts

  ## Chapter 1: The Beginning

  "You just *have* to try the cheesecake," he said. "Ever since it appeared in
  **Food & Wine** this place has been packed every night."'

  end
def parse(document)
  if document[0..1] == "##"
    print "<h2>#{document[2..-1]}</h2>"
  else document[0] == "#"
    print "<h1>#{document[1..-1]}</h1>"
  end


end







end


parser = Chisel.new
parser.parse("# My Life in Desserts")
