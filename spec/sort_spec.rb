require 'sort'

describe '#insertion_sort' do 

  it 'successfully sorts an array' do 
    expect(insertion_sort( [1,3,7,2,5] )).to eq([1,2,3,5,7])
  end

end

describe '#bubble_sort' do 

  it 'successfully sorts an array' do
    expect(bubble_sort( [1,3,7,2,5] )).to eq([1,2,3,5,7])
  end  

end

describe '#merge_sort' do 

  it 'successfully sorts an even array' do
    expect(merge_sort( [1,3,7,2,5,8] )).to eq([1,2,3,5,7,8])
  end  

  it 'successfully sorts an odd array' do
    expect(merge_sort( [1,3,7,2,5] )).to eq([1,2,3,5,7])
  end  

end

describe '#merge' do 

  it 'merges two already sorted arrays' do 
    expect(merge([2,7,15], [3,8,10])).to eq([2,3,7,8,10,15])
  end

  it 'merges two already sorted arrays' do 
    expect(merge([2,7], [3,8,10])).to eq([2,3,7,8,10])
  end

end
