//
//  StopwatchViewController.m
//  MoBoApp
//
//  Created by Christian Heinrich on 03.09.14.
//  Copyright (c) 2014 Christian Heinrich. All rights reserved.
//

#import "StopwatchViewController.h"
# import <GoogleMaps/GoogleMaps.h>
@interface StopwatchViewController ()

@end

@implementation StopwatchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Stop", @"Stopwatch");
        self.tabBarItem.image = [UIImage imageNamed:@"stopwatch"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    milliseconds = 0;
    timerStarted = false;
    [self.time setText: [NSString stringWithFormat: @"00:00:00.00"]];
    [self.speed setText: [NSString stringWithFormat: @"0 km/h"]];
    [self.distance setText: [NSString stringWithFormat: @"0.0 km"]];
    _startBtn.layer.borderWidth = .5f;
    _startBtn.layer.borderColor =[[UIColor blackColor] CGColor];
    //[self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed: @"BackgroundGrey640x960.png"]]];
    //_StopTimerLabel.backgroundColor = [UIColor blackColor];
    //_stopTimerLabel.backgroundColor = [UIColor blackColor];
    //_stopTimerLabel.opaque = false;
    //_startTimer.backgroundColor = [UIColor blackColor];
    [_startBtn setTitleColor: [UIColor yellowColor] forState: UIControlStateNormal];
    [_startBtn setBackgroundColor:[UIColor blackColor] ];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startStopTimer:(id)sender {
    if (timerStarted == false) {
        timerStarted = true;
    } else {
        timerStarted = false;
    }
    if (timerStarted == true) {
        [sender setTitle:@"Stop" forState:UIControlStateNormal];
        if (!stopwatchTimer) {
            stopwatchTimer = [NSTimer scheduledTimerWithTimeInterval: 0.1 target: self selector: @selector(tick:) userInfo:nil repeats:YES];
            startDate = [NSDate date];
            [stopwatchTimer fire];
        }
    }
    else {
        [sender setTitle:@"Start" forState:UIControlStateNormal];
        [stopwatchTimer invalidate];
        stopwatchTimer = nil;
        milliseconds = 0;
        timerStarted = false;
    }
}
- (void) tick: (NSTimer*) theTimer {
    if (theTimer) {
        if (milliseconds == 99) {
            milliseconds = 0;
        } else {
            milliseconds +=1;
        }
        NSTimeInterval interval =-[startDate timeIntervalSinceNow];
        int seconds = ((int) interval) % 60;
        int minutes = ((int) (interval - seconds) / 60) % 60;
        int hours = ((int) interval - seconds - 60 * minutes) % 3600;
        [self.time setText: [NSString stringWithFormat: @"%02d:%02d:%02d.%02d", hours, minutes, seconds, milliseconds]];
    }
}

@end
