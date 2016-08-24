//
//  PersonBuilder.h
//  Builder
//
//  Created by 伟明 毕 on 15/2/23.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@protocol PersonBuilder <NSObject>

- (void)buildHead;

- (void)buildBody;

@end

@interface PersonBuilder : NSObject
{
    Person *_person;
}

- (Person *)getPerson;

@end
