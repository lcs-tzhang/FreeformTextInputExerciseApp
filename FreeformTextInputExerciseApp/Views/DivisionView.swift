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
                        TextField("Dividend", text: $viewModel.providedDividend)
                            .textFieldStyle(.roundedBorder)
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
                        TextField("Divisor", text: $viewModel.providedDivisor)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                }
                Spacer()
                if let division = viewModel.division{
                    
                 
                    Text("quotient: \(division.quotient)")
                        .font(.system(size: 40))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                        .padding()
                        .padding()
                    
                    Spacer()
                    
                    Text("Remainder: \(division.remainder)")
                        .font(.system(size: 40))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                        .padding()
                        .padding()
                }else{
                    Text(viewModel.recoverySuggestion)
                        .font(.system(size:24))
                        .foregroundColor(.red)
                        .padding()
                }
            }
            .padding()
      
    }
}

#Preview {
    DivisionView()
}
