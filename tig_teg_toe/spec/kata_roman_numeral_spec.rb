require 'rspec'
require 'conversion'

# require_relative '../lib/conversion'

describe 'numeric to romans numerals conversion' do

  it 'convert 1 to i' do
    conversion = Conversion.new
    n=1
    expect('i').to eq conversion.roman[n]

  end

  it 'convert 2 to ii' do
    conversion = Conversion.new
    n=2
    expect('ii').to eq conversion.roman[n]

  end

  it 'convert 2 to iii' do
    conversion = Conversion.new
    n=3
    expect('iii').to eq conversion.roman[n]

  end

  it 'convert 4 to iv ' do
    conversion = Conversion.new
    n=4
    expect('iv').to eq conversion.roman[n]
  end

  it 'convert 5 to v ' do
    conversion = Conversion.new
    n=5
    expect('v').to eq conversion.roman[n]
  end

  it 'convert 6 to vi ' do
    conversion = Conversion.new
    n=6
    expect('vi').to eq conversion.roman[n]
  end

  it 'convert 7 to vii ' do
    conversion = Conversion.new
    n=7
    expect('vii').to eq conversion.roman[n]
  end

  it 'convert 8 to viii ' do
    conversion = Conversion.new
    n=8
    expect('viii').to eq conversion.roman[n]
  end

  it 'convert 9 to ix ' do
    conversion = Conversion.new
    n=9
    expect('ix').to eq conversion.roman[n]
  end

  it 'convert 10 to x ' do
    conversion = Conversion.new
    n=10
    expect('x').to eq conversion.roman[n]
  end

  it 'greater than 5 and less than 10' do

    conversion = Conversion.new

    for num in 5..9

      case num
      when 5
      expect('v').to eq conversion.convert_less_than_10 num
      when 6
      expect('vi').to eq conversion.convert_less_than_10 num
        when 7
          expect('vii').to eq conversion.convert_less_than_10 num
        when 8
          expect('viii').to eq conversion.convert_less_than_10 num
        when 9
          expect('ix').to eq conversion.convert_less_than_10 num
      end
    end
  end

  it 'convert any number' do
   conversion = Conversion.new
   conversion.any_num.each do |num,roman|
    expect(roman).to eq conversion.convert num

   end
  end

  it 'convert 2015' do
  conversion = Conversion.new
   num = 2015
    expect('MMXV').to eq conversion.convert num

  end



end




