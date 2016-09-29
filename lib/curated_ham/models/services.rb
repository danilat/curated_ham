module CuratedHam
  class LinkService
    def initialize(link_repository)
      @link_repository = link_repository
    end

    def create_a_link(args)
      args[:created_at] = DateTime.now
      link = Link.new(args)
      @link_repository.put(link)
      link
    end
  end
end