//
//  BetsModel.m
//  FitBet
//
//  Created by Dylan Kyle Davis on 1/21/16.
//  Copyright © 2016 Dylan Davis. All rights reserved.
//

#import "BetsModel.h"

@interface BetsModel()

@property (strong,nonatomic) NSMutableArray * bets;

@end

@implementation BetsModel

- (id)init
{
    self = [super init];
    if (self) {
        
        _bets = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (instancetype) sharedModel {
    
    static BetsModel *_sharedModel = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedModel = [[self alloc] init];
    });
    return _sharedModel;
}

-(NSInteger) numBets {
    
    return [_bets count];
}

-(void) addBet:(NSDictionary*) newBet {
    
    [_bets addObject:newBet];
}

-(void) removeBet:(NSUInteger)index {
    
    if(index < _bets.count) {
        
        [_bets removeObjectAtIndex:index];
        
    }
}

@end



