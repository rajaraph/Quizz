//
//  Question.h
//  Quizz
//
//  Created by Marco Guilmette on 12-01-30.
//  Copyright (c) 2012 Infologique, Systèmes Intégrés. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject <NSCoding>
{
    //Attributs de chaque questions
    NSString* Titre;
    NSString* Questionn;
    NSString* Description;
    //Reponse possible
    NSString* Reponse1;
    NSString* Reponse2;
    NSString* Reponse3;
    NSString* Reponse4;
    
    int Difficulte;
    
    //Valeur booleennes pour determiner quelle est la bonne reponse
    bool Chkrep1;
    bool Chkrep2;
    bool Chkrep3;
    bool Chkrep4;
    
}
//Constructeur
-(id) initQuestion: (NSString*) titre : (NSString*) quest: (NSString*) descript: (NSString*) rep1: (NSString*) rep2 :(NSString*) rep3 : (NSString*) rep4 :(int) difficulte  ;

//Mutateur pour determiner quelle est la bonne reponse
-(void)BonneRep1;
-(void)BonneRep2;
-(void)BonneRep3;
-(void)BonneRep4;

//Methode pour determiner si la reponse choisi est la bonne.
-(BOOL) CheckReponse : (int) Reponse;
//Methode pour returner la bonne reponse
-(NSString*)ReturnBonneReponse;


//Getter des attributs 
-(NSString*) Titre;
-(NSString*) Question;
-(NSString*) Descript;
-(int) Difficulte;

//Getter pour les reponses
-(NSString*)reponse1;
-(NSString*)reponse2;
-(NSString*)reponnse3;
-(NSString*)reponse4;

//Implementation du protcole NSCoding pour la serialisation
-(void) encodeWithCoder:(NSCoder *)aCoder;
-(id) initWithCoder:(NSCoder *)aDecoder;



   


@end
