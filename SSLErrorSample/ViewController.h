//
//  ViewController.h
//  SSLErrorSample
//
//  Created by Ignacio Delgado on 8/2/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic, weak) IBOutlet UILabel *resultLabel;
@property(nonatomic, weak) IBOutlet UITextView *detailsTextView;
@property(nonatomic, weak) IBOutlet UIButton *retryButton;
@property(nonatomic, weak) IBOutlet UIActivityIndicatorView *spinnerView;
@end

