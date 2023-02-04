<?php
    function xor_encrypt_2($in) {
        // $key = base64_decode("MGw7JCQ5OC04PT8jOSpqdmkgJ25nbCorKCEkIzlscm5oKC4qLSgubjY=");
        $key = "KNHL";
        $text = $in;
        $outText = '';

        for($i=0;$i<strlen($text);$i++) {
            $outText .= $text[$i] ^ $key[$i % strlen($key)];
        }
        return $outText;
    }

    $myData = array( "showpassword"=>"yes", "bgcolor"=>"#ffffff");
    $myData_json = json_encode($myData);
    $myData_enc = xor_encrypt_2($myData_json);
    echo base64_encode($myData_enc);
?>
