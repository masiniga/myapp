class PagesController < ApplicationController
  def home
    @greeting = "Hello world!"
  end

  def fr
    @greeting1 = "Bonjour monde!"
  end

  def rus
    @greeting2 = "Привет мир!"
  end


  def quote_generator
    #quotes taken from https://quotesnsmiles.com/quotes/77-of-the-worlds-most-popular-quotes/
    quotes = ['“Don’t cry because it’s over, smile because it happened.” – Dr. Seuss',
     '“I’m selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can’t handle me at my worst, then you sure as hell don’t deserve me at my best.” – Marilyn Monroe',
     '“Be who you are and say what you feel, because those who mind don’t matter, and those who matter don’t mind.” – Bernard M. Baruch',
     '“Be yourself; everyone else is already taken.” – Oscar Wilde',
     '“You know you’re in love when you can’t fall asleep because reality is finally better than your dreams.” – Dr. Seuss',
     '“Don’t walk behind me; I may not lead. Don’t walk in front of me; I may not follow. Just walk beside me and be my friend.” – Albert Camus',
     '“No one can make you feel inferior without your consent.” – Eleanor Roosevelt',
     '“You’ve gotta dance like there’s nobody watching, love like you’ll never be hurt, sing like there’s nobody listening, and live like it’s heaven on earth.” – William W. Purkey',
     '“Imagination is the beginning of creation. You imagine what you desire; you will what you imagine; and at last you create what you will.” – George Bernard Shaw',
     '“Success usually comes to those who are too busy to be looking for it.” – Henry David Thoreau',
     '“I’ve learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.” – Maya Angelou',
     '“What the mind of man can conceive and believe, the mind of man can achieve.” – Napoleon Hill',
     '“We are what we repeatedly do. Excellence, then, is not an act, but a habit.” – Aristotle',
     '“The fear of death follows from the fear of life. A man who loves fully is prepared to die at any time.” – Mark Twain',
     '“There are no accidents; there is only some purpose that we haven’t yet understood.” –Deepak Chopra',
     '“Be miserable. Or motivate yourself. Whatever has to be done, it’s always your choice.” – Wayne Dyer',
     '“Impossible is a word to be found only in the dictionary of fools.” – Napoleon Bonaparte',
     '“The only way of finding the limits of the possible is by going beyond them into the impossible.” – Arthur C. Clarke',
     '“Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do. So throw off the bowlines, Sail away from the safe harbor, Catch the trade winds in your sails. Explore. Dream. Discover.” – Mark Twain',
     '“It is hard to fail but it is worse never to have tried to succeed.” – Theodore Roosevelt',
     '“People often say that motivation doesn’t last. Well, neither does bathing – that’s why we recommend it daily.” – Zig Ziglar',
     '“What we can or cannot do, what we consider possible or impossible, is rarely a function of our true capability. It is more likely a function of our beliefs about who we are.” – Anthony Robbins',
     '“There is just one life for each of us: our own.” – Euripides',
     '“Friendship is born at that moment when one person says to another: “What! You too? I thought I was the only one.” – C.S. Lewis',
     '“You only live once, but if you do it right, once is enough.” – Mae West',
     '“To live is the rarest thing in the world. Most people exist, that is all.” – Oscar Wilde',
     '“It is better to be hated for what you are than to be loved for what you are not.” – Andr Gide']
    @quote = quotes.shuffle.first
  end

end
