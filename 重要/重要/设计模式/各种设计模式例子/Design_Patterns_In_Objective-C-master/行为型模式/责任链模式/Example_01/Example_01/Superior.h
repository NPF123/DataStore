//
//  Superior.h
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Superior;
@class Leave;

@protocol Superior <NSObject>

- (void)approvalWithLeave:(Leave *)leave;

@end

@interface Superior : NSObject

@property (strong, nonatomic) Superior<Superior> *nextSuperior;

@end
