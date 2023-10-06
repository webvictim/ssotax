module Jekyll
  module NumberFormatFilter
    def format(input, currency)
      currency_symbol = case currency
      when "USD"
        "$"
      when "EUR"
        "€"
      else
        ""
      end


      "#{currency_symbol}#{input}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::NumberFormatFilter)