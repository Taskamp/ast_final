#DESCRIPTION OF HEROKU ON PAGE 78-81

require 'cucumber'
require 'rspec'
require 'spec_helper'
require 'sinatra'

class Homepage
  attr_accessor :homepage, :output
    def initialize(output)
    @output = output("Text_one")
    puts @Text_one
    #Text_one contains the title, word count, personal information about me, such as my name and student number, and information about my (second) supervisor 
    end
  end

class Hyperlink
  attr_accessor :prologue, :problem_analysis, :literature_review, :acknowledgements, :references, :self_reflection
  def output(prologue, problem_analysis, literature_review, acknowledgement, references, self_reflection)
    @prologue = Prologue.new
    #to JH fyi: the prologue is the piece that you already read
    @problem_analysis = Problem_Analysis.new
    #the problem analysis is a story I wrote discussing one of the 'problem statements' of my thesis
    @literature_review = Literature_Review.new
    #the literature review discusses literature the story is inspired by
    @acknowledgements = Acknowledgement.new
    @references = References.new
    @self_reflection = Self_reflection.new
      puts @prologue
      puts @problem_analysis
      puts @literature_review 
      puts @acknowledgements
      puts @references
      puts @self_reflection
    end
  end

class Picture
  def preview(picture)
    picture = Picture.new
  end
end
