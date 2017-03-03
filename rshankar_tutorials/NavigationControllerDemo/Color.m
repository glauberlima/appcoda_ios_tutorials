//
//  Color.m
//  NavigationControllerDemo
//
//  Created by Glauber Lima on 10/02/17.
//  Copyright © 2017 CI&T. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Color.h"

@implementation Color

+(NSArray *)getColorNames {
    
    NSArray *names = [[NSArray alloc] initWithObjects:@"Azul", @"Verde", @"Amarelo", nil];
    
    return names;
    
}

+(NSArray *)getColorValues {
    
    
    NSArray *colors = [[NSArray alloc] initWithObjects:[UIColor blueColor], [UIColor greenColor], [UIColor yellowColor], nil];
    
    return colors;
    
}


@end
