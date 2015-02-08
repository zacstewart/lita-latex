require 'lita'

module Lita
  module Handlers
    class Latex < Handler

      LATEX_URL = URI::HTTP.build(
        host:      'chart.apis.google.com',
        path:      '/chart',
        fragment:  '.png').freeze

      route %r(\A(?:tex|latex)(?:\s+me)?\s+(.*)\Z), :latex, command: true

      def latex(response)
        expression = CGI.escape(response.matches.first.first)
        response.reply image_url(expression)
      end

      private

      def image_url(expression)
        LATEX_URL.dup.tap { |url|
          url.query = "cht=tx&chl=#{ expression }"
        }.to_s
      end

    end

    Lita.register_handler(Latex)

  end
end
