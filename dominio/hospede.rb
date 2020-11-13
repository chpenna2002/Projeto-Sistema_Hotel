
require './pessoa'
$idHospede = Array.new
$i = 0
$h = Array.new 


class Hospede < Pessoa

  def cadastraHospede(nome, cpf, rg, endereco, telefone, data)
    @@nomePessoa = nome
    @@cpfPessoa = cpf
    @@rgPessoa = rg 
    @@enderecoPessoa = endereco
    @@telefonePessoa = telefone
    @@dataNascimento = data 

    $h.push(Hash[nome: @@nomePessoa,cpf:@@cpfPessoa, endereco:@@enderecoPessoa, telefone:@@telefonePessoa, data:@@dataNascimento])

    puts $h[$i]
    $i = $i + 1
  end
  def contaHospede(valor)
    @total = valor 
    puts "Valor da despesas: #{@total}"
  end

  def pagarDespesas
  @total = 0
  puts "Valor da despesas: #{@total}"
  end
    

end

hosp1 = Hospede.new
hosp1.cadastraHospede("Jorge", "123","Mg-SJj", "Rua A", "666", "2020")
hosp1.contaHospede(200)
hosp1.pagarDespesas
