$(document).ready(function(){
    $(".inp_search").keyup(function(){
        var searchText = $(this).val();
        if(searchText !=""){
            $.ajax({
                url:"phpfile/search_p_or.php",
                method:"post",
                data:{inp_search:searchText},
                success:function(response){
                    $(".div_search_message").html(response);
                }
            });
        }
        else{
            $(".div_search_message").html("");
        }   
    });
});