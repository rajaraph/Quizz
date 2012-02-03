//
//  ViewController.h
//  Quizz2
//
//  Created by Marco Guilmette on 12-02-02.
//  Copyright (c) 2012 Infologique, Systèmes Intégrés. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quizz.h"

@interface ViewController : UIViewController 
{
    Quizz* quuizz;
    Categorie* cat;
    Question* ques;
    NSUInteger IndexCategorie;
    int difficult;
    int maxQuestion;
    NSTimer* timer;
    double timerprogress;
    int count;
    int IndexRep;

}
@property (strong, nonatomic) IBOutlet UIView *QuestionView;

@property (weak, nonatomic) IBOutlet UILabel *LbQuestion;

@property (weak, nonatomic) IBOutlet UILabel *LbCheck;

@property (weak, nonatomic) IBOutlet UIButton *Reponse1;
- (IBAction)BtReponse1:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *Reponse2;
- (IBAction)BtReponse2:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *Reponse3;
- (IBAction)BtReponse3:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *Reponse4;
- (IBAction)BtReponse4:(id)sender;


@property (weak, nonatomic) IBOutlet UIProgressView *ProgressView;


@property (weak, nonatomic) IBOutlet UIButton *Reponse;
- (IBAction)BtReponse:(id)sender;


@property (strong, nonatomic) IBOutlet UIView *AcceuiView;

- (IBAction)BtGoQuizz:(id)sender;

- (IBAction)BtDifficulte:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *Difficulte;


@property (weak, nonatomic) IBOutlet UITableViewCell *ListeCategorie;


-(void)NewQuest: (int)difficulte;
-(void) DebutQuizz;
-(void)Next;
-(Boolean) FinQuizz;
-(void)IncreaseTime;
-(void)FinQuestion:(int) IndexReponse;

@end
