.class public Lsk/mimac/slideshow/gui/ToPlayResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field public static final YOUTUBE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final alphabeticalFilePicker:Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

.field private lastItemIdToRevert:Ljava/lang/Long;

.field private final randomFilePicker:Lsk/mimac/slideshow/utils/filter/RandomFilePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http(?:s)?:\\/\\/(?:m.)?(?:www\\.)?youtu(?:\\.be\\/|be\\.com\\/(?:watch\\?(?:feature=youtu.be\\&)?v=|v\\/|embed\\/|user\\/(?:[\\w#]+\\/)+))([^&#?\\n]+)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/ToPlayResolver;->YOUTUBE_PATTERN:Ljava/util/regex/Pattern;

    const-class v0, Lsk/mimac/slideshow/gui/ToPlayResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/utils/filter/RandomFilePicker;->getInstance()Lsk/mimac/slideshow/utils/filter/RandomFilePicker;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->randomFilePicker:Lsk/mimac/slideshow/utils/filter/RandomFilePicker;

    invoke-static {}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->getInstance()Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->alphabeticalFilePicker:Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

    return-void
.end method

.method private getContentPath(Lsk/mimac/slideshow/database/entity/Item;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getContentPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getContentPath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getPrefixWithoutWildcard(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const-string v4, ""

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getUrlFromFile(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/UrlToPlay;
    .locals 7

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lsk/mimac/slideshow/gui/play/UrlToPlay;

    invoke-direct {v1}, Lsk/mimac/slideshow/gui/play/UrlToPlay;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "URL="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "JAVASCRIPT="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsk/mimac/slideshow/gui/play/UrlToPlay;->setJavascriptCode(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/UrlToPlay;

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ALLOWED_DOMAINS="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[,;]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsk/mimac/slideshow/gui/play/UrlToPlay;->setAllowedDomains(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ZOOM="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_4

    const/4 v4, 0x5

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsk/mimac/slideshow/gui/play/UrlToPlay;->setZoom(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v4, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Wrong number format for zoom in file \'{}\': {}"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, p1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "HIDE_PROGRESS_BAR="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lsk/mimac/slideshow/gui/play/UrlToPlay;->setShowProgressBar(Z)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    :cond_7
    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->getContent()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :cond_8
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL file without URL line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method private processAlphabetically(Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;Lsk/mimac/slideshow/playlist/PlaylistWrapper;Z)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 6

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v3

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/gui/ToPlayResolver;->getContentPath(Lsk/mimac/slideshow/database/entity/Item;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/ToPlayResolver;->getPrefixWithoutWildcard(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getFileNamesDontPlay(Ljava/util/List;J)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->alphabeticalFilePicker:Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

    invoke-virtual {v2, v1, v3, v0, p3}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->getNext(Ljava/lang/String;Lsk/mimac/slideshow/database/entity/Item;Ljava/util/Set;Z)Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;

    move-result-object p3

    invoke-virtual {p3}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/playlist/PlayOnceEntityPlaylistWrapper;->setFinishedItem()V

    :cond_0
    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/Item;->getId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->lastItemIdToRevert:Ljava/lang/Long;

    invoke-virtual {p3}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getLength()I

    move-result v4

    invoke-interface {p2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lsk/mimac/slideshow/gui/ToPlayResolver;->resolveFile(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p3}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker$PickedFile;->getPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setPosition(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    return-object p1
.end method

.method private processCustomItem(Lsk/mimac/slideshow/database/entity/Item;I)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/gui/play/CustomPanelToPlay;

    invoke-direct {v0}, Lsk/mimac/slideshow/gui/play/CustomPanelToPlay;-><init>()V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1
.end method

.method private processImage(Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 6

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/ToPlayResolver;->getContentPath(Lsk/mimac/slideshow/database/entity/Item;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p3, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t show file \'{}\', it doesn\'t exist"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p3, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>(Z)V

    invoke-virtual {p3, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    const/4 p3, 0x5

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lsk/mimac/slideshow/gui/ToPlayResolver;->resolveFile(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1
.end method

.method private processRandom(Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 6

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/ToPlayResolver;->getContentPath(Lsk/mimac/slideshow/database/entity/Item;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/ToPlayResolver;->getPrefixWithoutWildcard(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getFileNamesDontPlay(Ljava/util/List;J)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->randomFilePicker:Lsk/mimac/slideshow/utils/filter/RandomFilePicker;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;->getRandom(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lsk/mimac/slideshow/gui/ToPlayResolver;->resolveFile(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1
.end method

.method private processStream(Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 2

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/gui/play/StreamToPlay;

    invoke-direct {v1}, Lsk/mimac/slideshow/gui/play/StreamToPlay;-><init>()V

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v0

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setMusicType(Lsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1
.end method

.method private processText(Lsk/mimac/slideshow/database/entity/Item;I)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 2

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, " "

    :cond_1
    new-instance v1, Lsk/mimac/slideshow/gui/play/TextToPlay;

    invoke-direct {v1}, Lsk/mimac/slideshow/gui/play/TextToPlay;-><init>()V

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1
.end method

.method private processVideoInput(Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/gui/play/VideoInputToPlay;

    invoke-direct {v0}, Lsk/mimac/slideshow/gui/play/VideoInputToPlay;-><init>()V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setMusicType(Lsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1
.end method

.method private processWidget(Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/gui/play/WidgetToPlay;

    invoke-direct {v0}, Lsk/mimac/slideshow/gui/play/WidgetToPlay;-><init>()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setPosition(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1
.end method

.method private processYouTube(Lsk/mimac/slideshow/database/entity/Item;Lsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/gui/ToPlayResolver;->YOUTUBE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p2, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    const-string v0, "YouTube video ID not found in URL {}, skipping"

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>()V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Lsk/mimac/slideshow/gui/play/YouTubeToPlay;

    invoke-direct {v1}, Lsk/mimac/slideshow/gui/play/YouTubeToPlay;-><init>()V

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setMusicType(Lsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1
.end method

.method private resolveFile(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 10

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string p1, "*"

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lsk/mimac/slideshow/gui/play/InstructionScreenToPlay;

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/InstructionScreenToPlay;-><init>()V

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "No file found for filter \'{}\'"

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1, v2}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>(Z)V

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-interface {p1, p2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>()V

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, v2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getFileData(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/FileData;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v4

    const-string v5, "length"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    :cond_4
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v4

    const-string v5, "mute"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object p5, Lsk/mimac/slideshow/enums/MusicType;->NONE:Lsk/mimac/slideshow/enums/MusicType;

    :cond_5
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/FileData;->getSyncCode()Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/FileData;->getAction()Ljava/util/Map;

    move-result-object v0

    const-string v4, "click"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v8, p4

    move-object v9, p5

    goto :goto_0

    :cond_7
    move v8, p4

    move-object v9, p5

    move-object v0, v3

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lsk/mimac/slideshow/gui/ToPlayResolver;->resolveFileInternal(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, v3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setSyncCode(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    if-lez p3, :cond_8

    const/4 p4, 0x0

    add-int/2addr p3, v2

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->processClickAreas(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object p1
.end method

.method private resolveFileInternal(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 8

    const-string v0, "../"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "..\\"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p2}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->IMAGE_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p5, Lsk/mimac/slideshow/gui/play/ImageToPlay;

    invoke-direct {p5}, Lsk/mimac/slideshow/gui/play/ImageToPlay;-><init>()V

    invoke-virtual {p5, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p4}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->PDF_EXENTENSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p5, Lsk/mimac/slideshow/gui/play/PdfToPlay;

    invoke-direct {p5}, Lsk/mimac/slideshow/gui/play/PdfToPlay;-><init>()V

    invoke-virtual {p5, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p4}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->VIDEO_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lsk/mimac/slideshow/gui/play/VideoToPlay;

    invoke-direct {v0}, Lsk/mimac/slideshow/gui/play/VideoToPlay;-><init>()V

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p4}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p5}, Lsk/mimac/slideshow/gui/play/ToPlay;->setMusicType(Lsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->EXCEL_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->excelToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p5, Lsk/mimac/slideshow/gui/play/HtmlToPlay;

    invoke-direct {p5}, Lsk/mimac/slideshow/gui/play/HtmlToPlay;-><init>()V

    invoke-virtual {p5, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p4}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->HTML_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p5, "file://"

    .line 1
    invoke-static {p5, p1, p2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p5, Lsk/mimac/slideshow/gui/play/UrlToPlay;

    invoke-direct {p5}, Lsk/mimac/slideshow/gui/play/UrlToPlay;-><init>()V

    invoke-virtual {p5, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p4}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->ARCHIVE_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p3, Ljava/io/File;

    .line 3
    invoke-static {p1, p2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lsk/mimac/slideshow/utils/ZipUtils;->unpack(Ljava/io/File;)V

    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>()V

    return-object p1

    :cond_5
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->URL_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5
    invoke-static {p1, p2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/ToPlayResolver;->getUrlFromFile(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/UrlToPlay;

    move-result-object p1

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p4}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p5}, Lsk/mimac/slideshow/gui/play/ToPlay;->setMusicType(Lsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_6
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->TXT_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p5, 0x2710

    invoke-static {p1, p5}, Lsk/mimac/slideshow/utils/FileUtils2;->loadFileToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_7

    const-string p1, " "

    :cond_7
    new-instance p5, Lsk/mimac/slideshow/gui/play/TextToPlay;

    invoke-direct {p5}, Lsk/mimac/slideshow/gui/play/TextToPlay;-><init>()V

    invoke-virtual {p5, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p5

    invoke-virtual {p5, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p4}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_8
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->AUDIO_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance p3, Lsk/mimac/slideshow/gui/play/AudioToPlay;

    invoke-direct {p3}, Lsk/mimac/slideshow/gui/play/AudioToPlay;-><init>()V

    invoke-virtual {p3, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setFileName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setContent(Ljava/lang/String;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    invoke-virtual {p1, p4}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_9
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->LINK_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/ToPlayResolver;->resolveLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object p1, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    const-string p3, "Linked file \'{}\' from \'{}\' not found"

    invoke-interface {p1, p3, v4, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>()V

    return-object p1

    :cond_a
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lsk/mimac/slideshow/gui/ToPlayResolver;->resolveFileInternal(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p4, "thumbs.db"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_d

    new-instance p2, Ljava/io/File;

    .line 7
    invoke-static {p1, p4}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_c

    sget-object p2, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    const-string p3, "Can\'t delete file {}thumbs.db"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>()V

    return-object p1

    :cond_d
    const-string p1, "part"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>()V

    return-object p1

    :cond_e
    sget-object p1, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    const-string p4, "Don\'t know how to show file \'{}\'"

    invoke-interface {p1, p4, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>()V

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/SecurityException;

    const-string p3, "Can\'t break out of content directory: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private resolveItem(Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;Lsk/mimac/slideshow/playlist/PlaylistWrapper;Z)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 5

    const-string v0, "Don\'t know how to play type \'"

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/gui/ToPlayResolver$1;->$SwitchMap$sk$mimac$slideshow$enums$ItemType:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance p2, Lsk/mimac/slideshow/item/CantShowException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p2

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/ToPlayResolver;->processWidget(Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object p3

    invoke-interface {p2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lsk/mimac/slideshow/gui/ToPlayResolver;->processYouTube(Lsk/mimac/slideshow/database/entity/Item;Lsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setPosition(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object p3

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getLength()I

    move-result v0

    invoke-interface {p2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object p2

    invoke-direct {p0, p3, v0, p2}, Lsk/mimac/slideshow/gui/ToPlayResolver;->processVideoInput(Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setPosition(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-instance p2, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p2, v1}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>(Z)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object p3

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getLength()I

    move-result p3

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setPosition(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getLength()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lsk/mimac/slideshow/gui/ToPlayResolver;->processText(Lsk/mimac/slideshow/database/entity/Item;I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setPosition(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getLength()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lsk/mimac/slideshow/gui/ToPlayResolver;->processCustomItem(Lsk/mimac/slideshow/database/entity/Item;I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setPosition(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object p3

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getLength()I

    move-result v0

    invoke-interface {p2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object p2

    invoke-direct {p0, p3, v0, p2}, Lsk/mimac/slideshow/gui/ToPlayResolver;->processStream(Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setPosition(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/gui/ToPlayResolver;->processAlphabetically(Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;Lsk/mimac/slideshow/playlist/PlaylistWrapper;Z)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object p3

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getLength()I

    move-result v0

    invoke-interface {p2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object p2

    invoke-direct {p0, p3, v0, p2}, Lsk/mimac/slideshow/gui/ToPlayResolver;->processRandom(Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setPosition(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object p3

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getLength()I

    move-result v0

    invoke-interface {p2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object p2

    invoke-direct {p0, p3, v0, p2}, Lsk/mimac/slideshow/gui/ToPlayResolver;->processImage(Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/play/ToPlay;->setPosition(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    sget-object p3, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can\'t resolve item for \'{}\'"

    invoke-interface {p3, v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>()V

    invoke-virtual {p1, v1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resolveLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1, p2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-lez v4, :cond_2

    .line 19
    .line 20
    const-wide/16 v2, 0x3e8

    .line 21
    .line 22
    cmp-long v4, v0, v2

    .line 23
    .line 24
    if-gtz v4, :cond_2

    .line 25
    .line 26
    new-instance v0, Ljava/io/File;

    .line 27
    .line 28
    invoke-static {p1, p2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, ".."

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, "/"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const/16 v0, 0x2f

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-ltz v0, :cond_0

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :cond_0
    return-object p1

    .line 88
    :cond_1
    new-instance p2, Ljava/lang/SecurityException;

    .line 89
    .line 90
    const-string v0, "Can\'t break out of content directory: "

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p2

    .line 100
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v3, "Incorrect link file \'"

    .line 105
    .line 106
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p2, "\', length is "

    .line 113
    .line 114
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p2, " bytes"

    .line 121
    .line 122
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method


# virtual methods
.method public resetAlphabeticalFilePicker()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->alphabeticalFilePicker:Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->reset()V

    return-void
.end method

.method public resolve(Lsk/mimac/slideshow/playlist/PlaylistWrapper;I)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 5

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->lastItemIdToRevert:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->alphabeticalFilePicker:Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->revertNext(Ljava/lang/Long;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->lastItemIdToRevert:Ljava/lang/Long;

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getNext(I)Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    instance-of p2, p1, Lsk/mimac/slideshow/playlist/EmptyPlaylistWrapper;

    if-eqz p2, :cond_1

    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1, v1}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>(Z)V

    const/16 p2, 0xf

    :goto_0
    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/play/ToPlay;->setLength(I)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p2, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Item got from playlist \'{}\' is null"

    invoke-interface {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lsk/mimac/slideshow/gui/play/NothingToPlay;

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/NothingToPlay;-><init>()V

    const/4 p2, 0x5

    goto :goto_0

    :cond_2
    sget-object v2, Lsk/mimac/slideshow/gui/ToPlayResolver;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Next item: {}"

    invoke-virtual {v0}, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->getItem()Lsk/mimac/slideshow/database/entity/Item;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0, p1, v1}, Lsk/mimac/slideshow/gui/ToPlayResolver;->resolveItem(Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;Lsk/mimac/slideshow/playlist/PlaylistWrapper;Z)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p2

    invoke-interface {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getSyncCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/gui/play/ToPlay;->setPlaylistSyncCode(Ljava/lang/String;)V

    return-object p2
.end method

.method public resolveFile(Ljava/lang/String;I)Lsk/mimac/slideshow/gui/play/ToPlay;
    .locals 6

    .line 1
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v5, Lsk/mimac/slideshow/enums/MusicType;->NONE:Lsk/mimac/slideshow/enums/MusicType;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lsk/mimac/slideshow/gui/ToPlayResolver;->resolveFile(Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/database/entity/Item;ILsk/mimac/slideshow/enums/MusicType;)Lsk/mimac/slideshow/gui/play/ToPlay;

    move-result-object p1

    return-object p1
.end method

.method public revertPreloadedItem()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->lastItemIdToRevert:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->alphabeticalFilePicker:Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/utils/filter/AlphabeticalFilePicker;->revertNext(Ljava/lang/Long;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ToPlayResolver;->lastItemIdToRevert:Ljava/lang/Long;

    :cond_0
    return-void
.end method
