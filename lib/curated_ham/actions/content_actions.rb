module CuratedHam
  class CreateAContent
    def initialize(content_repository)
      @content_repository = content_repository
    end

    def run(params)
      params[:created_at] = DateTime.now
      content = Content.new(params)
      @content_repository.put(content)
      content
    end
  end

  class GetAllContents
    def initialize(content_repository)
      @content_repository = content_repository
    end

    def run
      @content_repository.find_all
    end
  end
end