//
//  Decorator.h
//  Example_01
//
//  Created by 伟明 毕 on 15/3/20.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "ABS_Component.h"

@interface Decorator : ABS_Component <ABS_Component> {
    ABS_Component<ABS_Component> *_component;
}

- (void)setComponent:(ABS_Component<ABS_Component> *)component;

@end
