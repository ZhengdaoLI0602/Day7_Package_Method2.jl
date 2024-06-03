include("../src/BankModule.jl")
include("../src/CustomerModule.jl")
include("../src/Transaction.jl")
using .BankModule, .CustomerModule, .Transaction
# using Method2_templates # The same name with package is the only runnable one without "."
using Test

@testset "aaaa" begin
    # Write your tests here.
    cust = Customer("abc")
    bank = Bank("xyz")
    # bank = Bank("xyz")
    @test cust.name == "abc"
    @test bank.cash == 1000.0
end
