module BreweryDB
  class Request
    def initialize(connection, path, params={})
      @connection = connection
      @path = path
      @params = params
    end

    def response
      Response.new(response_body, self)
    end

    def next_page
      self.class.new(@connection, @path, @params.merge(p: page_number + 1))
    end

  private

    def response_body
      @connection.get(@path, @params).body
    end

    def page_number
      @params[:p] || 1
    end
  end
end
