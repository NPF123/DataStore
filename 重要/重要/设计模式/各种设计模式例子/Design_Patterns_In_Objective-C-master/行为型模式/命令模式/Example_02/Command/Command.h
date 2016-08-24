//
//  Command.h
//  Command
//
//  Created by btw on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Barbecuer.h"

@protocol Command <NSObject>

- (void)executeCommand;

@end

@interface Command : NSObject

@property (strong, nonatomic) Barbecuer *barbecuer;

- (instancetype)initWithBarbecuer:(Barbecuer *)barbecuer;


@end
