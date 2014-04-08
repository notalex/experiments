class Report
  def initialize
    @title = 'Monthly Report'
    @text = ['This is', 'the', 'report']
  end

  def output_report(format)
    if format == :plain
      puts 'plain format'
    elsif format == :html
      puts '<html>'
      puts '<head>'
      puts "<title>#{ @title }</title>"
      puts '<body>'
    end

    @text.each do |line|
      if format == :plain
        puts line
      else
        puts "<p>#{ line }</p>"
      end
    end

    if format == :html
      puts '</body>'
      puts '</head>'
      puts '</html>'
    end
  end
end
