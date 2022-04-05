//
//  ArrayFile.swift
//  Hour Health
//
//  Created by Abdullah Alnoumas on 29/03/2022.
//

import Foundation
import SwiftUI

struct diseases{
   //var Covid_19 = ["fever","cough","tiredness","loss of taste or smell"]
    var Covid_19: Set = ["fever","cough","tiredness","loss of taste or smell"]
    
    var Diabetes: Set = [" Urinate (pee) a lot" ," Always very thirsty or Hungery" , "tiredness" , "blurry vision","Have numb or tingling hands or feet"]
    var chronicRespiratoryDiseases: Set = ["Shortness of breath","cough","Wheezing","Chest tightness","swollen limbs"]
    
    var CardiovascularDiseases:Set = ["chest pain","tiredness","Shortness of breath","feeling dizzy, lightheaded or faint","swollen limbs"]
    
    var hypertension:Set = ["Severe headaches","Nosebleed","chest pain","Shortness of breath","Blood in the urine","blurry vision"]
    
    var nutritionalProblem:Set = ["Brittle and Dry Hair","Mouth Problems","Diarrhea","Lack of Appetite","tiredness"]
    
    var Influenza:Set = ["fever","cough","runny or stuffy nose","muscle or body aches","fatigue","vomiting","diarrhea"]
    
    var Allergies:Set = ["Eye irritation","runny or stuffy nose","Puffy or watery eyes","Sneezing","Inflamed, itchy nose and throat"]
    
    
    
   
   //arrayWithSeparatorDiseases compare with above commonElements
    
    //(between: array1, and: array2).count
 
 
    func search_symptoms ( x : [String] )->String{
        var result:String = " "
     
            //Covid-19
        
        var Covid_19_Symptoms:Int = 0
        for i in x {
            if Covid_19.contains(i){
                Covid_19_Symptoms+=1
            }
        }
        
        let Covid_19_Percent = ( Covid_19_Symptoms/Covid_19.count ) * 100
        
        result += "Covid-19 \(Covid_19_Percent) % "
        
            //Diabetes
        
        var Diabetes_Symptoms:Int = 0
        for i in x {
            if Diabetes.contains(i){
                Diabetes_Symptoms+=1
            }
        }
        
        let Diabetes_Percent = ( Covid_19_Symptoms/Covid_19.count ) * 100
        
        result += "Diabetes \(Diabetes_Percent) % "
        
            //chronicRespiratoryDiseases
        
        var chronicRespiratoryDiseases_Symptoms:Int = 0
        for i in x {
            if chronicRespiratoryDiseases.contains(i){
                chronicRespiratoryDiseases_Symptoms+=1
            }
        }
        
        let chronicRespiratoryDiseases_Percent = ( chronicRespiratoryDiseases_Symptoms/chronicRespiratoryDiseases.count ) * 100
        
        result += "chronicRespiratoryDiseases \(chronicRespiratoryDiseases_Percent) % "

            //CardiovascularDiseases
        
        var CardiovascularDiseases_Symptoms:Int = 0
        for i in x {
            if CardiovascularDiseases.contains(i){
                CardiovascularDiseases_Symptoms+=1
            }
        }
        
        let CardiovascularDiseases_Percent = ( CardiovascularDiseases_Symptoms/CardiovascularDiseases.count ) * 100
        
        result += "CardiovascularDiseases \(CardiovascularDiseases_Percent) % "
        
          //hypertension
        
        var hypertension_Symptoms:Int = 0
        for i in x {
            if hypertension.contains(i){
                hypertension_Symptoms+=1
            }
        }
        
        let hypertension_Percent = ( hypertension_Symptoms/hypertension.count ) * 100
        
        result += "hypertension \(hypertension_Percent) % "
        
         //nutritionalProblem
        
        var nutritionalProblem_Symptoms:Int = 0
        for i in x {
            if nutritionalProblem.contains(i){
                nutritionalProblem_Symptoms+=1
            }
        }
        
        let nutritionalProblem_Percent = ( nutritionalProblem_Symptoms/nutritionalProblem.count ) * 100
        
        result += "nutritionalProblems \(nutritionalProblem_Percent) % "
        
        //Influenza
        
        var Influenza_Symptoms:Int = 0
        for i in x {
            if Influenza.contains(i){
                Influenza_Symptoms+=1
            }
        }
        
        let Influenza_Percent = ( Influenza_Symptoms/Influenza.count ) * 100
        
        result += "Influenza \(Influenza_Percent) % "
        
        //Allergies
        
        var Allergies_Symptoms:Int = 0
        for i in x {
            if Allergies.contains(i){
                Allergies_Symptoms+=1
            }
        }
        
        let Allergies_Percent = ( Allergies_Symptoms/Allergies.count ) * 100
        
        result += "Allergies \(Allergies_Percent) % "
        
        
        
        return result
    }
    
    func commonElements<T:Hashable>(between array1:[T],and array2:[T])->[T]{
        return Array(Set(array1).intersection(Set(array2)))
        
    }
}
