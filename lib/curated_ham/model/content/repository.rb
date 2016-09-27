module CuratedHam
  class ContentRepository
    def initialize
      @collection = []
    end

    def put(content)
      content.id = next_id
      @collection << content
      content
    end

    def find_by_id(id)
      @collection[id]
    end

    def find_all
      @collection
    end

    def next_id
      @collection.size
    end
  end
end