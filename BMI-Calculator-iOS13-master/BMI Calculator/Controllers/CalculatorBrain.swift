

import Foundation
import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecimal
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.gray
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat MORE!", color: UIColor.blue)
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal Weight", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "You shall cut weight", color: UIColor.red)
        }

    }
}
