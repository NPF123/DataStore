//
//  HandsetBrand.h
//  Bridge
//
//  Created by btw on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HandsetSoft.h"

@protocol HandsetBrand <NSObject>

- (void)run;

@end

@interface HandsetBrand : NSObject

@property (strong, nonatomic) HandsetSoft <HandsetSoft> *soft;

@end
