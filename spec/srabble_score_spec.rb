require('rspec')
require('scrabble_score.rb')

describe('String#scrabble_score') do
  it('returns a scrabble score of 1 for letters a, e, i, o, u, l, n, r, s, t') do
    expect("a".scrabble_score()).to(eq(1))
  end
  it('returns a score of 2 for letters d and g') do
    expect("d".scrabble_score()).to(eq(2))
  end
  it('returns a score of 3 for letters b, c, m, p') do
    expect("b".scrabble_score()).to(eq(3))
  end
  it('returns a score of 4 for letters f, h, v, w, and y') do
    expect("f".scrabble_score()).to(eq(4))
  end
  it('returns a score of 5 for letter k') do
    expect("k".scrabble_score()).to(eq(5))
  end
  it('returns a score of 8 for letters j and x') do
    expect("j".scrabble_score()).to(eq(8))
  end
  it('returns a score of 10 for letters q and z') do
    expect("q".scrabble_score()).to(eq(10))
  end
  it('returns a score of 8 for the word hello') do
    expect("hello".scrabble_score()).to(eq(8))
  end
  it('returns a score even when there are capital letters') do
    expect("HelLo".scrabble_score()).to(eq(8))
  end
end
