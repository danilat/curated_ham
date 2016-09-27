describe CuratedHam::ContentRepository do
  it "puts a content" do
    content = CuratedHam::Content.new(title: 'foo')
    content = subject.put(content)

    created_content = subject.find_by_id(content.id)
    expect(created_content).to eq content
  end

  it "gets all the contents" do
    foo = CuratedHam::Content.new(title: 'foo')
    subject.put(foo)
    bar = CuratedHam::Content.new(title: 'bar')
    subject.put(bar)

    contents = subject.find_all

    expect(contents.size).to eq 2
  end
end