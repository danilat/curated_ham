module CuratedHam
  class Content
    attr_reader :title, :url, :description, :category, :created_at

    def initialize(args)
      @title = args[:title]
      @url = args[:url]
      @description = args[:description]
      @category = args[:category]
      @created_at = args[:created_at]
    end
  end
end