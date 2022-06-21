-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Sequence structure for `hibernate_sequence`
--

DROP SEQUENCE IF EXISTS `hibernate_sequence`;
CREATE SEQUENCE `hibernate_sequence` start with 1 minvalue 1 maxvalue 9223372036854775806 increment by 1 cache 1000 nocycle ENGINE=InnoDB;
SELECT SETVAL(`hibernate_sequence`, 3001, 0);

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `team_a` varchar(255) DEFAULT NULL,
  `team_a_result` varchar(255) DEFAULT NULL,
  `team_a_status` int(11) DEFAULT NULL,
  `team_b` varchar(255) DEFAULT NULL,
  `team_b_result` varchar(255) DEFAULT NULL,
  `team_a_photo_id` int(11) DEFAULT NULL,
  `team_b_photo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhtgrymw1kca5ws8tfsly5kk3a` (`team_a_photo_id`),
  KEY `FKpbmoebgo22l4yaaqga1bnsubb` (`team_b_photo_id`),
  CONSTRAINT `FKhtgrymw1kca5ws8tfsly5kk3a` FOREIGN KEY (`team_a_photo_id`) REFERENCES `photo` (`id`),
  CONSTRAINT `FKpbmoebgo22l4yaaqga1bnsubb` FOREIGN KEY (`team_b_photo_id`) REFERENCES `photo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1003,'Awesome Game','BD','10',0,'IND','5',1001,1002),(2010,'Leandro Paredes (Argentina) wins a free kick in the defensive half.','Brazil','7',1,'Argentina','8',2008,2009);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `last_used` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
INSERT INTO `persistent_logins` VALUES ('monur232@gmail.com','iXVI2Z0qN+qq4NyOfLp9lQ==','MB7KMkJyvksLvjX2LJzp2A==','2022-06-21');
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `photo_bytes` longblob DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1001,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\n\0\0\0p��{\0\0;PLTE����\'?\0jLjL������\0hI�#<\0fG\0dD\0bA����!;�9\0gI\0^;�4\0nL���EEE���\0[7�\0(�/�\0#��֝��>>>\\\\\\RRR�������n|�<V�v�9�l���X��������ggg333***����¸������q���������.E����\\k�J[�������5L����������������dvP��\0���   ���x[������\0U+��嘻�*zaE�rn��W��1dLDbL2W>uWM�OF�ED�8D�/A�VI_^L�TKฺ�~�PY%fK�Qbh]K�LK\0Q�SH�4Fʲ�^���\0\0���+���\0\0xIDATx��]�_�ʶM:		�\n�U��ڢH\0e�T����t�{z�9{_�����;�7O5���S!D��k�Y�f�\nAl��[l��[l��[l��0��f0�:�f0�7�}\'x�]5�(ă}�j>:�\'�~�VM�.�x����S���_/�N/D�H���g\noW���8�H�X/NX�s�9�����R�4_�wh:�1f(��8H�bo/\r�/�N�;_5�g⒣I�\"����zQ2^\\5�g!�)$��Ωn�>ϱ�1���m�d���c�Ԑ�f�nwQD���{4GF\"t�m�|����E�&-�f#�4��Ȩ��פּ�tt�q��T�aoi0/x�\".r�u>ɒ^��Pƫ����띬�����n�,��~x��w��*C|�z���8�>x�܉Ptl����-3��8/I�%2��w�y�&#�����p��Ի�\\���r7�L�>��}����\Z>�����^����`]d�4�Ĕr�Ԍ�@��A�6���5�=�E9�j�	�͞�\"�Q������m�u;�fl)��hi��2�<}�e\0�7���w�;�@wh�ɮ	y��M;|Q3Y!��)�x|�ϭ��Lst���:}�6���H��Uz}���[�q�yq����-��L���u�pˑ.q�Gs��G��!Gkƞ@���f�ዢ�\\���(�n�\\4�q��#��&���ь\\�PC����\Z(G��3{�j��p=�1?�|�A���O�>�׺�9.r�c,���q����ׯ߾+J\0Bh����\'���3��b����O%��/Bs�d��X�Ӄ�=N���/_��\r��j����p�N�\'����_�)��!���̮<����^Ꭵbd���\03����Z��袘=�b�o�\'_s������Bh�5��gp�J�Z5�Y�5~&�Ъ�F�\"l0{\02��ҳޒ��5u\Z}�)�S�u��HU�\n��H$�%\rk�0���D}��N�����]��n�t@�!P��##,$jU�Gn��]\0��������%Ζ��(�QD��e��L�i��E�R�k��*����5�V�e��d����hj(t��=2F�l��8E*_��</B�?���*\r��B�;A�2E�K�0��?� �^�]���|�OF9.bGF�EVB5ug�ii��Z�ZK��p\Z)��1<ϻ�J��6�h�����Y@S}���P0�Pk���La\Z�J�2��b�1;�bO���\nI劏�8��r9�=S����\r~Ĭ���\n\rY|��F{ݹ��\0T*�_�j�Z��������):�ū IGI��0�N��JE�\'�LE�=���Q`:��@�c���ed�\Z�����s�?��Hu���q�D�stǧ����(Ȅ�>˺��9S��\n`��o�<#T���`�����d���$!#�?�D��J�\'|\Z��,�x�.����;�����a^0�΁_=�j�.�V��~�ftޯ�����{�\"�?���DƁ2�l��3�B�e�0߼]o�s�?�oj��۰�AVܯ��/��\r��,��{�������l���Ϟ�}�]�����))�)���w����jvtʬ�9\0�E�7c`�p5>D物��fP\".{hq�5��N�_�D�ds��kZR��5�g�Z��93��\\[��2��\r�	b����ϋ;�f;zB�i9�s{��τ�\'������?��2 �A�bs8�������3W{�r��˺�R�<�Yp�E�N:$9��E; L�Ϩ�?���T=�=F�̈́\0�\"�D�|3S����<v�[<bOԐ�ZI�2�X�ղO�Ry���8���0���ղ~�C��k-R淅��,�u�UA���E冁���,B[uYR��� �!Q�g���@S�-�<Q_����2�P�\"S���:,�L��n���[jԧ/��&_���rv�)/���:v�ej(�JKX�\Zv��(K[���kP/��h,/#@�l2��fzy��x%G��m�\0Rx�v��4�h��Wp����H2��섺c�i�@ž�\"��F��y?�\\��4�>�����\0Fy��`Ӌ��أLiG�yx3|��G�«�M=Ќ�K���x{&+I�̎\"IYUje*RV�f��-��>�=j|���7��H�e�ժ��6��fk��Zi�:<����d�H�7�\"��>�b��imFm63�VE*�vԝ,b_�H0S\\�� ��s��bq���a�_��(�t3��7Ӑ}e2�i����(2w|�V���~�ކ�M	��T���wF%g�X\'?H�:>�bq�b-��������$9}�\Z����]A�>v\\��9���珶Hdʙ�L�\\m�+�l��Sa?���uĞ�tH��pn�ք��$g���;�Z�L��H�g+�b�E�q���;���I��ɛ�?��O����Z���U��Ʒ��:_�(�Vr��9����%�*@�rR�Y|��U�1OG��h�X����n��+����FD��g�x�sv�b,l4̱4aXoA[0��ט��ŗ.�F��X%+N�/�=�Qt�}̓C$:�;G�M��n�IlK)������u�SK���?;5� ��=hWd�����-Qu�o�)���]��c݂���glx){\"Ë�#���=�������\nY�fz`ߧ#\nnu>�խ�Bb���s�� %D�a�	�N~\Z~�!�#�GWэg� �\'�F�>��u�\r��Y��X�N�k��۩�T�/{�O�\Z/N�s^U����	�\\��v�Ԅ`6���1��M��h��#a\n�f���UV(�}Jc�\'�Qd�\Zc�נ�\0�z�XWR�rO����h��gT���L�������u���`Dc���3�)��%?�y4��/g��.J��4�&^��v�Âr���8C�X\'���s&���.!Ɩ�Zs<?G1�-��\\y�4҅����Eh�mTvx�5���{S�pW^ށ�7��U\'0�):�T�3�>;�fl��8A!��=_kμ��U;~H�����[��_v8����LFQա�/���N�ƛ#�39\\o����3F��e���N�ev����B�����Z.\\���x=�\\����M��i��W�П�s:���Rz�����&���]�#QH�=��\Z#9�1)�/SDL1%��u�LMN�\Z�}�@��:�n3����&�	\r4D\'��gAz?[�C�1&\rߝA��K+R��C�g��#��[��:�T)\\��G��_�}nCeͰ���N�\r�t]����\'d�oe�;J	�?�j�Q���9��7��\0�&�6H#���ҁ��#�p�_J|������usP���%q�҉����h\0����R�����`�X�|𳙉Q[�$\n\0����j�eQ���\':�[T�r�&��Q>D��\Z)�b	��T[wJ���Y����UU/{�5C���R�� \'��A�����.�b8l�\'�C!ܝcX�Ь�i�٣O���X�Rщ}C��f�Yy���S�k��:���e��{�QT�@�X�����kE�ǰj���`,��70�v�$JF�QM/PO����^WAs�p�=�W��˒u�2 ����[���L��g�N�w5���P[�~���\Z����4����q�i��w�4����\'ڨ��Um�ĳ�6l����\0�qL�@e�4=�LJ	,�;��~�>^���Wǹ���cs\\dB`l\n$IAu\'�R�\ZZ����q�]��x<����xr|�*]&�����FQ%�v�_�W�}M3�x��cW\r�����=�~\0�c�㧦���?>��2��Ֆ5A5oS|4��81���x|lH�{���2�S$?���#F-7+|8�NH�w5�U�X\n��׽�2�s�����Xs]������rSMh2/�Qs�����}*S�s\n��ܛ싈=�uO�~Z�M�O\ra!P� ��\"~_CI2�PũU�/���b���h�/^��1��5�I6�B����p���&P��Z�p�I�\"Q2(�U��\n{g#��G�#|���c$����F�>�j��y٪�I�3@N����k�oet������Jڲ2�Y[|z�g����P#��\n\0�LF���0����p��v����$����������yN�}���DHt�	�!��UZB��z�|	dUа\"�	\r�KL�����מU�e�:.�g��7��m�M�!{>�;�#T����/|��q�u)����e�x�z˾���F4Z�e�ўr!Swf�F\rv;�-�u!+H�7H�$�Y���{�z�K[�|W�\0�E�I�oIa�ݐ=t�4��+	KpR��\n���ۣ�Y\'�s~�Q��T�P��3��W���iD\Zt)�6�f�B��3y�7pX�7��ڏ#�=����,#�^�&/��\n��HU$��P�rZo\0��(�2llMj�.�I��s$ǎe\"�8�LYh���H�iV��+p�g��5��(�a�@�y��_�xmN]��VF,��h��u����]3u��i�;Wj�A���T�|�N�R.\"n١N��c^t%�hAO�-�؅6>I��<q��<�߲Ԯ���F!����l�ϞpM>�{���D���5��NW0�������i4��GGxm��Џй{ֵ�V�5��r�?��ɖ�A��������轗�e��kr�����:�|�v�}Pa^C�7��!���T�f��v���f>�U_5�}�y��Ļ�H�s���_v�4����m����ykG�-~���>ͮ����T[־�lᎸ`��~wS�Ew��N��Q�{8\r���K#������8:y���w�����G���6�ʌ O��&$��}��Y�{��m��㖃�%������·������M^_.�����M�NC!��&]�ǀ�m쀅$?�j\n�����L������w�Z9B�`s�d��W�`.l�!�[�nw���(l���s__�\\Gg�-��b�-��b�-��bc�z�A��dlٯ��wOWD�\'��߼�{�>�7o�����\Z���}���k��Y�(:}�6t�{{z�n�\\\'��l�p7yt��^%�$��ӣ��7��]�g�q��n��wo�^�>�{�\n��9;z�DM8J�J������O���8�J�߾ۻyw��MM����(.�3�f��π�� �\nJ����������]���U���чd����ó7gI�=^�M��o����`�V�~���t���&���;�9=��{�������ޮ��ܟ&w�o�>$�w�fݬVr��ã�������]��G��Pq���&s���#��e�|6>�����������z\r�/Ŗ����;v˅�?\0\0\0\0IEND�B`�'),(1002,'����\0JFIF\0\0\0\0\0\0��\0�\0	\Z*\"\'#3#\'+-000!6;6/:*/0-1\'!(1///2///////////////////9////////-//////////1/////��\0\0�7\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0I\0\0\0\0!1AQ\"aq�2�����#Bb�Rr��3Sc���$Cs����%�����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\01\0\0\0\0\0\0\0!1AQaq\"���2������#r��\0\0\0?\0̄�S���5!�Ɖ�<��y��!b�Y5&�\'�{�G�=�	����%��q�L��9�9@�\n*.�G�j�\'z���B:��5���)�BO\n*��3AL�[OS}|�;����@��w׺��Ĉ\"��yQ�I\r*��N�����.�19ϝ0�p�xT��?Ρ�,�H8f�ݸ���Z}�\Z�{v]�>a.��Y٧\r��¬�eOM��i<��:�F�M�\Zj�V���\\Õ/7�t���Qʜ�����TZ�\0�%٘�T��{�B��B4�	�Q�x,}��,��@Э� H�Y�TΣ���b��u�sMN����:m�����+J㄁��ui��\ZX@��V��0,�-\nn�$qK\0g\n�Z;�B�\Z{?JE���Z.���\'��R�\Z�Д�0X_`����r��r׾��wg�W*|k�Q�c�5�\'[��	�T\"ߌO�STЙ�V�����+U�̞:d��N#_��R�G���4�h�d�@�|�C-g8����K�@3\\r���V)�M�Ƈ:WP��>�Z��(���Ӌ|*R�	��-=�(�ب\Z�O*<(���F�\\)��h�4 �Ȧ�N�R.n8�����Wؗ]�%��Z�Nh�<9Iy=���Ɨ0Pf�$�s�Ik�P�\Z<Gy��TN��g2\\���>���y�\"�3l9O�Ut��V�)	_mؐ�}n���yS�93O�\Z�s�̢��H�R�M�����=u�iP� �+�Q\'�^W�/H7wR�����������ߘ����Դ������ @��f8W����cϞT�?�p�5�PG�^zK�I�!�;�BA�#>�>���0���g��@n��҂K�q3��V��r��D����jl��8�H��{X�@�:���8�7w��n%����X��Q��l����+�E]���Y:a7����Q�����\rv��n�\\P*�9�wJ�*\ryf���t�q}���7A�J��`N��9p�yeW����s��u�{rPB�t �>`�c����¾z�v��[�:���e\'��e*��=��Ӡ5v����w�	�x�xW��.h>e�������<�9��3�kA�$�DA̍pF\"��\"8MyjL�K3�48�>�U{��>���n�W.�*3x�2y���r�8�I\'��<��\rF~U��=!�NI֝kp�wJ\"���5/إ�ES\\���4e=8�\0�\Zr�R�n��dSh�a@\0�8�p*˪���4\'���18�C�����\rv�n;`��\r*����kPL�1��:�f�$�5Yl� b�-�X	�k�H�,�-d��.�Bg>U��xy��9pǬi*�?�D�\0���1��i#Ɔ�N�;�����Jj�Q;�\'���}����͒IЏ\n(Tg�u��;�c���������\'��69�9N>Ua֞C����1&}���D�2;\r\"\n�s�?J�F�o�3�U�}D��`�?9�Y�!C�>_\n�h�DO��%1���?*���$�Tېr��9Ҳ>�:\\m\Z�Z_ߺ8-�#{�����>vE�1���<��\\͑�#��[mjR^q�0��|�<i�(�J**2�$��$�jע{�HaN���H�s�{��ŁZP�f�� BI0���I<H$��7���Ȣܚ����ǟ�<ڶD�~�l��Q֗�켼��(O�%#y:���$b�z+�6lB�d��嬂T�\0�/����V��B�T�����y(	D�4.���p�Z�+J�n��Q�H�\"�,�NL�ܔ�W���Je�7�.�mB�q�H��2��5\"���e������G��k��j��0��P�:���R�\0\r�o��΃���\0���՟��\0w����;��K�����pW���UG�MŻ�po&�N3�mG�Gt�f�N��b��z����*w�#�O�N�d��M��ҁ��H\Z�TErb��ޟ-��}\n�үC0��v֐�yǔl:�aJ��)	)	\0��wR��/��\0F�cpB԰�����\"$a^��Z�.��*��]����[uH?x濉@$q�w���]�h�K�hB�bwԢ r���$���t�S���-dn]ׯO���e�#�z	ӗ,�m�rܜ��:��ӽ:���D��Hu��!cy*���\Z�I]m��%,o�\'��&D�\00�@$�A�2*�n����ӫ?gp�I��o��r�\n��pb�q�#u�����s�.Y=oe$�U����/솣S>����Ϙ�U}���fxF>u��q��zP������\"%*\'�~�!�x=�\n���ʁ�H��)�I�:���қEj6z|9���8Y�\"=�0�r;\"y�EN�{&�4M�3j�4ρ�𡿳�\'��\\q��M��G)�\ZP+�\"�{�?\r+�Y����\'���K��X�-:�^��ƹ�_t�C¬�0TA�:m@�T(����##4���t�5�\\\Z~�ucK������.�j��ٌ�O\0Iִ���2]�@�	L�}m&\0<NO!�^�~�(ÿZ����yr�rU-Ý=`r��[$�v���͐��*P2TO�q�V���(Z�\n���I\'�4I��S$�})p8����c��2M�K�`��5W� �)�<T�6č�ɂF`A38��e�\\��fH���Oݎ$�>\0����=o�r��֕��ǽ��@T��Ĉ�\0i�L��K@I��<��5�R1]Bb���;��	��b�l��gHY�NG�Iw���%\"@�k�$Ε�U�J��D��	������\nR�S�f�����e�5J����v�>��)@@�\Z�qGm�&�~��_ש?����]^%�V��%	*$�\0L	Ԝ1_=�8���T���	��\0�R9h+�}>�p��\"Z��q�x\0����J�/GO>�зU�\n�VF���Q�\\���e\\+���\nX1K$����|�G��7]�,:����B=X\0\0��2F�I�#����{?�\0���[;�:�*mG�����$�#ʵo��+iF��z��F�s~���#�FzT�G��a,��E�@��	�L��O�yYx�2)��^��\0F��!ҏܩ�an�V� 5rؕ��ѯX�� ��UF�t���]�\0������>��c�&�.��{A�޷q)�@߷�mR\']Ҵ��ט8����[f_�[^��V��)#���n�N0/�*�45OIG��P�U����5�Zz����\nTFe	1�/�Q�wx�w�s?}?�l|	�{F���݋�.l�X��-��;���O*=�������(�ʙy���\"�m��f�y����t�.\":�Z5�s�����	_\\��d�ܕ�jON���[[=���qC�5���\0��U-��Gi_���P��w�UԶ���+�jǠ��l��kh�䥑��=ZI�@H�3���dN6�*��O_��.\":�W�57]]�\0��l���:�B@\Z�>9���۷.&��\nCc��3��p~\'9�����+�ڎ�h�\"I�[o�G�Xr\'�<�\0�m��[����K��`.9n$\'N��*PmBW7��K��\0VR��KB��}\Zͥ�)I!AHRs\n8������=��չ�6��0��Gfq1$���{������IB\0����3���R!\Z�U���]K6��[I*�@��0����&O*���Xd�)Z��i��ϕOT�ފ�D_�,8��1\0%���/W�w�m/�4�`�wh~�����qk�Z�E+�ra�̞�a_ᯩ����iI�%�����>.Q�K��\Zwvw�<g&��������\"=��\"�>��Vk�������W�!;�_P���=������gMdH9q��6�J��@\'���\nr�P�>:�͟�=FI���Șm13�A�\"A�3@wa>2�:�B@��5�݁Lz�+*`��~}���z߹���ҽ�E��y���1�� �ug�vy��)HP$�\0ɝu���h%!>��d��}xҏ��K�����||�yV��\0�����Z��71����x\Z�۝uEK@L�Ju㽙���S֗APQ�R�Q���꒮�}Z���W̏�任<�g�K���i��G\rO�үQ)�r�p�J�|d��S�)4$\'Z�9Et\n�:���\n���&�\0 ����ʸ�@\rݤ�КtE\0q\"�2()!�@5�i�n�xpi(hy\'|�\0�j�V�l˭l�>�m�;�IR�B�wԕ8����\n@�𮚼Wv���}�dp:\Z��e��ҥ����R��F�	Q��\n�����*�i܈�X�t�1?j��a#W��=�\n��\0{N����péX��ԐTېO��[�5�����_e����\r��I �9����^�]��K�5���	�]��(_�o`颳�(`V?l�vv����>������o%��C���3�1�1W����\r��x�u�?��x��eն�y;�v��M\0aƝi.��l�y���V�o���bd%޼MӍ_��� ����tF��R�$R��P춅�[�_B�k|㭨J�aHB�e �y���U.�[A�x�@@�&尗�A�:�.2�O\01��䫫el�=�\r�l�N�:���߸�	+Y(i�����\'���O�52�M�h��c�a ;z�i>��1��2�F�cd�2�\"��IH0@V���D�Gcf�_gg���;��i)	�4��%)TG\n���{����4]�?���n�X�(����N�R7Q�+k��N��M�m5 �����Q�����h�*.��,��6^I>��${Mjv�m���1r�J�p.I����0k�%U].�~����h�[��K\Z�ݕ�^j  ��+k۷t�E�O�_�\02��\0�\rZ�ۡ		m)JF�@\0\01L�6e�]kyH��o\rS����f��t_Q�+t��\r�\\%�����AM��o�B`�\0��$�W�}�}���WB���#{��_1����l��)E!i($���$�A��W�zt�d�I���\\{�]�ZOd��\0D�sT�C#J:��k�,�ѥ\0v��EJ�\0v�E<�j8�	�J1NQ��\04��M*\0#fi�Tf��HI4\0�mqI�I:��Q<h�Ӈ��O���@J�f�W>�8�t�k�`��$�3B��Q�@$t�1}v9\\<?�*������iN6�����-k\nI9�� ���k��,ؖ��ȈPpw�O�*��Eͱm`��~�ג�������Hq�R��Č�^�R�u��H���ߣm��ے�?��\"�;�eA=J���sģV�\'j=��mh��YS�x�%�|�U/�6��7��W<�\nZl�\0�H1�ErFmo&��W������\r��X�Ż��#��EPl�+\'�{*��\rV���L~�m!)�P��Hػ+�۴j��a-Z��������\0ND\n��vn�k�Y�ZY�\0��h-ӨB\Z���I��uBV�7��D�ҋ$��l[� \0�ۭ�Pڌ�[�$)f��;>5E^�p�:�@�����}�I���\\�uZ�0��*9���i�R��WV��ڡJHV�i���aJP\0r#5Տ2J�*26�($y�&\0�$$\0Lp��c�\Z�?�r؍��]Pʐ����(&��{g��n�Sj�L3pL{�TRP��u+\nL�&��L��ک�ԆU��PaM��ڸ#\'ww\r����\n�\Z���-��lVz<��x���I(�&�H��ez2��\'}�y?��ʇ���gl�L�p[m��SI�w��i��$w\rkR=���h��7���<���>W.I�V�v���z*�I2-����8*�=��B����$�J.�wR�$�Y�j��ڌWz��8\"墅G.��I=�&��R�Փ�J�R�Ғ�e*�B!܃���sI����Q�Ϥ��1yr�-д6��}�TB���X�!C�{o���\0��.�\0�/����_d�7�3n�)�/u%~��7���[�\"q��_�v=Nεl�!�JX�>�\Z��V�˵P�i�P\ry��P����2�8��Dys���S@\rI�%3�O�u1@P�\\\"���b�@Q�R���E*\0c)���)L\n�?ӖS�%(V�0�D����c9�i�� m��&V�̈\'���k7�=��F�7 ���\0�u\n�=���K`%(T`�A;�gMxQm6�)`�������=bg �MO���>cV�*u5���}bЕ&�>���\02G$�<�On�F�\n���b\'=�W�l4�9������n������?2d�	�gO}U\'�L����BA B�\0�\Zg\\�Ry\"�dj��W�T��q����T��IfpD�ƕ���h�*ɍ�C��~b�A̋�\Z�٪�v$�wdS��S�(�@֫��M�\0�.ƅ�݁�+=镣�\n�\0��^�zuyn��Ì�О�������rO*�>�lT_�:ĉZe�p\')3�xA�&�k���wg�%��[JR�\'B�D���\Zק��90�5mm��v}O�6�V�^Z[lj�q<\0\Z�G�Md��;C��U���y��������y��h{��m�Ǯ��..Be*\\�����`!�;�{�bkK�v�,2��q)mT�t�$�\rI�y��2����*�վ����ܔ��;N�u�tR���x������Z�����F�V���{Rx���g�b�1[E��_ ����Y�d\'�G���q��`\Z礻�.�cdے�\\+�6x��1�R?m��;}_eօ�������ݸ�JCh,�\'��i;�M�Ҿ$��\rE�iL5�dUp��~���4${kg�f�-�X��q�y(Ju�A*��q*\'�������v;hN�m���8���U��I���I��tTY�B��SeD-.���qB�c�m-�¦�]�6Ŝ����7�iL�}oD��\ng�V���}�o�]�.Ae}���Ğ�濆�K-�6�{Q�E�Ǫ�H�������y6�ڵ�_1�+��y7�^��l��Mam����~4�\\d��\'o��6\n.l�e�eVo��}Z�B�ϙ:U�K:>�����Ut�i���A�G��#�Ԃ^�����b�%�����\\I�u���W�N\rs<���Ӫ�\Z�I�y]Jж.\0�0�G6Ύ��&{�~�zgua�t��*qI\n��q�O�j:E}b���Sa�B� �_����J����^A�g��y\rZ[�u�uN7�!(*���2dN�I��+$�J���\r�b�;��}|�J;�y�p�V���_Y\0�W�z��m._�zZfq���Ox�\n�[U�9ݚ�72�NU�Q�\'NuWc������͡Րz���x���|k��\"��\'��u�����y �ā$`�Owx�Pl�P�_V\\*�	L�0G��5/$WQs#L�BP�5���H F��c�?5�h\'yC�Ν��5�w{J���L��e}\"�I������	;<�<�{cm�P��Pp�D�rVs<�\'�=�̍C��NI�X�u���Vkf�O�+ �d�kBq�����B��j\Z߅$�\0�Gy�\0M)��v.u�ҭ9Z�RY���]\r$/x���10aZ��ҫ�q�̮�q�=�(���5?g))ZI��f1�4j�٣?*��Y�>د\"r{�Gr��i��&$D��|* Rbc�#�x�)&����ǻ�����58��B��w)��V���m�n��H� �9\0�ҳ��3�;W	\"����,��]E��]<\\Q&I�<�\'��\r��_�i�	\0������}\nWz��-�xk��&��e*�S��#�Еv�^uӵR1\"�ة��	R�j* A�L`iG�BL\n�������i@I\0�OʭZ�h	��|)M�I�^�m���$\r �\'�y����$��l$�\0���p�\0�&���m2=�u�VHy�$��D� �#B+L^LM=?nÿS羁^4��.�����\n ���9ֽ�VhR|֎�\rb9�\ns8�w�y_�>�*�E�Ul���d��9+��\'\"��|)�V������wW����ɊU�?ֆ��}�oCHS�*�w�F�$p�UgC-�:ۇ¾�rB��Q-�a��2��	� k%�^�ԅ���u�&!KOiT�u��N	�M�ۃ}��I���O)I9���1E�]���/�.<�J7�S�]���l�ʼ|�0?.|�\'J�7�5z����\0mXtpI�|���gq��O� ��P6�)�#�<xt��V߉���5�H��H?����Ԁn�n3�s���!ʬ���nY�	i�A�eHP�*�x���*3�+IB���%IP�\"*����[4ڤ�e��z��|\rd���Ǿ����]�u t1嶇,�T���?�ʿ�P�t���[�M��R���Vۢ\n�TH��\"B�����mjM�C�0JVRU-�:���°��HBk�=*����:���B�d�$�AQ�܉�·��&|���]6����\\�X�(S\r��(�J�����N���A�Djk\r�=��ǒ�{)q|�~\'A�yM3e����N�Q���N��yj<?�W��_a�ذ\ZA�Q��#+Q�y�p�ɯRy��˄�O�}G��kN����SBwP���1�|��$h���:Gkq~��8��U_uv�N���+��4��4��-ܒ���7T���A>�p�&T�Q��=����5ۍ���H\'��4���д��I���)���*zn��:�gH:5��Sc��w�h�� ���8��]j�Η��)�nn�Y0b1�Ps�yf���\0{��u5ۤ��W���5hs�\'X里I�?�_����9��=�َ?1�k&�$Lgkn� *{#< k��U��BIƙ�n�+\">�W\\����թ��L��{���W��\rH�\'�4�\r����5���`XV\"�ہ�V���R\Zv��I�,��ʚȨ�<��W}E\ZXu����u3z*:W<���AaCJ<c�u6����R�<S����3�V���>����>4EoNi�p󦬗A�d�c(̏/ҡ��{���N|(b����X����|�&�l�p59��:�Q%�R��:Aȃ�V�~�B��2���,�	\'^�>��w��b�գ7G��)b͓��a�x\r�/۩m,8�P���\'x�h��Ƣ��	��\0�)�B�� n�3ϭ�W�_�ۨ�}��H�1�uI� ��mG��YS��G��\n��^��9��5{�4�c�����i��;(e�dn�J��I2j�ۦ�:-\\[�����i*�OT�|xJ���~��;�ică�\"��蛽7�i�iy<#��*z��Po���K�䥴6���`�#IT��1ʁ�HM)-��O_��	��\0���\Z���z=�V�Z|W�\0�5ma��H�$q\r���O���N����ຘF_ZB�V���P���(\rGq�wF}\\\\B����v�?*G���M�ћkx-��������\0�\n�z�Ƣ>zV|G���\n�W��[��1�V�M\'u:�2Ty��OЦ^\\����]\Z����k�I��I�3Ձ��W�!%Bdy��)��U�9\n�o��י9Ƞ&��S�x���%g���Q�$�Z���wَ����p�KR�;�S�υt�	x�w��Y n�D���\\��*HҜ�QAd����Ey\"q���n�b)0�q=��5ڏjOX�x�\r*�+BHm��4���P»��s���Z%тM=*\ZoUR����[j��8�2�,ff���*�n��}9y����uIH���EGS\0�<�V\Z\n��9����n10NM�fh�駺�\\H�H�$�:�	�Rٸ��b��H80Dw�?*��e�w`#ʌ�華�T�`��5p9��9��m�>�I���|��ݎc�ʜ/S��,�J�u�s&&�.@��U;�)�hb�3T��8��#�{������6�����|��S�R�v��;���7o��}{��]�c�Z�Y�m�v-޻��7=��]�F��\\b{�U�4h7�<E\r�y{�����Q��c2#��\0��RQ�BJ�c4�����?����p�5Mi¸Y�<jt��BN�^�GU�V쁻21Ă@��ڢ&�R �9��ƎV0�Dfh%�����I�rg���W�>�L�3����ƪ1lL�u�L�i57~�A���yxP�s�q2<��mh�C��̒�s��iTM���S#��ҫ��tGU	:ҥ@����*U,�)��J�Hѥ7�*U�\0kJ�\0jҗ*T��9�tE�μ)R��\Z��*T�:SUJ�4H5�N��SBt��J��+Jm*T���s�T���G�p�J�0)���J�\'�(b�*���A�R�V�#Q\\�J�\05kC\ZҥT���?�O��ҥJ�l4��'),(2008,'����\0JFIF\0\0\0\0\0\0��\0�\0	\Z\Z\Z\Z)!\Z\Z\'\"1\"&)....\Z 385.7(-/+\n\n\n\r-& &-/---./----------/-5-/--------------------/.------��\0\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0D\0\0\0\0!1A\"2Qaq�B�R�#br���S��������$3CDs����\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\08\0\0\0\0\0\0\0!1AQaq����\"���R2Br��#���b���\0\0\0?\0�4�(BR��	JR�%)J��(BR��	JR�%)J��(BR��	JR�%)J��bb����fLԟABB@+.��=Ȋ��\0�t�*�J�\Z�\\J(K%Ađ�H?jU�J�k���(BR��	JR�%)J��(BR��	JR�%)J��(BR��	JR�%)J��c�)mK;ub\0�N�ڄ\\��V!Ƃ%!�A����MD��=�Vճp��E�#յmt=*����\'��Q��{6�Ut�ϱb)�ʼH�fl�����f�`n��>�t�A�^����P\\k�ܶ�qGf�P�A*y`���Ֆ=�\ZDq:�\'am[pB�#0��0��:�eH\'I��$�l� � �m	:{�cΠs�ʏ:��)����]yW���ʷ�;����@���ā��q���\"�bd���~b�%˻�o2$Dt��W�/�_�\\�����}�SCbj�S �\r�8W�8�紹���������A_ّݑ���U�^�g���ZKa�t(k�<�q|M��Fp^G�^����ܳ���z{�|������$�Y�޺۰�c��@��\rw\ZܭC31��(��ӿ0Y�K.r������\Z(���ԙ���\"L��cx��;@�\0H�ou\n7s�4�;VV	�RK9ݎ���zT�i6�k.��r�PK\0ܝ��\0���-p�ȢJ��s�/��iS���IR��	�JR�%)J��(BR�1�A-�3&p	]T�-�Ep^h[�Zkn�!�X\0�}\Z�IQZ(�V��i��^���\\O2ᭉfh�����ֲ��^���uLn&�QEE�DF@Ew�\nWU`v�M*z敁�#�+�]�uˡ�#4��UwG�	\'�\0֊��p��P�̘>���c�P}+�9�\nL�Nچ��@��n�sM��ØSԬ/�+Q9�#\\��+\0�ƕ��N�x\'a�T��̨�#�-ڶ�\'0_-�`@1�g�p���sU۶P=�74��F�\0��m����cu�@�bk��Qҽ/U�/�X��V��<4f�<����Eغ��K�X�%�w�a��� �X�1͘�@*�P��f�	�>�Q���ޒF�IԂ&N�:t�I�s�&C�P�w�9)v�\ZR�YF#6Y�\rT�:���\'J�t�fPK�	bIf#]��*N�2 A-�wO����.ܓ�_/*J��9\"�{|ز.b��G���Y4\0�=N�ZĚ\n̷��!U����~��(��e�~�\Zo�m��a%�woz��8�\n�xsv�Ӷ�D��X\'Z���ŝM���b|��F�H��\'�^|W��u\rx�U��#���4�]�x0\0s�O?h*Ņ�uT_�>���n͠5��F�b$z@Ҳ/s!�8���v*r�HS�յ�E\"��\\��q��B�U���ԁ�S��n�S(�+���=I�4���!�!u���~fz+?��9�r5\'����ڻb8��l��@$�\ZF��5T��,�,n��qU����\"dƊ`�D�\Z��[6�Z����f!m�6����d��A�\Z�D��L���2��{�k�b��qO|����a`�U5�:(��d@��\"j�ð��\\�z�X�L�I$���S�^2�\'�/�A.ʄ�\r�!�\rA��ZiW��S�kj�^�%�{��A�q�]�JSդ�)B��]X����-���\0>Eq�*�!V5&\"=gJ��6\r8���\ZKI$l�!L{�})�W9�ݶu���E�s(p����6�L�^�&ձb���\'FC ����O��1V�N�D��Lw��c�X5��ߪ�.)��-�Y�K\'X�-�lY�!��Vд��E\r��X8�)l��X�n6����4iQ�x�\"vfڝ��Eb5���M4�Y�9�\Z�/\"�\ZHt=L�	hF��X+���,;	2\0e�ӽ���*ev�T��󑽧ң�����ZVSe ���w�Ԉ���7-�N�f�z�	Y�����G�oU���{Nn\Z�2߸5�=�*�\'\nIe�騅W��0$�]=�C�Jهå���A�n;|/����b6\ZL���TNq���3�}��\"CgR�m)ҡmq��W�#��c:I�\0���~�đs���$ N��oz�9?]�snB�\0���hC\'F��#7W�9���Fp��b���fC1\"�}I�?�V��Վ����6��X\n�s;��Ģ~���T�T�3��k�t��Ai�#,�M��@�ett	A�����E��v�Vs\\\Z�\\G���I����[��->�T-�)}�k�[���Z����{G��`��9\ZmS������o�~�ɾ�D��|�\0c�b�ߺ�������e��e���\0o�Q�������\Z|(��-i;/-�@Cf�ki�l�1�m_�=��@o�C��G�Wluӣ	�?ҭ��͘|\\*���h��\'f��Ҧ��WXq\rdB����<�6~Sa���e{J�;�`N���c����,Z��p�<�|V�C�\0i��j��\n��\"t3���K�Øn�3��7�[����cJ�V(�p;��\nǬ��4rHU���k$=�`@7�>�TS�&��X��s܉0�4U�\Z�V\Z�m���S�N�R3��@,e�[����G�5%{�0�����\n䰍櫤��D��Qɚ��5:N��|��R�K����\r�u��ZaE;���e��v�\0�����X9�33K�1,BĈ:��ұ\n��s11M@*�����Z�v��8�{s!Pw�<\n E�!��:�R�R�D�I&�I��=�r�8���Ҩ�fpJ�m��,i\0̝b��\0qC���݅$]�V�\nY����#Z�+�^�:���iH[h	�\0 jc��W�a�ͻd3��RI��Dɒ`z��6��r_Q�Q��<�@�z)|�X;If͹b	TS,�r��m��:l\0�T�7M�7��Q�� ��i�^߲Sr��Rbu\n�u;�N��I�5`-�6�(.�.iJR���JR�!bc\0\nX� It�`�Q8��؛��Ǫ�����G���_0b�;v�dɘ�=�^��{�2GL��VU�)c���1\0I.���H5���\n�Í�p�A�U�\0�uuom�9�3LA�+���<�Jp�Y��\'5���r�A=uVX#˧�fZ���m��u����Qx�����X�A2˅�2oo;�)���uP�acA��ڔ�1���ul��\raJ+>�\nI���|B>LB8�r�om	�=A����C�)�ܶ`�����-p����/���!����OR�N�zTo��S�,c]���+��^�d�ރo���ܹr�3w-�����j���bݨk�q���}_��X+���`ye�\0q�����Y�������};����:݅�mc��G��U�y�WmX��#�۲�\"�_���C���X���gf\r��q��\'`\'���,�P�s�9�[\r�hEˊu\'b�F��־�k\\��;`�1�\0��5��Z�.�,H�\0�]�\0��Z�����!B�16U�3��@�b=�5r��zⰗ-�-���V_���\0f�&Qv���U�`\0$��\0޽���͗�_��0c�鿮�^���;���?/�HR.�\"i�#Y����9+�;L�|C�x��H�@�}�+S�]�� �AF�� �Y�\ZKF��Ŀ���f1@*Hq�P���XW���q6m���ޱ9G�~��[�3�r����؂�MW��liH儐��\r#�,�\n�s!ƇG\0A��o���>�fN����EV�+: �����p͂�S�>ǧ�CLx�C�-�\\w�;n\\�����\\�}���ݥQ*s�9v�%� �h�â��	����VF+����p��\\�#h�D�gP:n*/Ů\\d��@|3���(��6�w�y����e��p�5#\n���elC�7�\'M�-��\r�K�9��-�12�ڕY����X�;\0׎D�>]�����$}�͏�pI�|�g���(gXc�yi��Qk��/�A�9^Nu�h�iP�eNSq�3�P��rt���L�q|�k\n��T�GBȠ��h}	���\'#��w;h�\n���zx���^˷ne�b��{�D�i%�S�L��_Z����\r�g��� ;p�3���a�\\e�bUIL��$)\Z\\`6f:����Z���`�KM�_䩖bL��wR�z�|�X�f���[�~��)JS��JR�%c_��	� u��v�����l�IRg��0`��m��h�k��n#�p��\\���D�ٻ��<�k�4,��pv�2�a&bv3\"5֯��8j�f���u$Lh����Zů�Af#\\��ѱ�ZOM��J]bÞ-m\\�+�)�	��-J�C\Z8�������Ҷ\n�8<J�ѐ3�\04��dIt5@�7�&R�J����w��H\Z�5=���G;(w�r���U���Uc϶^�6�����Jگh�3O�M[����H]8�.[�p2\\^Ʉ�T�1$�uQ\0��;�^n�䶡W�u>g���Q�-qӳ����}������Iy80	sG���6�)TԨ^#�8c��v��%�=�WC*)�2D������|�F*��8a�bŤ|��~��dh�^���?q?�iX\Zq�[Z�\0����D�3i\nʾa#�:W{�^\Z^oS[ �P�F[�<[Aڴ�류�f$��I�~��w_�`���V�[ǃs��j�[fa��j�\n9H�D�Mea�+d��OP{f䘂[���J�U�(;���\0���	8 Bh�X��aK� �e�e���X����6�\0���������_`�3��J�Xn�mg�Zg�������p(���������$Y�b��_\r�P��rӉ-�r�\0��-��q�}��HC�q��l� �=A�+x�>��6�������+[�Hf���B�} �y��o��=���2�̝{�F�O�dy�ڥ�4ǝSa���Nl@M\r��������Ov�������\0a[Z�o&�ˍ�G���+�\0uo*��\0��O6 ���	�y-i#V�\\�E�ڸ�r��n����w�.,����/�r��=䗷�5Q���U��[r�F�\0ʯIi��>\\A���<F՝=� ͊�Q�8_�1��\n���c	h-�@`�;K�x�8�)O��U�9�.b2�դ�[YT^�\r�]�EX��-��]K�I�,w�5W^|\\�|YK\0HI��	ں�]!\nhQ��#������!K�m�*�7P\r���%��K�u��Ds�L馹t�ޯv�I��K�\0�9F���A\"Lnw�Q���6�\\�$H˘ɉ$�ı2`yR�ځ:\r�O��&����/C`�<}�,�W��\'X����^��e)JP��)B����ڛ9��WF�0D�u �\0܁&5�;\n�s��:�r�5�C���ܲ\"�_\n7r�ˬ�����\Z��\\w��\\�	j��B��|��V���O���t5S�^!h�F[�t9�Dk�(${�1��x�U�sj6\n�$�X��<#+~�~�h��GY�co��N=�rT5�c��2�}��ޫ\'�\r�\\(\Z�\"�U��`��+�ļ�A� _���UH��g�J��]f\n�K}XzB$�!`?���4�+������j��18�<�.5��G���Ӆĭ���\n���	��߈ys�\Z�Ӎ�����2(�H����,�iJVuU��|������?K��\0��J���>pյ��X�K�n��=� ���\0����\rvF����f�?�}�^S�mZ�Ubݲ�I� \r=I��\Z>D��VM�U׵n�$���\r�m@��]�R��nЖ�l�\0��1�N�F�^�U��c�mz�]x��NU\n\'�F���a�K����c����zZ��î�)\nJ���4�$b��tS^�j��V�,�Af�3�P\0|č&i*)@���	\Zm����k\\���l�V�y�I\0\r|C��c=Ec>�y�����:�A O�����7���=ƶ��S<�}���k�-_��\\5댤�Sqm1`?�3�P��`j�O��5�R3C��eݴ�-庌n�pT���s1@�^���C\Z\"�8q�5�+n��&��.����gX9.C��2���\rݕ!�ۙڦ~�8�)����-�F����F:�p$4���\\�;���8!]F���؅�\"�!��R��@�p\n���+�C�Q�W�ZÎ��O���Kn�H��6e�\nB�Y�i,:J�kRKEę���϶ܳ���(PZ�\0�z��b��\\��c�ѫkϧ{i���O\r�߽5ː|NLh�RX�(`A�v�|]��l�r��1{�\0D!H&t�=�H�x�$����=�����ZJ����Y�rs�_:)�Mާm�V��q�Kl�[�q��Y�$wؒ�i��*[��3�@;Ո�t~�I�ʵ)qe�]���E���\n}�����\0�q�.��@�fL�5��`��1Y\0�$��k�*U�y����iN�:���J�W5*�JR�!)JP��y�\Z(#s&>�T>\'����¸B����Sҥ1�Ŵ��0^�+4{��Cc�x<B����;�\"~v󦝊���F��Ac�������\"m��2#�N�5]��7�FV]B�h�6��=j/�p���\r�D:��\r���iP�X��\\�y���6p�͖+N#�q�n�U3�X\Z���E��0���:�7�~*���⫺j3�q�Z�3�������>�E�j;��\Zƥ4��q����h[Э�Ǆ����VU2$mZ���G��0d�o����k����n6n],��o�f��c�c�[���U�{�\'��vԲy�����T�\n�ֱ�a����=EH�FՇ,i)��y^�[~\n�*º��G�V�A�|�i.\rl���6�1��f;��`�d���R����u�v��f�hЬ-�Y�NR	.��D�\Z��j�N�\nqG���Lk$i,u؞�k����X%�l�v�h��H�{d��G�z����<�\0�,�q��F�JDHn�h���b���Y��;Sr�@ ���ʁԈ�^�>/��9�-^�vK#�K(�l���GU����G�[,?V�,�HRź�3Q,���mIN�aZ!�on��L���q�u�\0gb�X�a�����3?t�+�{�n�=�]�(`���p4�MaVE�Qd��P�l�{��GO*~�.J���+d���f��fh9�GRd6 ��ڕr���)�~\n���������X�����O	f�R5y�Ҷ_#�꿶��\Z\rŰw�ՏS�aԜ�+� �B�\"Z��[��9y8aR��	�\r55��a0�kv�9\\��4�\n�Q�R�oc�=��7��\0���4,�\n=���NG.5s�I;I�p�pR#��&�Y��;�d\\�b\0I�U����1��\r��X�g(:\r\'S=�7�]�x�!-�Ҷ��D�O�j�������d�Y\"�V��\0�d����+��Ѝ�C�Zr�o��z���C�7�F\r���Р��m��1���2m�s\0I�\'�LOJ���D{6����ų,�sP�����X<O�ۆ\\%����q��%�����\"*�1���\rq��1:�<E����jXՂ�ڇV�i9�m<\0\0�|V)��\\gCB�f��:�>�ĉ��	�F���,��h�4��F���\0�N	�����xG�#�H�}5���F	��\0��j��ĀN���$D\0F�R�g_0R6I��[�k�Ӏ��������#��4����\\�E��[Xd\n�H\\���O���+?�[k�\n�����v��R��=XJR�!)JP�]�q�j�Ch������Q�}H3Ңos/�ݝ�kl\'5�03�����n7n�币��OPw�Tk��땕��-�IpG��s�Ƙ��V#\"�#h��:�Ѱ616�ӫ��E�(��;�EWx�\"�T��_<�?��o��Y	d��K�nz�ٕ*}�ޫ?�qkg*f*��2�̉�4�m��nt2H�u�97l���aT�J�QÂb3e�|����U��6q4~�m��Pc}M�v���#�j��b�6P3jѮbA�55��t����l\"�ᷭ��:�\0�r+��~q���U=���\nN�\0\"�9��.�죭�2;���V���k����XUx���u�����UzVS`�R�\0H�5\Z��:y���X�+֑U-\"�ͷ*ARA`�cV��gD�����\0P��R��D���΀�0& �V���0�X�q�n*Ԥ�iWkB;���[V��pH`v Ȩ>`�,6/�����?�6o�}ET�o�� �hwS���t>�Ү��Z����\0��ιȲsZ9�4\Z�, d�w���$��	�!�Q���>�������n{2�������K���]�~��f��+F����;m=\r:y�L���e�Wƾ�[� ���T���\\�y�����]��5�iI��׊CkY�\n��$j&�y%D��\0-a��,�.F�us�\Z@\0�%�q�G����\r�j������(\Z�Eq�~|���\"�C�%�MZԌ�]�tץMC��Ǜ{��m��jN�K���xC�Ϙ����=�aI*���ju}t�V��X��p�Q���>����O]��,o6�\"۲Z�_�����u[Ca��kЉ��W�b�K�LJ�Q\n3LhI޵!A���[����ٽ\"b��\Z�*����x��M�\'�%���t,f 0\":W�*�^d���)�Y *�\Z, V.	��̦�y��uЅ�=O���ߗ�of�+���u���I��g}zJ!��A��\rk��c�UxO%߾���p�%�I��n���gb�k���\0�`f y���~k>�a�\r�m��d/�~k�Pk�\\Ҝ�%)J��(BR��	JR�%)J�:��Q��bX]H$�#H+�\'�Z��U5��R��U�߰;��t�%O��#�<�Nk�q����( �λiXC\0G�>��ēم��� �Hd��5�\n�Q�,p���<��)�t?��\0�x�^�ڟ��נ#��a�[?�\ZU-߾��g$��u���Tm���NK���	�i\"� �1���zg��;G����>Ǣַ�n*L�}I0��A&t\n o^_��[7&�t�f3�o��w�)�\\�AnD\\�F��k��.\"���@q�ș�H��P�F@�S�e�Ms]֪��/u��y�jǸu\"�y��Z��qe��r�v�*03�)��v�f3ɘu�Q��U�֏�^+��f\0�}��\Z�+�B�� i.QU��sK�%�u�_P��Uq�b��FQ�|�j���0\"w�i��H�u7��D��,��!I]�t�N��&��448�h^Wt>��*��F��ȇk���F�j��[���0����T�\'�7n-���\'ߧ��7)�1n\\\\���M{�j�x��>*c�:(C���uȈ3�F�H�dt3`���;���x4����Մ��r\'y��y�Gn!���7ɮ�*�5$��7�g�����$k3 yy�o��̬�II�}����]�p{+%RW,(�\0�t���z��Nj��nq���Z��p�=��$j��e;���oH;�����ؽx�̩>!��h��\0��8w\0�gQmK�� ��2zu5.)쇫z�-)�o�����a\r�3*�Eb\'ݔ�=����erڶ�<�D�3�}�2�%��+\\R��	�JR�%)J��(BR��	JR�%)J��(BR��	JR�/�t+i\Z�t;�k�L6��H\"���t�:P��¯7(`�k)2;���@>D���\0�03��bd��N��i�7U�(L�{ �����\0�-p�\0�]pܳn��Ȋ�Y�hFxع\'�U��j�����p`]�v�,U���\0�	+˖���K$I�4���Y26�T�)h�6�Hں*\0 \0�w�)SҔ�JR�!)JP��)B��JR�!)JP��)B��'),(2009,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0�\0\0\0!��V\0\0�PLTEk��������������l��p��m��i��i�����l��m�����l��i��������������������������ǓE͔1ۣ�������$ǖ;���}����ѴɧW�����������nԽ��˝������ང�{���æB��}˼�޴Wߺ�ռp���ע0���ٳm������Ĥ\\���ʫ0Ϊ�ղKмuۺh�մѥ>��]Խ�թUٰ6������Ҩޮ\0�g�	ù�έm�ƼɴQ���ǯ\\ݥK۶\0���؛\Z˿�э���ܠͣ7ªqսb)��$��4Ç@�|B�t ǜL��N�q��*ӝ\\Ϧp��ۭ�Ԭ\0��2��?��]�Ď�i\"�H��ǧf,�>�\0ޜ0�\0΅��9�}4�r��D�zF���՜4�\"E\0\0\nkIDATx��\rs�F\Z��R�^��d%@|��J��(6��Fȱc�KlaS;$��\\��\\hI�������doz7�M��1#l1�g�}�K���9\0\0\0\0\0��\\�67w��R��� ���\0r8� ���\0r8� ���\0r8� ���\0r8� ���\0r8� ���\0r8� ���\0r8� ���\0r8� ���\0r8� ���\0r8� ���\0r8� ���\0r8��s�֭���_l>������w���[��܇7o~��e���?��+�Z�>\0���\"����9������m���5������L�#��U	�T�I>�~�G�L�n���������D�n��;\Z�l].9��\"� fG�SdYɩ��̔�r�r0Ӑ�}8��(ZX�(��`��1D��,}�\"�%���E��$��$�.�p9�X��l���m�.��)8�&��,��*\r�«��\Z��\r��P��B�[KQm�75���g5A�)G�}Z��2-Wy�j���6���^_Q���2�r4U*�Z=���0h��B[�Re�;+�V7X���*A�Zu�r��e3�J֛	ic%�e��Dk\r%K����>��**l����h�>\\����[�;�QI��M{\'��[K{4���5/7	*�(9X���^�bR���5#M7��T��>*Dti���KAL�H�59$Z\\�Rd�J��e�S8X�Px�t�n�-<.#wcݔP��!~A�%ǧ��WWJ�2�R���wõR�|��N5-���g�h�(���RX�R����)g�/2�z��]g*�x�	/#;R�)��NkQA�$�(�*^kV�����d���O>��B�\'��AX���Ǩ�����J�6��SssTF�Eh�ҿ\Z��?�z�~��ܽ�J�.#�	��W/�x�7�_�l�R�ߥ�q�=\r\r��vd4���{�н��T�\"�O�~�V>��HXDGL�	��#�ʦo�y���ĳ���p>��\'ǃ��ߒ\'Ki�\\��b�F���t��s�r0&��!���H�`�˽��i�7��`vb�Q��P�_VF�����`\0a\" tT�h�(A9ʂA/��e�rv�yVb^�ר�,�r��� ӂX²z�%9��;�W��J�^%��b��Ћ��p����\'{��D~���}�D\\�- K��I�p�)d��v7�z<\Z�:���X������œ�U޴�\\���_d�6	��ް3Q˸+V$~�[x���GF�|�;9�Y�y:(���H�Zv��Ӯ~�BH�R52=_���/.z�.k���|�M��˿���.�cݳ����3%	k2���h���*�N���^K9��aO��/#�q��?�r��{�a�i��\\�M���z9r����|>i�z��t�,����a�;�n���N���t^��n�e�����G�~�]@B֨�\\FΚa���s&��o��tw���N*UL���f2��Ddd9�Ⱦ�̈́Ћ�s�=�Xg<���S;��s�}\'d�Q�TJ}t&�r%��u�덝�����iwr/�p����c�� �+E\"�Z�Q��,T+6zP]k���s��¢��ƟE�����ׯϧ�a��Y2EP��؉D��T��X�Q�(q�����Qy1�&���\'g�C���xZ��^�4�Gu�6��6�3єkQKZB�~uo���o�96�b���h��崂\r{g?.YN�]�t�H�d*���������q�|c�T�OJ�˜|8����γA�wP����抏ec6����<=I�f\n���Ar��yk14���ذ�Ch7ҕvӇ3�R�P�R�D�z��&����o�w.��\'���g�#�Ѥ1��KG�ON�4���ny�뙙&���f=-�jT~6W����ӓA����O�A��Y�*��n�,f�n�W8^	��fL�g}���]������V?��үt�T�X�g��z�YS,�RQr�@4X���grN6dt�������h��n�L�A��*+�\n)l9X�w�-b�[Zw�f�Y\\ϭ�s��n�;E��Q�D~�rמ��ш�!��Ւ�=6q��;� ����AY\r��Ւ�$�0{|���!�uu�G�O���-��4���K%d�Wr/��FIz��F�\n*�(9����h�I@\nlp�j��QKcr�������rKר��ڕ]�}���fݦw6Zh�q--��:V+�d�\\Oi���B%B�֧�9��D�d����57x�r�	�x���Y�a�uo:~�\"�;_\"K�6R�\\���F�-d�m	�n\"ZX�~̪�rD_�M��?82|h��Q���$��Q\0�	��c~�X9t%4��d�`k�`A�>ʠ@�@8�AT��!b�`YV$J>���nnb���|��֧�bI|_�`98���:E+Y[R�H�4�	�DŢ.x�D��dceU!��Fe�AJ�c�\'l�*V�3�s�w��Tb-�7L7u�5D������[9ʜ����f���7��o�H�a����7n�����������x����E�j�c��B�\0����p\09@���p\09@���p\09@���p\09@���p\09@���p\09@���p\09@���p\09@���p\09@���p\09@���p\09@���p\09@���p\09@���px#��5����~�:�V�]���A�;�\0\0\0\0IEND�B`�');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `FK61g3ambult7v7nh59xirgd9nf` (`user_id`),
  CONSTRAINT `FK61g3ambult7v7nh59xirgd9nf` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (2007,'ADMIN',2006);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2006,1,'USA','1993-01-04','monur232@gmail.com','Monur','Monur','$2a$10$ej6F83x.Gymh/qCOsu.Kje2sZO4kG4SHOainn9H6hEQKgXkJ8nPc6','1677646464456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21 11:48:02
