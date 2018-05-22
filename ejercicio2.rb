require 'date'
class Course
  def initialize(curso, *fecha)
    @curso = curso
    @fecha = fecha.map {|date| Date.parse(date)}
  end
  def fecha_previa(filter_date)
    @fecha.select {|date| date < filter_date}
  end
end

file = File.open('cursos.txt', 'r')
data = file.readlines
file.close

cursos=[]
data.each do |line|
  ls = line.split(' ')
  cursos << Course.new(*ls)
end

puts cursos[3].fecha_previa(Date.today)
