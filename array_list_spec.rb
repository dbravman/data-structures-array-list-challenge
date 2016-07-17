require_relative 'array_list'

describe ArrayList do
  let(:array_list) do 
    test_array_list = ArrayList.new(3) 
    test_array_list.set(0,0)
    test_array_list.set(1,1)
    test_array_list.set(2,2)
  end

  it "has add" do
    expect(array_list.add("test")).to eq("test")
    expect(array_list.get(0)).to eq(0)
    expect(array_list.get(1)).to eq(1)
    expect(array_list.get(2)).to eq(2)
    expect(array_list.get(3)).to eq("test")
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

  it "has insert" do
    array_list.insert(1, "test")
    expect(array_list.get(0)).to eq(0)
    expect(array_list.get(1)).to eq("test")
    expect(array_list.get(2)).to eq(1)
    expect(array_list.get(3)).to eq(2)
    expect(array_list.length).to eq(4)
  end
end
