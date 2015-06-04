# Base middleware class
abstract class Base 
	
	def initialize()
    @app = self
	end

	def call(request : Http::Request)
    @app.call(request)
	end

  def build(app)
	  @app = app
    self
	end
end