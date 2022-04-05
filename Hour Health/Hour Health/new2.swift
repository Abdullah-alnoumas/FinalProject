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
    var result = (commonElements(between: arrayWithSeparatorDiseases, and: Covid_19).count / (Covid_19.count))
    var body: some View {
        VStack{
            Text("illness Prectages")
             
           Text("Covid-19 \(result*100) %")
            Button {
                
            } label: {
                Text("Ready!")
            }

        }
        
    }

           // result = (commonElements(between: Diabetes, and: Covid_19).count+1 / (Covid_19.count))
       
    
    
    
    
    func commonElements<T:Hashable>(between array1:[T],and array2:[T])->[T]{
        return Array(Set(array1).intersection(Set(array2)))
        
    }
}

struct new2_Previews: PreviewProvider {
    static var previews: some View {
        new2()
    }
}

