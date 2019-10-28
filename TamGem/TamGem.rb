class TamagochiGem

  attr_accessor :sourse, :char, :bypass_html

  def initialize(sourse = "index.html", char, bypass_html = false)
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
    file.each do |line|
    if line.match(/<body>/)
    file.puts(@char)
    end
  end
  end
end
