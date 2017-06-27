
def roman(val)
  letters = val.split('')
  total = 0
  while letters.length > 0
    first = letters.shift
    if magic.keys.include?(first)
      total += magic[first]
    elsif magic.keys.include?(letters.first)
      total += magic[letters.shift] - 1
    else
      total += 1
    end
  end
  total
end

def magic
  {
    'V' => 5, 'X' => 10, 'L' => 50
  }
end


describe 'Roman' do
  it 'returns 1 for I' do
    expect(roman('I')).to eq(1)
  end

  it 'returns 2 for II' do
    expect(roman('II')).to eq(2)
  end

  it 'returns 3 for III' do
    expect(roman('III')).to eq(3)
  end

  it 'returns 4 for IV' do
    expect(roman('IV')).to eq(4)
  end

  it 'returns 5 for V' do
    expect(roman('V')).to eq(5)
  end

  it 'returns 6 for VI' do
    expect(roman('VI')).to eq(6)
  end

  it 'returns 7 for VII' do
    expect(roman('VII')).to eq(7)
  end

  it 'returns 8 for VIII' do
    expect(roman('VIII')).to eq(8)
  end

  it 'returns 9 for IX' do
    expect(roman('IX')).to eq(9)
  end

  it 'returns 10 for X' do
    expect(roman('X')).to eq(10)
  end
end
