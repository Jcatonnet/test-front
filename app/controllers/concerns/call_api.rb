module CallApi
    def call_api_index
        @transactions.each do |transaction|
        url = " http://private-3f9656-paymiuminterviews.apiary-mock.com/transactions"
        data_serialized = open(url).read
        data = JSON.parse(data_serialized)
        transaction.date = data["created_at"]
        transaction.name = data["counterparty_name"]
        transaction.amount = data["amount"]
        transaction.operation_type = data["operation_type"]
        transaction.save 
      end
    end
  
  end
  