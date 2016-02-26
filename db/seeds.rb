# ruby encoding: utf-8

f = File.open(File.join(Rails.root, 'lib', 'assets', 'fetch', 'output.txt'))

result = []
f.each_line do |line| 
  if line[0] == "@"
    unless result.empty?
      name = result[0].strip
      origin = result[1].strip
      dl = result[2].strip
      tags = result[3].strip.split(',')
      res = result[4].strip 

      summ = result[6].strip + result[7].strip
      license = result[8].strip

      draw = Drawing.create!(:name => name, :origin => origin, 
                             :description => summ, :res => res,
                             :downloads => dl, :license => license)
      
      tags.each do |tag|
        tag = tag.strip
        tagEntry = Tag.create(:name => tag)
        #draw.tags << tagEntry
      end
    end
    result = []
    line = line[1..-1]
  end
  if line.include? "|"
    result += line.split("|")
  else
    result[-1] += line
  end
end
