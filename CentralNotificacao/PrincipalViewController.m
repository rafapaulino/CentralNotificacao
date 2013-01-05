//
//  PrincipalViewController.m
//  CentralNotificacao
//
//  Created by Rafael Brigagão Paulino on 24/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()
{
    Temporizador *meuTemp;
}
@end

@implementation PrincipalViewController

-(IBAction)botaoClicado:(id)sender {
    
    //cadastrar como observador para notificacoes geradas pelo temporizador
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(mudarCorFundo:) name:@"tempoAcabou" object:nil];
    
    //inicio do pocesso
    [meuTemp iniciarTimer];
}

//todo metodo disparado por uma notificacao deve ter como parametro um nsnotification
-(void)mudarCorFundo:(NSNotification*)notificacao
{
    self.view.backgroundColor = [UIColor greenColor];
    
    //me descadastro da central de notificacoes
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"tempoAcabou" object:nil];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    meuTemp = [[Temporizador alloc] init];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
