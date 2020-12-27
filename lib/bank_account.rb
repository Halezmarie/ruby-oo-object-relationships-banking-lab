class BankAccount
    attr_reader :name
    attr_accessor :balance, :status
  
    def initialize(name)
      @name = name
      @balance = 1000
      @status = "open"
    end
  
    def deposit(amount)
      @balance += amount
    end
  
    def display_balance
      "Your balance is $#{@balance}."
    end
  
    def valid? #seeing if it can be taken out
      @status == "open" && @balance > 0
    end
  
    def close_account
      @status = "closed"
    end
  
    private
    attr_writer :name
  end