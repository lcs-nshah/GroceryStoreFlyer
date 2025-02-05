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
            Text(currentFoodItem.name)
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
