module CuratedHam
  class RetrieveAllTheLinks
    def initialize(link_repository)
      @link_repository = link_repository
    end

    def run
      @link_repository.find_all
    end
  end
end
