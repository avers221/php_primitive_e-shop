<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link href="styles/site.css" rel="stylesheet">
    <script src="scripts/jquery.js"></script>
    <script src="scripts/site.js"></script>
    <title>Онлайн магазин</title>
</head>
<body>
<header>
    <div id="headerInside">
        <div id="logo"></div>
        <div id="companyName">Brand</div>
        <div id="navWrap">
            <a href="/">
                Главная
            </a>
            <a href="index.php?page=shop">
                Магазин
            </a>
        </div>
    </div>
</header>

<div id="content">
    <?php



   
    $servername = 'localhost';
    $username = 'root';
    $password = 'root';
    $dbase = 'phonesite';

    $conn = new mysqli($servername, $username, $password, $dbase);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } else
        $sql = "select p.id, pc.name as author, p.name, p.descriptin, p.img, p.price FROM phones p INNER JOIN phonecreater pc on p.author = pc.id";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            //echo '<br> id: ' . $row['id'] . '<br> author: ' . $row['author'] . '<br> name: ' . $row['name'] . '<br>descriptin: ' . $row['descriptin'] . '<br> img: ' . $row['img'] . 'br> price: ' . $row['price'];
            echo $row;
        }
    }
    $conn->close();



    $page = $_GET['page'];
    if (!isset($page)){
        require_once ('templates/main.php');
    }elseif($page == 'shop'){
        require_once ('templates/shop.php');
    }elseif($page == 'product'){
        $id = $_GET['id'];
        $good = [];
        foreach ($result as $product){
            if ($product['id']==$id){
                $good = $product;
                break;
            }
        }
        require_once ('templates/openProduct.php');
    }

    ?>




</div>

<footer>
    <div id="footerInside">

        <div id="contacts">
            <div class="contactWrap">
                <img src="images/envelope.svg" class="contactIcon">
                info@brandshop.ru
            </div>
            <div class="contactWrap">
                <img src="images/phone-call.svg" class="contactIcon">
                8 800 555 00 00
            </div>
            <div class="contactWrap">
                <img src="images/placeholder.svg" class="contactIcon">
                Москва, пр-т Ленина, д. 1 офис 304
            </div>
        </div>

        <div id="footerNav">
            <a href="/">Главная</a>
            <a href="index.php?page=shop">Магазин</a>

        </div>

        <div id="social">
            <img class="socialItem" src="images/vk-social-logotype.svg">
            <img class="socialItem" src="images/google-plus-social-logotype.svg">
            <img class="socialItem" src="images/facebook-logo.svg">
        </div>

        <div id="copyrights">&copy; Brandshop</div>
    </div>
</footer>

</body>
</html>