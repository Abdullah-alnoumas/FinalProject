//
//  new2.swift
//  Hour Health
//
//  Created by Abdullah Alnoumas on 05/04/2022.
//

import SwiftUI

var Covid_19 = ["fever","cough","tiredness","loss of taste or smell"]

var Diabetes = [" Urinate (pee) a lot" ," Always very thirsty or Hungery" , "tiredness" , "blurry vision","Have numb or tingling hands or feet"]
var chronicRespiratoryDiseases = ["Shortness of breath","cough","Wheezing","Chest tightness","swollen limbs"]

var CardiovascularDiseases = ["chest pain","tiredness","Shortness of breath","feeling dizzy, lightheaded or faint","swollen limbs"]

var hypertension = ["Severe headaches","Nosebleed","chest pain","Shortness of breath","Blood in the urine","blurry vision"]

var nutritionalProblem = ["Brittle and Dry Hair","Mouth Problems","Diarrhea","Lack of Appetite","tiredness"]

var Influenza = ["fever","cough","runny or stuffy nose","muscle or body aches","fatigue","vomiting","diarrhea"]

var Allergies = ["Eye irritation","runny or stuffy nose","Puffy or watery eyes","Sneezing","Inflamed, itchy nose and throat"]


struct new2: View {
    @State var result = 0.0
    @State var resultD = 0.0
    @State var resultCRD = 0.0
   //
    @State var resultCD = 0.0
    @State var resultH = 0.0
    @State var resultNP = 0.0
    @State var resultI = 0.0
    @State var resultA = 0.0
    @Binding var selectedDis : [String]
    var body: some View {
        VStack{
            Text("percentage of you infected with disease")
                .font(.body).padding()
             
           Text("Covid-19 \(result, specifier: "%.0f" )%")
            Text("Diabetes \(resultD, specifier: "%.0f" )%")
            Text("chronic Respiratory Diseases \(resultCRD, specifier: "%.0f" )%")
            Text("Cardiovascular Diseases \(resultCD, specifier: "%.0f" )%")
            Text("hypertension \(resultH, specifier: "%.0f" )%")
            Text("nutritional Problem \(resultNP, specifier: "%.0f" )%")
            Text("Influenza \(resultI, specifier: "%.0f" )%")
            Text("Allergies \(resultA, specifier: "%.0f" )%")
            
        }.onAppear{
            var step1 = commonElements(between: selectedDis, and: Covid_19).count
            var step2 = Covid_19.count
            var step2D = Diabetes.count
            var step2CRD = chronicRespiratoryDiseases.count
            var step2CD = CardiovascularDiseases.count
            var step2H = hypertension.count
            var step2NP = nutritionalProblem.count
            var stepI = Influenza.count
            var step2A = Allergies.count
            result = Double(step1) / Double(step2) * 100.0
            resultD = Double(step1) / Double(step2D) * 100.0
            resultCRD =  Double(step1) / Double(step2CRD) * 100.0
            resultCD = Double(step1) / Double(step2CD) * 100.0
            resultH = Double(step1) / Double(step2H) * 100.0
            resultNP = Double(step1) / Double(step2NP) * 100.0
            resultI = Double(step1) / Double(stepI) * 100.0
            resultA = Double(step1) / Double(step2A) * 100.0
        }
        
    }

           // result = (commonElements(between: Diabetes, and: Covid_19).count+1 / (Covid_19.count))
       
    
    
    
    
    func commonElements<T:Hashable>(between array1:[T],and array2:[T])->[T]{
        return Array(Set(array1).intersection(Set(array2)))
        
    }
}
struct new2_Previews: PreviewProvider {
    @State static var selectedDis = ["",""]
    static var previews: some View {
        new2(selectedDis: $selectedDis)
    }
}
