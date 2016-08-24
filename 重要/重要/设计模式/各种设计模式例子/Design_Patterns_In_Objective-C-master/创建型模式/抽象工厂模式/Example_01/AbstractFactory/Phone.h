//
//  Phone.h
//  AbstractFactory
//
//  Created by btw on 15/2/28.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Phone <NSObject>

- (void)print;

@end

@interface Phone : NSObject

@property (strong, nonatomic) NSString *phoneName;
@property (assign, nonatomic) float price;

- (instancetype)initWithPhoneName:(NSString *)phoneName price:(float)price;


@end