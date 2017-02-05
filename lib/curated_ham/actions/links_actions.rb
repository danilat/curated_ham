module CuratedHam
  class RetrieveAllTheLinks
    def initialize(link_repository)
      @link_repository = link_repository
    end

    def run
      @link_repository.find_all
    end
  end

  class CreateALink
    def initialize(service)
      @service = service
    end
    def run(args)
      @service.create_link(args)
    end
  end
end
