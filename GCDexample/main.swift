//  GCDexample
//
//  Created by Миржигит Суранбаев on 20/9/23.
//

import Foundation

print("Start")

let queueMain = DispatchQueue.main

let userQueue = DispatchQueue.global()

let queueGlobal1 = DispatchQueue.global()
let queueGlobal2 = DispatchQueue.global()

DispatchQueue.main.async {
    for i in 0 ... 10{
        print(i)
    }
}
sleep(1)


queueGlobal1.async {
    taskes("🤑")
    
    
    sleep(1)
    
}
queueGlobal2.sync {
    taskes("👹")
    
    
    sleep(1)
    
}


userQueue.sync {
    taskes("🤡")
    
    
    sleep(1)
    
}

sleep(1)


dispatchMain()


func taskes(_ simvol: String){
    for i in 0...10 {
        print("\(simvol) \(i) приоритет = \(qos_class_self().rawValue)")
    }
}
