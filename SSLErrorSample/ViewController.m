//
//  ViewController.m
//  SSLErrorSample
//
//  Created by Ignacio Delgado on 8/2/21.
//

#import "ViewController.h"

#define URL_TO_TEST @"https://evolve.cipherhealth.com/api/orchid/sso_connections"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.retryButton addTarget:self action:@selector(testSSL) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self testSSL];
}

#pragma mark - Private methods

- (void)testSSL {
    self.resultLabel.text = nil;
    self.detailsTextView.text = nil;
    [self.spinnerView startAnimating];
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:URL_TO_TEST]] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.spinnerView stopAnimating];
            if (error) {
                self.resultLabel.textColor = UIColor.redColor;
                self.resultLabel.text = NSLocalizedString(@"FAILURE", nil);
                self.detailsTextView.text = error.localizedDescription;
            } else {
                self.resultLabel.textColor = UIColor.greenColor;
                self.resultLabel.text = NSLocalizedString(@"SUCCESS", nil);
                self.detailsTextView.text = [response description];
            }
        });
    }] resume];
}

@end
