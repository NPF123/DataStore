//
//  SkinFactory.m
//  Example_02
//
//  Created by Bi Weiming on 15/6/25.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import "SkinFactory.h"
#import "SummerButton.h"
#import "SummerComboBox.h"
#import "SummerTextField.h"
#import "SpringSkinFactory.h"
#import "SummerSkinFactory.h"

@implementation SkinFactory

+ (instancetype)factory {
    NSDictionary *plist = [NSDictionary dictionaryWithContentsOfFile:@"/Users/btw/Desktop/开发笔记/设计模式/创建型模式/抽象工厂模式/Example_02/Example_02/Skin.plist"];
    NSString *style = plist[@"Style"];
    
    if([style isEqualToString:@"Summer"]) {
        return [SummerSkinFactory new];
    } else if ([style isEqualToString:@"Spring"]) {
        return [SpringSkinFactory new];
    }
    
    return nil;
}

- (Button *)createButton { return nil; }
- (TextField *)createTextField { return nil; }
- (ComboBox *)createComboBox { return nil; }

@end
