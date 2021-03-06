//
//  ViewController.m
//  TicTacToe
//
//  Created by Shannon Beck on 1/8/15.
//  Copyright (c) 2015 Shannon Beck. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *labelOne;
@property (strong, nonatomic) IBOutlet UILabel *labelTwo;
@property (strong, nonatomic) IBOutlet UILabel *labelThree;
@property (strong, nonatomic) IBOutlet UILabel *labelFour;
@property (strong, nonatomic) IBOutlet UILabel *labelFive;
@property (strong, nonatomic) IBOutlet UILabel *labelSix;
@property (strong, nonatomic) IBOutlet UILabel *labelSeven;
@property (strong, nonatomic) IBOutlet UILabel *labelEight;
@property (strong, nonatomic) IBOutlet UILabel *labelNine;
@property (strong, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property (strong, nonatomic) IBOutlet UILabel *oLabel;
@property (strong, nonatomic) IBOutlet UILabel *xLabel;
@property int l1;
@property int l2;
@property int l3;
@property int l4;
@property int l5;
@property int l6;
@property int l7;
@property int l8;
@property int l9;
@property int counter;
@property int timerCounter;
@property BOOL playerOnePlaying;
@property (strong, nonatomic) IBOutlet UILabel *timerLabel;
@property NSTimer *timer;
@property (strong, nonatomic) IBOutlet UIButton *onButtonPressedRestart;
@property UIPanGestureRecognizer *panGesture;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.playerOnePlaying = YES;
    self.oLabel.hidden = YES;
    self.l1 = 3;
    self.l2 = 4;
    self.l3 = 5;
    self.l4 = 6;
    self.l5 = 7;
    self.l6 = 8;
    self.l7 = 9;
    self.l8 = 10;
    self.l9 = 11;
    self.counter = 0;
    //[self startCountdown];
    self.onButtonPressedRestart.hidden = YES;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)startCountdown
{

    self.timerCounter = 31;


    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                                      target:self
                                                selector:@selector(countdownTimer)
                                                    userInfo:nil
                                                     repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void)countdownTimer
{
    self.timerCounter--;
    self.timerLabel.text = [NSString stringWithFormat:@"%i", self.timerCounter];
    if (self.timerCounter <= 0)
    {
        [self.timer invalidate];

        if (self.playerOnePlaying)
        {
            self.xLabel.hidden = YES;
            self.oLabel.hidden = NO;
            [self.timer invalidate];
            [self startCountdown];
            self.playerOnePlaying = NO;
        }
        else
        {
            self.xLabel.hidden = NO;
            self.oLabel.hidden = YES;
            [self.timer invalidate];
            [self startCountdown];
            self.playerOnePlaying = YES;
        }

       // self.playerOnePlaying = !self.playerOnePlaying;
    }
}

- (void)findLabelUsingPoint:(CGPoint)point sendInLabel:(UILabel *)label whichPlayer:(BOOL)player
{
    UIColor *lightOrange = [[UIColor alloc]init];
    lightOrange = [UIColor colorWithRed:0.98 green:0.80 blue:0.61 alpha:.9];
        if (CGRectContainsRect(self.labelOne.frame, label.frame))
    {
        if (player && (self.l1 == 3))
        {
            self.counter++;
            self.xLabel.hidden = YES;
            self.oLabel.hidden = NO;
            self.labelOne.textColor = lightOrange;
            self.labelOne.text = @"X";
            self.l1 = 1;
            self.playerOnePlaying = NO;
            [self.timer invalidate];
            [self startCountdown];
        }

        if (!player && (self.l1 == 3))
        {
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.labelOne.text = @"O";
            self.l1 = 2;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
    }

    if (CGRectContainsRect(self.labelTwo.frame, label.frame))
    {
        if (player && (self.l2 == 4))
        {
            self.counter++;
            self.xLabel.hidden = YES;
            self.oLabel.hidden = NO;
            self.labelTwo.textColor = lightOrange;
            self.labelTwo.text = @"X";
            self.l2 = 1;
            self.playerOnePlaying = NO;
            [self.timer invalidate];
            [self startCountdown];
        }

        if (!player && (self.l2 == 4))
        {
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.labelTwo.text = @"O";
            self.l2 = 2;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
    }

    if (CGRectContainsRect(self.labelThree.frame, label.frame))
    {
        if (player && (self.l3 == 5))
        {
            self.counter++;
            self.xLabel.hidden = YES;
            self.oLabel.hidden = NO;
            self.labelThree.textColor = lightOrange;
            self.labelThree.text = @"X";
            self.l3 = 1;
            self.playerOnePlaying = NO;
            [self.timer invalidate];
            [self startCountdown];
        }

        if (!player && (self.l3 == 5))
        {
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.labelThree.text = @"O";
            self.l3 = 2;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
    }

    if (CGRectContainsRect(self.labelFour.frame, label.frame))
    {
        if (player && (self.l4 == 6))
        {
            self.counter++;
            self.xLabel.hidden = YES;
            self.oLabel.hidden = NO;
            self.labelFour.textColor = lightOrange;
            self.labelFour.text = @"X";
            self.l4 = 1;
            self.playerOnePlaying = NO;
            [self.timer invalidate];
            [self startCountdown];
        }

        if (!player && (self.l4 == 6))
        {
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.labelFour.text = @"O";
            self.l4 = 2;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
    }

    if (CGRectContainsRect(self.labelFive.frame, label.frame))
    {
        if (player && (self.l5 == 7))
        {
            self.counter++;
            self.xLabel.hidden = YES;
            self.oLabel.hidden = NO;
            self.labelFive.textColor = lightOrange;
            self.labelFive.text = @"X";
            self.l5 = 1;
            self.playerOnePlaying = NO;
            [self.timer invalidate];
            [self startCountdown];
        }

        if (!player && (self.l5 == 7))
        {
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.labelFive.text = @"O";
            self.l5 = 2;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
    }

    if (CGRectContainsRect(self.labelSix.frame, label.frame))
    {
        if (player && (self.l6 == 8))
        {
            self.counter++;
            self.xLabel.hidden = YES;
            self.oLabel.hidden = NO;
            self.labelSix.textColor = lightOrange;
            self.labelSix.text = @"X";
            self.l6 = 1;
            self.playerOnePlaying = NO;
            [self.timer invalidate];
            [self startCountdown];
        }

        if (!player && (self.l6 == 8))
        {
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.labelSix.text = @"O";
            self.l6 = 2;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
    }

    if (CGRectContainsRect(self.labelSeven.frame, label.frame))
    {
        if (player && (self.l7 == 9))
        {
            self.counter++;
            self.xLabel.hidden = YES;
            self.oLabel.hidden = NO;
            self.labelSeven.textColor = lightOrange;
            self.labelSeven.text = @"X";
            self.l7 = 1;
            self.playerOnePlaying = NO;
            [self.timer invalidate];
            [self startCountdown];
        }

        if (!player && (self.l7 == 9))
        {
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.labelSeven.text = @"O";
            self.l7 = 2;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
    }

    if (CGRectContainsRect(self.labelEight.frame, label.frame))
    {
        if (player && (self.l8 == 10))
        {
            self.counter++;
            self.xLabel.hidden = YES;
            self.oLabel.hidden = NO;
            self.labelEight.textColor = lightOrange;
            self.labelEight.text = @"X";
            self.l8 = 1;
            self.playerOnePlaying = NO;
            [self.timer invalidate];
            [self startCountdown];
        }

        if (!player && (self.l8 == 10))
        {
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.labelEight.text = @"O";
            self.l8 = 2;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
    }

    if (CGRectContainsRect(self.labelNine.frame, label.frame))
    {
        if (player && (self.l9 == 11))
        {
            self.counter++;
            self.xLabel.hidden = YES;
            self.oLabel.hidden = NO;
            self.labelNine.textColor = lightOrange;
            self.labelNine.text = @"X";
            self.l9 = 1;
            self.playerOnePlaying = NO;
            [self.timer invalidate];
            [self startCountdown];
        }

        if (!player && (self.l9 == 11))
        {
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.labelNine.text = @"O";
            self.l9 = 2;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
    }



}



- (BOOL)whoWon
{

    if ((self.l1 == 2 && self.l2 == 2 && self.l3 == 2) || (self.l1 == 1 && self.l2 == 1 && self.l3 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        return true;
    }
    else if ((self.l4 == 2 && self.l5 == 2 && self.l6 == 2) || (self.l4 == 1 && self.l5 == 1 && self.l6 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        return true;
    }
    else if ((self.l7 == 2 && self.l8 == 2 && self.l9 == 2) || (self.l7 == 1 && self.l8 == 1 && self.l9 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        return true;
    }
    else if ((self.l1 == 2 && self.l4 == 2 && self.l7 == 2) || (self.l1 == 1 && self.l4 == 1 && self.l7 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        return true;
    }
    else if ((self.l2 == 2 && self.l5 == 2 && self.l8 == 2) || (self.l2 == 1 && self.l5 == 1 && self.l8 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        NSLog(@"HELLLLLLLLLOOO");
        return true;
    }
    else if ((self.l3 == 2 && self.l6 == 2 && self.l9 == 2) || (self.l3 == 1 && self.l6 == 1 && self.l9 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        return true;
    }
    else if ((self.l1 == 2 && self.l5 == 2 && self.l9 == 2) || (self.l1 == 1 && self.l5 == 1 && self.l9 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        return true;
    }
    else if ((self.l7 == 2 && self.l5 == 2 && self.l3 == 2) || (self.l7 == 1 && self.l5 == 1 && self.l3 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        return true;
    }
    else
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        return false;
    }


}

- (void)itsADraw
{
    if (self.counter == 9)
    {
        [self.timer invalidate];
        UIAlertView *playerDrawAlert = [[UIAlertView alloc]init];
        playerDrawAlert.title = @"IT'S A DRAW!";
        [playerDrawAlert addButtonWithTitle:@"Dismiss"];
        [playerDrawAlert show];
        self.panGesture.enabled = NO;
        self.onButtonPressedRestart.hidden = NO;
    }
}



- (IBAction)panHandler:(UIPanGestureRecognizer *)gesture
{
    self.panGesture = gesture;
    CGPoint touchPoint = [gesture locationInView:self.view];

    if (self.playerOnePlaying == YES)
    {
        self.xLabel.center = touchPoint;
        if (gesture.state == UIGestureRecognizerStateEnded)
        {
            [self findLabelUsingPoint:touchPoint sendInLabel:self.xLabel whichPlayer:YES];
            NSLog(@"\nPlayer 1");

            if ([self whoWon])
            {
                [self.timer invalidate];
                UIAlertView *playerOneWonAlert = [[UIAlertView alloc]init];
                playerOneWonAlert.title = @"PLAYER ONE WON";
                [playerOneWonAlert addButtonWithTitle:@"Dismiss"];
                [playerOneWonAlert show];
                self.onButtonPressedRestart.hidden = NO;

                gesture.enabled = NO;
            }
            else
            {
                [self itsADraw];
            }
        }

    }
    else
    {
        self.oLabel.center = touchPoint;
        if (gesture.state == UIGestureRecognizerStateEnded)
        {
            [self findLabelUsingPoint:touchPoint sendInLabel:self.oLabel whichPlayer:NO];
            NSLog(@"\nPlayer 2");
            if ([self whoWon])
            {
                NSLog(@"\nHERE");
                [self.timer invalidate];
                UIAlertView *playerTwoWonAlert = [[UIAlertView alloc]init];
                playerTwoWonAlert.title = @"PLAYER TWO WON";
                [playerTwoWonAlert addButtonWithTitle:@"Dismiss"];
                [playerTwoWonAlert show];
                self.onButtonPressedRestart.hidden = NO;

                gesture.enabled = NO;
            }
            else
            {
                [self itsADraw];
            }


        }

    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //self.onButtonPressedRestart.hidden = NO;

    [alertView dismissWithClickedButtonIndex:0 animated:YES];

}



@end
