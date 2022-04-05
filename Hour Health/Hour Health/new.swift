//
//  new.swift
//  Hour Health
//
//  Created by Abdullah Alnoumas on 05/04/2022.
//

import SwiftUI

struct ContentView1: View {
    
    var allSymptoms = [ "fever","cough","tiredness","loss of taste or smell"," Urinate (pee) a lot" ," Always very thirsty or Hungery" ,"blurry vision","Have numb or tingling hands or feet","Shortness of breath","Wheezing","Chest tightness","swollen limbs" , "chest pain","feeling dizzy, lightheaded or faint","Severe headaches","Nosebleed","Blood in the urine","Brittle and Dry Hair","Mouth Problems","Diarrhea","Lack of Appetite","muscle or body aches","fatigue","vomiting","Eye irritation","runny or stuffy nose","Puffy or watery eyes","Sneezing","Inflamed, itchy nose and throat"]
    let twoRows = [GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100)),GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100)),GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100)),GridItem(.fixed(100))]
    let config = [
               GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100))
           ]
    
    @State var selectedDis : [String] = []
    @State var showAlert = false
    @State var arrayWithSeparatorDiseases = ""
    var body: some View {
         
            ZStack{
                Color(#colorLiteral(red: 0.06082049757, green: 0.6637567878, blue: 0.941452682, alpha: 1))
                    .opacity(0.3)
                    .ignoresSafeArea()

            VStack{
                
                Image("Logo")
                    .resizable()
                    .frame(width: 500, height: 250)
                    .ignoresSafeArea()
                
                Spacer()

                Text("Choose your Symptoms and get Diagnosed")
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    .padding()
                Spacer()
                VStack {
                   ScrollView {
                        //LazyHGrid(rows: twoRows) {
                       LazyVGrid(columns: config, spacing: 30) {
                            ForEach(allSymptoms, id: \.self) { item in
                                Text("\(item)").font(.system(size: 15))
                                    .frame(width: 100, height: 100)
                                    .background(Color(#colorLiteral(red: 0.2538402081, green: 0.7554348111, blue: 0.9778746963, alpha: 1)))
                                    .opacity(0.9)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .onTapGesture {
                                        //Append
                                        selectedDis.append(item)
                                        print(selectedDis)
                                        arrayWithSeparatorDiseases = selectedDis.joined(separator: "-")
                                    }
                            }
                        }
                        .font(.largeTitle)
                    }
                }
                Spacer()
                Text("Your Selected Symptoms are : ")
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                ScrollView(.horizontal, showsIndicators: false){
                    Text(arrayWithSeparatorDiseases)
                }.padding(.leading,40)
                Text("Start Search")
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    .onTapGesture {
                        showAlert = true
                    }
//                    .alert("Analyzing Symptoms", isPresented: $showAlert) {
//                        Button("OK", role: .cancel) { }
//                    }
                    .sheet(isPresented: $showAlert) {
                                new2()
                            }
            }
            }
       
}
}
struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}

