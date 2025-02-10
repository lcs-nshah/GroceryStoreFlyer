//
//  DepartmentDetailView.swift
//  GroceryStoreFlyer
//
//  Created by Neil Shah on 2025-02-05.
//

import SwiftUI

struct DepartmentDetailView: View {
    
    //MARK: Stored Property
    let departmentToShow: Department
    
    //MARK: Computed Property
    var body: some View {
        List(departmentToShow.items) { currentFoodItem in
            
            Image(currentFoodItem.image)
                .resizable()
                .scaledToFit()
                .overlay(alignment: .topLeading) {
                    Text(currentFoodItem.name)
                        .foregroundStyle(.blue)
                        .font(.system(size: 32))
                        .fontWeight(.black)
                        .overlay {
                            Text(currentFoodItem.name)
                                .foregroundStyle(.white)
                                .font(.system(size: 32))
                                .fontWeight(.black)
                                .offset(x: -3, y: -3)
                        }
                        .padding(10)
                }
                .overlay(alignment: .bottomTrailing) {
                    Circle()
                        .foregroundStyle(.orange)
                        .frame(width: 130)
                        .padding(10)
                        .overlay {
                            Circle()
                                .foregroundStyle(.red)
                                .frame(width: 130)
                                .padding(10)
                                .overlay {
                                    Text("\(currentFoodItem.price.formatted(.currency(code: "CAD")))")
                                        .font(.system(size: 25, weight: .bold, design: .rounded))
                                        .foregroundStyle(.white)
                                }
                                .offset(x: -7, y: -7)
                        }
                }
        }
        .listStyle(.plain)
        .navigationTitle(departmentToShow.name)
    }
}

#Preview {
    NavigationStack{
        DepartmentDetailView(departmentToShow: thisWeeksFlyer.departments[0])
    }
}
