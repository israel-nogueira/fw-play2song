-- FUNCTION: FN_GET_JSON_BANNERS_BY_PLUGIN;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_GET_JSON_BANNERS_BY_PLUGIN`(`P_ID` BIGINT) RETURNS text CHARSET utf8mb4
RETURN (
    SELECT CONCAT("[",GROUP_CONCAT('{
        "LINK":"',LINK,'",
        "TARGET":"',TARGET,'",
        "ANALITYCS":"',ANALITYCS,'",
        "CLICKTAG":"',CLICKTAG,'",
        "TITULO":"',TITULO,'",
        "DESCRICAO":"',DESCRICAO,'",
        "STATUS":"',STATUS,'"
    }'),']')
    AS JSON
    FROM MIDIA__BANNER
    WHERE	ID_PLUGIN=P_ID 
);

-- FUNCTION: FN_GET_JSON_FILES_BY_BANNERS;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_GET_JSON_FILES_BY_BANNERS`(`P_ID` BIGINT) RETURNS text CHARSET utf8mb4
RETURN (
    SELECT CONCAT("[{",GROUP_CONCAT(
        '"',MEDIA_QUERY,'":{
            "ID_BANNER":"',ID_BANNER,'",
            "ID_PLUGIN":"',ID_PLUGIN,'",
            "NOME_ORIGINAL":"',NOME_ORIGINAL,'",
            "PATH":"',PATH,'",
            "FILENAME":"',FILENAME,'",
            "SIZE":"',SIZE,'",
            "TYPE":"',TYPE,'",
            "MEDIA_QUERY":"',MEDIA_QUERY,'"
        }'  
    ),'}]') 
    AS JSON
    FROM        MIDIA__FILES
    WHERE	    ID_BANNER   =   P_ID 
    ORDER BY    MEDIA_QUERY     ASC
)


-- SELECT FN_GET_JSON_FILES_BY_BANNERS(4);

-- FUNCTION: FN_GET_JSON_BANNERS_BY_PLUGIN;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_GET_JSON_BANNERS_BY_PLUGIN`(`P_ID` BIGINT) RETURNS text CHARSET utf8mb4
RETURN (
    SELECT CONCAT("[",GROUP_CONCAT('{
        "LINK":"',LINK,'",
        "TARGET":"',TARGET,'",
        "ANALITYCS":"',ANALITYCS,'",
        "CLICKTAG":"',CLICKTAG,'",
        "TITULO":"',TITULO,'",
        "DESCRICAO":"',DESCRICAO,'",
        "STATUS":"',STATUS,'"
    }'),']')
    AS JSON
    FROM MIDIA__BANNER
    WHERE	ID_PLUGIN=P_ID 
);

-- FUNCTION: FN_GET_JSON_FILES_BY_BANNERS;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_GET_JSON_FILES_BY_BANNERS`(`P_ID` BIGINT) RETURNS text CHARSET utf8mb4
RETURN (
    SELECT CONCAT("[{",GROUP_CONCAT(
        '"',MEDIA_QUERY,'":{
            "ID_BANNER":"',ID_BANNER,'",
            "ID_PLUGIN":"',ID_PLUGIN,'",
            "NOME_ORIGINAL":"',NOME_ORIGINAL,'",
            "PATH":"',PATH,'",
            "FILENAME":"',FILENAME,'",
            "SIZE":"',SIZE,'",
            "TYPE":"',TYPE,'",
            "MEDIA_QUERY":"',MEDIA_QUERY,'"
        }'  
    ),'}]') 
    AS JSON
    FROM        MIDIA__FILES
    WHERE	    ID_BANNER   =   P_ID 
    ORDER BY    MEDIA_QUERY     ASC
)


-- SELECT FN_GET_JSON_FILES_BY_BANNERS(4);
