//
//  ViewController.m
//  Sample
//
//  Created by Marco Fraccaroli on 16/07/2020.
//  Copyright © 2020 Next 14. All rights reserved.
//

#import "ViewController.h"
#import <Next14CMP/Next14CMP.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
    [CMP.shared startWithApiKey:@"CADD2B2AD06D8A0CAEE658E3C05E615A" settings:[[CMPSettings alloc] init] onComplete:^(BOOL success, NSError * _Nullable error) {
        if (CMP.shared.shouldPresentCMP) {
            [CMP.shared presentFrom:self gdprApplies:YES onComplete:^{

            }];
        }
    }];
}

- (IBAction)openCMP:(id)sender {
    [CMP.shared presentFrom:self gdprApplies:YES onComplete:^{

    }];
}

@end
