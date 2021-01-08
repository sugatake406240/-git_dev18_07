-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 
-- サーバのバージョン： 5.7.24
-- PHP のバージョン: 7.4.1

--
-- 20201227課題データ
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `takeshi_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--
-- 作成日時： 
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `title` varchar(64) NOT NULL,
  `genre` varchar(32) NOT NULL,
  `url` text NOT NULL,
  `story` text NOT NULL,
  `cast` text NOT NULL,
  `bookmark` varchar(12) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `title`, `genre`, `url`, `story`, `cast`, `bookmark`, `date`) VALUES
(1, 'クィーンズ・ギャンビット', '社会派', 'https://www.netflix.com/jp/title/80234304', '1950年代の児童養護施設で、人並外れたチェスの才能を開花させた少女は、依存症に苦しみながら、想像もしていなかった華やかなスターへの道を歩いていく。', 'アニャ・テイラー、ビル・キャンプ', '★', '2020-12-28 13:14:10'),
(2, 'エミリー、パリへ行く', 'TV番組ドラマ', 'https://www.netflix.com/jp/title/81037371', 'シカゴでマーケティングの仕事に励んでいたエミリー・クーパーは、思いがけずパリで念願の職を手に入れ、仕事に恋に友情に全力投球の夢の海外生活を開始する。', 'リリー・コリンズ、アシュリー・パーク', '　', '2020-12-28 13:14:10'),
(3, '全裸監督', '国内ドラマ', 'https://www.netflix.com/jp/title/80239462', 'バブル景気に沸いた1980年代の日本に、逆境をチャンスに変えた奴がいた。男の名は村西とおる。彼こそが、エロの概念を覆し、AV業界に革命を起こした伝説の風雲児。', '山田孝之、満島真之介、玉山鉄二、森田望智', '　', '2020-12-28 13:14:10'),
(4, '愛の不時着', 'コメディ', 'https://www.netflix.com/jp/title/81159258', 'パラグライダー中に思わぬ事故に巻き込まれ、北朝鮮に不時着してしまった韓国の財閥令嬢。そこで出会った堅物の将校の家で、身分を隠して暮らすことになるが...。', 'ヒョンビン、ソン・イェジン、ソ・ジヘ', '', '2020-12-28 22:48:45'),
(5, 'ザ・クラウン', '社会派', 'https://www.netflix.com/jp/title/80025678', '英国君主、エリザベス2世。政界実力者との確執、王室のロマンス、そして20世紀後半を彩る歴史的事件の影で葛藤する、生身の女王の姿を重厚に描いた大作ドラマ。', 'オリヴィア・コールマン、ヘレナ・ボナム＝カーター、トビアス・メンジーズ', '★', '2021-01-01 19:18:56'),
(6, '深夜食堂', '国内ドラマ', 'https://www.netflix.com/jp/title/80113037', '深夜にしか営業しない飯屋ののれんをくぐると、そこには素朴で心温まる料理が。思い入れのある一皿に添えられた物語が、めしやに集う人々の人間模様を描いてゆく。', '小林薫、不破万作、綾田俊樹', '★', '2020-12-29 16:49:00'),
(7, 'Sherlock/シャーロック', 'ミステリー', 'https://www.netflix.com/jp/title/70202589', 'アーサー・コナン・ドイルの名作小説が現代を舞台に蘇る。手がかりを求めロンドンの街を駆け回る破天荒な名探偵の活躍をスタイリッシュに描くミステリードラマ。', 'ベネディクト・カンバーバッチ、マーティン・フリーマン、ユーナ・スタッブス', '　', '2020-12-29 16:49:00'),
(9, 'テストどらま', 'テスト', 'www.***.co.jp', 'テストのドラマ', 'たけし、まこと', '★', '2020-12-30 22:26:35');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
