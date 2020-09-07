#import	<UIKit/UIKit.h>

@interface DCDChatInput : UITextView
-(void)didEndEditing:(NSNotification *)arg1;
@end


%hook DCDChatInput

-(void)didEndEditing:(NSNotification *)arg1 {
	self.text = [self.text stringByReplacingOccurrencesOfString:@"alderis" withString:@"another color picker"];
	%orig;
}

%end