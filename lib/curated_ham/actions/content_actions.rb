module CuratedHam
  class CreateAContent
    def initialize(content_repository)
      @content_repository = content_repository
    end

    def run(params)
      params[:created_at] = DateTime.now
      content = Content.new(params)
      @content_repository.store(content)
      content
    end
  end
end