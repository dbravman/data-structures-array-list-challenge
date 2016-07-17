require_relative 'array_list'

describe ArrayList do
  let(:array_list) { ArrayList.new(3) }

  it "has add" do
    expect(array_list.add("test")).to eq("test")
    expect(array_list.length).to eq(4)
  end

  it "has get" do
    expect {array_list.get(3)}.to raise_error(OutOfBoundsException)
    array_list.add("test")
    expect(array_list.get(3)).to eq("test")
  end

  it "has set" do
    expect {array_list.set(3, "test")}.to raise_error(OutOfBoundsException)
    expect(array_list.set(2, "test")).to eq("test")
    expect(array_list.get(2)).to eq("test")
  end

  it "has length" do
    expect(array_list.length).to eq(3)
  end
end
