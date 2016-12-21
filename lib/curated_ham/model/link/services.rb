module CuratedHam
  class LinkService
    def initialize(link_repository, clock)
      @link_repository = link_repository
      @clock = clock
    end

    def create_link(args)
      args[:created_at] = @clock.now
      
      link = Link.new(args)
      @link_repository.save_link(link)
      link
    end
  end
end