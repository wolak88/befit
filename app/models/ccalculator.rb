class CCalculator

  def calculate(params)
    if params[:male]
      bee = 88.362 + (13.397 * params[:weight]) + (4.799 * params[:height]) - (5.677 * params[:age])
    else
      bee = 447.593 + (9.247 * params[:weight]) + (3.098 * params[:height]) - (4.33 * params[:age])
    end
    bmr = bee * params[:activeness]
    calories_needed = bmr.floor

  end
end