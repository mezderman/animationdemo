//
//  TTFish.h
//  FlashToCocosDemo
//
//  Created by Moshe Ezderman on 4/24/13.
//
//

#import <Foundation/Foundation.h>
#import "FTCCharacter.h"
typedef enum {
    kWalk,
    kStand
}CharacterState;

@interface TTFish : FTCCharacter <FTCCharacterDelegate>

-(id)init;
-(void)toggleState;
@property(nonatomic) int state;
@end
