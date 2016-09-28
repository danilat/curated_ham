module CuratedHam
  class CreateAContent
    def initialize(content_repository)
      @content_repository = content_repository
    end

    def run(args)
      @content_repository.save_content(args)
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