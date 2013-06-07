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
    @prologue = Onezerozerozero.new
    #to JH fyi: the prologue is the piece that you already read
    @problem_analysis1 = Oneonezerozero.new
    #the problem analysis is a story I wrote discussing one of the 'problem statements' of my thesis
    @problem_analysis2 = Zerozerozeroone.new
    @literature_review1 = Zerozeroonezero.new
    #the literature review discusses literature the story is inspired by
    @literature_review2 = Onezeroonezero.new
    @acknowledgements = Zerooneoneone.new
    @references = Oneoneoneone.new
    @self_reflection = Zerooneonezero.new
      puts @Onezerozerozero
      puts @Oneonezerozero
      puts @Zerozerozeroone
      puts @Zerozeroonezero
      puts @Onezeroonezero
      puts @Zerooneoneone
      puts @Oneoneoneone
      puts @Zerooneonezero
        Output.to_a.shuffle!
      end
  end

class Picture
  def preview(picture)
    picture = Picture.new
  end
end
