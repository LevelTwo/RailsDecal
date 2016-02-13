class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
    # foo.bar(:cat, {sat: :sat, dat: :sat})
  end

  def stringify
    @text = 'You are nothing!'
    @name = params[:name]
    @adjective = params[:adjective]
  end

  def age
  end

  def person
    person = Person.new(params[:name], params[:age])
    @introduction = person.introduce
    @birth_year = person.birth_year
    @nickname = person.nickname
  end

  def me
  end
end
