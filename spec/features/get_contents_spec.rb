require 'json'

describe "Get contents", :feature do
  before(:each) do
    @my_json_api = API.new
  end

  context "in JSON format" do
    let(:the_coding_stones) do
      {title: "coding stones", url: "http://codingstones.com/", description: "RocknRollas!!", category: "rockanroll"}
    end

    before(:each) do
      @my_json_api.post(the_coding_stones)
    end

    it "gets a collection" do
      result = @my_json_api.get

      expect(result).not_to be_nil
      expect(JSON.parse(result).size).to eq 1
    end

    it "items has the right format" do
      result = @my_json_api.get
      json_result = JSON.parse(result)
      item = json_result.first

      expect(item[:title]).to eq the_coding_stones[:title]
      expect(item[:url]).to eq the_coding_stones[:url]
      expect(item[:description]).to eq the_coding_stones[:description]
      expect(item[:category]).to eq the_coding_stones[:category]
      expect(item[:created_at]).not_to be_nil
    end
  end

end

class API
  def post(content_params)
    content_repository = CuratedHam::ContentRepository.new
    action = CuratedHam::CreateAContent.new(content_repository)
    action.run(content_params)
  end

  def get
  end
end