//
//  UIView+GradientBackground.m
//  VChat
//
//  Created by changcun on 29/08/2017.
//  Copyright © 2017 Beijing Xiaochang Technology Co., Ltd. All rights reserved.
//

#import "UIView+GradientBackground.h"
#import <objc/runtime.h>

@implementation CBGradientView
+ (Class)layerClass{return [CAGradientLayer class];}
@end

@interface UIView ()
@property (strong, nonatomic) CBGradientView *cb_gradientView;
@end

@implementation UIView (GradientBackground)

- (void)setCb_gradientView:(CBGradientView *)gradientView
{
    if (gradientView != self.cb_gradientView)
    {
        [self willChangeValueForKey:@"cb_gradientView"];
        objc_setAssociatedObject(self,
                                 @selector(cb_gradientView),
                                 gradientView,
                                 OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self didChangeValueForKey:@"cb_gradientView"];
    }
}

- (CBGradientView *)cb_gradientView
{
    return objc_getAssociatedObject(self, @selector(cb_gradientView));
}

- (void)cb_gradientBackgroundFromColor:(UIColor *)fromColor
                               toColor:(UIColor *)toColor
{
    [self cb_gradientBackgroundFromPoint:CGPointMake(0, 0)
                                 toPoint: CGPointMake(1, 1)
                               fromColor:fromColor
                                 toColor:toColor
                           useAutoLayout:YES];
}

- (void)cb_gradientBackgroundFromPoint:(CGPoint)fromPoint
                               toPoint:(CGPoint)toPoint
                             fromColor:(UIColor *)fromColor
                               toColor:(UIColor *)toColor
{
    [self cb_gradientBackgroundFromPoint:fromPoint
                                 toPoint:toPoint
                               fromColor:fromColor
                                 toColor:toColor
                           useAutoLayout:YES];
}

- (void)cb_gradientBackgroundFromPoint:(CGPoint)fromPoint
                               toPoint:(CGPoint)toPoint
                             fromColor:(UIColor *)fromColor
                               toColor:(UIColor *)toColor
                         useAutoLayout:(BOOL)useAutoLayout
{
    if (self.cb_gradientView.superview) {
        [self.cb_gradientView removeFromSuperview];
        self.cb_gradientView = nil;
    }
    
    CBGradientView *view = [CBGradientView new];
    view.userInteractionEnabled = NO;
    view.frame = self.bounds;
    
    self.cb_gradientView = view;
    
    CAGradientLayer *layer = (CAGradientLayer *)(self.cb_gradientView.layer);
    
    layer.colors = @[(__bridge id)fromColor.CGColor, (__bridge id)toColor.CGColor];
    layer.startPoint = fromPoint;
    layer.endPoint = toPoint;
    
    [self insertSubview:self.cb_gradientView atIndex:0];
    
    if (useAutoLayout) {
        
        [view setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        NSString *hVfl = @"H:|-m-[view]-m-|";
        NSString *vVfl = @"V:|-m-[view]-m-|";
        
        NSDictionary *views = NSDictionaryOfVariableBindings(view);
        NSDictionary *metrics = @{@"m":@0};
        
        NSLayoutFormatOptions ops = NSLayoutFormatAlignAllLeft | NSLayoutFormatAlignAllTop | NSLayoutFormatAlignAllBottom | NSLayoutFormatAlignAllRight;
        
        NSArray *hConstraints = [NSLayoutConstraint constraintsWithVisualFormat:hVfl options:ops metrics:metrics views:views];
        NSArray *vConstraints = [NSLayoutConstraint constraintsWithVisualFormat:vVfl options:kNilOptions metrics:metrics views:views];
        
        [self addConstraints:hConstraints];
        [self addConstraints:vConstraints];
    }
    
    if ([self isKindOfClass:[UIButton class]]) {
        [self bringSubviewToFront:((UIButton *)self).imageView];
    }
    
    if ([self isKindOfClass:[UIButton class]]) {
        [self bringSubviewToFront:((UIButton *)self).imageView];
    }
    
    [self setNeedsDisplay];
}

- (void)cb_removeGradientBackground
{
    [self.cb_gradientView removeFromSuperview];
}

@end
