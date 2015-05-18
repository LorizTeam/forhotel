$(document).ready(function(){
	/* This code is executed after the DOM has been completely loaded */
	
	var totWidth=0;
	var positions = new Array();
	
	$('#slides .slide').each(function(i){
		
		/* Traverse through all the slides and store their accumulative widths in totWidth */
		
		positions[i]= totWidth;
		totWidth += $(this).width();
		
		/* The positions array contains each slide's commulutative offset from the left part of the container */
		
		if(!$(this).width())
		{
			alert("Please, fill in width & height for all your images!");
			return false;
		}
		
	});
	
	$('#slides').width(totWidth);

	/* Change the cotnainer div's width to the exact width of all the slides combined */

	$('#menu ul li a').click(function(e,keepScroll){

			/* On a thumbnail click */

			$('li.menuItem').removeClass('act').addClass('inact');
			$(this).parent().addClass('act');
			
			var pos = $(this).parent().prevAll('.menuItem').length;
			
			$('#slides').stop().animate({marginLeft:-positions[pos]+'px'},450);
			/* Start the sliding animation */
			
			e.preventDefault();
			/* Prevent the default action of the link */
			
			
			// Stopping the auto-advance if an icon has been clicked:
			if(!keepScroll) clearInterval(itvl);
	});
	
	$('#menu ul li.menuItem:first').addClass('act').siblings().addClass('inact');
	/* On page load, mark the first thumbnail as active */
	
	
	
	/*****
	 *
	 *	Enabling auto-advance.
	 *
	 ****/
	 
	var current=1;
	function autoAdvance()
	{
		if(current==-1) return false;
		
		$('#menu ul li a').eq(current%$('#menu ul li a').length).trigger('click',[true]);	// [true] will be passed as the keepScroll parameter of the click function on line 28
		current++;
	}

	// The number of seconds that the slider will auto-advance in:
	
	var changeEvery = 7;

	var itvl = setInterval(function(){autoAdvance()},changeEvery*1000);

	/* End of customizations */
	
	
		var _unavailable = [];
		 var _onrequest = [];
		  _unavailable.push('2014-10-23');
		  _unavailable.push('2014-10-24');
		  _unavailable.push('2014-10-25');
		  _unavailable.push('2014-10-26');
		  _unavailable.push('2014-10-27');
		  _unavailable.push('2014-10-28');
		  _unavailable.push('2014-10-29');
		  _unavailable.push('2014-10-30');
		  _unavailable.push('2014-10-31');
		  _unavailable.push('2015-03-03');
		  _unavailable.push('2015-03-04');
		  _unavailable.push('2015-03-05');
		  _unavailable.push('2015-03-06');
		  _unavailable.push('2014-09-04');
		  _unavailable.push('2014-09-05');
		  _unavailable.push('2014-09-06');
		  _unavailable.push('2014-09-07');
		  _unavailable.push('2014-09-08');
		  _unavailable.push('2014-09-09');
		  _unavailable.push('2014-09-10');
		  _unavailable.push('2014-09-11');
		  _unavailable.push('2014-09-12');
		  _unavailable.push('2014-09-13');
		  _unavailable.push('2014-09-16');
		  _unavailable.push('2014-09-17');
		  _unavailable.push('2014-09-18');
		  _unavailable.push('2014-09-19');
		  _unavailable.push('2014-09-20');
		  _unavailable.push('2014-09-21');
		  _unavailable.push('2014-08-22');
		  _unavailable.push('2014-08-23');
		  _unavailable.push('2014-08-24');
		  _unavailable.push('2014-07-01');
		  _unavailable.push('2014-07-02');
		  _unavailable.push('2014-07-03');
		  _unavailable.push('2014-07-04');
		  _unavailable.push('2014-07-05');
		  _unavailable.push('2014-07-06');
		  _unavailable.push('2014-07-07');
		  _unavailable.push('2014-07-08');
		  _unavailable.push('2014-07-09');
		  _unavailable.push('2014-07-10');
		  _unavailable.push('2014-07-11');
		  _unavailable.push('2014-07-12');
		  _unavailable.push('2014-07-13');
		  _unavailable.push('2014-07-14');
		  _unavailable.push('2014-07-15');
		  _unavailable.push('2014-07-16');
		  _unavailable.push('2014-07-17');
		  _unavailable.push('2014-07-18');
		  _unavailable.push('2014-07-19');
		  _unavailable.push('2014-07-20');
		  _unavailable.push('2014-07-21');
		  _unavailable.push('2014-07-22');
		  _unavailable.push('2014-07-23');
		  _unavailable.push('2014-07-24');
		  _unavailable.push('2014-07-25');
		  _unavailable.push('2014-07-26');
		  _unavailable.push('2014-07-27');
		  _unavailable.push('2014-07-28');
		  _unavailable.push('2014-07-29');
		  _unavailable.push('2014-07-30');
		  _unavailable.push('2014-07-31');
		  _unavailable.push('2014-08-01');
		  _unavailable.push('2014-08-02');
		  _unavailable.push('2014-08-03');
		  _unavailable.push('2014-08-04');
		  _unavailable.push('2014-08-05');
		  _unavailable.push('2014-08-06');
		  _unavailable.push('2014-08-07');
		  _unavailable.push('2014-08-08');
		  _unavailable.push('2014-08-09');
		  _unavailable.push('2014-08-10');
		  _unavailable.push('2014-08-11');
		  _unavailable.push('2014-08-12');
		  _unavailable.push('2014-08-13');
		  _unavailable.push('2014-08-14');
		  _unavailable.push('2014-08-15');
		  _unavailable.push('2014-08-16');
		  _unavailable.push('2014-08-17');
		  _unavailable.push('2014-08-18');
		  _unavailable.push('2014-08-19');
		  _unavailable.push('2014-08-20');
		  _unavailable.push('2014-08-21');
		  _unavailable.push('2014-12-30');
		  _unavailable.push('2014-12-31');
		  _unavailable.push('2015-01-01');
		  _unavailable.push('2015-01-02');
		  _unavailable.push('2015-01-03');
		  _unavailable.push('2015-01-25');
		  _unavailable.push('2015-01-26');
		  _unavailable.push('2015-01-27');
		  _unavailable.push('2015-01-28');
		  _unavailable.push('2015-01-29');
		  _unavailable.push('2015-01-30');
		  _unavailable.push('2015-01-31');
		  _unavailable.push('2015-02-01');
		  _unavailable.push('2015-02-02');
		  _unavailable.push('2015-02-03');
		  _unavailable.push('2014-08-25');
		  _unavailable.push('2014-08-26');
		  _unavailable.push('2014-08-27');
		
		
		var dp = new VF_datepicker();
		dp.datepicker({
			'name': 'form1',
			'start': null,
			'end': null,
			'monthNames': ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
			'dayNames': ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
			'startCtrl': $('#fromDisplay'),
			'endCtrl': $('#toDisplay'),
			'startDisplay': $('#fromDisplay'),
			'endDisplay': $('#toDisplay'),
			'startInput': $('#fromInput'),
			'endInput': $('#toInput'),
			'startDP': $('#startDP'),
			'endDP': $('#endDP'),
			'clearTxt': 'Clear dates',
			'unavailable': _unavailable,
			'onrequest': _onrequest,
			'displayFrom': function(from, to){
				console.log(['from display', from, to]);
			},
			'displayTo': function(from, to){
				console.log(['to display', from, to]);
			},
			'fromChosen': function(from, to){
				console.log(['from chosen', from, to]);
			},
			'toChosen': function(from, to){
				console.log(['to chosen', from, to]);
			},
			'hideFrom': function(from, to){
				console.log(['from hide', from, to]);
			},
			'hideTo': function(from, to){
				console.log(['to hide', from, to]);
			},
			'positions': ['left', 'right']
		});
		
		var dp2 = new VF_datepicker();
		dp2.datepicker({
			'name': 'form2',
			'start': null,
			'end': null,
			'monthNames': ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
			'dayNames': ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
			'startCtrl': $('#fromDisplay2'),
			'endCtrl': $('#toDisplay2'),
			'startDisplay': $('#fromDisplay2'),
			'endDisplay': $('#toDisplay2'),
			'startInput': $('#fromInput2'),
			'endInput': $('#toInput2'),
			'startDP': $('#startDP2'),
			'endDP': $('#endDP2'),
			'clearTxt': 'Clear dates',
			'unavailable': _unavailable,
			'onrequest': _onrequest,
			'displayFrom': function(from, to){
				console.log(['from display2', from, to]);
			},
			'displayTo': function(from, to){
				console.log(['to display2', from, to]);
			},
			'fromChosen': function(from, to){
				console.log(['from chosen2', from, to]);
			},
			'toChosen': function(from, to){
				console.log(['to chosen2', from, to]);
			},
			'hideFrom': function(from, to){
				console.log(['from hide2', from, to]);
			},
			'hideTo': function(from, to){
				console.log(['to hide2', from, to]);
			},
			'positions': ['left', 'right']
		});
		var dp3 = new VF_datepicker();
		dp3.datepicker({
			'name': 'form3',
			'start': null,
			'end': null,
			'monthNames': ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
			'dayNames': ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
			'startCtrl': $('#fromDisplay3'),
			'endCtrl': $('#toDisplay3'),
			'startDisplay': $('#fromDisplay3'),
			'endDisplay': $('#toDisplay3'),
			'startInput': $('#fromInput3'),
			'endInput': $('#toInput3'),
			'startDP': $('#startDP3'),
			'endDP': $('#endDP3'),
			'clearTxt': 'Clear dates',
			'unavailable': _unavailable,
			'onrequest': _onrequest,
			'displayFrom': function(from, to){
				console.log(['from display2', from, to]);
			},
			'displayTo': function(from, to){
				console.log(['to display2', from, to]);
			},
			'fromChosen': function(from, to){
				console.log(['from chosen2', from, to]);
			},
			'toChosen': function(from, to){
				console.log(['to chosen2', from, to]);
			},
			'hideFrom': function(from, to){
				console.log(['from hide2', from, to]);
			},
			'hideTo': function(from, to){
				console.log(['to hide2', from, to]);
			},
			'positions': ['left', 'right']
		});
		var dp4 = new VF_datepicker();
		dp4.datepicker({
			'name': 'form4',
			'start': null,
			'end': null,
			'monthNames': ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
			'dayNames': ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
			'startCtrl': $('#fromDisplay4'),
			'endCtrl': $('#toDisplay4'),
			'startDisplay': $('#fromDisplay4'),
			'endDisplay': $('#toDisplay4'),
			'startInput': $('#fromInput4'),
			'endInput': $('#toInput4'),
			'startDP': $('#startDP4'),
			'endDP': $('#endDP4'),
			'clearTxt': 'Clear dates',
			'unavailable': _unavailable,
			'onrequest': _onrequest,
			'displayFrom': function(from, to){
				console.log(['from display2', from, to]);
			},
			'displayTo': function(from, to){
				console.log(['to display2', from, to]);
			},
			'fromChosen': function(from, to){
				console.log(['from chosen2', from, to]);
			},
			'toChosen': function(from, to){
				console.log(['to chosen2', from, to]);
			},
			'hideFrom': function(from, to){
				console.log(['from hide2', from, to]);
			},
			'hideTo': function(from, to){
				console.log(['to hide2', from, to]);
			},
			'positions': ['left', 'right']
		});
		var dp5 = new VF_datepicker();
		dp5.datepicker({
			'name': 'form5',
			'start': null,
			'end': null,
			'monthNames': ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
			'dayNames': ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
			'startCtrl': $('#fromDisplay5'),
			'endCtrl': $('#toDisplay5'),
			'startDisplay': $('#fromDisplay5'),
			'endDisplay': $('#toDisplay5'),
			'startInput': $('#fromInput5'),
			'endInput': $('#toInput5'),
			'startDP': $('#startDP5'),
			'endDP': $('#endDP5'),
			'clearTxt': 'Clear dates',
			'unavailable': _unavailable,
			'onrequest': _onrequest,
			'displayFrom': function(from, to){
				console.log(['from display2', from, to]);
			},
			'displayTo': function(from, to){
				console.log(['to display2', from, to]);
			},
			'fromChosen': function(from, to){
				console.log(['from chosen2', from, to]);
			},
			'toChosen': function(from, to){
				console.log(['to chosen2', from, to]);
			},
			'hideFrom': function(from, to){
				console.log(['from hide2', from, to]);
			},
			'hideTo': function(from, to){
				console.log(['to hide2', from, to]);
			},
			'positions': ['left', 'right']
		});
		var dp6 = new VF_datepicker();
		dp6.datepicker({
			'name': 'form6',
			'start': null,
			'end': null,
			'monthNames': ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
			'dayNames': ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
			'startCtrl': $('#fromDisplay6'),
			'endCtrl': $('#toDisplay6'),
			'startDisplay': $('#fromDisplay6'),
			'endDisplay': $('#toDisplay6'),
			'startInput': $('#fromInput6'),
			'endInput': $('#toInput6'),
			'startDP': $('#startDP6'),
			'endDP': $('#endDP6'),
			'clearTxt': 'Clear dates',
			'unavailable': _unavailable,
			'onrequest': _onrequest,
			'displayFrom': function(from, to){
				console.log(['from display2', from, to]);
			},
			'displayTo': function(from, to){
				console.log(['to display2', from, to]);
			},
			'fromChosen': function(from, to){
				console.log(['from chosen2', from, to]);
			},
			'toChosen': function(from, to){
				console.log(['to chosen2', from, to]);
			},
			'hideFrom': function(from, to){
				console.log(['from hide2', from, to]);
			},
			'hideTo': function(from, to){
				console.log(['to hide2', from, to]);
			},
			'positions': ['left', 'right']
		});
		
});