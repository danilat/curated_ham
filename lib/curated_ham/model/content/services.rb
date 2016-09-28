module CuratedHam
  class ContentService
    def initialize(content_repository, metadata_parser)
      @content_repository = content_repository
      @metadata_parser = metadata_parser
    end

    def save_content(args)
      args[:created_at] = DateTime.now
      args[:description] = @metadata_parser.description_from(args[:url])
      content = Content.new(args)
      @content_repository.put(content)
      content
    end
  end
end