//
//  BetsModel.h
//  FitBet
//
//  Created by Dylan Kyle Davis on 1/21/16.
//  Copyright © 2016 Dylan Davis. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const kParticipantsKey = @"participants";
static NSString *const kDateKey = @"date";
static NSString *const kLocationKey = @"location";

@interface BetsModel : NSObject

+ (instancetype) sharedModel;
-(NSInteger) numBets;
-(void) addBet: (NSDictionary *) newBet;
-(void) removeBet: (NSUInteger) index;

@end
