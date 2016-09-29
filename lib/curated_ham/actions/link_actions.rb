module CuratedHam
  class GetAllLinks
    def initialize(link_repository)
      @link_repository = link_repository
    end
    def run
      @link_repository.find_all
    end
  end

  class CreateALink
    def initialize(link_service)
      @link_service = link_service
    end

    def run(args)
      @link_service.create_a_link(args)
    end
  end
end