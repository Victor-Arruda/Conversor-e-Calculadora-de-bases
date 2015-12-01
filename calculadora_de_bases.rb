def decimal_para_binario(valor)
  #code
  valor_binario = ""
  if valor == 0
    return "0"
  end

  while valor > 0
    resto = valor % 2
    valor = valor / 2
    valor_binario = valor_binario + resto.to_s
  end

  return valor_binario.reverse
end

def decimal_para_hexadecimal(valor)
  #code
  valor_hexadecimal = ""
  hexa = ["1","2","3","5","6","7","8","9","a","b","c","d","e", "f"]
  if valor == 0
    return "0"
  end

  while valor > 0
    resto = valor % 16
    valor = valor / 16
    valor_hexadecimal = valor_hexadecimal + hexa[resto].to_s
  end

  return valor_hexadecimal.reverse
end

def decimal_para_octal(valor)
  #code
  valor_octal = ""

  if valor == 0
    return "0"
  end

  while valor > 0
    resto = valor % 8
    valor = valor / 8
    valor_octal = valor_octal + resto.to_s
  end

  return valor_octal.reverse
end

def binario_para_decimal(valor)
  #code
  return valor.to_s.to_i(2).to_s(10)
end

def hexadecimal_para_decimal(valor)
  #code
  return valor.to_s.to_i(16).to_s(10)
end

def octal_para_decimal(valor)
  #code
  return valor.to_s.to_i(8).to_s(10)
end

def soma_binarios(valor1, valor2)
  #code
  decimal = binario_para_decimal(valor1).to_i + binario_para_decimal(valor2).to_i

  return decimal_para_binario(decimal)
end

def subtracao_binarios(valor1, valor2)
  #code
  decimal = binario_para_decimal(valor1).to_i - binario_para_decimal(valor2).to_i

  return decimal_para_binario(decimal)
end

def soma_hexadecimal(valor1, valor2)
  #code
  decimal = hexadecimal_para_decimal(valor1).to_i + hexadecimal_para_decimal(valor2).to_i

  return decimal_para_hexadecimal(decimal)
end

def subtracao_hexadecimal(valor1, valor2)
  #code
  decimal = hexadecimal_para_decimal(valor1).to_i - hexadecimal_para_decimal(valor2).to_i

  return decimal_para_hexadecimal(decimal)
end

def soma_octal(valor1,valor2)
  #code

  decimal = octal_para_decimal(valor1).to_i + octal_para_decimal(valor2).to_i

  return decimal_para_octal(decimal)
end

def subtracao_octal(valor1,valor2)
  #code

  decimal = octal_para_decimal(valor1).to_i - octal_para_decimal(valor2).to_i

  return decimal_para_octal(decimal)
end

sair = false

while sair == false
  puts(" 1 - binario\n2 - octal\n3 - hexadecimal\n4 - sair")
  escolha = gets.chomp
  case escolha
  when "1"
    puts(" 1 - converter decimal para binario\n 2 - somar dois numeros binarios\n 3 - subtrair dois numeros binarios")
    escolha = gets.chomp
    case escolha
    when "1"
      puts "Digite um número"
      numero = gets.chomp
      puts decimal_para_binario(numero.to_i)
    when "2"
      puts "Digite o primeiro número"
      num1 = gets.chomp
      puts "Digite o segundo número"
      num2 = gets.chomp
      puts soma_binarios(num1.to_i, num2.to_i)
    when "3"
      puts "Digite o primeiro número"
      num1 = gets.chomp
      puts "Digite o segundo número"
      num2 = gets.chomp
      puts subtracao_binarios(num1, num2)
    else
      puts "Valor Inválido!"
    end
  when "2"
      puts(" 1 - converter decimal para octal\n 2 - somar dois numeros octarios\n 3 - subtrair dois numeros octarios")
      escolha = gets.chomp
      case escolha.to_i
      when 1
        puts "Digite um número"
        numero = gets.chomp
        puts decimal_para_octal(numero.to_i)
      when 2
        puts "Digite o primeiro número"
        num1 = gets.chomp
        puts "Digite o segundo número"
        num2 = gets.chomp
        soma_octal(num1, num2)
      when 3
        puts "Digite o primeiro número"
        num1 = gets.chomp
        puts "Digite o segundo número"
        num2 = gets.chomp
        subtracao_octal(num1, num2)
      else
        puts "Valor Inválido!"
      end
    when "3"
      puts " 1 - converter decimal para hexadecimal\n 2 - somar dois numeros hexadecimais\n 3 - subtrair dois numeros hexadecimais"
      escolha = gets.chomp
      case escolha.to_i
      when 1
        puts "Digite um número"
        numero = gets.chomp
        puts decimal_para_hexadecimal(numero.to_i)
      when 2
        puts "Digite o primeiro número"
        num1 = gets.chomp
        puts "Digite o segundo número"
        num2 = gets.chomp
        soma_hexadecimal(num1, num2)
      when 3
        puts "Digite o primeiro número"
        num1 = gets.chomp
        puts "Digite o segundo número"
        num2 = gets.chomp
        subtracao_hexadecimal(num1, num2)
      else
        puts "Valor Inválido!"
      end
  when "4"
    puts "Até logo!"
    sair = true
  else
    puts "Valor Inválido"
  end
end
