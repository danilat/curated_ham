module CuratedHam
  class ContentService
    def initialize(content_repository)
      @content_repository = content_repository
    end

    def save_content(args)
      args[:created_at] = DateTime.now
      content = Content.new(args)
      @content_repository.put(content)
      content
    end
  end
end