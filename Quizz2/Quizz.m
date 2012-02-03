//
//  Quizz.m
//  Quizz
//
//  Created by Marco Guilmette on 12-01-30.
//  Copyright (c) 2012 Infologique, Systèmes Intégrés. All rights reserved.
//

#import "Quizz.h"

@implementation Quizz

-(id) initWithNom:(NSString *)nom{

    if(self=[super init]){
        Nom=nom;
        ListCategorie=[[NSMutableArray alloc] init];
    
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    
    if(self=[super init]){
    
        Nom=[ aDecoder decodeObjectForKey:@"nom"];
        ListCategorie=[aDecoder decodeObjectForKey:@"listcat"];
        Description=[aDecoder decodeObjectForKey:@"descript"];
    
    }
    return self;
    
    
}
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:Nom forKey:@"nom"];
    [aCoder encodeObject:ListCategorie forKey:@"listcat"];
    [aCoder encodeObject:Description forKey:@"descript"];
}

-(NSString*) GetNom
{return Nom;}
-(NSMutableArray*) GetCategorie
{return ListCategorie;}
-(NSString*) GetDescrip
{return Description;}

-(void) AddCategorie:(Categorie*) categorie{
    [ListCategorie addObject:categorie];
}


@end
