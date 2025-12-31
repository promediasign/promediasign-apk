.class public abstract Lsk/mimac/slideshow/utils/ZipUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/utils/ZipUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/ZipUtils;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private static isZipFile(Ljava/io/File;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "zip"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/utils/ZipUtils;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t detect whether the file \'{}\' is ZIP: {}"

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lsk/mimac/slideshow/utils/FileUtils2;->checkFileInDirectory(Ljava/io/File;Ljava/io/File;)V

    return-object v0
.end method

.method public static unpack(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v0, v1}, Lsk/mimac/slideshow/utils/ZipUtils;->unpack(Ljava/io/File;Ljava/io/File;ZLjava/util/Date;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static unpack(Ljava/io/File;Ljava/io/File;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lsk/mimac/slideshow/utils/ZipUtils;->unpack(Ljava/io/File;Ljava/io/File;ZLjava/util/Date;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static unpack(Ljava/io/File;Ljava/io/File;ZLjava/util/Date;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Z",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lsk/mimac/slideshow/utils/ZipUtils;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unpacking \'{}\' to \'{}\'"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lsk/mimac/slideshow/csv/FileDataParser;

    invoke-direct {v1, p1}, Lsk/mimac/slideshow/csv/FileDataParser;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lsk/mimac/slideshow/BuildInfo;->GLOBAL_ZIP_PASSWORD:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-static {p0}, Lsk/mimac/slideshow/utils/ZipUtils;->isZipFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, v1

    move-object v8, v2

    move v9, p4

    invoke-static/range {v4 .. v9}, Lsk/mimac/slideshow/utils/ZipUtils;->unpackInternalZip4J(Ljava/io/File;Ljava/io/File;Ljava/util/Date;Lsk/mimac/slideshow/csv/FileDataParser;Ljava/util/List;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, v1

    move-object v8, v2

    move v9, p4

    invoke-static/range {v4 .. v9}, Lsk/mimac/slideshow/utils/ZipUtils;->unpackInternal(Ljava/io/File;Ljava/io/File;Ljava/util/Date;Lsk/mimac/slideshow/csv/FileDataParser;Ljava/util/List;Z)Z

    move-result p1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "Can\'t delete archive file \'{}\'"

    invoke-interface {v0, p2, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Lsk/mimac/slideshow/csv/FileDataParser;->finalizeProcessing()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static unpack(Ljava/io/File;)V
    .locals 4

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v3, v1, v2}, Lsk/mimac/slideshow/utils/ZipUtils;->unpack(Ljava/io/File;Ljava/io/File;ZLjava/util/Date;Z)Ljava/util/List;

    return-void
.end method

.method private static unpackEntry(Ljava/io/InputStream;Ljava/lang/String;ZLjava/io/File;Lsk/mimac/slideshow/csv/FileDataParser;Ljava/util/Date;Z)Ljava/io/File;
    .locals 4

    invoke-static {p3, p1}, Lsk/mimac/slideshow/utils/ZipUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p1}, Lsk/mimac/slideshow/csv/FileDataParser;->getFileDates(Ljava/lang/String;)Lsk/mimac/slideshow/csv/FileConfig;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lsk/mimac/slideshow/csv/FileConfig;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/csv/FileConfig;->toFileData(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/FileData;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t create directory \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' while unpacking"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p4, p1, p0}, Lsk/mimac/slideshow/csv/FileDataParser;->checkConfig(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v2

    :cond_4
    const-string p2, "setup.csv"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-object v2

    :cond_5
    sget-object p2, Lsk/mimac/slideshow/settings/UserSettings;->ALLOW_UNSUPPORTED_FILE_TYPES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p2}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lsk/mimac/slideshow/FileConstants;->ALL_EXTENSIONS:Ljava/util/Set;

    invoke-static {p1}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p0, Lsk/mimac/slideshow/utils/ZipUtils;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Archive entry \'{}\' has unsupported extension, skipping"

    invoke-interface {p0, p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_6
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    if-eqz v3, :cond_7

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object p0

    invoke-virtual {p0, v3}, Lsk/mimac/slideshow/database/dao/FileDataDao;->createOrUpdate(Lsk/mimac/slideshow/database/entity/FileData;)V

    goto :goto_1

    :cond_7
    if-nez p6, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/database/dao/FileDataDao;->delete(Ljava/lang/String;)V

    :cond_9
    :goto_1
    if-eqz p5, :cond_a

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Ljava/io/File;->setLastModified(J)Z

    :cond_a
    :goto_2
    return-object p3

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method private static unpackInternal(Ljava/io/File;Ljava/io/File;Ljava/util/Date;Lsk/mimac/slideshow/csv/FileDataParser;Ljava/util/List;Z)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Date;",
            "Lsk/mimac/slideshow/csv/FileDataParser;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    move-object v1, p0

    const-string v2, "Can\'t unpack file \'{}\'"

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lsk/mimac/slideshow/csv/DontProcessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v6}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :goto_0
    :try_start_2
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "setup.csv"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lsk/mimac/slideshow/csv/FileDataParser;->parseCsv(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v0

    goto/16 :goto_8

    :cond_0
    move-object/from16 v0, p3

    goto :goto_0

    :cond_1
    move-object/from16 v0, p3

    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Lsk/mimac/slideshow/csv/DontProcessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    new-instance v6, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v6}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6, v7}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    :try_start_7
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v9

    move-object v7, v6

    move-object v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p2

    move/from16 v13, p5

    invoke-static/range {v7 .. v13}, Lsk/mimac/slideshow/utils/ZipUtils;->unpackEntry(Ljava/io/InputStream;Ljava/lang/String;ZLjava/io/File;Lsk/mimac/slideshow/csv/FileDataParser;Ljava/util/Date;Z)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_2

    move-object/from16 v8, p4

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_3

    :cond_2
    move-object/from16 v8, p4

    goto :goto_2

    :cond_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    return v4

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v0

    goto :goto_5

    :goto_3
    if-eqz v6, :cond_4

    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_b
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_5
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v5, v0

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :goto_7
    sget-object v4, Lsk/mimac/slideshow/utils/ZipUtils;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v3

    :catch_1
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object v6, v0

    goto :goto_a

    :goto_8
    if-eqz v6, :cond_5

    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v6, v0

    :try_start_f
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_9
    throw v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :goto_a
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v5, v0

    :try_start_11
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v6
    :try_end_11
    .catch Lsk/mimac/slideshow/csv/DontProcessException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :goto_c
    sget-object v2, Lsk/mimac/slideshow/utils/ZipUtils;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Won\'t unpack file \'{}\': {}"

    invoke-interface {v2, v3, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v4
.end method

.method private static unpackInternalZip4J(Ljava/io/File;Ljava/io/File;Ljava/util/Date;Lsk/mimac/slideshow/csv/FileDataParser;Ljava/util/List;Z)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Date;",
            "Lsk/mimac/slideshow/csv/FileDataParser;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    move-object v1, p0

    const-string v2, "Can\'t unpack file \'{}\'"

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lsk/mimac/slideshow/csv/DontProcessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->GLOBAL_ZIP_PASSWORD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :goto_0
    :try_start_2
    invoke-virtual {v6}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getNextEntry()Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "setup.csv"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lsk/mimac/slideshow/csv/FileDataParser;->parseCsv(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v0

    goto/16 :goto_8

    :cond_0
    move-object/from16 v0, p3

    goto :goto_0

    :cond_1
    move-object/from16 v0, p3

    :goto_1
    :try_start_3
    invoke-virtual {v6}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Lsk/mimac/slideshow/csv/DontProcessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    new-instance v6, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    sget-object v7, Lsk/mimac/slideshow/BuildInfo;->GLOBAL_ZIP_PASSWORD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[C)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    :try_start_7
    invoke-virtual {v6}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getNextEntry()Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isDirectory()Z

    move-result v9

    move-object v7, v6

    move-object v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p2

    move/from16 v13, p5

    invoke-static/range {v7 .. v13}, Lsk/mimac/slideshow/utils/ZipUtils;->unpackEntry(Ljava/io/InputStream;Ljava/lang/String;ZLjava/io/File;Lsk/mimac/slideshow/csv/FileDataParser;Ljava/util/Date;Z)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_2

    move-object/from16 v8, p4

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_3

    :cond_2
    move-object/from16 v8, p4

    goto :goto_2

    :cond_3
    :try_start_8
    invoke-virtual {v6}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    return v4

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v0

    goto :goto_5

    :goto_3
    :try_start_a
    invoke-virtual {v6}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_b
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_5
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v5, v0

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :goto_7
    sget-object v4, Lsk/mimac/slideshow/utils/ZipUtils;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v3

    :catch_1
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object v6, v0

    goto :goto_a

    :goto_8
    :try_start_e
    invoke-virtual {v6}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v6, v0

    :try_start_f
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :goto_a
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v5, v0

    :try_start_11
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v6
    :try_end_11
    .catch Lsk/mimac/slideshow/csv/DontProcessException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :goto_c
    sget-object v2, Lsk/mimac/slideshow/utils/ZipUtils;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Won\'t unpack file \'{}\': {}"

    invoke-interface {v2, v3, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v4
.end method
