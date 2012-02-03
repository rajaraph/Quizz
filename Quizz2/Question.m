//
//  Question.m
//  Quizz
//
//  Created by Marco Guilmette on 12-01-30.
//  Copyright (c) 2012 Infologique, Systèmes Intégrés. All rights reserved.
//

#import "Question.h"
@implementation Question


//Constructeur 
-(id) initQuestion: (NSString*) titre : (NSString*) quest: (NSString*) descript: (NSString*) rep1 : (NSString*) rep2 :(NSString*) rep3 : (NSString*) rep4 :(int) difficulte  {


 if(self=[super init])
 {
     Titre = titre;
     Description=descript;
     Questionn=quest;
     Difficulte=difficulte;
     Reponse1=rep1;
     Reponse2=rep2;
     Reponse3=rep3;
     Reponse4=rep4;
     
     
 }
    return self;

}

//Definit que la bonne reponse est la numero 1.
-(void)BonneRep1{
    Chkrep1=true;
    Chkrep2=false;
    Chkrep3=false;
    Chkrep4=false;
}
//Definit que la bonne reponse est la numero 2
-(void)BonneRep2{
    Chkrep1=false;
    Chkrep2=true;
    Chkrep3=false;
    Chkrep4=false;
}
//Definit que la bonne reponse est la numero 3
-(void)BonneRep3{
    Chkrep1=false;
    Chkrep2=false;
    Chkrep3=true;
    Chkrep4=false;
}
//Definit que la bonne reponse est la numero 4
-(void)BonneRep4{
    Chkrep1=false;
    Chkrep2=false;
    Chkrep3=false;
    Chkrep4=true;
}

//Retourne vrai ou faux en fonction de la reponse.
-(BOOL) CheckReponse : (int)IndexReponse{
    if(IndexReponse==1)
       {return Chkrep1 ;}
    else if(IndexReponse==2)
    {return Chkrep2 ;}
    else if(IndexReponse==3)
    {return Chkrep3 ;}
    else if(IndexReponse==4)
    {return Chkrep4;}

else
    return false;
    
}

//Retourne la bonne reponse
-(NSString*)ReturnBonneReponse{

    NSString* forrm=@"Reponse: ";
if(Chkrep1)
    return  [ forrm stringByAppendingFormat: Reponse1];
else if(Chkrep2)
    return [ forrm stringByAppendingFormat: Reponse2];

    
else if(Chkrep3)
    return[ forrm stringByAppendingFormat: Reponse3];

    
else if(Chkrep4)
    return[ forrm stringByAppendingFormat: Reponse4];

    
    else
        return @" ";
        

}
//Getters

-(NSString*) Titre{
    return Titre;
}
-(NSString*) Question{
    return Questionn;
}
-(NSString*) Descript{
    return Description;
}
-(int) Difficulte{
    return  Difficulte;
}

-(NSString*)reponse1{
    return Reponse1;
}
-(NSString*)reponse2{
    return Reponse2;
}
-(NSString*)reponnse3{
    return Reponse3;}
-(NSString*)reponse4{
    return Reponse4;
}


//Methode pour encode l'objet
-(void) encodeWithCoder:(NSCoder *)coder{
    
   
    [coder encodeObject:Titre forKey:@"titre"];
    [coder encodeObject:Questionn forKey:@"question"];
    [coder encodeObject:Description forKey:@"description"];
    [coder encodeInt:Difficulte forKey:@"difficulte"];
    [coder encodeObject:Reponse1 forKey:@"reponse1"];
    [coder encodeObject:Reponse2 forKey:@"reponse2"];
    [coder encodeObject:Reponse3 forKey:@"reponse3"];
    [coder encodeObject:Reponse4 forKey:@"reponse4"];
    [coder encodeBool:Chkrep1 forKey:@"checkrep1"];
    [coder encodeBool:Chkrep2 forKey:@"checkrep2"];
    [coder encodeBool:Chkrep3 forKey:@"checkrep3"];
    [coder encodeBool:Chkrep4 forKey:@"checkrep4"];

}
//Methode pour decoder l'objet.
-(id) initWithCoder:(NSCoder*) coder{
    self=[super init];
    
    if(self){
        Titre=[coder decodeObjectForKey:@"titre"];
        Questionn=[coder decodeObjectForKey:@"question"];
        Description=[coder decodeObjectForKey:@"description"];
        Difficulte=[coder decodeIntForKey: @"difficulte"];
        Reponse1=[coder decodeObjectForKey:@"reponse1"];
        Reponse2=[coder decodeObjectForKey:@"reponse2"];
        Reponse3=[coder decodeObjectForKey:@"reponse3"];
        Reponse4=[coder decodeObjectForKey:@"reponse4"];  
        Chkrep1=[coder decodeBoolForKey:@"checkrep1"];
        Chkrep2=[coder decodeBoolForKey:@"checkrep2"];
        Chkrep3=[coder decodeBoolForKey:@"checkrep3"];
        Chkrep4=[coder decodeBoolForKey:@"checkrep4"];
    }
    return self;
}


@end
