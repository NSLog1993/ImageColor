
#import "UIImage+BL_UIImageManager.h"

@implementation UIImage (BL_UIImageManager)

-(UIImage *)imageWithColor:(UIColor *)color{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    [color set];
    UIRectFill(CGRectMake(0, 0, self.size.width, self.size.height));
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height) blendMode:kCGBlendModeDestinationIn alpha:1];
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
    
+ (UIImage *)imageWithColor:(UIColor *)color {
    UIGraphicsBeginImageContext(CGSizeMake(1, 1));
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 1, 1)];
    [color set];
    [path fill];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
    
- (UIImage *)rs_disable {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    
    UIRectFill(CGRectMake(0, 0, self.size.width, self.size.height));
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height) blendMode:kCGBlendModeSourceIn alpha:0.3];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    return image;
}

@end
