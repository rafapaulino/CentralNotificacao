//
//  Temporizador.m
//  CentralNotificacao
//
//  Created by Rafael Brigagão Paulino on 24/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "Temporizador.h"

@interface Temporizador()
@end

@implementation Temporizador


-(void)iniciarTimer{
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(tempoAcabou) userInfo:nil repeats:NO];
}

//meotodo chamado quando o timer dispara apos 5 segundos
-(void)tempoAcabou
{
    //post notification
    [[NSNotificationCenter defaultCenter] postNotificationName:@"tempoAcabou" object:nil];
    
}

@end
