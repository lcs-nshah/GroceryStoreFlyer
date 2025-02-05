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
        Text(departmentToShow.name)
    }
}

#Preview {
    DepartmentDetailView(departmentToShow: thisWeeksFlyer.departments[0])
}
