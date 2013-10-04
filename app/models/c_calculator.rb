class CCalculator

  def calculate(params)
     (bee(params) * params[:activeness]).floor
  end

  private

    def bee(params)
     if params[:male]
       male_bee(params[:weight], params[:height], params[:age])
     else
       female_bee(params[:weight], params[:height], params[:age])
     end
    end

  	def male_bee(weight, height, age)
  		88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age)
  	end

  	def female_bee(weight, height, age)
  		447.593 + (9.247 * weight) + (3.098 * height) - (4.33 * age)
  	end
end