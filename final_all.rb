#DESCRIPTION OF HEROKU ON PAGE 78-81

require 'cucumber'
require 'rspec'
require 'spec_helper'
#require 'sinatra'

class Homepage
  def initialize(output)
    attr_accessor :homepage, :output
    @output = Text_one.new
    #Text_one contains the title, word count, personal information about me, such as my name and student number, and information about my (second) supervisor 
end

  def start(homepage)
    #@output.homepage 'Welcome to this thesis'
    #@output.homepage 'Personal information'
    #@output.homepage 'Photo'
  end
end

class Prologue
  attr_reader :prologue
    def output(prologue)
    @prologue = Prologue.new
    #the prologue is a story
    end
  end

  def hyperlink
  end
end

class Problem_Analysis
  def puts(output)
    output = Problem_Analysis.new
    #Problem_Analysis is a story
  end

  def hyperlink(click)
  attr_writer :click
  end
end

class Literature_Review
  def hyperlink
  end

  def puts
  end
end

class Picuture
  def puts(picture)
    photo = Picture.new
  end

  def preview(picture)
  end
end

#look at this!!

class Acknowledgement
  def puts(acknowledgements, references, output)
  end

  def hyperlink(click)
  end
end
