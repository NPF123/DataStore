//
//  Composite.h
//  Composite
//
//  Created by 伟明 毕 on 15/2/25.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Components.h"

@interface Composite : Components <Components>
{
    @private
    NSMutableArray *_children;
}

@end
