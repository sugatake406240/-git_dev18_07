<!DOCTYPE html>

<html lang="ja">

<head>
<meta charset="UTF-8">
<title>NetFlixドラマ一覧</title>
<!-- <link rel="stylesheet" href="css/reset.css"> -->
<link rel="stylesheet" href="css/style.css">
</head>


<body>
<h1>NetFlixドラマ一覧</h1>

<a href="index.php" style="  font-size: 2rem;" >ドラマの新規登録</a>

<div class="" >
<?php
$user = "root";
$pass = "root";
try {
    $dbh = new PDO('mysql:dbname=takeshi_db;charset=utf8;host=localhost', $user, $pass);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "SELECT * FROM gs_bm_table";
    $stmt = $dbh->query($sql);
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $dbh = null;
} catch (Exception $e) {
    echo "エラー発生: " . htmlspecialchars($e->getMessage(), ENT_QUOTES, 'UTF-8') . "<br>";
    die();
}
?>


<table border="1">
    <thead>
        <tr>
            <th class="title t_border_h">タイトル</th> <th class="t_border_h">ジャンル</th> <th class="t_border_h">お気に入り</th>
        </tr>
    </thead>
    <tbody>
        <?php
            foreach ($result as $row) {
                echo "<tr>\n";
                // "を文字列にするには「￥"」=「\"」と記載
                echo "<td class=\"title\" >". "<a href=".htmlspecialchars($row['url'],ENT_QUOTES,'UTF-8').">".htmlspecialchars($row['title'],ENT_QUOTES,'UTF-8')."</a> </td>\n";
                echo "<td class=\"title\" >".$row['genre']."</td>";
                echo "<td class=\"title\" >".$row['bookmark']."</td>";
                echo "<td>\n";               
                echo "<a href=detail.php?id=" . htmlspecialchars($row['id'], ENT_QUOTES, 'UTF-8') . ">詳細</a>\n";
                echo "｜<a href=edit.php?id=" . htmlspecialchars($row['id'], ENT_QUOTES, 'UTF-8') . ">変更</a>\n";
                echo "｜<a href=delete.php?id=" . htmlspecialchars($row['id'], ENT_QUOTES, 'UTF-8') . ">削除</a>\n";
                echo "</td>\n";
                echo "</tr>\n";
            }
        ?>
    </tbody>
</table>




</body>
</html>