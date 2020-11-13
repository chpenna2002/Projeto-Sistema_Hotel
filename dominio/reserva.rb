class Reserva
 def initialize(codigo)
    @codigo_da_reserva = codigo
 end
 @data_chegada = nil
 @data_saida = nil 
 @tempo_estadia = nil
 @hospede = nil
 @status_reserva = nil
 @quarto = nil
 @r = Hash[]

end

 def cadastrarReserva(tempo, id, quarto)
 
  @tempo_estadia = tempo
  @hospede = id
  @quarto = quarto
  @r = Hash[codigo: @codigo_da_reserva, hospede:@hospede, quarto:@quarto, tempo:@tempo]
 end

 def consultarReserva(codigo, hospede, quarto , tempo)
  @codigo = codigo
  @hospede = hospede 
  @quarto = Quarto
  @tempo_estadia = tempo

  if(r[@codigo] != nil)
    puts "O codigo #{@codigo}"
    puts "O hospede #{@hospede}" 
    puts "O quarto #{@quarto}"
  else 
    puts 'Reserva nao encontrada'
  end

 end

 def deletaReserva()
  @r.delete['codigo']
  @r.delete['hospede']
  @r.delete['quarto']
  @r.delete['tempo']

 end



