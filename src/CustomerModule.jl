module CustomerModule

export Customer, defaultCustomer
    

mutable struct Customer
    name::String
    cash::Float64
    BankDeposit::Float64

    Customer(name) = new(name, 50.0, 0.0)
end    

function defaultCustomer(customer::Customer)
    customer.name = "DEFAULT-" * customer.name
    customer.cash = 0
    customer.BankDeposit = 0
end


end