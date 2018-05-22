class Table
  def initialize(mesa, dia1, dia2, dia3, dia4)
    @mesa = mesa
    @dia1 = dia1.to_i
    @dia2 = dia2.to_i
    @dia3 = dia3.to_i
    @dia4 = dia4.to_i
  end

  def recaudacion_mayor
    if @dia1 > @dia2
      if @dia1 > @dia3
        if @dia1 > @dia4
          puts "#{@mesa} #{@dia1} mayor recaudacion"
        elsif @dia2 > @dia3
            if @dia2 > @dia4
              puts "#{@mesa} #{@dia2} mayor recaudacion"
          elsif @dia3 > @dia4
            puts "#{@mesa} #{@dia3} mayor recaudacion"
          else
            puts "#{@mesa} #{@dia4} mayor recaudacion"
          end
        end
      end
    end
  end
  def promedio_total
    (@dia1 + @dia2 + @dia3 + @dia4)/4
  end

end

mesas = []
file = File.open('casino.txt', 'r')
data = file.readlines
file.close
data.each do |line|
  mesa, dia1, dia2, dia3, dia4 = line.split(', ')
  mesas << Table.new(mesa, dia1, dia2, dia3, dia4)
end
mesas.each do |mayor|
  puts mayor.recaudacion_mayor
end
