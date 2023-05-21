<?php
    // Detect user's language.
    $lang = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

    // If a cookie is already set, use it instead.
    if(isset($_COOKIE["lang"])) {
        $lang = $_COOKIE["lang"];
    }

    // Verify if language is supported, else default to English.
    switch ($lang){
        case "en":
            $target = "en/";
            break;        
        default:
            $lang = "pl";
            $target = "pl/";
            break;
    }

    // Set a cookie that expires in 30 days.
    setcookie("lang", $lang, time() + (86400 * 30), "/"); // 86400 = 1 day

    // Redirect the user to the target page.
    header("Location: /$target");
?>
