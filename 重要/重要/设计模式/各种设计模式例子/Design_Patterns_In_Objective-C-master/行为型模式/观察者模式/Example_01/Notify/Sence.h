//
//  Sence.h
//  Observer
//
//  Created by 伟明 毕 on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Stock;

@interface Sence : NSObject
{
    Stock *_stock;
}

- (void)sence;

@end
