class TamagochiGem

  attr_accessor :sourse, :char, :bypass_html

  def initialize(sourse, char, bypass_html = false)
    @sourse = sourse
    @char = char
    @bypass_html = bypass_html
  end

  def status()
    unless @bypass_html
      if @char.include?("<") or @char.include?(">")
        @char.gsub!(/[<>]/,"")
        end
      end
    file = File.open(@sourse, "r+")
    file.each { |line|
    if line.match(/<body>/)
    file.puts("<p>#{@char}</p>")
    end
    }
  end
end
