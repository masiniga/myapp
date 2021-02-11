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
end
