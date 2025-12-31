.class public Lsk/mimac/slideshow/item/FileDataChecker;
.super Ljava/util/TimerTask;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/item/FileDataChecker;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/item/FileDataChecker;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private processDeleteWhen()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lsk/mimac/slideshow/item/FileDataChecker;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string v4, "Checking files, current time is: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getAllDeleteBeforeDate(J)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/database/entity/FileData;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lsk/mimac/slideshow/item/FileDataChecker;->LOG:Lorg/slf4j/Logger;

    const-string v3, "File \'{}\' successfully deleted"

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object v2

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/FileData;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lsk/mimac/slideshow/database/dao/AbstractDao;->delete(J)V

    goto :goto_0

    :cond_1
    sget-object v3, Lsk/mimac/slideshow/item/FileDataChecker;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Can\'t delete file \'{}\'"

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "File \'{}\' doesn\'t exist, removing fileData"

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lsk/mimac/slideshow/item/FileDataChecker;->processDeleteWhen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/item/FileDataChecker;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Unexpected exception while processing FileData"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
