//
//  ComputerPlayerViewController.m
//  TicTacToe
//
//  Created by Shannon Beck on 1/8/15.
//  Copyright (c) 2015 Shannon Beck. All rights reserved.
//

#import "ComputerPlayerViewController.h"

@interface ComputerPlayerViewController ()
@property (strong, nonatomic) IBOutlet UILabel *labelOne;
@property (strong, nonatomic) IBOutlet UILabel *labelTwo;
@property (strong, nonatomic) IBOutlet UILabel *labelThree;
@property (strong, nonatomic) IBOutlet UILabel *labelFour;
@property (strong, nonatomic) IBOutlet UILabel *labelFive;
@property (strong, nonatomic) IBOutlet UILabel *labelSix;
@property (strong, nonatomic) IBOutlet UILabel *labelSeven;
@property (strong, nonatomic) IBOutlet UILabel *labelEight;
@property (strong, nonatomic) IBOutlet UILabel *labelNine;
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


@end

@implementation ComputerPlayerViewController

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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)startCountdown
{
    self.timerCounter = 30;

    self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                  target:self
                                                selector:@selector(countdownTimer)
                                                userInfo:nil
                                                 repeats:YES];
}

- (void)countdownTimer
{
    self.timerCounter--;
    self.timerLabel.text = [NSString stringWithFormat:@"%i", self.timerCounter];
    if (self.timerCounter <= 0)
    {
        [self.timer invalidate];
    }
}

- (BOOL)whoWon
{

    if ((self.l1 == 2 && self.l2 == 2 && self.l3 == 2) || (self.l1 == 1 && self.l2 == 1 && self.l3 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        NSLog(@"\n1");
        return true;
    }
    else if ((self.l4 == 2 && self.l5 == 2 && self.l6 == 2) || (self.l4 == 1 && self.l5 == 1 && self.l6 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        NSLog(@"\n2");
        return true;
    }
    else if ((self.l7 == 2 && self.l8 == 2 && self.l9 == 2) || (self.l7 == 1 && self.l8 == 1 && self.l9 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        NSLog(@"\n3");
        return true;
    }
    else if ((self.l1 == 2 && self.l4 == 2 && self.l7 == 2) || (self.l1 == 1 && self.l4 == 1 && self.l7 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        NSLog(@"\n4");
        return true;
    }
    else if ((self.l2 == 2 && self.l5 == 2 && self.l8 == 2) || (self.l2 == 1 && self.l5 == 1 && self.l8 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        NSLog(@"\n5");
        return true;
    }
    else if ((self.l3 == 2 && self.l6 == 2 && self.l9 == 2) || (self.l3 == 1 && self.l6 == 1 && self.l9 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        NSLog(@"\n6");
        return true;
    }
    else if ((self.l1 == 2 && self.l5 == 2 && self.l9 == 2) || (self.l1 == 1 && self.l5 == 1 && self.l9 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        NSLog(@"\n7");
        return true;
    }
    else if ((self.l7 == 2 && self.l5 == 2 && self.l3 == 2) || (self.l7 == 1 && self.l5 == 1 && self.l3 == 1))
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        NSLog(@"\n8");
        return true;
    }
    else
    {
        NSLog(@"%i %i %i %i %i %i %i %i %i", self.l1, self.l2, self.l3, self.l4, self.l5, self.l6, self.l7, self.l8, self.l9);
        NSLog(@"\n9");
        return false;
    }

    
}

- (BOOL)itsADraw
{
    if (self.counter == 9)
    {
        return true;
    }
    else
    {
        return false;
    }
}

- (IBAction)panHandler:(UIPanGestureRecognizer *)gesture
{

    CGPoint touchPoint = [gesture locationInView:self.view];

    if (self.playerOnePlaying == YES)
    {
        self.xLabel.center = touchPoint;
        if (gesture.state == UIGestureRecognizerStateEnded)
        {
            [self findLabelUsingPoint:touchPoint sendInLabel:self.xLabel whichPlayer:YES];
            if ([self whoWon])
            {
                [self.timer invalidate];
                UIAlertView *playerOneWonAlert = [[UIAlertView alloc]init];
                playerOneWonAlert.title = @"PLAYER ONE WON";
                [playerOneWonAlert addButtonWithTitle:@"Dismiss"];
                [playerOneWonAlert show];
            }
            else if ([self itsADraw])
            {
                [self.timer invalidate];
                UIAlertView *playerDrawAlert = [[UIAlertView alloc]init];
                playerDrawAlert.title = @"IT'S A DRAW!";
                [playerDrawAlert addButtonWithTitle:@"Dismiss"];
                [playerDrawAlert show];
            }
            else
            {
                [self computerPlays];
            }


        }

    }
//    else
//    {
//            [self computerPlays];
//
//
//    }
}


- (void)computerPlays
{
    if (self.l1 == 1 && self.l4 == 1 && self.l7 == 9)
    {
        self.labelSeven.text = @"O";
        self.l7 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];

    }
    else if (self.l1 == 1 && self.l2 == 1 && self.l3 == 5)
    {
        self.labelThree.text = @"O";
        self.l7 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l1 == 1 && self.l5 == 1 && self.l9 == 11)
    {
        self.labelNine.text = @"O";
        self.l9 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l4 == 1 && self.l5 == 1 && self.l6 == 8)
    {
        self.labelSix.text = @"O";
        self.l6 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l4 == 1 && self.l7 == 1 && self.l1 == 3)
    {
        self.labelOne.text = @"O";
        self.l1 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l2 == 1 && self.l5 == 1 && self.l8 == 10)
    {
        self.labelEight.text = @"O";
        self.l8 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l2 == 1 && self.l3 == 1 && self.l1 == 3)
    {
        self.labelOne.text = @"O";
        self.l1 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l5 == 1 && self.l8 == 1 && self.l2 == 4)
    {
        self.labelTwo.text = @"O";
        self.l2 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l5 == 1 && self.l6 == 1 && self.l4 == 6)
    {
        self.labelFour.text = @"O";
        self.l4 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l9 == 1 && self.l8 == 1 && self.l7 == 9)
    {
        self.labelSeven.text = @"O";
        self.l7 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l3 == 1 && self.l5 == 1 && self.l8 == 10)
    {
        self.labelSeven.text = @"O";
        self.l7 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l7 == 1 && self.l5 == 1 && self.l3 == 5)
    {
        self.labelThree.text = @"O";
        self.l3 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l7 == 1 && self.l8 == 1 && self.l9 == 11)
    {
        self.labelNine.text = @"O";
        self.l9 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l5 == 1 && self.l9 == 1 && self.l1 == 3)
    {
        self.labelOne.text = @"O";
        self.l1 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l6 == 1 && self.l9 == 1 && self.l3 == 5)
    {
        self.labelThree.text = @"O";
        self.l3 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l6 == 1 && self.l3 == 1 && self.l9 == 11)
    {
        self.labelNine.text = @"O";
        self.l9 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l1 == 1 && self.l3 == 1 && self.l2 == 4)
    {
        self.labelTwo.text = @"O";
        self.l2 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l4 == 1 && self.l6 == 1 && self.l5 == 7)
    {
        self.labelFive.text = @"O";
        self.l5 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l7 == 1 && self.l9 == 1 && self.l8 == 10)
    {
        self.labelEight.text = @"O";
        self.l8 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l1 == 1 && self.l7 == 1 && self.l4 == 6)
    {
        self.labelFour.text = @"O";
        self.l4 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l2 == 1 && self.l8 == 1 && self.l5 == 7)
    {
        self.labelFive.text = @"O";
        self.l5 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l3 == 1 && self.l9 == 1 && self.l6 == 8)
    {
        self.labelSix.text = @"O";
        self.l6 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l7 == 1 && self.l3 == 1 && self.l5 == 7)
    {
        self.labelFive.text = @"O";
        self.l5 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l1 == 1 && self.l9 == 1 && self.l5 == 7)
    {
        self.labelFive.text = @"O";
        self.l5 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l1 == 2 && self.l4 == 2 && self.l7 == 9)
    {
        self.labelSeven.text = @"O";
        self.l7 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l1 == 2 && self.l2 == 2 && self.l3 == 5)
    {
        self.labelThree.text = @"O";
        self.l7 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l1 == 2 && self.l5 == 2 && self.l9 == 11)
    {
        self.labelNine.text = @"O";
        self.l9 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l4 == 2 && self.l5 == 2 && self.l6 == 8)
    {
        self.labelSix.text = @"O";
        self.l6 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l4 == 2 && self.l7 == 2 && self.l1 == 3)
    {
        self.labelOne.text = @"O";
        self.l1 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l2 == 2 && self.l5 == 2 && self.l8 == 10)
    {
        self.labelEight.text = @"O";
        self.l8 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l2 == 2 && self.l3 == 2 && self.l1 == 3)
    {
        self.labelOne.text = @"O";
        self.l1 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l5 == 2 && self.l8 == 2 && self.l2 == 4)
    {
        self.labelTwo.text = @"O";
        self.l2 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l5 == 2 && self.l6 == 2 && self.l4 == 6)
    {
        self.labelFour.text = @"O";
        self.l4 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l9 == 2 && self.l8 == 2 && self.l7 == 9)
    {
        self.labelSeven.text = @"O";
        self.l7 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l3 == 2 && self.l5 == 2 && self.l7 == 9)
    {
        self.labelSeven.text = @"O";
        self.l7 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l7 == 2 && self.l5 == 2 && self.l3 == 5)
    {
        self.labelThree.text = @"O";
        self.l3 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l7 == 2 && self.l8 == 2 && self.l9 == 11)
    {
        self.labelNine.text = @"O";
        self.l9 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l5 == 2 && self.l9 == 2 && self.l1 == 3)
    {
        self.labelOne.text = @"O";
        self.l1 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l6 == 2 && self.l9 == 2 && self.l3 == 5)
    {
        self.labelThree.text = @"O";
        self.l3 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else if (self.l6 == 2 && self.l3 == 2 && self.l9 == 11)
    {
        self.labelNine.text = @"O";
        self.l9 = 2;
        self.counter++;
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.playerOnePlaying = YES;
        [self.timer invalidate];
        [self startCountdown];
    }
    else
    {
        if (self.l1 == 3)
        {
            self.labelOne.text = @"O";
            self.l1 = 2;
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
        else if (self.l2 == 4)
        {
            self.labelTwo.text = @"O";
            self.l2 = 2;
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
        else if (self.l3 == 5)
        {
            self.labelThree.text = @"O";
            self.l3 = 2;
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
        else if (self.l4 == 6)
        {
            self.labelFour.text = @"O";
            self.l4 = 2;
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
        else if (self.l5 == 7)
        {
            self.labelFive.text = @"O";
            self.l5 = 2;
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
        else if (self.l6 == 8)
        {
            self.labelSix.text = @"O";
            self.l6 = 2;
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
        else if (self.l7 == 9)
        {
            self.labelSeven.text = @"O";
            self.l7 = 2;
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
        else if (self.l8 == 10)
        {
            self.labelEight.text = @"O";
            self.l8 = 2;
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
        else
        {
            self.labelNine.text = @"O";
            self.l9 = 2;
            self.counter++;
            self.oLabel.hidden = YES;
            self.xLabel.hidden = NO;
            self.playerOnePlaying = YES;
            [self.timer invalidate];
            [self startCountdown];
        }
    }

    //self.playerOnePlaying = YES;

    if ([self whoWon])
    {
        NSLog(@"\nHERE");
        [self.timer invalidate];
        UIAlertView *playerTwoWonAlert = [[UIAlertView alloc]init];
        playerTwoWonAlert.title = @"PLAYER TWO WON";
        [playerTwoWonAlert addButtonWithTitle:@"Dismiss"];
        [playerTwoWonAlert show];
    }
    else
    {
        [self itsADraw];
    }


}

- (void)findLabelUsingPoint:(CGPoint)point sendInLabel:(UILabel *)label whichPlayer:(BOOL)player
{
    if (CGRectContainsRect(self.labelOne.frame, label.frame))
    {
        if (player && (self.l1 == 3))
        {
            self.counter++;
            self.xLabel.hidden = YES;
            self.oLabel.hidden = NO;
            self.labelOne.text = @"X";
            self.l1 = 1;
            self.playerOnePlaying = NO;
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
            self.labelTwo.text = @"X";
            self.l2 = 1;
            self.playerOnePlaying = NO;
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
            self.labelThree.text = @"X";
            self.l3 = 1;
            self.playerOnePlaying = NO;
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
            self.labelFour.text = @"X";
            self.l4 = 1;
            self.playerOnePlaying = NO;
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
            self.labelFive.text = @"X";
            self.l5 = 1;
            self.playerOnePlaying = NO;
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
            self.labelSix.text = @"X";
            self.l6 = 1;
            self.playerOnePlaying = NO;
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
            self.labelSeven.text = @"X";
            self.l7 = 1;
            self.playerOnePlaying = NO;
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
            self.labelEight.text = @"X";
            self.l8 = 1;
            self.playerOnePlaying = NO;
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
            self.labelNine.text = @"X";
            self.l9 = 1;
            self.playerOnePlaying = NO;
            [self.timer invalidate];
            [self startCountdown];
        }
    }
}


@end
