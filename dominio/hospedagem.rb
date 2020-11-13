require './hospede'
class Hospedagem < Hospede
  @numeroQuarto = nil
  @dataEntrada = nil
  @dataSaida = nil
  @valorHospedagem = nil
  @numeroHospedes = nil
  @e = Hash[]
  @s = Hash[]
  def cadastrarEntrada(nmQuarto, dtEnt, valor, numeroHospedes, hospedeTitular)
    @numeroQuarto = nmQuarto
    @dataEntrada = dtEnt
    @valorHospedagem = valor
    @numeroHospedes = numeroHospedes
    @hospede = hospedeTitular

    @e = Hash[numeroQuarto: @numeroQuarto, dataEntrada: @dataEntrada, valorHospedagem: @valorHospedagem, numeroHospedes: @numeroHospedes]
    puts "cadastro Entrada concluido, #{@e}" 
  end

  def cadastrarSaida(nmQuarto, dtSaida, _valor)
    @numeroQuarto = nmQuarto
    @dataSaida = dtSaida
    @valorHospedagem = valor

    @valor = hosp1.contaHospede(200)
    @s = Hash[numeroQuarto: @numeroQuarto, dataEntrada: @dataSaida, valorHospedagem: @valorHospedagem ] 
   puts "cadastro Saida concluido, #{@s}"  
  end

  def consultarHospedagem(numeroQuarto, hospede)
    @numeroQuarto = numeroQuarto
    @hospede = hospede
    if (@e.include? @numeroQuarto)
      puts 'cadastrado'
    end
  end
end

hospd1 = Hospedagem.new
hospd1.cadastrarEntrada('202', '20202020', '233', '2', 'Jorge') 
#hospd1.consultarHospedagem('202', 'Jorge')
