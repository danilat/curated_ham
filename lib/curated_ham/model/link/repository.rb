module CuratedHam
  class LinkRepository
    def initialize
      @link = []
    end

    def find_all
      @link
    end

    def put(link)
      @link << link
    end
  end
end
