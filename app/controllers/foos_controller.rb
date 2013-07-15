    class FoosController < ApplicationController

      respond_to :json

      def index
        respond_to do |format|
          format.json do
            if params[:search]
              puts "params: #{params[:search]}"
              render json: Foo.where("last_name ilike '#{params[:search]}'").limit(10), each_serializer: FooSerializer
            else
              render json: Foo.limit(10), 
                each_serializer: FooSerializer
            end
          end
          format.html do
            puts "in foos index"
            @foos_active = true
          end
        end
      end

      def show
        @foo = Foo.find(params[:id])
        render json: @foo, serializer: FooSerializer
      end

      def create
        client_id = params[:foo][:client_id]
        input = params[:foo].except(:client_id)
        foo =  Foo.create(input)
        foo.client_id = client_id
        respond_with foo
        #respond_with foo, :location => api_foo_path(foo)
      end

      def update
        respond_with Foo.update(params[:id], params[:foo])
      end

      def destroy
        respond_with Foo.destroy(params[:id])
      end

      def names
        if params[:search]
          puts "params in contacts names: #{params[:search]}"
          render json: Foo.select(:last_name).where("name ilike '%#{params[:search]}%'"), each_serializer: FooNameSerializer
          #render json: SbSub.search(:search), each_serializer: SubjectNameSerializer
        else
          render json: Foo.select(:name), each_serializer: FooNameSerializer
        end
      end
  end
