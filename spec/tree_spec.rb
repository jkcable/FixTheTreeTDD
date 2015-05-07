require 'rspec'
require 'tree'

describe 'Tree' do

  let(:tree) { Tree.new }

  it 'should be a Class' do
    expect(Tree.is_a? Class).to be true
  end

  it 'can be initalized' do
    expect(tree).to be_a Tree
    expect(tree.age).to eq 0
    expect(tree.height).to eq 0
    expect(tree.apples).to eq 0
    expect(tree.alive).to eq true
  end

  it 'can age' do
    5.times {tree.age!}
    expect(tree.age).to eq 5
  end

  it 'can bear fruit starting at 5 years' do
    tree.age = 5
    expect(tree.any_apple?).to eq true
  end

  it 'can not bear fruit if it is dead' do
    tree.age = 6
    tree.alive = false
    expect(tree.any_apple?).to eq false
  end

  it 'can not bear fruit if less than 5' do
    tree.age = 3
    expect(tree.any_apple?).to eq false
  end

  it 'grows a foot per year till 30 ft tall' do
    tree.age = 29
    expect(tree.height).to eq 29
    tree.age = 30
    expect(tree.height).to eq 30
    tree.age = 31
    expect(tree.height).to eq 30
  end

  it 'lives for 100 years' do
    tree.age = 100
    expect(tree.dead?).to eq false
    tree.age = 101
    expect(tree.dead?).to eq true
  end

end

describe 'Fruit' do
end

describe 'Apple' do
end
