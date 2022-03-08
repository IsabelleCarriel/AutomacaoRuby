puts "Qual o seu nome?"
nome = gets.chomp
puts "Informe a sua idade"
idade = gets.chomp.to_i


if (idade >=18)
    puts "#{nome}, você tem #{idade} anos e pode tirar sua carteira de motorista."
elsif (idade >= 7)
    puts "#{nome}, você tem #{idade} anos e é melhor continuar andandando de bicicleta."
else
    puts "#{nome}, você tem #{idade} anos, é muito jovem e só pode andar de motoquinha."
end
