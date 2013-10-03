class CCalculator

  def calculate(params)
     if params[:male]
       bee = male_bee(params[:weight], params[:height], params[:age])
     else
       bee = female_bee(params[:weight], params[:height], params[:age])
     end
     bmr = bee * params[:activeness]
     calories_needed = bmr.floor
  end

  private

  	def male_bee(weight, height, age)
  		88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age)
  	end

  	def female_bee(weight, height, age)
  		447.593 + (9.247 * weight) + (3.098 * height) - (4.33 * age)
  	end
end