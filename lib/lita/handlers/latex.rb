require 'lita'

module Lita
  module Handlers
    class Latex < Handler

      route %r(\A(?:tex|latex)(?:\s+me)?\s+(.*)\Z), :latex, command: true

      def latex(response)
        expression = URI.escape(response.matches.first.first)

        query = "cht=tx&chl=#{ expression }"
        url = URI::HTTP.build(host: 'chart.apis.google.com',
                        path: '/chart',
                        query: query,
                        fragment: '.png')

        response.reply url.to_s
      end
    end

    Lita.register_handler(Latex)
  end
end
