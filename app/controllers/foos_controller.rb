    class FoosController < ApplicationController

      respond_to :json

      def index
          render json: Foo.limit(10), each_serializer: FooSerializer
      end

      def show
        render json: Foo.find(params[:id]), serializer: FooSerializer
      end

      def create
        client_id = params[:foo][:client_id]
        input = params[:foo].except(:client_id)
        foo =  Foo.create(input)
        foo.client_id = client_id
        respond_with foo
      end

      def update
        respond_with Foo.update(params[:id], params[:foo])
      end

      def destroy
        respond_with Foo.destroy(params[:id])
      end

  end
