require 'csv'

CSV.foreach('./db/csv/periodic_table.csv', headers: true, header_converters: :symbol) do |element|
  Element.create(number: element[:number],
                name: element[:name],
                symbol: element[:symbol],
                appearance: element[:appearance],
                group_block: element[:group_block],
                period: element[:period],
                element_category: element[:element_category],
                atomic_weight: element[:atomic_weight],
                electron_configuration: element[:electron_configuration],
                phase: element[:phase],
                melting_point: element[:melting_point],
                boiling_point: element[:boiling_point],
                electronegativity: element[:electronegativity])
end
