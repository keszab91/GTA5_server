/*$(document).ready(function () {
    $('.showSingle').click(function () {
        $('.menu-content').hide();
        $('#div' + $(this).attr('target')).show();
    });
});
*/
$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }
    display(false)
    window.addEventListener("message", function (event) {
        var item = event.data;
        if (item.type == "ui") { //nui.lua-ban ami van a setdisplaynel érték
            if (item.status == true) { //nui.lua-ban ami van a setdisplaynel érték
                display(true)
            } else {
                display(false)
            }
        }
    })

    ducument.onkeyup = function (data) {
        if (data.which == 27) { //27: ESC gomb
            $.post("http://nui2/exit", JSON.stringify({}));
            return;
        }
    }

    $("#close").click(function(){
        $.post("http://nui2/exit", JSON.stringify({}));
        return;
    })

    $("#submit").click(function(){
        let inputValue=$("#input").val()
        if(inputValue.length >= 100){
            $.post("http://nui2/error", JSON.stringify({
                error: "Inpus was greater than 100"
            }))
            return;
        } else if(inputValue){
            $.post("http://nui2/error", JSON.stringify({
                error: "There was no input in the field"
            }))
            return;
        }
        $.post("http://nui2/main", JSON.stringify({
            text: inputValue
        }))
        return;
    })

    $('.showSingle').click(function () {
        $('.menu-content').hide();
        $('#div' + $(this).attr('target')).show();
    });
})