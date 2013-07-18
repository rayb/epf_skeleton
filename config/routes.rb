EpfSkeleton::Application.routes.draw do

  class FormatTest
    attr_accessor :mime_type

    def initialize(format)
      @mime_type = Mime::Type.lookup_by_extension(format)
    end

    def matches?(request)
      request.format == mime_type
    end
  end

  root :to => 'application#index'
  resources :foos
  resources :bars

  get 'foos_names', :to => 'foos#names', :constraints => FormatTest.new(:json)

end
