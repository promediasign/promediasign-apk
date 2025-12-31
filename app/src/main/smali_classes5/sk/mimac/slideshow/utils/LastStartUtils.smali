.class public abstract Lsk/mimac/slideshow/utils/LastStartUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/utils/LastStartUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/LastStartUtils;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/utils/LastStartUtils;->writeLogcat()V

    return-void
.end method

.method public static checkAndSet()V
    .locals 9

    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->LAST_START_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v3}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getSystemUptime()J

    move-result-wide v5

    sub-long v5, v1, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    sget-object v7, Lsk/mimac/slideshow/utils/LastStartUtils;->LOG:Lorg/slf4j/Logger;

    const-string v8, "Android booted at {}, the last start of the app was at {}, without proper finish, so it might have crashed"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v8, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Le1/c;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Le1/c;-><init>(I)V

    const-string v5, "Logcat-dump-thread"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lsk/mimac/slideshow/utils/LastStartUtils;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Can\'t process last start file"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/utils/LastStartUtils;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t write to last start file"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static clear()V
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->LAST_START_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static writeLogcat()V
    .locals 3

    const-string v0, "logcat -d -t 5000 -f "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/FileConstants;->CRASH_LOGCAT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/utils/Shell;->process(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/utils/LastStartUtils;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t write logcat"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
