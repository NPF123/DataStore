
#import "Player.h"
@class Center;

@interface Adapter : Player <Player>
{
    Center *_center;
}

@end
