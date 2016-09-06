(function($) {
	"use strict";
		var isOn = 0, sets, fx, toAnimate = "#effect", settings = {
			animation:8,
			animationType: "in",
			backwards: false,
			easing: "easeOutQuint",
			speed: 2500,
			sequenceDelay:100,
			startDelay: 0,
			offsetX: 100,
			offsetY: 50,
			onComplete: fireThis,
			restoreHTML: true
		};
		jQuery(document).ready(function() {
			fx = jQuery("#effect");
			jQuery.cjTextFx(settings);
			jQuery.cjTextFx.animate(toAnimate);
		});
			
		function fireThis() {
			if(isOn === 1) return;
				(isOn < 1) ? isOn++ : isOn = 0;
				
				switch(isOn) {
					case 1:
						sets = {animation: 8,animationType: "out", restoreHTML: false};
					break;
					
				}
			jQuery.cjTextFx.animate(toAnimate, sets);
		}

})(jQuery);