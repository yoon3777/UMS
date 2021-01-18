$(document).ready(function() {

	var hypenPhone = function(str) {
		str = str.replace(/[^0-9]/g, '');
		var tmp = '';
		if (str.length < 4) {
			return str;
		} else if (str.length < 9) {
			tmp += str.substr(0, 4);
			tmp += '-';
			tmp += str.substr(4);
			return tmp;
		} else if (str.length < 11) {
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 3);
			tmp += '-';
			tmp += str.substr(6);
			return tmp;
		} else {
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 4);
			tmp += '-';
			tmp += str.substr(7);
			return tmp;
		}
		return str;
	}

	var destNum = document.getElementById('destNum');
	var departNum = document.getElementById('departNum');

	if (destNum) {
		destNum.onkeyup = function() {
			this.value = hypenPhone(this.value);
		}
	}
	if (departNum) {
		departNum.onkeyup = function() {
			this.value = hypenPhone(this.value);
		}
	}

})
function ReservationRadioCheck() {
	var Reservation = $('#ReservationRadio');
	Reservation
			.html("<input type=\'date\' id=\'Date\' name=\'Date\' style=\"margin-left: 90px;\" /><input type=\'time\' id=\'Time\' name=\'Time\' style=\"margin-left: 10px;\" />");
}
function ImmediatelyRadioCheck() {
	var Reservation = $('#ReservationRadio');
	Reservation.html("");
}
