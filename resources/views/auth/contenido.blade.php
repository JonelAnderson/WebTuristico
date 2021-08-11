<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="shortcut icon" href="/img/configuracion/_favicon.png">

  <title>Artesanias</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="../css/stylelogin.css">

</head>
<body>
    <div id="app">
        <main class="app-body" style="padding-top: 1px;">
            @yield('login')
        </main>
    </div>
    <footer class="center">
            Artesanias Peruanas:&nbsp;&nbsp;
            <small>Reserved right Copyright &copy; 2021  Anderson</small>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>
    <script>
    /*For Sign In---------------------------------*/

    $(document).on('click','.s-btn',function(){
    $('.sign-in').addClass('active-sign-in').siblings('.sign-in').removeClass('active-sign-up')
    });

    /*For Sign up-------------------------------*/

    $(document).on('click','.new-btn',function(){
    $('.sign-in').addClass('active-sign-up').siblings('.sign-in').removeClass('active-sign-in')
    });

    /*For Go Back To Main Page---------------------*/

    $(document).ready(function(){
    $('.cancel a').click(function(){
    $('.sign-in').removeClass('active-sign-in , active-sign-up')

    })
    });
    </script>
</body>
</html>
