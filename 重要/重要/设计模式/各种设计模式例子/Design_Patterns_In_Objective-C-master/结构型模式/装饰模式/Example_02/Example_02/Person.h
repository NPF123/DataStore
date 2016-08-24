//
//  Person.h
//  Example_02
//
//  Created by 伟明 毕 on 15/3/20.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSString *name;

- (instancetype)initWithName:(NSString *)name;

- (void)show;

@end
