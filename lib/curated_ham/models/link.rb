module CuratedHam
  class Link
    attr_accessor :id
    attr_reader :title, :url, :created_at, :category
    def initialize(args)
      @id = args[:id]
      @title = args[:title]
      @url = args[:url]
      @created_at = args[:created_at]
      @category = args[:category]
    end
  end
end