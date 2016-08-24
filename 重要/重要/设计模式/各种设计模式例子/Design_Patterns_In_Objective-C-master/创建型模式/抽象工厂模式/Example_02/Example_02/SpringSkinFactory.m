//
//  SpringSkinFactory.m
//  Example_02
//
//  Created by Bi Weiming on 15/6/25.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "SpringSkinFactory.h"
#import "SpringButton.h"
#import "SpringComboxBox.h"
#import "SpringTextField.h"

@implementation SpringSkinFactory

- (Button *)createButton {
    return [SpringButton new];
}

- (TextField *)createTextField {
    return [SpringTextField new];
}

- (ComboBox *)createComboBox {
    return [SpringComboxBox new];
}

@end
