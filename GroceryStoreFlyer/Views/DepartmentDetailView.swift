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
            //                Circle()
            //                    .foregroundStyle(.orange)
            //                    .aspectRatio(1.0/1.0, contentMode: .fit)
            //                    .padding(.leading, 200)
            //                    .padding(.bottom, 200)
            //                Circle()
            //                    .foregroundStyle(.red)
            //                    .aspectRatio(1.0/1.0, contentMode: .fit)
            //                    .overlay(
            //                        Text(currentFoodItem.price)
            //                            .font(.system(size: 25, weight: .bold, design: .rounded))
            //                            .foregroundStyle(.white)
            //                    )
            //                    .offset(x: -10, y: -10)
            //                    .padding(.leading, 200)
            //                    .padding(.bottom, 200)
            //
            //
            //               }
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
