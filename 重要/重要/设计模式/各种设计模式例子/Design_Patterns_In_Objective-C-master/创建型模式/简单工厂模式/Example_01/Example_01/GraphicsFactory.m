//
//  GraphicsFactory.m
//  Example_01
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "GraphicsFactory.h"
#import "Rectangle.h"
#import "Square.h"
#import "Circle.h"

@implementation GraphicsFactory

+ (Graphics<Graphics> *)createGraphicsWithType:(GraphicsType)graphicsType {
    Graphics<Graphics> *graphics = nil;
    
    switch (graphicsType) {
        case GraphicsTypeCircle:
            graphics = [[Circle alloc] init];
            break;
        case GraphicsTypeSquare:
            graphics = [[Square alloc] init];
            break;
        case GraphicsTypeRectangle:
            graphics = [[Rectangle alloc] init];
            break;
        default:
            break;
    }
    
    return graphics;
}

+ (Graphics<Graphics> *)createGraphicsWithTypeString:(NSString *)typeString {
    Graphics<Graphics> *graphics = nil;
    if ([typeString isEqualToString:@"Circle"]) {
        graphics = [[Circle alloc] init];
    } else if ([typeString isEqualToString:@"Square"]) {
        graphics = [[Square alloc] init];
    } else if ([typeString isEqualToString:@"Rectangle"]) {
        graphics = [[Rectangle alloc] init];
    } else {
        NSAssert(NO, @"UnSupportedShapeException");
    }
    
    return graphics;
}

@end
