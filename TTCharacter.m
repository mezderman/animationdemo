//
//  TTCharacter.m
//  FlashToCocosDemo
//
//  Created by Moshe Ezderman on 4/24/13.
//
//

#import "TTCharacter.h"

@implementation TTCharacter
@synthesize state;

-(id)init
{
    self = [super init];
    if (self) {
        [self createCharacterFromXML:@"fish"];
        [self setDelegate:self];
        [self playAnimation:@"anim1" loop:YES wait:NO];
        [self toggleState];
    }
    return self;
}

-(void)toggleState
{
//    if(state == kWalk)
//    {
//        [self stopAnimation];
//        state = kStand;
//    }else
//    {
//        [self playAnimation:@"anim1" loop:YES wait:NO];
//        state = kWalk;
//    }
}
@end
