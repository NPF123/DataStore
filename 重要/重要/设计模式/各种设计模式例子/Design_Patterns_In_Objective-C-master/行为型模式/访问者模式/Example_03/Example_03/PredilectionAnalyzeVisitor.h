//
//  PredilectionAnalyzeVisitor.h
//  Example_03
//
//  Created by 找塑料 on 16/5/3.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "Visitor.h"

/**
 *  具体的访问者，实现对客户的偏好分析
 */
@interface PredilectionAnalyzeVisitor : Visitor <Visitor>

@end
