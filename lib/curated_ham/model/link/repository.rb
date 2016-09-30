module CuratedHam
  class LinkRepository
    def initialize
      @links = []
    end

    def find_all
      @links
    end

    def save_link(link)
      @links << link
    end
  end
end