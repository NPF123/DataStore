//
//  Target_A.h
//  CTMediator
//
//  Created by casa on 16/3/13.
//  Copyright © 2016年 casa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Target_A : NSObject

- (UIViewController *)Action_nativeFetchDetailViewController:(NSDictionary *)params;
- (id)Action_nativePresentImage:(NSDictionary *)params;
- (id)Action_showAlert:(NSDictionary *)params;

// 容错
- (id)Action_nativeNoImage:(NSDictionary *)params;

@end

/*
 Target_A.h.m
 提供了跳转到DemoModule模块的对外接口，与CTMediator+CTMediatorModuleAActions.h.m相互对应，可以说它只用来为CTMediator+CTMediatorModuleAActions.h.m提供服务，所以在实现CTMediator+CTMediatorModuleAActions.h.m时只需要参考Target_A.h.m即可，足够简单以至于并不需要文档来辅助描述。其他模块想跳转到这个模块时，不能直接通过Target_A.h.m实现，而是要通过CTMediator+CTMediatorModuleAActions.h.m来完成。这样，就实现了模块间相互不依赖，并且只有需要跳转到其他模块的地方，才需要依赖CTMediator
 */
/*
 由于在Target中，传递值得方式采用了去Model化得方式，导致我们在整个过程中也没有#import任何Model。所以，我们的每个类都与Model解耦。
 */