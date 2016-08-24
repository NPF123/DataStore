//
//  GraphicsFactory.h
//  Example_01
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Graphics;
@protocol Graphics;

typedef NS_ENUM(NSUInteger, GraphicsType) {
    GraphicsTypeCircle = 0,
    GraphicsTypeSquare,
    GraphicsTypeRectangle
};

@interface GraphicsFactory : NSObject

+ (Graphics<Graphics> *)createGraphicsWithType:(GraphicsType)graphicsType;
+ (Graphics<Graphics> *)createGraphicsWithTypeString:(NSString *)typeString;

@end
