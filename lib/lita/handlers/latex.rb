require 'lita'

module Lita
  module Handlers
    class Latex < Handler

      route %r(\A(?:tex|latex)(?:\s+me)?\s+(.*)\Z), :latex, command: true

      def latex(response)
        expression = URI.escape(response.matches.first.first)
        image_url = URI::HTTP.build(
          host: 'chart.apis.google.com',
          path: '/chart',
          query: "cht=tx&chl=#{ expression }",
          fragment: '.png'
        ).to_s

        response.reply image_url
      end

    end

    Lita.register_handler(Latex)
  end
end
