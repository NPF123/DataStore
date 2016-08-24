//
//  ObjectStructure.h
//  Visitor
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Action.h"

@interface ObjectStructure : NSObject
{
    @protected
    NSMutableArray *_PersonArray;
}

- (void)add:(Person <Person> *)person;
- (void)remove:(Person <Person> *)person;
- (void)display:(Action <Action> *)visitor;

@end
