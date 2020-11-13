
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
  
   def cadastrarReserva(tempo, id, quarto)
   
    @tempo_estadia = tempo
    @hospede = id
    @quarto = quarto
    @r = Hash[codigo: @codigo_da_reserva, hospede:@hospede, quarto:@quarto, tempo:@tempo]
   end
  
   def consultarReserva(codigo)
  
  
   end
  
   def atualizarReserva()
  
   end
  
   def deletaReserva()
  
   end
  
  
  
  end