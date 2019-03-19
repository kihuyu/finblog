class WelcomeController < ApplicationController
  def index
    #rs = Sub::SubSub.new({test: 2})
    #if rs.authenticated?
    puts TEST
    if Sub::SubSub.authenticated?
      puts '1'
    else
      puts '2'
    end
  end
end
