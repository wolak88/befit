class CCalculator

  def calculate(params)
    bmr = bmr(params)
    calories_needed = bmr.floor
    fat_needed = ((bmr * 0.25) / 9).floor
    proteins_needed = ((bmr * 0.25) / 4).floor
    carbohydrates_needed = ((bmr * 0.25) / 4).floor
    alcohol_needed = ((bmr * 0.25) / 7).floor

    {
      calories_needed: calories_needed,
      fat_needed: fat_needed,
      proteins_needed: proteins_needed,
      carbohydrates_needed: carbohydrates_needed,
      alcohol_needed: alcohol_needed
    }
  end

    private

      def bmr(params)
        bee(params) * params[:activeness]
      end

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