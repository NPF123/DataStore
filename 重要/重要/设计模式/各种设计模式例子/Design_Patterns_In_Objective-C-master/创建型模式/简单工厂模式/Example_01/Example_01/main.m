/**
 使用简单工厂模式设计一个可以创建不同几何形状（如圆形、方形和三角形等）的绘图工具，每个几何图形都具有绘制draw()和擦除erase()两个方法，要求在绘制不支持的几何图形时，提示一个UnSupportedShapeException。
 */

#import <Foundation/Foundation.h>
#import "Graphics.h"
#import "GraphicsFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Graphics<Graphics> *g1 = [GraphicsFactory createGraphicsWithType:GraphicsTypeCircle];
        [g1 draw];
        [g1 erase];
        
        Graphics<Graphics> *g2 = [GraphicsFactory createGraphicsWithType:GraphicsTypeSquare];
        [g2 draw];
        [g2 erase];
        
        Graphics<Graphics> *g3 = [GraphicsFactory createGraphicsWithType:GraphicsTypeRectangle];
        [g3 draw];
        [g3 erase];
        
        Graphics<Graphics> *x1 = [GraphicsFactory createGraphicsWithTypeString:@"Rectangle"];
        [x1 draw];
        [x1 erase];
        
//        Graphics<Graphics> *x1 = [GraphicsFactory createGraphicsWithTypeString:@"Star"];
//        [x1 draw];
//        [x1 erase];
    }
    return 0;
}
