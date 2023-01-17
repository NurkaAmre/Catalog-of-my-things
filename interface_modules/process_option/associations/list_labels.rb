require 'rainbow'

module ListLabel
  def list_labels
    @labels = load_labels
    if @labels.empty?
      puts 'There are no books listed, please enter a book name and author'.red
    else
      @labels.each_with_index do |label, index|
        puts "(#{index}) Title: #{label['title']} , Color: #{label['color']}".blue.underline
      end
    end
  end
end
