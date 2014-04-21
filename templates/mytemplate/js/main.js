//    hs.outlineType = 'rounded-white';
//    hs.wrapperClassName = 'draggable-header';
//    hs.showCredits = false;
//    
//    hs.align = 'center';
//	hs.transitions = ['expand', 'crossfade'];
//	hs.outlineType = 'rounded-white';
//	hs.fadeInOut = true;
//	hs.dimmingOpacity = 0.75;

	// define the restraining box
//	hs.useBox = true;
//	hs.width = 640;
//	hs.height = 480;

	// Add the controlbar
        hs.align = 'center';
	hs.transitions = ['expand', 'crossfade'];
	hs.fadeInOut = true;
	hs.dimmingOpacity = 0.8;
	hs.wrapperClassName = 'wide-border';
	hs.captionEval = 'this.a.title';
	hs.marginLeft = 100; // make room for the thumbstrip
	hs.marginBottom = 80 // make room for the controls and the floating caption
	hs.numberPosition = 'caption';
	hs.lang.number = '%1/%2';
	hs.showCredits = false;
        
	hs.addSlideshow({
		interval: 5000,
		repeat: false,
		useControls: true,
		overlayOptions: {
			className: 'text-controls',
			position: 'bottom center',
			relativeTo: 'viewport',
			offsetX: 50,
			offsetY: -5
		},
		thumbstrip: {
			position: 'middle left',
			mode: 'horizontal',
			relativeTo: 'viewport'
		}
	});
        
        // Ukrainian language strings
hs.lang = {
	cssDirection: 'ltr',
	loadingText: 'Завантаження...',
	loadingTitle: 'Натисніть для скасування',
	focusTitle: 'Натисніть щоб перемістити на передній план',
	fullExpandTitle: 'Розкрити до оригінального розміру',
	creditsText: 'Використовує <i>Highslide JS</i>',
	creditsTitle: 'Відвідати домашню сторінку Highslide JS',
	previousText: 'Попереднє',
	nextText: 'Наступне',
	moveText: 'Перемістити',
	closeText: 'Закрити',
	closeTitle: 'Закрити (esc)',
	resizeTitle: 'Змінити розмір',
	playText: 'Слайдшоу',
	playTitle: 'Почати слайдшоу (пробіл)',
	pauseText: 'Пауза',
	pauseTitle: 'Призупинити слайдшоу (пробіл)',
	previousTitle: 'Попереднє (стрілка ліворуч)',
	nextTitle: 'Наступне (стрілка праворуч)',
	moveTitle: 'Перемістити',
	fullExpandText: 'Оригінальний розмір',
	number: 'Зображення %1 з %2',
	restoreTitle: 'Настисніть кнопку мишеняти щоб закрити зображення, натисніть та перетягніть для зміни розташування. Для просмотру зображень користуйтеся стрілками.'
};