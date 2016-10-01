$(document).ready(function(){
        $('.rp').hide();
		$('#btnShowModal').click(function(){
			$('#loginModal').modal('show');
		});
		$('#btnHideModal').click(function(){
			$('#loginModal').modal('hide');
		});
		$('#btnaddNoty').click(function(){
			$('.boxnoty').prepend("<div class='Reminder'> <select> <option>Email</option> <option>Phone</option> <option>Both</option> </select> <span> <input type='text' style='height: 20px;'> <select> <option>Seconds</option> <option>Minute</option> <option>Hours</option> <option>Day</option> <option>Week</option> </select> </span> </div>")
		});
		$('input[type="radio"]').click(function(){
            if($(this).attr("value")=="Never"){
                $(".radio-After").prop("disabled",true);
                $(".radio-On").prop("disabled",true);
                $('input:radio[name="gender"][value="Never"]').prop('checked', true);
            }
            if($(this).attr("value")=="After"){
                $(".radio-After").prop("disabled",false);
                $(".radio-On").prop("disabled",true);
                $('input:radio[name="gender"][value="After"]').prop('checked', true);
            }
            if($(this).attr("value")=="On"){
                $(".radio-After").prop("disabled",true);
                $(".radio-On").prop("disabled",false);
                $('input:radio[name="gender"][value="On"]').prop('checked', true);
            }
        });
        $('#rpchoise').change(function(){
            $(this).find("option:selected").each(function(){
                if($(this).attr("value")=="Daily")
                {
                    $('.rp').hide();
                    $('.RpDay').show();
                }
                else if($(this).attr("value")=="Weekly")
                {
                    $('.rp').hide();
                    $('.RpWeek').show();
                }
                else if($(this).attr("value")=="Monthly")
                {
                    $('.rp').hide();
                    $('.RpMonthly').show();
                }
                else if($(this).attr("value")=="Yearly")
                {
                    $('.rp').hide();
                    $('.RpYear').show();
                }
                else
                {
                    $('.rp').hide();
                }
            }).change();
        });
});
window.console = window.console || function(t) {};
if (document.location.search.match(/type=embed/gi)) {
   window.parent.postMessage("resize", "*");
}