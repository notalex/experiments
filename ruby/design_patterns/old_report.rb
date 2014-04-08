class OldReport
  def initialize
    @title = 'Monthly Report'
    @text = ['This is', 'the', 'report']
  end

  def output_report(format)
      puts '<html>'
      puts '<head>'
      puts "<title>#{ @title }</title>"
      puts '<body>'
      @text.each do |line|
        puts "<p>#{ line }</p>"
      end
      puts '</body>'
      puts '</head>'
      puts '</html>'
  end
end
