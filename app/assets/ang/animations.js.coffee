app = angular.module('esmAnimations', ['ngAnimate'])

# app.animation '.modal-container', ->
# 	beforeAddClass: (element, className, done) ->
# 		if className is 'ng-hide'
# 			jQuery(element).velocity({
# 				opacity: 0;
# 			}, done)
# 		else
# 			done()
# 	removeClass: (element, className, done) ->
# 		if className is 'ng-hide'
# 			element.css('opacity', 0)
# 			jQuery(element).velocity({
# 				opacity: 1;
# 			}, done)
# 		else
# 			done()