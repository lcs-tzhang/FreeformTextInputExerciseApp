//
//  ContentView.swift
//  FreeformTextInputExerciseApp
//
//  Created by xinyu zhang on 2025-02-21.
//

import SwiftUI

struct DivisionView: View {
    @State var viewModel = DivisionViewModel()
    @State var firstNumber: Int = 0
    @State var secondNumber: Int = 0
    
    var body: some View {
        
            VStack {
                
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("select first number")
                        .font(.headline)
                    HStack {
                        Text("\(firstNumber)")
                            .font(.system(size: 64))
                        Spacer()
                        Stepper("", value: $firstNumber)
                    }
                }
                
                Text("÷")
                    .font(.system(size: 64))
                    .padding()
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("select second number")
                        .font(.headline)
                    HStack {
                        Text("\(secondNumber)")
                            .font(.system(size: 64))
                        Spacer()
                        Stepper("", value: $secondNumber)
                    }
                    
                }
                Spacer()
                
                Text("\(quotient)")
                    .font(.system(size: 96))
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing)
                    .padding()
                
                Spacer()
                
                Text("\(remainder)")
                    .font(.system(size: 96))
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing)
                    .padding()
            }
            .padding()
        }
    }

#Preview {
    DivisionView()
}
