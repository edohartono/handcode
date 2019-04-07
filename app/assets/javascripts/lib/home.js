var typed = new Typed (".element", {
	strings: ['Text 1', 'Welcome to Hand Code . . . .'],
	typeSpeed: 60,
	startDelay: 2500,
	cursorChar: '|'
});

var typed1 = new Typed (".typed-command-1", {
	strings: ['javascript show-welcome.js'],
	typeSpeed: 60,
	startDelay: 10,
	cursorChar: '|',
	onStringTyped: function() {
		$('.typed-command-1').siblings('.text-line-1 .typed-cursor').remove();
		$('.text-line-2').css('opacity', '1');
	}
});

var typed2 = new Typed (".typed-command-2", {
	strings: ['javascript print second-line.js'],
	typeSpeed: 60,
	startDelay: 10000,
	cursorChar: '|',
});

