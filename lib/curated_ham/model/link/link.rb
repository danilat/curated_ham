module CuratedHam
  class Link
    attr_reader :title, :url, :description, :created_at
    def initialize(args)
      @title = args[:title]
      @url = args[:url]
      @description = args[:description]
      @created_at = args[:created_at]
    end
  end
end