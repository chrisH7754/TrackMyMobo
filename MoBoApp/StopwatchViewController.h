//
//  StopwatchViewController.h
//  MoBoApp
//
//  Created by Christian Heinrich on 03.09.14.
//  Copyright (c) 2014 Christian Heinrich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StopwatchViewController : UIViewController {
    NSTimer *stopwatchTimer;
    NSDate *startDate;
    int milliseconds;
    BOOL timerStarted;
    IBOutlet id elapsedTime;
}
@property (weak, nonatomic) IBOutlet UIButton *startBtn;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *speed;
@property (weak, nonatomic) IBOutlet UILabel *distance;
- (IBAction)startStopTimer:(id)sender;


@end
