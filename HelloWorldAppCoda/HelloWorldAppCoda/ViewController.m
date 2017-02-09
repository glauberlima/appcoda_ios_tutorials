//
//  ViewController.m
//  HelloWorldAppCoda
//
//  Created by Glauber Lima on 09/02/17.
//  Copyright © 2017 CI&T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)showMessage:(id)sender {
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Hello World App" message:@"Hello World" delegate:nil cancelButtonTitle:@"Cancelar" otherButtonTitles:nil, nil];
    
    [alertView show];
    
}


@end
