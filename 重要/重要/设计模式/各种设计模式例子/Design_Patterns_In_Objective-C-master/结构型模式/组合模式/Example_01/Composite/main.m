//
//  main.m
//  Composite
//
//  Created by 伟明 毕 on 15/2/25.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Composite.h"
#import "Leaf.h"

/**
 * 组合模式：将对象组合成树形结构以表示“部分－整体”的层次结构。组合模式使得用户对单个对象和组合对象的使用具有一致性。
 * 需求中体现部分与整体层次的结构时，和希望用户可以忽略组合对象与单个对象的不同，统一地使用组合结构中的所有对象时，就可使用组合模式。
 * 组合模式让客户可以一致地使用组合结构和单个对象
 * 用户不用关心到底是处理一个叶节点还是处理一个组合组件，也用不着为定义组合而写一些选择判断语句
 * 基本对象可以被组合成更复杂的组合对象，而这个组合对象又可以被组合，这样不断递归下去，客户代码中，任何用到基本对象的地方都可以使用组合对象了。
 * 透明方式：Component中声明所有用来管理子对象的方法，其中包括Add、Remove等。这样实现Components接口的所有子类都具备了Add和Remove。这样做的好处就是叶节点和枝节点对于外界没有任何区别，他们具备完全一致的行为接口。但问题很明显，Leaf类本身不具备Add、Remove方法的功能，所以实现它们也是没有意义的。
 * 安全方式：Components接口不去声明Add、Remove方法，那么子类Leaf也就不需要实现它们，而是在Composite声明所有用来管理子类对象的方法，这样就不会出现刚才的问题，但不够透明，树叶和树枝类将具有不同的接口，客户端的调用需要做相应的判断，带来了不便。
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Components <Components> *root = [[Composite alloc] initWithName:@"Root"];
        [root add:[[Leaf alloc] initWithName:@"Leaf A"]];
        [root add:[[Leaf alloc] initWithName:@"Leaf B"]];
        
        Components <Components> *comp = [[Composite alloc] initWithName:@"Composite X"];
        [comp add:[[Leaf alloc] initWithName:@"LeafX A"]];
        [comp add:[[Leaf alloc] initWithName:@"LeafX B"]];
        [root add:comp];

        Composite <Components> *comp2 = [[Composite alloc] initWithName:@"Composite XY"];
        [comp2 add:[[Leaf alloc] initWithName:@"LeafXY A"]];
        [comp2 add:[[Leaf alloc] initWithName:@"LeafXY B"]];
        [comp add:comp2];
        
        [root add:[[Leaf alloc] initWithName:@"Leaf C"]];
        
        Leaf *leaf = [[Leaf alloc] initWithName:@"Leaf D"];
        [root add:leaf];
        [root remove:leaf];
        
        [root display:0];
    }
    return 0;
}
