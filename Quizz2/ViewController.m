//
//  ViewController.m
//  Quizz2
//
//  Created by Marco Guilmette on 12-02-02.
//  Copyright (c) 2012 Infologique, Systèmes Intégrés. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize Difficulte;
@synthesize ListeCategorie;
@synthesize AcceuiView;
@synthesize ProgressView;
@synthesize Reponse;
@synthesize Reponse4;
@synthesize Reponse3;
@synthesize Reponse2;
@synthesize QuestionView;
@synthesize LbQuestion;
@synthesize LbCheck;
@synthesize Reponse1;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ListeCategorie.textLabel.text=@"Test";
    difficult=1;
    
    /*
    ques=[[Question alloc] initQuestion:@"Titre" :@"What?" :@"QtEST" :@"Reponse1" :@"Reponse2" :@"Reponse3" :@"Reponse4":1];
    [ques BonneRep1];
    
    Question* quest1=[[Question alloc] initQuestion:@"Question1" :@"Qui a fait ca?":@"C'es qui" :@"Toi" :@"Moi" :@"Nous" :@"Vous" :1];
    [quest1 BonneRep2];
    
    Question* quest2=[[Question alloc] initQuestion:@"Question2" :@"Qu'est ce qu'il se passe?":@"C'es quoi" :@"Rien" :@"Ca" :@"Des choses" :@"Bah" :1];
    [quest2 BonneRep3];    
    
    Question* quest3=[[Question alloc] initQuestion:@"Question3" :@"Quand vourais-tu?":@"La" :@"Maintenant" :@"Demain" :@"Je sais pas" :@"Bah" :1];
    [quest3 BonneRep4];    

    
    Question* quest5=[[Question alloc] initQuestion:@"Question5" :@"Qu'avez vous a declarer?":@"Hien" :@"Pierre" :@"CFeuille" :@"Ciseaux" :@"Cochon" :1];
    [quest5 BonneRep2];
    
    NSMutableArray* listq=[[NSMutableArray alloc] initWithObjects:ques,quest1,quest2,quest3,quest5, nil];
    Categorie* Categorie1=[[Categorie alloc] initWithNom:@"Categorie1"];
    [Categorie1 AddQuestion:listq];
    
    
    Quizz* quizz=[[Quizz alloc] initWithNom:@"MyQuizz"];
    [quizz AddCategorie:Categorie1];
    
    if(![NSKeyedArchiver archiveRootObject:quizz toFile:@"Quizz1.Quizz"]){
       
    }
     */
   quuizz=[NSKeyedUnarchiver unarchiveObjectWithFile:@"Quizz1.Quizz"];
    
    
    

}

- (void)viewDidUnload
{
    [self setQuestionView:nil];
    [self setLbQuestion:nil];
    [self setLbCheck:nil];
    [self setReponse1:nil];
    [self setReponse2:nil];
    [self setReponse3:nil];
    [self setReponse4:nil];
    [self setProgressView:nil];
    [self setReponse:nil];
    [self setAcceuiView:nil];
    [self setDifficulte:nil];
    [self setListeCategorie:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)BtReponse1:(id)sender {
    timerprogress=0.81;
    IndexRep=1;
   
}
- (IBAction)BtReponse2:(id)sender {
    timerprogress=0.81;
    IndexRep=2;
    }
- (IBAction)BtReponse3:(id)sender {
    timerprogress=0.81;
    IndexRep=3;
   }
- (IBAction)BtReponse4:(id)sender {
    timerprogress=0.81;
    IndexRep=4;
    }
- (IBAction)BtReponse:(id)sender {
   if(timerprogress<0.80)
   {
    timerprogress=0.81;
    IndexRep=0;
   }
    else
        [self Next];
}

- (IBAction)BtGoQuizz:(id)sender {
    [self DebutQuizz];
    self.view=QuestionView;
    
       
}

- (IBAction)BtDifficulte:(id)sender {
}

-(void) NewQuest:(int)difficulte{
    
    
    NSMutableArray* listCat=[quuizz GetCategorie ];
   // NSUInteger i=arc4random() %[listCat count];
    
    Categorie* CurrentCat=[listCat objectAtIndex:0];
    //NSUInteger y=arc4random() % [listq count];
    NSMutableArray *listq=[CurrentCat GetList];
    
    Question* quesReturn=[listq objectAtIndex:0];
    
    while([quesReturn Difficulte] !=difficulte){
        
       // y=arc4random() % [listq count];
        quesReturn=[listq objectAtIndex:0];
    }
    
    ques=quesReturn;
     
    Reponse1.enabled=YES;
    Reponse2.enabled=YES;
    Reponse3.enabled=YES;
    Reponse4.enabled=YES;
    
    LbQuestion.text=[ques Question];
    timerprogress=0;
    LbCheck.text=@"";
    [Reponse1 setTitle:[ques reponse1] forState:UIControlStateNormal];
    [Reponse2 setTitle:[ques reponse2] forState:UIControlStateNormal];
    [Reponse3 setTitle:[ques reponnse3] forState:UIControlStateNormal];
    [Reponse4 setTitle:[ques reponse4] forState:UIControlStateNormal];
    IndexRep=0;
    timer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(IncreaseTime) userInfo:nil repeats:YES];
    
    
}
-(void) DebutQuizz{
    count=0;
    maxQuestion=2;
    [self Next];
}

-(void)Next{
    if(![self FinQuizz])
    {
     count++;
     [self NewQuest:difficult];

    } 

}
-(Boolean) FinQuizz;{
    return count==maxQuestion;
}
-(void)IncreaseTime{
    timerprogress=timerprogress+0.004;
    if(timerprogress==1){
        [self Next];
        
    }
    else if(timerprogress>=0.8 && timerprogress<1){
        
        [self FinQuestion:IndexRep];
        
        Reponse1.enabled=NO;
        Reponse2.enabled=NO;
        Reponse3.enabled=NO;
        Reponse4.enabled=NO;
        
        
    }
    
    ProgressView.progress=timerprogress;

}

-(void)FinQuestion:(int) IndexReponse{
    
    switch (IndexReponse) {
        case 0:
            LbCheck.text=[ques ReturnBonneReponse];
            break;
            
        case 1:
            if ([ques CheckReponse:1]) {
                LbCheck.text=@"Bonne Reponse.";
            }
            else
            {LbCheck.text=[ques ReturnBonneReponse];}
            break;
            
        case 2:
            if ([ques CheckReponse:2]) {
                LbCheck.text=@"Bonne Reponse.";
            }
            else
            {LbCheck.text=[ques ReturnBonneReponse];}
            break;
            
        case 3:
            if ([ques CheckReponse:1]) {
                LbCheck.text=@"Bonne Reponse.";
            }
            else
            {LbCheck.text=[ques ReturnBonneReponse];}
            break;
            
        case 4:
            if ([ques CheckReponse:1]) {
                LbCheck.text=@"Bonne Reponse.";
            }
            else
            {LbCheck.text=[ques ReturnBonneReponse];}
            break;
            
            
            
            
            
        default:
            break;
    }


}



@end
