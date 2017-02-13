module CuratedHam
  class LinkService
    def initialize(repository, clock)
      @repository = repository
      @clock = clock
    end

    def create_link(args)
      args[:created_at] = @clock.now
      link = Link.new(args)
      @repository.put(link)
      link
    end
  end
end
