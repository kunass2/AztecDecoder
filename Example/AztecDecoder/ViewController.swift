//
//  ViewController.swift
//  AztecDecoder
//
//  Created by Bartłomiej Semańczyk on 08/29/2022.
//  Copyright (c) 2022 Bartłomiej Semańczyk. All rights reserved.
//

import UIKit
import AztecDecoder

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aztecString = "uAMAANtYAAJDAP8xAHwAQgBBAPtNADUAMhr9MAA2ADbtKwY0exI1Dvc3ADge/1AAUgBFAFoA71kARA5O9wBUACBqvy4KUwBUfQ9X745SGlp7DldO3XxSrxZJWkx7Xkna2UFL3gFPFkj+Q0EATPt3S3LeQQpP/T5TAEv3UzL6vTdGMOASLfsOMwAzy0dBez5XArUuNPADWG1OIk175lLGwUVX71N6Qgdn7VoAfAPeU2Iz974wDr5Ee03wllR3S6NeRAIyW+89MQBB9xs5Er0yWnzvCjAWNgczBD/eOSot8APuW08ATPinTn1DLuwSLvt3MGfDMd/gOeALpss5DucIywWhI4dOS8NTd31KAFXiJjbtV/9VPTIAN7avE5s0tofnBnd4NAA1a19hD7wyBxkvzGNzLTs3Ob5rKiw/YNZbMBsxYY9DLzUHl7wwCjAdn4HXo1Pfogdv02u7TyYGdEIAT1tv30uXLSMp0Sss9B9rd0GG3DO+GJcZV9crMCLvNAA3cwQ/tAOyOxn/sXwn2zEDkE62Q1mD7TcAMGuEkkkklf8=M"
        
        let decoder = AztecDecoder()
        _ = decoder.decode(aztecString)
    }
}

