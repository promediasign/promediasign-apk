.class public Lsk/mimac/slideshow/downloader/Downloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static volatile isDownloading:Z

.field private static final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final thread:Ljava/lang/Thread;

.field private static final userLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dateTimeFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lsk/mimac/slideshow/downloader/Downloader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/downloader/Downloader;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/downloader/Downloader;->queue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/downloader/Downloader;->userLog:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsk/mimac/slideshow/downloader/Downloader;

    invoke-direct {v1}, Lsk/mimac/slideshow/downloader/Downloader;-><init>()V

    const-string v2, "Downloader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/downloader/Downloader;->thread:Ljava/lang/Thread;

    const/4 v0, 0x0

    sput-boolean v0, Lsk/mimac/slideshow/downloader/Downloader;->isDownloading:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/Downloader;->dateTimeFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public static declared-synchronized addToDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lsk/mimac/slideshow/downloader/Downloader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/downloader/Downloader;->queue:Ljava/util/Queue;

    new-instance v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-direct {v2, p0, p1}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-object p0, Lsk/mimac/slideshow/downloader/Downloader;->thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lsk/mimac/slideshow/downloader/Downloader;->isDownloading:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private addToLog(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/downloader/Downloader;->userLog:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsk/mimac/slideshow/downloader/Downloader;->dateTimeFormat:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v1, 0x1e

    if-le p1, v1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "File \'"

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v3, p2, v2}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x4e20

    .line 23
    .line 24
    invoke-static {p1, v1, v2}, Lsk/mimac/slideshow/utils/HttpUtils;->downloadToFile(Ljava/lang/String;Ljava/io/File;I)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/io/File;

    .line 28
    .line 29
    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/io/File;

    .line 35
    .line 36
    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v2}, Lsk/mimac/slideshow/utils/FileUtils2;->checkFileInDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    sget-object v0, Lsk/mimac/slideshow/FileConstants;->ARCHIVE_EXTENSIONS:Ljava/util/Set;

    .line 51
    .line 52
    invoke-static {p2}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_0

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v1, p1}, Lsk/mimac/slideshow/utils/ZipUtils;->unpack(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    invoke-static {v1, p1}, Lorg/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p2, "\' already exists"

    .line 90
    .line 91
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public static getLogs()Ljava/lang/String;
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/downloader/Downloader;->userLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "downloader_log_empty"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "downloader_queue_length"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsk/mimac/slideshow/downloader/Downloader;->getQueueSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "<br>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<"

    const-string v4, "&lt;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v4, "&gt;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQueueSize()I
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/downloader/Downloader;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    sget-boolean v1, Lsk/mimac/slideshow/downloader/Downloader;->isDownloading:Z

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :goto_0
    sget-object v2, Lsk/mimac/slideshow/downloader/Downloader;->queue:Ljava/util/Queue;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lsk/mimac/slideshow/utils/Couple;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-wide v2, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3}, Lsk/mimac/slideshow/utils/SleepUtils;->sleep(J)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sput-boolean v1, Lsk/mimac/slideshow/downloader/Downloader;->isDownloading:Z

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "starting_downloading_file"

    .line 30
    .line 31
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v4, " &quot;"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/String;

    .line 48
    .line 49
    const-string v5, "&quot;"

    .line 50
    .line 51
    invoke-static {v4, v5, v3}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-direct {p0, v3}, Lsk/mimac/slideshow/downloader/Downloader;->addToLog(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :try_start_0
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {p0, v3, v4}, Lsk/mimac/slideshow/downloader/Downloader;->download(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v3, "downloader_success"

    .line 74
    .line 75
    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    new-array v5, v1, [Ljava/lang/Object;

    .line 84
    .line 85
    aput-object v4, v5, v0

    .line 86
    .line 87
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-direct {p0, v3}, Lsk/mimac/slideshow/downloader/Downloader;->addToLog(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object v3, Lsk/mimac/slideshow/downloader/Downloader;->LOG:Lorg/slf4j/Logger;

    .line 95
    .line 96
    const-string v4, "File \'{}\' was sucessfully downloaded"

    .line 97
    .line 98
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception v3

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v5, "downloader_error"

    .line 113
    .line 114
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    new-array v7, v1, [Ljava/lang/Object;

    .line 123
    .line 124
    aput-object v6, v7, v0

    .line 125
    .line 126
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v5, ": "

    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-direct {p0, v4}, Lsk/mimac/slideshow/downloader/Downloader;->addToLog(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sget-object v4, Lsk/mimac/slideshow/downloader/Downloader;->LOG:Lorg/slf4j/Logger;

    .line 153
    .line 154
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const/4 v6, 0x3

    .line 163
    new-array v6, v6, [Ljava/lang/Object;

    .line 164
    .line 165
    aput-object v5, v6, v0

    .line 166
    .line 167
    aput-object v2, v6, v1

    .line 168
    .line 169
    const/4 v2, 0x2

    .line 170
    aput-object v3, v6, v2

    .line 171
    .line 172
    const-string v2, "Can\'t download file \'{}\' from \'{}\': {}"

    .line 173
    .line 174
    invoke-interface {v4, v2, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :goto_1
    sput-boolean v0, Lsk/mimac/slideshow/downloader/Downloader;->isDownloading:Z

    .line 178
    .line 179
    goto/16 :goto_0
.end method
