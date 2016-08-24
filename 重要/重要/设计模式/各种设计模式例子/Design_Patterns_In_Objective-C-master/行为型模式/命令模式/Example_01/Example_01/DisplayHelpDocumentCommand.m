//
//  DisplayHelpDocumentCommand.m
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "DisplayHelpDocumentCommand.h"
#import "HelpHandler.h"

@implementation DisplayHelpDocumentCommand
{
    HelpHandler *_handler;
}

- (instancetype)init {
    if (self = [super init]) {
        _handler = [[HelpHandler alloc] init];
    }
    return self;
}

- (void)execute {
    [_handler displayHelpDocuments];
}

@end
