module CuratedHam
  class LinkRepository
    def initialize
      @links = []
    end

    def find_all
      @links
    end

    def put(link)
      link.id = @links.size
      @links << link
      link
    end

    def find_by_id(id)
      @links[id]
    end
  end
end