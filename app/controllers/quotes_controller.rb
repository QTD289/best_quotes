class QuotesController < Rulers::Controller
  def index
    @quotes = FileModel.all.map(&:hash)
    render :index
  end

  def a_quote
    render :a_quote, noun: :winking
  end

  def quote_1
    quote1 = Rulers::Model::FileModel.find(1)
    render :quote, obj: quote1
  end

  def new_quote
    attrs = {
      'submitter' => 'web user',
      'quote' => 'A picture is worth a thousand pixels',
      'attribution' => 'Me'
    }
    m = FileModel.create attrs
    render :quote, obj: m
  end

  def exception
    raise "It's a bad one!"
  end
end
