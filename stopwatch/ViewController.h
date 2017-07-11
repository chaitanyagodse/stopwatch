//
//  ViewController.h
//  stopwatch
//
//  Created by Student on 01/03/17.
//  Copyright (c) 2017 Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    BOOL running;
}

@property (weak, nonatomic) IBOutlet UILabel *timerlabel;
- (IBAction)start:(id)sender;
- (IBAction)reset:(id)sender;
- (IBAction)stop:(id)sender;
@property(nonatomic,retain) NSTimer *timer;
@property (nonatomic,retain) NSDate *date;


@end

