.class public Lsk/mimac/slideshow/http/page/AboutHardwarePage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# static fields
.field private static final VIDEO_CODEC_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;

.field private final showDetails:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->VIDEO_CODEC_TYPE_MAP:Ljava/util/Map;

    const-string v1, "video/avc"

    const-string v2, "H.264"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/hevc"

    const-string v2, "H.265"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/3gpp"

    const-string v2, "H.263"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/mp4v-es"

    const-string v2, "MPEG-4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/mpeg2"

    const-string v2, "MPEG-2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/x-vnd.on2.vp8"

    const-string v2, "VP8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/x-vnd.on2.vp9"

    const-string v2, "VP9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/flv"

    const-string v2, "Flash Video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/av1"

    const-string v2, "AV1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/av01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/wvc1"

    const-string v2, "WVC1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video/x-ms-wmv"

    const-string v2, "WMV"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->dateFormat:Ljava/text/DateFormat;

    iput-boolean p1, p0, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->showDetails:Z

    return-void
.end method

.method private appendVideoInputs(Ljava/lang/StringBuilder;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lsk/mimac/slideshow/utils/VideoInputUtils;->getInputList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/utils/Couple;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private convertProfileLevers([Landroid/media/MediaCodecInfo$CodecProfileLevel;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, ", "

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static formatTimeZoneOffset(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    const v0, 0x36ee80

    div-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0xea60

    div-int v1, p0, v1

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%02d:%02d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-ltz p0, :cond_0

    const-string p0, "+"

    goto :goto_0

    :cond_0
    const-string p0, "-"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCpuInfo()Ljava/lang/String;
    .locals 12

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "/proc/cpuinfo"

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    const/4 v8, 0x0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "processor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const-string v10, "CPU implementer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x3a

    if-eqz v10, :cond_2

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_1

    :cond_2
    const-string v10, "CPU architecture"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v10, "CPU variant"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    const-string v10, "model name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const-string v10, "CPU part"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-string v10, "CPU revision"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_7
    const-string v10, "hardware"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_8
    invoke-static {v1}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->translateCpuImplementer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->translateCpuPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " core(s) "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get CPU info"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "unknown"

    return-object v0
.end method

.method private static getRamUsage()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    div-long/2addr v2, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " MB / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    sub-long/2addr v3, v8

    div-long/2addr v3, v6

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v8

    div-long/2addr v8, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedFeatures(Landroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "tunneled-playback"

    invoke-virtual {p1, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Tunneled playback"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "secure-playback"

    invoke-virtual {p1, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Secure playback"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "hdr-editing"

    invoke-virtual {p1, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "HDR editing"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p1, ", "

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getTotalRam()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "/proc/meminfo"

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(\\d+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "0"

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get RAM size"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "unknown"

    return-object v0
.end method

.method public static getUptime()Ljava/lang/String;
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    div-long v4, v0, v2

    long-to-int v5, v4

    rem-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    div-long v6, v0, v2

    long-to-int v4, v6

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long v6, v0, v2

    long-to-int v7, v6

    rem-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v5, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "d, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v1, v5

    const/4 v3, 0x1

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object v0, v1, v3

    const-string v0, "%02d:%02d:%02d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static printDisplayInfo(Ljava/lang/StringBuilder;)V
    .locals 6

    const-string v0, "<br><br><b>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "displays"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":</b><table border=\'1\' cellpadding=\'3\' cellspacing=\'0\' style=\'font-size:85%\'><thead><tr><th>Display ID</th><th>Unique ID</th><th>Display name</th><th>Resolution</th><th>DPI</th><th>Physical resolution</th><th>Refresh rate</th><th>HDR</th><th>HDCP</th><thead>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsk/mimac/slideshow/utils/DisplayUtils;->getAllDisplays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/DisplayInfoDto;

    const-string v2, "<tr><td>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getDisplayId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</td><td>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getWidth()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " px"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getDpi()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getPhysicalHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getRefreshRate()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Hz"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getSupportedHdrTypes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->isHdcpEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Yes"

    goto :goto_2

    :cond_1
    const-string v1, "<span style=\'color:#999\'>No</span>"

    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</td></tr>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    const-string v0, "</table>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private printMediaCodecInfo(Ljava/lang/StringBuilder;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, " px</td><td>"

    const-string v6, "</td><td>"

    :try_start_0
    const-class v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;

    const-string v8, "isHardwareAccelerated"

    new-array v9, v2, [Ljava/lang/Class;

    const-class v10, Landroid/media/MediaCodecInfo;

    aput-object v10, v9, v3

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v8, "<br><br><b>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "available_video_decoders"

    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":</b><table border=\'1\' cellpadding=\'3\' cellspacing=\'0\' style=\'font-size:85%\'><thead><tr><th>Decoder name</th><th>Codec</th><th>Max instances</th><th>Max width</th><th>Max height</th><th>Max FPS</th><th>Max bitrate</th><th>Hardware accelerated</th><thead>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Landroid/media/MediaCodecList;

    invoke-direct {v8, v4}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v8}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_8

    aget-object v11, v8, v10

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1d

    if-lt v12, v13, :cond_1

    invoke-static {v11}, LA/d;->D(Landroid/media/MediaCodecInfo;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v15, 0x0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_2
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".secure"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_7

    aget-object v15, v12, v14

    invoke-virtual {v11, v15}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v17

    if-nez v17, :cond_3

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_3
    sget-object v3, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->VIDEO_CODEC_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v2, "<tr><td>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</td><td title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v1, v2}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->convertProfileLevers([Landroid/media/MediaCodecInfo$CodecProfileLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->getSupportedFeatures(Landroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v3, :cond_4

    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_5

    invoke-static {v4}, Lr/a;->e(Landroid/media/MediaCodecInfo$CodecCapabilities;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRates()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Kbps</td><td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v4, v15

    const/16 v16, 0x1

    aput-object v2, v4, v16

    invoke-virtual {v7, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Yes"

    goto :goto_5

    :cond_6
    const-string v1, "<span style=\'color:#999\'>No</span>"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</td></tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_6
    add-int/2addr v14, v1

    move-object/from16 v1, p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x2

    const/4 v15, 0x0

    const/4 v1, 0x1

    :goto_7
    add-int/2addr v10, v1

    move-object/from16 v1, p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    const-string v1, "</table>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :goto_8
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t output video decoders"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    return-void
.end method

.method public static translateCpuImplementer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ARM"

    :cond_0
    return-object p0
.end method

.method private static translateCpuPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "0xd4f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "0xd4e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "0xd4d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "0xd4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "0xd49"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "0xd48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "0xd47"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "0xd46"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "0xd44"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "0xd41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "0xd40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "0xd0e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "0xd0d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "0xd0c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "0xd0b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "0xd0a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "0xd09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "0xd08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "0xd07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "0xd06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "0xd05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "0xd04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "0xd03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "0xd01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_18
    const-string v1, "0xc0f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_19
    const-string v1, "0xc0e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1a
    const-string v1, "0xc0d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1b
    const-string v1, "0xc09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1c
    const-string v1, "0xc08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1d
    const-string v1, "0xc07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1e
    const-string v1, "0xc05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string p0, "Noeverse V2"

    return-object p0

    :pswitch_1
    const-string p0, "Cortex X3"

    return-object p0

    :pswitch_2
    const-string p0, "Cortex A715"

    return-object p0

    :pswitch_3
    const-string p0, "Neoverse E1"

    return-object p0

    :pswitch_4
    const-string p0, "Neoverse N2"

    return-object p0

    :pswitch_5
    const-string p0, "Cortex X2"

    return-object p0

    :pswitch_6
    const-string p0, "Cortex A710"

    return-object p0

    :pswitch_7
    const-string p0, "Cortex A510"

    return-object p0

    :pswitch_8
    const-string p0, "Cortex X1"

    return-object p0

    :pswitch_9
    const-string p0, "Cortex A78"

    return-object p0

    :pswitch_a
    const-string p0, "Neoverse V1"

    return-object p0

    :pswitch_b
    const-string p0, "Cortex A77"

    return-object p0

    :pswitch_c
    const-string p0, "Neoverse N1"

    return-object p0

    :pswitch_d
    const-string p0, "Cortex A76"

    return-object p0

    :pswitch_e
    const-string p0, "Cortex A75"

    return-object p0

    :pswitch_f
    const-string p0, "Cortex A73"

    return-object p0

    :pswitch_10
    const-string p0, "Cortex A72"

    return-object p0

    :pswitch_11
    const-string p0, "Cortex A87"

    return-object p0

    :pswitch_12
    const-string p0, "Cortex A65"

    return-object p0

    :pswitch_13
    const-string p0, "Cortex A55"

    return-object p0

    :pswitch_14
    const-string p0, "Cortex A35"

    return-object p0

    :pswitch_15
    const-string p0, "Cortex A53"

    return-object p0

    :pswitch_16
    const-string p0, "Cortex A32"

    return-object p0

    :pswitch_17
    const-string p0, "Cortex A15"

    return-object p0

    :pswitch_18
    const-string p0, "Cortex A17"

    return-object p0

    :pswitch_19
    const-string p0, "Rockchip RK3288"

    return-object p0

    :pswitch_1a
    const-string p0, "Cortex A12"

    return-object p0

    :pswitch_1b
    const-string p0, "Cortex A8"

    return-object p0

    :pswitch_1c
    const-string p0, "Cortex A7"

    return-object p0

    :pswitch_1d
    const-string p0, "Cortex A5"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2dc6e60 -> :sswitch_1e
        0x2dc6e62 -> :sswitch_1d
        0x2dc6e63 -> :sswitch_1c
        0x2dc6e64 -> :sswitch_1b
        0x2dc6e8f -> :sswitch_1a
        0x2dc6e90 -> :sswitch_19
        0x2dc6e91 -> :sswitch_18
        0x2dc721d -> :sswitch_17
        0x2dc721f -> :sswitch_16
        0x2dc7220 -> :sswitch_15
        0x2dc7221 -> :sswitch_14
        0x2dc7222 -> :sswitch_13
        0x2dc7223 -> :sswitch_12
        0x2dc7224 -> :sswitch_11
        0x2dc7225 -> :sswitch_10
        0x2dc724d -> :sswitch_f
        0x2dc724e -> :sswitch_e
        0x2dc724f -> :sswitch_d
        0x2dc7250 -> :sswitch_c
        0x2dc7251 -> :sswitch_b
        0x2dc7298 -> :sswitch_a
        0x2dc7299 -> :sswitch_9
        0x2dc729c -> :sswitch_8
        0x2dc729e -> :sswitch_7
        0x2dc729f -> :sswitch_6
        0x2dc72a0 -> :sswitch_5
        0x2dc72a1 -> :sswitch_4
        0x2dc72c9 -> :sswitch_3
        0x2dc72cc -> :sswitch_2
        0x2dc72cd -> :sswitch_1
        0x2dc72ce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "about_device"

    .line 7
    .line 8
    const-string v2, " - "

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    .line 14
    .line 15
    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public process()V
    .locals 0

    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Landroid/os/StatFs;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    mul-long v5, v5, v3

    .line 27
    .line 28
    const-wide/32 v3, 0x100000

    .line 29
    .line 30
    .line 31
    div-long/2addr v5, v3

    .line 32
    long-to-int v6, v5

    .line 33
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 38
    .line 39
    .line 40
    move-result-wide v9

    .line 41
    mul-long v9, v9, v7

    .line 42
    .line 43
    div-long/2addr v9, v3

    .line 44
    long-to-int v2, v9

    .line 45
    mul-int/lit8 v3, v6, 0x64

    .line 46
    .line 47
    div-int/2addr v3, v2

    .line 48
    invoke-static {v3}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->getFreeStorageColor(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    sget-object v5, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const-string v7, "wifi"

    .line 59
    .line 60
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-static {}, Lsk/mimac/slideshow/network/NetworkInfoResolver;->getInfo()Lsk/mimac/slideshow/network/NetworkInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getScreenResolution()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    sget-object v10, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v10}, Landroidx/media3/common/util/Util;->getCurrentDisplayModeSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-static {}, Lsk/mimac/slideshow/utils/Shell;->isRootEnabled()Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    sget-object v12, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    sget-object v13, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    const-string v13, "<b>"

    .line 109
    .line 110
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v13, "device"

    .line 114
    .line 115
    const-string v14, ":</b> "

    .line 116
    .line 117
    invoke-static {v13, v14, v1}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 118
    .line 119
    .line 120
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v13, "<br><b>Model:</b> "

    .line 126
    .line 127
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v13, " / "

    .line 136
    .line 137
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    sget-object v15, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    sget-object v15, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    sget-object v15, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    sget-object v15, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    sget-object v13, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v13, "<br><b>Hardware:</b><span style=\'font-size:92%\'> RAM "

    .line 194
    .line 195
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-static {}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->getTotalRam()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v13, ", CPU "

    .line 206
    .line 207
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->getCpuInfo()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v13, "</span><br><b>"

    .line 218
    .line 219
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v13, "ram_usage"

    .line 223
    .line 224
    invoke-static {v13}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->getRamUsage()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v13, "<br><b>Android:</b> "

    .line 242
    .line 243
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v13, " <span style=\'font-size:92%\'>("

    .line 252
    .line 253
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    sget-object v15, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v15, ", SDK "

    .line 262
    .line 263
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 267
    .line 268
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v15, ")</span><br><b>Installer:</b> "

    .line 272
    .line 273
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    if-eqz v12, :cond_0

    .line 277
    .line 278
    goto :goto_0

    .line 279
    :cond_0
    const-string v12, "manually"

    .line 280
    .line 281
    :goto_0
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v12, "<br><b>"

    .line 285
    .line 286
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v15, "rooted"

    .line 290
    .line 291
    invoke-static {v15}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v15

    .line 295
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    if-eqz v11, :cond_1

    .line 302
    .line 303
    const-string v11, "yes"

    .line 304
    .line 305
    goto :goto_1

    .line 306
    :cond_1
    const-string v11, "no"

    .line 307
    .line 308
    :goto_1
    invoke-static {v11}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v11, "mac_address"

    .line 319
    .line 320
    invoke-static {v11}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-static {}, Lsk/mimac/slideshow/utils/NetworkFormatterUtils;->getMacAddress()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string v11, "ip_address"

    .line 341
    .line 342
    invoke-static {v11}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v11

    .line 346
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v8}, Lsk/mimac/slideshow/network/NetworkInfo;->getIpAddress()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    const-string v15, "inactive"

    .line 357
    .line 358
    move-object/from16 v16, v13

    .line 359
    .line 360
    const-string v13, ")</span>"

    .line 361
    .line 362
    if-eqz v11, :cond_2

    .line 363
    .line 364
    invoke-virtual {v8}, Lsk/mimac/slideshow/network/NetworkInfo;->getIpAddress()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v11, " <span style=\'font-size:92%\'>(Gateway: "

    .line 372
    .line 373
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v8}, Lsk/mimac/slideshow/network/NetworkInfo;->getGateway()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v11

    .line 380
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v11, "; DNS: "

    .line 384
    .line 385
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v8}, Lsk/mimac/slideshow/network/NetworkInfo;->getDns()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    goto :goto_2

    .line 399
    :cond_2
    invoke-static {v15}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v8

    .line 403
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    :goto_2
    const-string v8, "<br><b>WiFi:</b> "

    .line 407
    .line 408
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    const-string v8, " "

    .line 416
    .line 417
    const-string v11, ", "

    .line 418
    .line 419
    if-eqz v5, :cond_3

    .line 420
    .line 421
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    invoke-static {v5}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v5, " (BSSID: "

    .line 433
    .line 434
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    invoke-static {v5}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v5, "Mbps"

    .line 462
    .line 463
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 470
    .line 471
    .line 472
    move-result v5

    .line 473
    const/16 v15, 0x65

    .line 474
    .line 475
    invoke-static {v5, v15}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v5, "%"

    .line 483
    .line 484
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 491
    .line 492
    .line 493
    move-result v5

    .line 494
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v5, "MHz"

    .line 501
    .line 502
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string v5, ")"

    .line 506
    .line 507
    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    goto :goto_4

    .line 511
    :cond_3
    invoke-static {v15}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    goto :goto_3

    .line 516
    :goto_4
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v5, "device_id"

    .line 520
    .line 521
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v5

    .line 525
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-static {}, Lsk/mimac/slideshow/ContextHolder;->getDeviceId()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-static {}, Lsk/mimac/slideshow/ContextHolder;->getSerialNumber()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    if-eqz v5, :cond_4

    .line 546
    .line 547
    const-string v7, "serial_number"

    .line 548
    .line 549
    invoke-static {v7}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v7

    .line 553
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    :cond_4
    const-string v5, "free_space_internal"

    .line 566
    .line 567
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v5, " MB "

    .line 581
    .line 582
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v5, "out_of"

    .line 586
    .line 587
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v2, " MB"

    .line 601
    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    const-string v2, " (<span style=\'color:"

    .line 606
    .line 607
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    const-string v2, "\'>"

    .line 614
    .line 615
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    const-string v2, "%</span>)<br><b>"

    .line 622
    .line 623
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    const-string v2, "external_storages"

    .line 627
    .line 628
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-static {}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->getStorageList()Ljava/util/List;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-eqz v3, :cond_6

    .line 651
    .line 652
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    check-cast v3, Lsk/mimac/slideshow/utils/StorageInfo;

    .line 657
    .line 658
    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/StorageInfo;->getDesc()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    if-eqz v3, :cond_5

    .line 670
    .line 671
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    goto :goto_5

    .line 675
    :cond_6
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    const-string v2, "screen_resolution_ui"

    .line 679
    .line 680
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    const-string v4, " px"

    .line 699
    .line 700
    const-string v5, " x "

    .line 701
    .line 702
    if-eqz v3, :cond_7

    .line 703
    .line 704
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    check-cast v3, Lsk/mimac/slideshow/utils/Couple;

    .line 709
    .line 710
    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v3

    .line 724
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    goto :goto_6

    .line 734
    :cond_7
    const-string v2, "density: "

    .line 735
    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 740
    .line 741
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 750
    .line 751
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v2, "screen_resolution_output"

    .line 758
    .line 759
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    iget v2, v10, Landroid/graphics/Point;->x:I

    .line 770
    .line 771
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    iget v2, v10, Landroid/graphics/Point;->y:I

    .line 778
    .line 779
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    const-string v2, "video_input_device"

    .line 789
    .line 790
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-direct/range {p0 .. p1}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->appendVideoInputs(Ljava/lang/StringBuilder;)V

    .line 801
    .line 802
    .line 803
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    sget-object v3, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 808
    .line 809
    const-string v4, "usb"

    .line 810
    .line 811
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    check-cast v3, Landroid/hardware/usb/UsbManager;

    .line 816
    .line 817
    new-instance v4, Ljava/util/ArrayList;

    .line 818
    .line 819
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .line 821
    .line 822
    invoke-static {}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->getDefaultProber()Lcom/hoho/android/usbserial/driver/UsbSerialProber;

    .line 823
    .line 824
    .line 825
    move-result-object v5

    .line 826
    invoke-virtual {v5, v3}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    .line 827
    .line 828
    .line 829
    move-result-object v3

    .line 830
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 835
    .line 836
    .line 837
    move-result v5

    .line 838
    if-eqz v5, :cond_8

    .line 839
    .line 840
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v5

    .line 844
    check-cast v5, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    .line 845
    .line 846
    invoke-interface {v5}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    .line 847
    .line 848
    .line 849
    move-result-object v5

    .line 850
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 851
    .line 852
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v7

    .line 856
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v8

    .line 860
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 861
    .line 862
    .line 863
    move-result v9

    .line 864
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 865
    .line 866
    .line 867
    move-result-object v9

    .line 868
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 869
    .line 870
    .line 871
    move-result v5

    .line 872
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 873
    .line 874
    .line 875
    move-result-object v5

    .line 876
    const/4 v10, 0x4

    .line 877
    new-array v10, v10, [Ljava/lang/Object;

    .line 878
    .line 879
    const/4 v15, 0x0

    .line 880
    aput-object v7, v10, v15

    .line 881
    .line 882
    const/4 v7, 0x1

    .line 883
    aput-object v8, v10, v7

    .line 884
    .line 885
    const/4 v7, 0x2

    .line 886
    aput-object v9, v10, v7

    .line 887
    .line 888
    const/4 v7, 0x3

    .line 889
    aput-object v5, v10, v7

    .line 890
    .line 891
    const-string v5, "USB (%s by %s - %04d/%04d)"

    .line 892
    .line 893
    invoke-static {v6, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v5

    .line 897
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    goto :goto_7

    .line 901
    :cond_8
    const-string v3, "device_time"

    .line 902
    .line 903
    invoke-static {v1, v12, v3, v14}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    .line 905
    .line 906
    iget-object v3, v0, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->dateFormat:Ljava/text/DateFormat;

    .line 907
    .line 908
    new-instance v5, Ljava/util/Date;

    .line 909
    .line 910
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v3

    .line 917
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    move-object/from16 v3, v16

    .line 921
    .line 922
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    .line 926
    .line 927
    .line 928
    move-result-object v3

    .line 929
    invoke-virtual {v3}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v3

    .line 937
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    const-string v3, ", UTC"

    .line 951
    .line 952
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    .line 954
    .line 955
    invoke-static {v2}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->formatTimeZoneOffset(Ljava/util/TimeZone;)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v2

    .line 959
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    const-string v2, "since_last_start"

    .line 969
    .line 970
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v2

    .line 974
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-static {}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->getUptime()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    const-string v2, "mqtt_state"

    .line 991
    .line 992
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v2

    .line 996
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    .line 998
    .line 999
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    .line 1002
    invoke-static {}, Lsk/mimac/slideshow/mqtt/MqttService;->getState()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v2

    .line 1006
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    .line 1012
    const-string v2, "serial_ports_available"

    .line 1013
    .line 1014
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v2

    .line 1018
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    .line 1024
    new-instance v2, Landroid/serialport/SerialPortFinder;

    .line 1025
    .line 1026
    invoke-direct {v2}, Landroid/serialport/SerialPortFinder;-><init>()V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v2}, Landroid/serialport/SerialPortFinder;->getAllDevicesPath()[Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    invoke-static {v2, v11}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v2

    .line 1037
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    .line 1043
    invoke-static {v4, v11}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v2

    .line 1047
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    const-string v2, "serial_state"

    .line 1054
    .line 1055
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v2

    .line 1059
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    invoke-static {}, Lsk/mimac/slideshow/serial/SerialServiceHolder;->getState()Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    .line 1072
    iget-boolean v2, v0, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->showDetails:Z

    .line 1073
    .line 1074
    if-eqz v2, :cond_9

    .line 1075
    .line 1076
    const-string v2, "&nbsp;<a href=\'/serialMqtt/reload\' class=\'button small\'>"

    .line 1077
    .line 1078
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    const-string v2, "restart_connection"

    .line 1082
    .line 1083
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v2

    .line 1087
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    const-string v2, "</a>"

    .line 1091
    .line 1092
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverService;->getState()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v2

    .line 1099
    if-eqz v2, :cond_9

    .line 1100
    .line 1101
    const-string v3, "<br><b>Hardware driver:</b> "

    .line 1102
    .line 1103
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1110
    .line 1111
    const/16 v3, 0x18

    .line 1112
    .line 1113
    if-lt v2, v3, :cond_a

    .line 1114
    .line 1115
    invoke-static/range {p1 .. p1}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->printDisplayInfo(Ljava/lang/StringBuilder;)V

    .line 1116
    .line 1117
    .line 1118
    :cond_a
    iget-boolean v2, v0, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->showDetails:Z

    .line 1119
    .line 1120
    if-eqz v2, :cond_b

    .line 1121
    .line 1122
    invoke-direct/range {p0 .. p1}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->printMediaCodecInfo(Ljava/lang/StringBuilder;)V

    .line 1123
    .line 1124
    .line 1125
    :cond_b
    return-void
.end method
