	$(document).ready(function() {
		var index = 1;

		$('#addBtn').on("click", function() {

			var rowItem = "<tr>"
			rowItem += "<td class='content'>" + index + "</td>"
			rowItem += "<td class='content'>" + $('#dest_name').val() + "</td>"
			rowItem += "<td class='content'>" + $('#dest_num').val() + "</td>"
			rowItem += "<td class='content'>" + $('#var1').val() + "</td>"
			rowItem += "<td class='content'>" + $('#var2').val() + "</td>"
			rowItem += "<td class='content'>" + $('#var3').val() + "</td>"
			rowItem += "<td class='content'>" + $('#var4').val() + "</td>"
			rowItem += "</tr>"
			$('#tblBody').append(rowItem);

			index++;

		})

		$('#delBtn').on("click", function() {
			$('#tblBody tr').last().remove();
			index--;
		});

		var hypenPhone = function(str) {
			str = str.replace(/[^0-9]/g, '');
			var tmp = '';
			if (str.length < 4) {
				return str;
			} else if (str.length < 7) {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3);
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
			
		var destNum = document.getElementById('dest_num');
		var departNum = document.getElementById('depart_num');

		
		if(destNum){destNum.onkeyup = function() {
			this.value = hypenPhone(this.value);
		}}
		if(departNum){
		departNum.onkeyup = function() {
			this.value = hypenPhone(this.value);
		}}

		$("input:radio[name=radio]").on("click", function() {
			if ($("input[name=radio]:checked").val() == "1") {
				$("#Date").attr("disabled", false);
				$("#Time").attr("disabled", false);
			} else if ($("input[name=radio]:checked").val() == "0") {
				$("#Date").attr("disabled", true);
				$("#Time").attr("disabled", true);
			}
		});

	})
