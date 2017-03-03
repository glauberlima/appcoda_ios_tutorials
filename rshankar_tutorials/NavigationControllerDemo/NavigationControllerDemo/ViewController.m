//
//  ViewController.m
//  NavigationControllerDemo
//
//  Created by Glauber Lima on 10/02/17.
//  Copyright © 2017 CI&T. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "Color.h"
#import "ColorViewController.h"

@interface ViewController ()
@end

@implementation ViewController

NSArray *_colorNames;
NSArray *_colorValues;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _colorNames = [Color getColorNames];
    _colorValues = [Color getColorValues];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [_colorNames count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString* colorName = (NSString*) _colorNames[indexPath.row];
    UIColor* colorValue = (UIColor*) _colorValues[indexPath.row];
    
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier"];
    
    cell.textLabel.text = colorName;
    cell.backgroundColor = colorValue;
    
    
    return cell;
    
    
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"ColorSegueId"]){
        
        UITableViewCell *cell = (UITableViewCell*)sender;
        
        
        
        ColorViewController *controller = (ColorViewController *)segue.destinationViewController;
        controller.view.backgroundColor = cell.backgroundColor;
    }
}


@end
