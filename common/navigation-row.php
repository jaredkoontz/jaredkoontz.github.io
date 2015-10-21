<div class="navigation">

    <!--logo-->
    <div class="logo-wrapper">
        <div class="logo">
            <a href="index.php"><?php echo file_get_contents("./assets/jk.svg"); ?></a>
        </div>
    </div>

    <!--name-->
    <div class="name">
        <a href="index.php"><h1>Jared Koontz</h1></a>
    </div>

    <div class="mobile-name">
        <a href="index.php"><h1>JK</h1></a>
    </div>

    <!--navigation-->
    <div class="sticky-nav">
        <?php include('navigation.php'); ?>
    </div>

    <div id="mobile-nav">
        <button id="showRightPush"><i class="fa fa-bars"></i></button>
        <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">
            <?php include('navigation.php'); ?>
        </nav>
    </div>
</div>
