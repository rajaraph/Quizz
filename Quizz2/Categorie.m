//
//  Categorie.m
//  Quizz
//
//  Created by Marco Guilmette on 12-01-30.
//  Copyright (c) 2012 Infologique, Systèmes Intégrés. All rights reserved.
//

#import "Categorie.h"

@implementation Categorie
-(id) initWithNom : (NSString*) nom{
    self=[super init];
    
    if(self)
    {
        Nom=nom;
        ListQuestion=[[NSMutableArray alloc] init];
    }
    return self;
}
-(id) initWithCoder:(NSCoder *)aDecoder{
    self=[super init];
    
    if(self){
        Nom=[aDecoder decodeObjectForKey:@"nom"];
        ListQuestion=[aDecoder decodeObjectForKey:@"listeq"];
    }
    return self;
}
-(void) encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:Nom forKey:@"nom"];
    [aCoder encodeObject:ListQuestion forKey:@"listeq"];
}

-(void) AddQuestion:(NSArray*)listq{

    [ListQuestion addObjectsFromArray:listq];
}

-(NSString*) GetNom{
    return Nom;
}
-(NSMutableArray*) GetList{
    return ListQuestion;
}@end
