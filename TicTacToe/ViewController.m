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


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)findLabelUsingPoint:(CGPoint)point sendInLabel:(UILabel *)label whichPlayer:(BOOL)player
{
    if (CGRectContainsRect(self.labelOne.frame, label.frame))
    {
        if (player && self.l1 == 0)
        {
            self.labelOne.text = @"X";
            self.l1 = 1;
        }

        if (!player && self.l1 == 0)
        {
            self.labelOne.text = @"O";
            self.l1 = 2;
        }
    }

    if (CGRectContainsRect(self.labelTwo.frame, label.frame))
    {
        if (player && self.l2 == 0)
        {
            self.labelTwo.text = @"X";
            self.l2 = 1;
        }

        if (!player && self.l2 == 0)
        {
            self.labelTwo.text = @"O";
            self.l2 = 2;
        }
    }

    if (CGRectContainsRect(self.labelThree.frame, label.frame))
    {
        if (player && self.l3 == 0)
        {
            self.labelThree.text = @"X";
            self.l3 = 1;
        }

        if (!player && self.l3 == 0)
        {
            self.labelThree.text = @"O";
            self.l3 = 2;
        }
    }

    if (CGRectContainsRect(self.labelFour.frame, label.frame))
    {
        if (player && self.l4 == 0)
        {
            self.labelFour.text = @"X";
            self.l4 = 1;
        }

        if (!player && self.l4 == 0)
        {
            self.labelFour.text = @"O";
            self.l4 = 2;
        }
    }

    if (CGRectContainsRect(self.labelFive.frame, label.frame))
    {
        if (player && self.l5 == 0)
        {
            self.labelFive.text = @"X";
            self.l5 = 1;
        }

        if (!player && self.l5 == 0)
        {
            self.labelFive.text = @"O";
            self.l5 = 2;
        }
    }

    if (CGRectContainsRect(self.labelSix.frame, label.frame))
    {
        if (player && self.l6 == 0)
        {
            self.labelSix.text = @"X";
            self.l6 = 1;
        }

        if (!player && self.l5 == 0)
        {
            self.labelSix.text = @"O";
            self.l6 = 2;
        }
    }

    if (CGRectContainsRect(self.labelSeven.frame, label.frame))
    {
        if (player && self.l7 == 0)
        {
            self.labelSeven.text = @"X";
            self.l7 = 1;
        }

        if (!player && self.l7 == 0)
        {
            self.labelSeven.text = @"O";
            self.l7 = 2;
        }
    }

    if (CGRectContainsRect(self.labelEight.frame, label.frame))
    {
        if (player && self.l8 == 0)
        {
            self.labelEight.text = @"X";
            self.l8 = 1;
        }

        if (!player && self.l8 == 0)
        {
            self.labelEight.text = @"O";
            self.l8 = 2;
        }
    }

    if (CGRectContainsRect(self.labelNine.frame, label.frame))
    {
        if (player && self.l9 == 0)
        {
            self.labelNine.text = @"X";
            self.l9 = 1;
        }

        if (!player && self.l9 == 0)
        {
            self.labelNine.text = @"O";
            self.l9 = 2;
        }
    }



}

- (BOOL)whoWon
{
    if (self.l1 == self.l2 == self.l3)
    {
        return true;
    }
    else if (self.l4 == self.l5 == self.l6)
    {
        return true;
    }
    else if (self.l7 == self.l8 == self.l9)
    {
        return true;
    }
    else if (self.l1 == self.l4 == self.l7)
    {
        return true;
    }
    else if (self.l2 == self.l5 == self.l8)
    {
        return true;
    }
    else if (self.l3 == self.l6 == self.l9)
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

    while ([self playerOneIsPlaying])
    {
        self.oLabel.hidden = YES;
        self.xLabel.hidden = NO;
        self.xLabel.center = touchPoint;
    }

    while (![self playerOneIsPlaying])
    {
        self.xLabel.hidden = YES;
        self.oLabel.hidden = NO;
        self.oLabel.center = touchPoint;
    }


}



- (BOOL)playerOneIsPlaying
{
    if ([self.whichPlayerLabel.text isEqualToString:@"Player X"])
    {
        return true;
    }
    else
    {
        return false;
    }
}

@end
