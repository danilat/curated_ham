module CuratedHam
  class LinkRepository
    def initialize
      @links = []
    end

    def find_all
      @links
    end

    def put(link)
      @links << link
    end
  end
end
