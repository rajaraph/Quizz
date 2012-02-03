//
//  Categorie.h
//  Quizz
//
//  Created by Marco Guilmette on 12-01-30.
//  Copyright (c) 2012 Infologique, Systèmes Intégrés. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
//Objet Categorie qui contient une liste de question portant sur le meme sujet
@interface Categorie : NSObject <NSCoding>

{
    NSString* Nom;
    NSMutableArray* ListQuestion;
    
}
-(id) initWithNom : (NSString*) Nom;
-(id) initWithCoder:(NSCoder *)aDecoder;
-(void) encodeWithCoder:(NSCoder *)aCoder;

-(void) AddQuestion:(NSArray*)listq;
-(NSString*) GetNom;
-(NSMutableArray*) GetList;

@end
