class TransactionsController < ApplicationController
    include CallApi

    def index
        @transactions = Transaction.all

        call_api_index
    end
end
