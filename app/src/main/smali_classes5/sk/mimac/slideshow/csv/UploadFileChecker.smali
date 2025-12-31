.class public abstract Lsk/mimac/slideshow/csv/UploadFileChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/csv/UploadFileChecker;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/csv/UploadFileChecker;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static checkFileName(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lsk/mimac/slideshow/csv/FileDataParser;->checkFileNamePattern(Ljava/lang/String;)Lsk/mimac/slideshow/csv/FileConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/csv/FileConfig;->getPlayEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lsk/mimac/slideshow/database/entity/FileData;

    invoke-virtual {p1}, Lsk/mimac/slideshow/csv/FileConfig;->getPlayStart()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/csv/FileConfig;->getPlayEnd()Ljava/util/Date;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lsk/mimac/slideshow/database/entity/FileData;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object p1

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/database/dao/FileDataDao;->createOrUpdate(Lsk/mimac/slideshow/database/entity/FileData;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lsk/mimac/slideshow/csv/UploadFileChecker;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t create file date entry for file \'{}\'"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static checkZipAndFileName(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->ARCHIVE_EXTENSIONS:Ljava/util/Set;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lsk/mimac/slideshow/utils/ZipUtils;->unpack(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lsk/mimac/slideshow/csv/UploadFileChecker;->checkFileName(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkZipAndFileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    .line 2
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lsk/mimac/slideshow/FileConstants;->ARCHIVE_EXTENSIONS:Ljava/util/Set;

    invoke-static {p1}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lsk/mimac/slideshow/utils/ZipUtils;->unpack(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lsk/mimac/slideshow/csv/UploadFileChecker;->checkFileName(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
