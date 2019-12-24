//
//  CRUD.swift
//  coreData_20.12.19
//
//  Created by Himansu Sekhar Panigrahi on 20/12/19.
//  Copyright © 2019 Himansu Sekhar Panigrahi. All rights reserved.
//

import UIKit
import CoreData

struct CRUD
{
    
    static let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    
    
    static func insertValue(entitiyName:String,key1:String,key2:String,key3:String,value1:String,value2:String,value3:Int16)
    {
        guard let entity = NSEntityDescription.entity(forEntityName: entitiyName, in: context) else
        {
            print("Error In Entity Description")
            return
            
        }
        
        let managedObject = NSManagedObject(entity: entity, insertInto: context)
        
        
        //Modify Here
        managedObject.setValue(value1, forKey: key1)
        managedObject.setValue(value2, forKey: key2)
        managedObject.setValue(value3, forKey: key3)
        
        do
        {
            try context.save()
            
            print("Data Inserted Sucessfully")
        }
        catch
        {
            print("Catch Error : Failed To Insert Data")
        }
        
    }
    
    
    
    static func updateData(entityName:String,referenceColumnName:String,referenceColumnValue:Any?,referenceColumnValueType :dataType,targetColumnName:String,targetColumnValue:Any,targetColumnValueType:dataType)
    {
        let data = fetchData(entityName: entityName)
        
        for x in data
        {
            switch referenceColumnValueType
            {
                
                //-----------------------------------------------
                
                
                
                
            case .int16:
                
                
                
                if let Un_referenceColumnValue = referenceColumnValue
                {
                    if let typeCasted_referenceColumnValue = Un_referenceColumnValue as? Int16
                    {
                        if((x.value(forKey: referenceColumnName) as? Int16) == typeCasted_referenceColumnValue)
                        {
                            
                            switch targetColumnValueType
                            {
                            case .int16:
                                x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                            case .int32:
                                x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                            case .int64:
                                x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                            case .string:
                                x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                            case .bool:
                                x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                            case .data:
                                x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                            }
                            
                            
                        }
                    }
                    else
                    {
                        print("The Value Passed In ReferenceColumnValue Parameter Is Not Of Type \(dataType.int16.rawValue)")
                    }
                }
                else
                {
                    if(x.value(forKey: referenceColumnName) as? Int16) == ((referenceColumnValue) as? Int16)
                    {
                        
                        switch targetColumnValueType
                        {
                        case .int16:
                            x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                        case .int32:
                            x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                        case .int64:
                            x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                        case .string:
                            x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                        case .bool:
                            x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                        case .data:
                            x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                        }
                        
                        
                    }
                }
                
                
                
                
                
                
                //-----------------------------------------------
                
                
                
                
                
                
            case .int32:
                if let Un_referenceColumnValue = referenceColumnValue
                {
                    if let typeCasted_referenceColumnValue = Un_referenceColumnValue as? Int32
                    {
                        if((x.value(forKey: referenceColumnName) as? Int32) == typeCasted_referenceColumnValue)
                        {
                            
                            switch targetColumnValueType
                            {
                            case .int16:
                                x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                            case .int32:
                                x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                            case .int64:
                                x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                            case .string:
                                x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                            case .bool:
                                x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                            case .data:
                                x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                            }
                            
                            
                        }
                    }
                    else
                    {
                        print("The Value Passed In ReferenceColumnValue Parameter Is Not Of Type \(dataType.int32.rawValue)")
                    }
                }
                else
                {
                    if(x.value(forKey: referenceColumnName) as? Int32) == ((referenceColumnValue) as? Int32)
                    {
                        
                        switch targetColumnValueType
                        {
                        case .int16:
                            x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                        case .int32:
                            x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                        case .int64:
                            x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                        case .string:
                            x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                        case .bool:
                            x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                        case .data:
                            x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                        }
                        
                        
                    }
                }
                
                
                
                
                
                //-----------------------------------------------
                
                
                
            case .int64:
                if let Un_referenceColumnValue = referenceColumnValue
                {
                    if let typeCasted_referenceColumnValue = Un_referenceColumnValue as? Int64
                    {
                        if((x.value(forKey: referenceColumnName) as? Int64) == typeCasted_referenceColumnValue)
                        {
                            
                            switch targetColumnValueType
                            {
                            case .int16:
                                x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                            case .int32:
                                x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                            case .int64:
                                x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                            case .string:
                                x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                            case .bool:
                                x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                            case .data:
                                x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                            }
                            
                            
                        }
                    }
                    else
                    {
                        print("The Value Passed In ReferenceColumnValue Parameter Is Not Of Type \(dataType.int64.rawValue)")
                    }
                }
                else
                {
                    if(x.value(forKey: referenceColumnName) as? Int64) == ((referenceColumnValue) as? Int64)
                    {
                        
                        switch targetColumnValueType
                        {
                        case .int16:
                            x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                        case .int32:
                            x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                        case .int64:
                            x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                        case .string:
                            x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                        case .bool:
                            x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                        case .data:
                            x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                        }
                        
                        
                    }
                }
                
                
                
                
                
                
                //-----------------------------------------------
                
            case .string:
                
                if let Un_referenceColumnValue = referenceColumnValue
                {
                    if let typeCasted_referenceColumnValue = Un_referenceColumnValue as? String
                    {
                        if((x.value(forKey: referenceColumnName) as? String) == typeCasted_referenceColumnValue)
                        {
                            
                            switch targetColumnValueType
                            {
                            case .int16:
                                x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                            case .int32:
                                x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                            case .int64:
                                x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                            case .string:
                                x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                            case .bool:
                                x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                            case .data:
                                x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                            }
                            
                            
                        }
                    }
                    else
                    {
                        print("The Value Passed In ReferenceColumnValue Parameter Is Not Of Type \(dataType.string.rawValue)")
                    }
                }
                else
                {
                    if(x.value(forKey: referenceColumnName) as? String) == ((referenceColumnValue) as? String)
                    {
                        
                        switch targetColumnValueType
                        {
                        case .int16:
                            x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                        case .int32:
                            x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                        case .int64:
                            x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                        case .string:
                            x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                        case .bool:
                            x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                        case .data:
                            x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                        }
                        
                        
                    }
                }
                
                
                
                
                
                
                
                //-----------------------------------------------
                
            case .bool:
                
                
                if let Un_referenceColumnValue = referenceColumnValue
                {
                    if let typeCasted_referenceColumnValue = Un_referenceColumnValue as? Bool
                    {
                        if((x.value(forKey: referenceColumnName) as? Bool) == typeCasted_referenceColumnValue)
                        {
                            
                            switch targetColumnValueType
                            {
                            case .int16:
                                x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                            case .int32:
                                x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                            case .int64:
                                x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                            case .string:
                                x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                            case .bool:
                                x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                            case .data:
                                x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                            }
                            
                            
                        }
                    }
                    else
                    {
                        print("The Value Passed In ReferenceColumnValue Parameter Is Not Of Type \(dataType.bool.rawValue)")
                    }
                }
                else
                {
                    if(x.value(forKey: referenceColumnName) as? Bool) == ((referenceColumnValue) as? Bool)
                    {
                        
                        switch targetColumnValueType
                        {
                        case .int16:
                            x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                        case .int32:
                            x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                        case .int64:
                            x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                        case .string:
                            x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                        case .bool:
                            x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                        case .data:
                            x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                        }
                        
                        
                    }
                }
                
                
                
            //-----------------------------------------------
            case .data:
                if let Un_referenceColumnValue = referenceColumnValue
                {
                    if let typeCasted_referenceColumnValue = Un_referenceColumnValue as? Data
                    {
                        if((x.value(forKey: referenceColumnName) as? Data) == typeCasted_referenceColumnValue)
                        {
                            
                            switch targetColumnValueType
                            {
                            case .int16:
                                x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                            case .int32:
                                x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                            case .int64:
                                x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                            case .string:
                                x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                            case .bool:
                                x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                            case .data:
                                x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                            }
                            
                            
                        }
                    }
                    else
                    {
                        print("The Value Passed In ReferenceColumnValue Parameter Is Not Of Type \(dataType.data.rawValue)")
                    }
                }
                else
                {
                    if(x.value(forKey: referenceColumnName) as? Data) == ((referenceColumnValue) as? Data)
                    {
                        
                        switch targetColumnValueType
                        {
                        case .int16:
                            x.setValue(targetColumnValue as? Int16, forKey: targetColumnName)
                        case .int32:
                            x.setValue(targetColumnValue as? Int32, forKey: targetColumnName)
                        case .int64:
                            x.setValue(targetColumnValue as? Int64, forKey: targetColumnName)
                        case .string:
                            x.setValue(targetColumnValue as? String, forKey: targetColumnName)
                        case .bool:
                            x.setValue(targetColumnValue as? Bool, forKey: targetColumnName)
                        case .data:
                            x.setValue(targetColumnValue as? Data, forKey: targetColumnName)
                        }
                        
                        
                    }
                }
                
            }
            
            
        }
        
        
        do
        {
            try context.save()
            
            print("Data Sucessfully Updated")
        }
        catch
        {
            print("Error : Failed To Update Data")
        }
        
        
        
        
    }
    
    
    
    
    //Fetch All Data
    static func fetchData(entityName:String) -> [NSManagedObject]
    {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        
        
        
        var data:[NSManagedObject]!
        do
        {
            data = try context.fetch(fetchRequest) as! [NSManagedObject]
        }
        catch
        {
            print("Catch Error : Failed To Fetch Data")
        }
        
        return data
        
    }
    
    
    static func deleteData(entityName:String,referenceColumnName columnName: String,referenceColumnValue columnValue:String?)
    {
        let data = CRUD.fetchData(entityName: entityName)
        
        
        for x in data
        {
            if(x.value(forKey: columnName) as? String == columnValue)
            {
                context.delete(x)
            }
        }
        
        
        do
        {
            try context.save()
        }
        catch
        {
            print("Failed To Delete")
        }
    }
    
    
    static func deleteAll(entityName:String)
    {
        let data = CRUD.fetchData(entityName: entityName)
        
        for x in data
        {
            context.delete(x)
        }
        
        do
        {
            try context.save()
            
            print("All Data Deleted Sucessfully")
        }
        catch
        {
            print("Error : Failed To Delete All")
        }
    }
    
    
    enum dataType:String
    {
        case int16 = "Int16"
        case int32 = "Int32"
        case int64 = "Int64"
        case string = "String"
        case bool = "Bool"
        case data = "DataT"
    }
}

