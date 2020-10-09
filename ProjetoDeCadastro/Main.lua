--"Esse projeto é apenas um treinamento."

--"Menu Principal."
    print("Para fazer um novo cadastro digite 1.")
    print("Para consultar os cadastros digite 2.")
    print("Para excluir um cadastro digite 3.")
    print("Para encerrar o programa digite 0.")

--"FUNÇÕES."

--[["Função memória."
    function funcaoMemoria(nome,idade,sexo,altura,peso,imc)
        memoriaTotal={nome,idade,sexo,altura,peso,imc}
        for i=1,#memoriaTotal,1 do
            print(memoriaTotal[i])
        end
    end ]]--

--"Função de Cadastro."
    function cadastro()

        print("Digite seu nome: ")
        nome = "Giuseppe Ugo Zapparoli" -- SUBSTITUIR POR io.read()

        print("Digite sua idade: ")
        idade = "23" -- SUBSTITUIR POR io.read()

        repeat
            print("Digite seu sexo, M para masculino ou F para feminino: ")
            sexo = "M" -- SUBSTITUIR POR io.read()
            if sexo ~= "M" and sexo ~= "m" and sexo ~= "F" and sexo ~= "f" then
                print("Sexo inválido.")
            end
        until sexo == "M" or sexo == "m" or sexo == "F" or sexo == "f"

        print("Digite sua altura, com metros e centimetros separados por um ponto (Exemplo 1.75): ")
        altura = "1.75" --SUBSTITUIR POR io.read()

        print("Digite seu peso, com quilos e gramas separados por um ponto (Exemplo 80.100): ")
        peso = "80.100" --SUBSTITUIR POR io.read()

        print("Calcularei seu IMC.")
        imc = peso/altura^2

        return nome,idade,sexo,altura,peso,imc
    end

--[[function consulta()
end

function excluir()
end]]--

--"Aqui é decidido qual função será executada."
    repeat -- para caso a opção digitada sejá invalida, solicitar que digite novamente.

    --"Aqui o usuario Digita a opção escolhida."
        opcao = '1' -- SUBSTITUIR POR io.read() ; Não está funcionando no VSCode

        if(opcao=='1') then
            cadastro()
            print("Os dados cadastrados foram:") 
            print("Nome: " .. nome .. ". Idade: " .. idade .. "anos. Sexo: " .. sexo .. ". Altura: "
            .. altura .. "M. Peso: " .. peso .. "Kg. E o IMC calculado é: " .. imc)
            --funcaoMemoria(nome,idade,sexo,altura,peso,imc)
            print("Vou te retornar ao menu principal.")
            opcao = '0' -- REMOVER. Setando pra 0 pois o io.read() não está funcionando
        elseif(opcao=='2')then
            consulta()
            opcao = '0' -- REMOVER. Setando pra 0 pois o io.read() não está funcionando
        elseif(opcao=='3')then
            excluir()
            opcao = '0' -- REMOVER. Setando pra 0 pois o io.read() não está funcionando
        elseif(opcao<0 or x>3) then
            print("Opção inválida. Digite uma opção válida.")
            opcao = '0' -- REMOVER. Setando pra 0 pois o io.read() não está funcionando
        end
    until opcao == '0'
