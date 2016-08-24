//
//  SummerFactory.m
//  Example_02
//
//  Created by Bi Weiming on 15/6/25.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "SummerSkinFactory.h"
#import "SummerButton.h"
#import "SummerComboBox.h"
#import "SummerTextField.h"

@implementation SummerSkinFactory

- (Button *)createButton {
    return [SummerButton new];
}

- (TextField *)createTextField {
    return [SummerTextField new];
}

- (ComboBox *)createComboBox {
    return [SummerComboBox new];
}

@end
