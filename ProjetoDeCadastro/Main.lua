print("Esse projeto é apenas um treinamento.")

print("Para fazer um cadastro de um novo cliente digite 1.")
print("Para consultar os clientes cadastrados digite 2.")
print("Para excluir um cadastro digite 3.")
print("Para encerrar o programa digite 0.")

function cadastro(nome,idade)
    return nome,idade
end

--[[function consulta()
end

function excluir()
end]]--

x = '1'

repeat
    if(x=='1') then
        print(cadastro("Giuseppe","23"))
        x = '0'
    elseif(x=='2')then
        consulta()
        x = '0'
    elseif(x=='3')then
        excluir()
        x = '0'
    elseif(x < 0 or x > 3) then
        print("Valor inválido.")
        x = '0'
    end
until x == '0'
