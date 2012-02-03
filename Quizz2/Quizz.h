//
//  Quizz.h
//  Quizz
//
//  Created by Marco Guilmette on 12-01-30.
//  Copyright (c) 2012 Infologique, Systèmes Intégrés. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Categorie.h"

@interface Quizz : NSObject<NSCoding>
{
    NSString* Nom;
    NSMutableArray* ListCategorie;
    NSString* Description;
       
}

-(id)initWithNom:(NSString*)Nom;
-(id)initWithCoder:(NSCoder *)aDecoder;
-(void)encodeWithCoder:(NSCoder *)aCoder;


-(void) AddCategorie:(Categorie*) categorie;
-(NSString*) GetNom;
-(NSMutableArray*) GetCategorie;
-(NSString*) GetDescrip;

@end
