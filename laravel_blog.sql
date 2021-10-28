-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 28 Okt 2021 pada 14.53
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2021-10-27 00:37:58', '2021-10-27 00:37:58'),
(2, 'Web Design', 'web-design', '2021-10-27 00:37:58', '2021-10-27 00:37:58'),
(3, 'Personal', 'personal', '2021-10-27 00:37:58', '2021-10-27 00:37:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_19_014638_create_posts_table', 1),
(6, '2021_10_19_030230_create_categories_table', 1),
(7, '2021_10_28_071145_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `slug`, `image`, `excerpt`, `body`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Corporis reiciendis iste sit dolore et consequatur hic non a ipsa.', 'omnis-sapiente-expedita-tenetur-ut-porro-ab', NULL, 'Aut hic in et sint. Aut perferendis quia cumque quo quae quidem autem. Assumenda quasi nihil in soluta hic ipsa suscipit.', 'Occaecati incidunt ratione molestiae illo. Recusandae tenetur blanditiis dolore ut laborum. Omnis fugit dolorem iste delectus doloremque. Eligendi atque iure aliquid aliquam in rerum. Ut ut quis doloribus sunt impedit et. Consequatur rem commodi voluptatem laborum. Id est et iure provident. Error ut dicta consequatur est aperiam. Eius dolore qui suscipit dolorum facere. Quasi sit recusandae voluptatum repellendus. Dolores alias autem ducimus molestiae aliquam. Aliquam vitae esse tenetur ipsam ut esse. Aliquid aut explicabo minus ratione qui dolor distinctio. Dignissimos et corporis in excepturi. Id eaque cumque doloribus tenetur eius unde. Suscipit vero omnis quae voluptate.', '2021-10-27 00:37:58', '2021-10-27 00:37:58'),
(2, 1, 1, 'Et dolorem quidem at sit.', 'ipsum-labore-distinctio-voluptatem-ad', NULL, 'Voluptates est repudiandae officiis. Repudiandae est et et. Modi aut quo incidunt esse possimus est.', 'Impedit omnis deserunt praesentium accusamus sint laboriosam. Omnis illum reiciendis eligendi perspiciatis. Voluptatem non quia et ut sint quae. Velit cumque libero distinctio cum. Voluptas autem vel non. Fugiat qui soluta quia sint nulla quia expedita. Pariatur officia quisquam sed est labore. Rerum minus maiores eum eveniet id. Molestias sunt animi repellat exercitationem doloremque. Neque rerum suscipit nihil. Quas quod ipsum accusamus et necessitatibus. Facere sint provident enim earum excepturi. Et aut omnis magnam non. Provident quos ipsam eum nihil quis aut sed. Explicabo molestiae esse alias velit. Qui natus officia ipsa vel veritatis. Consequatur blanditiis fugiat doloremque modi laudantium ullam optio. Ratione ipsam voluptate qui molestias est omnis. Ad dolorum est quae. Quasi aut quibusdam ut amet. Dolorem nihil sit quia esse. Ipsa dignissimos quia nulla harum asperiores. Quibusdam sed expedita vitae distinctio aliquid. Rerum perspiciatis quidem voluptatibus et cum sunt.', '2021-10-27 00:37:59', '2021-10-27 00:37:59'),
(3, 3, 2, 'Quae rerum nemo qui officiis recusandae a distinctio.', 'reprehenderit-et-et-sunt-omnis', NULL, 'Sequi sit accusantium sint qui. Blanditiis omnis dolorem fugit dolorum sed quia quas.', 'Repellendus nesciunt doloremque dolor hic hic officiis. Amet necessitatibus non corrupti ut. Et et rerum quidem provident. Et distinctio eos possimus voluptatem quia. Eveniet nesciunt quia qui nesciunt quaerat. Quis sed quis dicta sit consequatur. Eum blanditiis qui hic dolor. Qui laboriosam provident quisquam est dolorem illo. Nemo minima voluptatem nam ut sed consequatur. Hic dignissimos officiis temporibus error ab ullam. Facere omnis provident omnis perferendis odit. Consequuntur adipisci a beatae labore ex minus aliquid. Modi accusamus et ex sapiente tempore. Quidem praesentium consectetur molestias aut qui est. Sapiente eius qui placeat architecto. Consequuntur et alias iusto quo quia dolorem. Omnis a aliquid natus natus.', '2021-10-27 00:37:59', '2021-10-27 00:37:59'),
(4, 2, 3, 'Aut aspernatur et voluptatibus eos at.', 'laudantium-sed-omnis-accusamus-in-voluptatem-incidunt-sunt', NULL, 'Doloremque reprehenderit maxime placeat nesciunt dolore atque. Quam sint veritatis unde quis quam saepe nostrum. Sunt voluptas dicta consequatur vel harum.', 'Suscipit nam iusto inventore animi et. Eius ut inventore error ducimus tenetur et. Voluptas rerum ullam et fuga. Qui dolorem soluta error. Officia iure magnam impedit et mollitia. Velit et dolorem aut quam. Quod totam atque necessitatibus quisquam omnis. Aliquam rem odit sed. Nostrum possimus voluptates et. Dignissimos facilis fuga dignissimos voluptatem necessitatibus odit et ut. Praesentium omnis qui explicabo atque et accusantium temporibus. Iure enim recusandae et quas qui. Ea tempora et corrupti dolore modi delectus. Voluptatem nostrum accusantium omnis ipsam debitis dignissimos. Cupiditate sit omnis earum fugiat sunt dolorem consequuntur. Aliquam deleniti impedit expedita maxime recusandae cupiditate voluptatem laborum. Nostrum perferendis quod unde distinctio. Excepturi et dolorem sequi et rerum sint voluptatem. Earum sunt incidunt omnis quidem.', '2021-10-27 00:37:59', '2021-10-27 00:37:59'),
(5, 2, 2, 'Harum porro qui aut voluptate veniam animi nesciunt.', 'odit-dolores-quidem-qui', NULL, 'Sunt dolor repellendus placeat eos non ipsa aperiam. Consectetur quisquam accusamus inventore autem voluptatem ea. Itaque a ex aut aut quasi quo.', 'Recusandae voluptatem earum aut inventore vel animi. Et dolorem omnis cumque quam. Repudiandae at eos in et. Et nostrum dolores ut mollitia perferendis. Omnis inventore dolor et iste. Quo accusantium et fugit quasi vero recusandae voluptatem. Non reiciendis reiciendis consequatur magni. Voluptates voluptate illo iure. Necessitatibus commodi dolores quis. Aliquam soluta alias est ut voluptatem. Qui dignissimos qui iure sint est. Enim vero sunt illo ipsam exercitationem. Occaecati earum dolor sit ex ex est. Ea natus at excepturi sed iure porro quas. Ut totam consequatur est quo.', '2021-10-27 00:37:59', '2021-10-27 00:37:59'),
(6, 5, 1, 'Fugit a nisi ipsum sunt aut laborum ex iure.', 'omnis-voluptatem-in-est-laboriosam-debitis', NULL, 'Qui consequatur inventore commodi qui labore molestiae. Neque voluptas at labore sequi.', 'Ut et quia laborum aut amet. Id mollitia consequatur deleniti asperiores ab. Sunt placeat eum et praesentium alias. Corrupti deserunt nulla saepe ratione. Dolorum cumque dolorum blanditiis explicabo fuga aut. Omnis sint et odio rerum facere cupiditate. Dignissimos maxime qui et nesciunt et aut. Assumenda ullam facilis dolores corrupti sed esse odio suscipit. Eius quaerat omnis ea debitis aut. Earum distinctio quis amet qui in sequi. Qui qui dolor perspiciatis alias. Dolore iusto sequi corrupti ratione. Nobis vel repudiandae error qui placeat ducimus earum. Nihil hic vero quia nisi nulla voluptatum quidem. Sed qui ut qui unde dolore sunt unde. Consequatur tenetur ea non quisquam excepturi. Ut qui aut veniam maiores architecto rerum. Recusandae beatae eligendi sapiente aut quas ducimus minima. Officia atque dolore inventore sint non. Qui aut maiores qui architecto est. Ratione necessitatibus non cumque odio dolorum qui maiores.', '2021-10-27 00:38:00', '2021-10-27 00:38:00'),
(7, 4, 2, 'Laboriosam ducimus porro quos qui beatae dolores ad.', 'est-dolorum-a-veritatis-quo-qui-est-voluptates', NULL, 'Est aut omnis sint consequatur veniam excepturi alias. Odio vel itaque consequatur facere magni ut voluptas.', 'Omnis velit pariatur itaque sint. Ea laboriosam est ipsam autem. Velit rem nihil non. Ipsa quasi non consequatur omnis. Sit veritatis eos sit. Ut vitae occaecati aspernatur pariatur ipsum optio. Et voluptatum porro adipisci sapiente totam et. Doloremque sint numquam et. Doloremque quo aut quam totam. Qui hic doloremque error est aliquid et voluptatem. Odio voluptas eius culpa asperiores ipsam corrupti. Veniam accusantium voluptas ratione. Nisi aut labore veritatis velit.', '2021-10-27 00:38:00', '2021-10-27 00:38:00'),
(8, 1, 1, 'Numquam dolorem dolorem ut voluptatem aperiam deleniti sed est tenetur.', 'aliquam-aliquid-aut-consequuntur-culpa-a', NULL, 'Cupiditate asperiores voluptatum iste illum aliquam quo non dolor. Repellendus doloremque debitis maiores illo.', 'Ex unde sequi expedita sit omnis aliquid sit. Ipsa quisquam sed beatae unde totam iste aut. Non nemo tempore aliquam sit. Et et porro officiis quia officiis nihil aut laborum. Sed quia deleniti sint eligendi odio et. Porro quidem deleniti quidem harum quaerat. Qui saepe laborum consequatur esse. Non rerum beatae rerum sapiente fuga rerum vero. Ratione repellat facilis dolor sequi ut omnis praesentium. Qui et dicta est est. Libero unde similique assumenda voluptates inventore laborum sed. Dolore suscipit debitis nihil. Neque possimus pariatur a esse vero aperiam et. Ab error quia voluptatem consectetur. Voluptas dolorem consequuntur placeat ratione.', '2021-10-27 00:38:00', '2021-10-27 00:38:00'),
(9, 1, 3, 'Minima iure sed quis quis dolore et ut ad.', 'quaerat-praesentium-natus-neque-et-et-ut-dolores', NULL, 'Magni hic ducimus nisi reprehenderit cum. Fugit nihil error non in assumenda omnis perspiciatis. Consequuntur qui ut necessitatibus provident.', 'Culpa dicta ut consequatur eius soluta non. Rerum atque qui aliquam esse. Impedit cum fuga aut voluptatem. Et dolore iusto accusamus asperiores id quia vel. Minima doloremque dicta laboriosam voluptatem enim voluptates ad similique. Dicta vel sed nesciunt aliquam eos numquam. Pariatur rerum accusamus est ratione recusandae iusto. Consequatur cumque fuga veniam rerum ut omnis officiis. Impedit cupiditate eos rerum perspiciatis exercitationem excepturi. Dicta eum sit voluptatem officiis nemo et sunt. Aut ut blanditiis sapiente doloribus. Itaque et velit dignissimos maiores amet. Rerum dolor quo quia quis vel aut earum eaque. Distinctio perspiciatis velit omnis sed assumenda.', '2021-10-27 00:38:00', '2021-10-27 00:38:00'),
(10, 2, 3, 'Sint perferendis qui maiores eos assumenda minus ipsam.', 'odit-quam-enim-omnis-harum-perspiciatis-explicabo-aliquid', NULL, 'Ut aut molestiae nam error delectus. Molestias officiis recusandae eligendi deleniti magnam ducimus. Repellat cum consequuntur adipisci consectetur cum deleniti.', 'Placeat et at quos provident enim. Totam eligendi ex accusantium facere expedita maiores. Molestiae minus aut voluptatibus quaerat dicta. Nostrum est consequatur doloribus voluptas. Alias a illum ut. Est qui dolorem officia ut deserunt et neque. Culpa aut dolorem maxime iure id harum. Et aspernatur voluptas itaque labore. Debitis velit velit qui possimus voluptatem. Sequi quis natus ex assumenda id asperiores et eligendi. Quia nihil aliquid qui est impedit at. In itaque eaque et ipsum necessitatibus. Aliquam et repudiandae consequatur ea. Iure modi libero veritatis praesentium et. Id aut dolorem est vel provident cupiditate porro pariatur.', '2021-10-27 00:38:01', '2021-10-27 00:38:01'),
(11, 4, 3, 'Reprehenderit dicta est at.', 'incidunt-itaque-atque-ducimus-eligendi-ullam-in-cumque', NULL, 'Hic vel aut doloribus accusantium aperiam quidem sequi qui. Perspiciatis nihil harum mollitia quo voluptatem blanditiis officiis.', 'Quaerat eaque ducimus inventore consequatur. Fugiat sed beatae aut. Odio ipsam natus explicabo. Sit eius cumque doloribus qui et quas. Deleniti qui quos aspernatur ex totam ad provident. Incidunt dolores eum sed perspiciatis. Labore qui sint tempore aut. Sequi qui similique qui deleniti reiciendis corporis. Et qui facere voluptatem quidem molestias. Voluptate sunt unde dolorum quisquam ducimus doloribus totam ea. Nihil quae totam quibusdam libero earum officiis. Blanditiis voluptatem velit voluptatem.', '2021-10-27 00:38:01', '2021-10-27 00:38:01'),
(12, 5, 1, 'Veritatis quaerat voluptatum aliquid eum.', 'voluptatem-velit-incidunt-odio-magni-asperiores-dolorem', NULL, 'Quia laboriosam et laboriosam praesentium aliquam autem. Veritatis ea sapiente sequi accusamus explicabo vel sapiente. Fugiat ut laborum totam labore placeat provident sed nesciunt.', 'Possimus quia eveniet tempore et quibusdam illum. Et error vitae et molestias. Expedita qui et et mollitia voluptas occaecati et facere. Vitae consectetur rerum aliquid unde sed. Fuga earum et numquam eligendi. Sapiente voluptatem minus asperiores dolores eum. Qui consequuntur perspiciatis ut et hic autem temporibus. Libero quo quasi nihil voluptatibus eligendi culpa rem. Itaque hic eligendi alias dolore veritatis at est. Quis tenetur ipsam illum ipsam.', '2021-10-27 00:38:01', '2021-10-27 00:38:01'),
(13, 2, 2, 'Aut dolore eum quae officia.', 'laboriosam-nobis-nesciunt-aut-enim-earum', NULL, 'Repellendus deleniti non quis sunt. Ipsam illum id quibusdam pariatur quidem atque. Porro quis sint nesciunt sed possimus fugit.', 'Autem quis molestias fuga dicta voluptate. Repellat laudantium omnis ratione rem quis nulla. Neque sunt aspernatur laboriosam inventore cumque et consequatur. Dolor illo ipsa quo. Ipsa voluptatem quo sunt voluptas mollitia sed. Omnis occaecati sequi adipisci voluptate qui. Est provident aut ab deserunt sunt sunt. Aut quod inventore et qui at distinctio sequi voluptatem. Quo sit exercitationem delectus et sunt. Quo aliquid veritatis velit dicta cupiditate voluptate omnis. Quo possimus doloribus neque adipisci. Eveniet consequatur voluptatem et est mollitia quas. Quos reprehenderit quaerat omnis necessitatibus perspiciatis. Dicta voluptate architecto nisi sed omnis ipsa aliquam fugiat. Nihil corrupti magni architecto nobis aut eos.', '2021-10-27 00:38:01', '2021-10-27 00:38:01'),
(14, 5, 2, 'Distinctio nobis adipisci nobis.', 'reiciendis-quasi-amet-velit-nam-nam-nobis-exercitationem-unde', NULL, 'Non dolore sed consequatur velit suscipit atque facilis voluptas. Debitis quia quia officia sed dignissimos est mollitia.', 'Fugiat consequatur quod consequatur. Voluptatem ducimus est tempore id. Reprehenderit expedita quia quod voluptas dicta debitis. Reprehenderit ut ut accusantium consequatur accusamus et minus rerum. Perferendis commodi numquam repellat veniam explicabo quia. Ut minima et nihil recusandae repellat voluptatem quia quis. Iste hic fuga eligendi. Quos molestias et consequatur odio sapiente sed modi. Odio tempore dolore perferendis consequuntur. Aliquid laborum esse sit ut dolor. Optio nostrum expedita a. Dolores quaerat modi similique id. Voluptas vero a maxime quo praesentium reiciendis dolorem. Delectus eum consectetur harum dolorem dolores illo sunt labore. Sint enim qui fugit harum cupiditate. Et eveniet dolores quis doloremque explicabo nostrum qui.', '2021-10-27 00:38:01', '2021-10-27 00:38:01'),
(15, 4, 2, 'Aut est id et necessitatibus assumenda.', 'ipsum-repellat-consequatur-ducimus', NULL, 'Corrupti recusandae repellat saepe deleniti. Consectetur ut et ullam excepturi non delectus.', 'Consequatur autem sint cupiditate perferendis. Et rerum est saepe aut quasi sunt hic cupiditate. Quis expedita quod ad ipsum facere minima dolorem sit. Similique cupiditate molestiae sunt. Est omnis esse quia accusamus itaque mollitia fugiat. Possimus praesentium pariatur recusandae. Aut quia id laudantium sit aut facere. Est recusandae quia similique ut et illo. Labore expedita voluptatem aut eos perspiciatis itaque unde. Similique deserunt aspernatur aliquid sed architecto suscipit molestias est. Exercitationem perspiciatis non quo dolores cumque. Quisquam unde animi beatae aut minus optio id. Nam recusandae officiis explicabo et unde sed enim. Dolorem vitae quo et aliquam. Cumque autem rerum ratione modi. Eligendi quae quis explicabo ullam. Commodi quia consequatur quae optio. Totam veritatis assumenda et nisi illum vel vitae. Est vel quis et quia nostrum rerum. Rem placeat incidunt accusamus sit.', '2021-10-27 00:38:01', '2021-10-27 00:38:01'),
(16, 3, 1, 'Odio voluptatibus optio ut.', 'quas-corporis-enim-molestiae-delectus-nobis-dolores-sed-beatae', NULL, 'Esse et aut est. Impedit quisquam aut perspiciatis velit aut inventore nostrum. Quia earum doloremque a magnam.', 'Qui sit accusamus totam qui modi ipsum. Corporis blanditiis libero minima et. Esse sed laboriosam quo repellat et dolore provident. Amet odio quaerat earum nulla quas ipsum error et. Ea modi voluptas sequi impedit molestiae. Quia error deleniti dolores illum recusandae nihil doloribus cumque. Et laborum itaque et a pariatur nobis. Sint provident unde quae voluptas ratione nisi. Est facilis non possimus placeat vel error voluptatem et. Doloremque voluptatem sint facilis explicabo omnis vel sed. Quis sequi consectetur autem voluptas. Ex cumque accusantium soluta aut id omnis magni. Neque quo est ad provident incidunt minima illo. Alias suscipit doloremque possimus officia enim sapiente fugit. Neque nesciunt accusantium consequatur non. Soluta nulla assumenda aut excepturi earum. Et adipisci dolor earum corrupti repudiandae et eligendi. Excepturi incidunt quis et et ullam. Porro id nulla reprehenderit atque est. Modi est veritatis veniam unde. Eum officia eum non cum ut ducimus voluptatem. Consequatur est voluptates repellendus. Est ut saepe aperiam.', '2021-10-27 00:38:02', '2021-10-27 00:38:02'),
(17, 2, 1, 'Dolorem voluptates et quisquam aut qui.', 'laborum-eligendi-nesciunt-non', NULL, 'Quia dolore mollitia mollitia tempora. Est saepe nemo commodi distinctio ut unde voluptatem.', 'Alias autem hic maxime id odio sit reiciendis. Rerum voluptatem dolorem reiciendis voluptas nemo. Sunt atque quisquam aliquid nesciunt nostrum. In ab harum neque. Sequi nemo omnis aliquid quibusdam. Sed ad doloremque non. Pariatur deleniti voluptas sequi. Ab aliquam eum harum aut sapiente explicabo amet. Nihil aut enim unde numquam soluta. Deleniti harum asperiores libero facere voluptas sint ea. Et fugit ducimus assumenda eos. Voluptatum reiciendis omnis eos est quo qui minima exercitationem. Facere eos ipsam quis id distinctio. Ea rem nulla modi veritatis et. Est autem nobis quia. Quia iusto et sunt corrupti aut ullam illum. Deserunt reprehenderit optio consequatur dignissimos sunt suscipit. Amet neque maiores iure corrupti occaecati. Dolorem a deserunt architecto quis et. Iusto sapiente quis neque asperiores voluptate. Sed vel eos consectetur reprehenderit inventore itaque. Vel aliquid doloremque officiis aperiam eveniet rerum ab. Alias consectetur at totam odit itaque dolores.', '2021-10-27 00:38:02', '2021-10-27 00:38:02'),
(18, 2, 1, 'Est dolorem velit temporibus vero est.', 'modi-ut-alias-sint-dolor', NULL, 'Voluptas dolor ipsam esse rerum ea. Ullam magni ea quae omnis. Nihil quasi eos eos sit.', 'Officia accusamus cumque nesciunt nisi. Molestiae quis sit corrupti aut quae distinctio quasi porro. Ad non aperiam laudantium alias soluta. Corporis quia commodi aut quidem commodi. Sed laboriosam odio rem alias molestias fugit. Maiores aut officiis perferendis dicta vel dolorum in. Expedita aut illo id delectus odit natus. Autem esse quia sequi qui. Commodi et reprehenderit et quas corporis. Error architecto consequuntur ut incidunt sunt ut. Ab dolor nam maxime consequatur aut in. Est cum fugiat recusandae repudiandae vitae. A rerum nisi totam. Nihil quo repudiandae rerum. Ab quod et libero. Consequuntur non et eveniet. Dolore sunt odio architecto incidunt aperiam soluta necessitatibus. Non expedita quo deserunt eveniet error maxime. Sed voluptas qui dolor voluptatibus quibusdam temporibus quis unde. Earum mollitia dolores laboriosam ab. Id adipisci tempora doloremque consequatur. Nihil dolorem ipsa hic ipsum. Aut veritatis natus magni omnis dicta consequuntur ratione voluptatibus. Ab qui fugiat incidunt vel harum quia aperiam iste. Sit nihil similique sed iusto fuga. Natus qui beatae vel molestiae molestiae earum. Vitae qui exercitationem veritatis nulla eligendi illum earum. Ut beatae nam recusandae possimus maiores impedit in aliquam.', '2021-10-27 00:38:02', '2021-10-27 00:38:02'),
(19, 2, 2, 'Accusantium pariatur non rerum repellat dolor perspiciatis.', 'sit-ea-doloremque-consequatur-non', NULL, 'Quae eos fugit dolores id. Nam assumenda facilis quod vel. Distinctio quia enim nesciunt laborum.', 'Cumque asperiores aut consequatur ducimus. Nam voluptate dolores quas sapiente enim. Et occaecati aut sed vel totam quis. Hic aliquam omnis possimus sit eligendi. Voluptate vitae sint et et mollitia. Quisquam ipsum omnis pariatur aut ipsum. Sed id culpa nulla in qui. Et tempore vitae consequatur. Aut ut id deleniti amet. Ipsa amet mollitia consectetur qui repudiandae sapiente. Temporibus eaque id molestias ullam. Repudiandae ut nam delectus eveniet fugiat natus harum ratione. Facilis quaerat voluptatem et rem. Nostrum exercitationem a eligendi cupiditate dolores laboriosam ad. Aut quo velit aut rerum. Velit est incidunt fugit. Veritatis tempora delectus sint natus minus deleniti adipisci. Iure sed excepturi nihil culpa voluptate ut nesciunt. Facere aut reiciendis eius aut quia non. Et praesentium sapiente in autem dolorum corrupti distinctio quae. Doloribus quam ab nobis eos alias voluptatum.', '2021-10-27 00:38:02', '2021-10-27 00:38:02'),
(21, 2, 3, 'Et esse dolores fugit esse perspiciatis asperiores velit.', 'quasi-velit-consequatur-aspernatur-voluptatem-tenetur', NULL, 'Est quibusdam doloribus itaque dolorum dolorem reprehenderit. Explicabo temporibus quis voluptas facilis laboriosam. Natus officiis laborum facilis dolorem omnis.', 'Aut corporis praesentium occaecati commodi quibusdam aliquid laudantium. Cumque id tempore porro debitis odit quae sed. Qui pariatur dicta aut qui omnis vel. Sunt veniam illo doloremque ea officiis qui. Nam corrupti eveniet excepturi molestiae magnam iure. Delectus velit tempora assumenda incidunt. Est nemo numquam velit et eaque nulla. Omnis ut mollitia sint est. Voluptas atque eum molestiae nam eum quia voluptatem. Sint qui et et libero aut consequatur. Doloremque tenetur voluptates soluta aut. Voluptatibus aperiam corporis necessitatibus. Tempora cum consequatur officiis numquam ratione sunt. Ut adipisci quo vitae sed. Tenetur qui eius consequatur molestiae placeat dolorem voluptas. Aut corporis explicabo nam fugiat ea iusto. Minus blanditiis ad expedita sapiente expedita delectus numquam. Itaque quam at unde rerum odit illo qui. Impedit voluptate aut deserunt modi nisi dolor totam. Optio esse hic et consequuntur quod qui qui.', '2021-10-27 00:38:02', '2021-10-27 00:38:02'),
(22, 3, 2, 'Labore ducimus sint non exercitationem quis autem eius quia.', 'rerum-temporibus-et-corporis-quia', NULL, 'Commodi sunt nam eos fugiat ad quo non quisquam. Occaecati velit facere fugit sunt molestiae possimus dolores.', 'Quam dolore tempora quia ut quasi ex ducimus quia. Dolores esse sed voluptatem et maxime odio. Cupiditate repudiandae corporis cum perferendis molestiae. Est voluptatem placeat consequatur quia. Omnis ullam earum odit vitae eos. Excepturi tempora distinctio blanditiis qui. Magnam consequatur minus itaque aut tempore odit dolorum. Voluptatem quia esse aut illo. Voluptatibus ipsa nostrum occaecati ab nostrum nam at. Soluta perferendis quia ad dolores est quas id. Non at dolorem quisquam asperiores est dolorem et. Aut unde molestias quidem beatae fugiat. Aut velit sed nemo optio quia porro. Culpa autem incidunt dolor omnis. Non voluptates asperiores reprehenderit in. Modi repellat et incidunt suscipit et. Aliquam tempora nam ratione eveniet sint et labore.', '2021-10-27 00:38:03', '2021-10-27 00:38:03'),
(24, 2, 1, 'Quia sit rerum cumque eos dicta voluptatum ab.', 'laudantium-et-est-nisi-architecto-eum-sed', NULL, 'Et dignissimos pariatur enim voluptas in quia. Voluptatem delectus molestias explicabo vero alias. Inventore et aut distinctio velit omnis alias doloremque aut. Quidem eligendi dolor totam atque facilis.', 'Est voluptatibus reprehenderit assumenda neque saepe ex ducimus. Consequatur consequatur voluptatum voluptate officiis voluptas molestiae accusamus. Odio deserunt quia eum placeat facilis ratione fuga. Sit dicta maxime nihil expedita est consequatur sint. Voluptas nostrum laborum harum cumque. Laboriosam totam aut a quas dolorum quibusdam. Dolores dolores reprehenderit et tempore voluptatibus. Veniam sequi delectus consequatur. Voluptas quam nobis vel rerum sed laboriosam unde. Doloremque libero voluptas voluptatem et cumque numquam. Ullam error sapiente tenetur nam facere sunt beatae. Quasi in voluptatem dolore est modi. Autem sunt voluptatibus corporis nostrum consectetur voluptatum officia. Laborum veniam corporis qui. Aut ipsa ea eaque ut laudantium et. Quidem autem dolores aut eum est temporibus. Recusandae consequatur tempora dolorem et consequatur in ut dolorem. Vel sit molestiae tempore eveniet.', '2021-10-27 00:38:03', '2021-10-27 00:38:03'),
(25, 4, 3, 'Consectetur quo temporibus tempore earum dolor consequatur voluptatem ad.', 'eos-ipsam-rem-sapiente-quia', NULL, 'Atque quisquam doloribus ex mollitia ut officiis. Aspernatur totam et necessitatibus dolorum eligendi id et. Omnis delectus quia quaerat voluptatibus.', 'Architecto earum sit quibusdam. Eligendi doloremque repellat omnis doloremque eum voluptatum ex. Accusantium molestiae atque ea ut voluptates sit exercitationem. Amet sint sit et non laudantium quam sequi dicta. Asperiores reprehenderit dolores quibusdam blanditiis dolores omnis. Totam omnis architecto itaque veritatis voluptas. Minima nemo neque magni. Aut eligendi distinctio non reprehenderit dolor necessitatibus sapiente soluta. Magni deserunt magnam molestiae eveniet harum fuga sed. Nisi ut fuga sed. Quae voluptatibus sunt error. Dolore iste earum dolores dolorem. Sed omnis distinctio repellat et libero.', '2021-10-27 00:38:03', '2021-10-27 00:38:03'),
(29, 1, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. In, obcaecati!', 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit-in-obcaecati', 'post-images/Gzcux1NYrVGOGmm8ukuf8yKP7NYoemZvi7GztjXe.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ducimus perferendis blanditiis veniam nesciunt ipsa impedit exercitationem cum eos vero dicta. Fuga et odit vitae laboriosam error quibusdam,...', '<div>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ducimus perferendis blanditiis veniam nesciunt ipsa impedit exercitationem cum eos vero dicta. Fuga et odit vitae laboriosam error quibusdam, cum consequatur optio quae, ea sunt dolor nemo, laborum ullam voluptas inventore beatae accusamus alias explicabo ipsam aut itaque ab. Dolorum consequuntur mollitia, necessitatibus quaerat, vitae quas impedit commodi perferendis in temporibus beatae, inventore minus ratione sed error alias ab est eum praesentium rerum autem. Placeat aspernatur veniam laboriosam possimus voluptas laborum architecto ipsum. Adipisci vel aut labore laborum fugiat dicta velit in! Animi dicta in quidem magni vitae rem aut maxime vero itaque cupiditate quas unde atque amet, nulla consequuntur sapiente molestias quisquam minus. Magni fugit corrupti architecto esse neque perferendis a itaque voluptate quasi optio adipisci saepe temporibus ratione culpa doloribus ullam, rem maiores mollitia placeat aut sint totam ad. Doloribus, quas mollitia dolorum veniam explicabo non quod aliquam ad blanditiis consectetur, harum ea sapiente officia unde optio maxime? Sed illum, quo molestiae explicabo saepe rerum maxime dolorum minima! Voluptate ullam magni accusamus corrupti quos inventore ipsum distinctio aliquam pariatur cupiditate, blanditiis aspernatur, nisi eos eveniet dolorem ab corporis. Alias, perspiciatis eveniet! Earum hic adipisci ad reprehenderit maxime consequuntur quam enim, aliquid tenetur sed dicta error asperiores consequatur rem sunt nam aspernatur quo ipsum quibusdam totam vitae assumenda repellat. Dolore repellat laudantium mollitia eligendi? Deleniti, iusto dolore! Provident obcaecati, ipsa assumenda unde cum quas similique maiores ex doloremque nobis, culpa numquam, delectus iusto omnis dolores libero asperiores ea aspernatur nulla officiis voluptatum quasi ab porro labore! Repellat ratione, ipsum hic similique provident alias doloremque deserunt animi, aliquid et eligendi, mollitia sapiente ex quo eum quisquam tempore incidunt minus ducimus! Ipsa, animi! Quidem molestias placeat voluptatibus, repudiandae tenetur officiis, velit aliquam veritatis debitis assumenda perferendis quam sequi id autem in pariatur similique tempore saepe aliquid. Dignissimos repellendus praesentium illum aspernatur quis consequuntur impedit eum, voluptatum perspiciatis explicabo maxime quaerat, distinctio ducimus deleniti ex nulla blanditiis velit. Hic magnam ut consequatur officiis veritatis tempora eum amet ab reiciendis vitae! Eos fugit sint blanditiis pariatur. Unde labore sint dignissimos ad praesentium velit. Nulla, delectus nemo facilis doloribus neque quia dolor voluptates officiis earum ab. Doloremque, molestiae aut tempora inventore quaerat in deleniti? Necessitatibus neque magni eveniet aliquam a quidem explicabo deserunt asperiores eius dicta, molestiae aperiam soluta tenetur quasi saepe voluptatem aspernatur ad nihil iste ducimus exercitationem ab? Inventore dolorum reprehenderit nobis repellat molestiae?</div>', '2021-10-27 16:43:45', '2021-10-27 16:43:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Pahrurozi', 'pahrurozidev', 'pahrurozi17@gmail.com', NULL, '$2y$10$L.PmF3.LXY1xhxennTZEueqqODim0T1.hmpFfdJQ5AguSXmKCLH/u', NULL, '2021-10-27 00:37:55', '2021-10-27 00:37:55', 1),
(2, 'Mrs. Marcella Champlin III', 'fahey.ronaldo', 'ferne.casper@example.net', '2021-10-27 00:37:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CLL3B9BYlD', '2021-10-27 00:37:57', '2021-10-27 00:37:57', 0),
(3, 'Axel Huel Sr.', 'borer.beth', 'raheem.goodwin@example.com', '2021-10-27 00:37:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AfPywaf5sc', '2021-10-27 00:37:57', '2021-10-27 00:37:57', 0),
(4, 'Marietta Kshlerin', 'davonte08', 'juvenal76@example.com', '2021-10-27 00:37:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OyEVKcE4xJveENK4eTU43l288ye4IzeqQR9nby1yPcJuO61QzRI9HpbXKYXB', '2021-10-27 00:37:57', '2021-10-27 00:37:57', 0),
(5, 'Benjamin Christiansen PhD', 'allene.botsford', 'mikel.welch@example.com', '2021-10-27 00:37:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sXtXpel8wdqhJfvheSIyRKCWngtB2sBuxWRJAapfOjzaKyr0rr5iDGcrZIBi', '2021-10-27 00:37:57', '2021-10-27 00:37:57', 0),
(6, 'Dr. Gilbert Heidenreich III', 'jmitchell', 'nwolff@example.org', '2021-10-27 00:37:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VeOYx0H8Nx2g7EqulVf6preIAdTuhpg5bq7D5PYRdoV5whGWKyx9u0ujIKM7', '2021-10-27 00:37:58', '2021-10-27 00:37:58', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
