//
//  NewBetViewController.h
//  FitBet
//
//  Created by Dylan Kyle Davis on 1/20/16.
//  Copyright © 2016 Dylan Davis. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BetCompletionHandler)(NSString * activity,
                                    NSDate * time,
                                    float latitude,
                                    float longitude); //*****TODO: ADD PARTICIPANTS

@interface NewBetViewController : UIViewController

@property (copy, nonatomic) BetCompletionHandler completionHandler;

@end
