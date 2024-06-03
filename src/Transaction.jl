module Transaction
include("BankModule.jl")
include("CustomerModule.jl")
using .CustomerModule, .BankModule


export deposit, withdraw


function deposit(cust::Customer, bank::Bank, amount::Float64)
    if cust.cash ≥ amount
        cust.cash -= amount
        cust.BankDeposit += amount
        bank.cash += amount
        bank.totalDeposit += amount
    else
        println("Not enough cash to deposit this amount!")
    end
end

function withdraw(cust::Customer, bank::Bank, amount::Float64)
    if bank.cash ≥ amount
        if cust.BankDeposit ≥ amount
            cust.BankDeposit -= amount
            cust.cash += amount
            bank.totalDeposit -= amount
            bank.cash -= amount
        else
            println("You don't have enough deposit in the account")
        end
    else
        println("The bank doesn't have enough cash")
    end
end



end