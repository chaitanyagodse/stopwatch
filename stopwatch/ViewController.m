//
//  ViewController.m
//  stopwatch
//
//  Created by Student on 01/03/17.
//  Copyright (c) 2017 Student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _timerlabel.text=@"00.00.00.000";
    running = false;
    _date=[NSDate date];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender
{
    _date=[NSDate date];
    _timer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updatetimer) userInfo:nil repeats:YES];
    
    
}
-(void)updatetimer
{
    NSDate *crntdate=[NSDate date];
    NSTimeInterval timeinterval=[crntdate timeIntervalSinceDate:self.date];
    NSDate *timerdate=[NSDate dateWithTimeIntervalSince1970:timeinterval];
    
    
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc]init];
    [dateformatter setDateFormat:@"HH:mm:ss.SSS"];
    [dateformatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.1]];
    
    NSString *timestring=[dateformatter stringFromDate:timerdate];
    
    self.timerlabel.text=timestring;
    
    
}


- (IBAction)reset:(id)sender
{
    [_timer invalidate];
    _timer=nil;
    _timerlabel.text=@"00.00.00.000";

}

- (IBAction)stop:(id)sender
{
    [_timer invalidate];
}
@end
