describe "Create A Link" do
  let(:some_args) do
    {title: 'foo'}
  end

  let(:a_link){ CuratedHam::Link.new(some_args)}

  it "saves the link" do
    service = instance_double(CuratedHam::LinkService)
    action = CuratedHam::CreateALink.new(service)
    allow(service).to receive(:create_a_link).and_return(a_link)
    action.run(some_args)

    expect(service).to have_received(:create_a_link).with(some_args)
  end
end