class HistoryLog < ApplicationRecord
	validates  :from, :to, :amount, presence: true
	before_save :calc_result


	private
	def calc_result
		open_exchange_rates = OpenExchangeRates::Rates.new
		self.result = open_exchange_rates.convert(self.amount, :from => self.from, :to => self.to) # Money.new(80, "USD")
	end
end
