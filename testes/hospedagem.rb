class hospedagem
  
  attr_accessor :hospede, :numeroQuarto,
  :dataEntrada,
  :dataSaida,
  :valorHospedagem, 
  :numeroHospedes

  def cadastraEntrada
            arquivo = []
        arquivo << puts
        arquivo << "#{Time.new}"
        arquivo << "Hospede: #{@hospede}".upcase
        arquivo << "Quarto: #{@numeroQuarto}".upcase
        arquivo << "Data de Entrada: #{@dataEntrada}".upcase
        arquivo << "Numero de hospedes: #{@numeroHospedes}".upcase
        
        
        arquivo << "********************"
        arquivo << puts


        x = File.open("Agendamentos.txt", "a+")
        x.puts(arquivo)
        x.close

        puts "Dados registrados:"
        puts arquivo
        sleep 2
  end

    
 def cadastraSaida
            arquivo = []
        arquivo << puts
        arquivo << "#{Time.new}"
        arquivo << "Hospede: #{@hospede}".upcase
        arquivo << "Quarto: #{@numeroQuarto}".upcase
        arquivo << "Data de Saida: #{@dataSaida}".upcase

        
        
        arquivo << "********************"
        arquivo << puts


        x = File.open("Agendamentos.txt", "a+")
        x.puts(arquivo)
        x.close

        puts "Dados registrados:"
        puts arquivo
        sleep 2
  end

  def registrarConsumo(valor)
        arquivo = []
        arquivo << puts
        arquivo << "#{Time.new}"
        arquivo << "Hospede: #{@hospede}".upcase
        arquivo << "Quarto: #{@numeroQuarto}".upcase
        arquivo << "Valor: #{@valor}".upcase

        
        
        arquivo << "********************"
        arquivo << puts


        x = File.open("Valores.txt", "a+")
        x.puts(arquivo)
        x.close

        puts "Dados registrados:"
        puts arquivo
        sleep 2
  end 

  def consultarHospedagem(numeroQuarto, hospede)
        File.open("Agendento.txt", "r+") do |file|
        puts file.read 
  end
end
end