require './quarto'
$idFuncionario = Array.new
$i = 0
$h = Array.new

class Funcionario < Quarto

@matriculaFuncionario = Array.new
@dataAdmissao = nil
@cargoFuncionario = nil
@salarioFuncionario = nil
@nivelAcesso = nil



  def cadastrarFuncionario(dataA, cargo, salario, nivel)
    
    puts $i
    $idFuncionario.push($i)
    @dataAdmissao = dataA
    @cargoFuncionario = cargo
    @salarioFuncionario = salario
    @nivelAcesso = nivel
    @matriculaFuncionario = rand 100
    

    
  puts "Cadastro  concluído: ID: #{$idFuncionario[$i]}, DATA: #{@dataAdmissao}, CARGO: #{@cargoFuncionario}, SALARIO: #{@salarioFuncionario}, NIVEL: #{@nivelAcesso}, #{@matriculaFuncionario}"
  $h.push(Hash[id: $idFuncionario[$i], matricula:@matriculaFuncionario, cargo:@cargoFuncionario, salario:@salarioFuncionario, data:@dataAdmissao, nivel:@nivelAcesso])
  puts $h[$i]
  $i = $i + 1

 

  end

  def excluiCadastro(id)

    @id = id
    $h.delete_at(@id) #=> 4
    puts $h[@id]

  end



  def cadastraQuarto(numero, andar)
    @@numero_quarto = numero
    @@numero_andar = andar
  end

end

func1 = Funcionario.new
func1.cadastrarFuncionario("20102020", "Porteiro", 2000, "2")
func1.excluiCadastro(0)

