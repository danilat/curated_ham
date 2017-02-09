module CuratedHam
  class Link
    attr_reader :title, :url, :description, :created_at, :category
    def initialize(args)
      @title = args[:title]
      @url = args[:url]
      @description = args[:description]
      @created_at = args[:created_at]
      @category = args[:category]
    end
  end
end
