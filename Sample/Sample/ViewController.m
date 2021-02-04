//
//  ViewController.m
//  Sample
//
//  Created by Marco Fraccaroli on 16/07/2020.
//  Copyright © 2020 Next 14. All rights reserved.
//

#import "ViewController.h"

@import Next14CMP;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
    if (CMP.shared.shouldPresentCMP) {
        [CMP.shared presentCMPFromPresentingViewController:self apiKey:@"CADD2B2AD06D8A0CAEE658E3C05E615A" gdprApplies:YES];
    }
}

- (IBAction)openCMP:(id)sender {
    [CMP.shared presentCMPFromPresentingViewController:self apiKey:@"CADD2B2AD06D8A0CAEE658E3C05E615A" gdprApplies:YES];
}

@end
