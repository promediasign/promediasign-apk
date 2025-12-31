.class public abstract Lsk/mimac/slideshow/utils/MountedStorageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/utils/MountedStorageUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/MountedStorageUtils;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/utils/StorageInfo;Lsk/mimac/slideshow/utils/StorageInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->lambda$getStorageList$0(Lsk/mimac/slideshow/utils/StorageInfo;Lsk/mimac/slideshow/utils/StorageInfo;)I

    move-result p0

    return p0
.end method

.method public static getFreeStorageColor(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const-string p0, "#712"

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    if-ge p0, v0, :cond_1

    const-string p0, "#c40"

    goto :goto_0

    :cond_1
    const-string p0, "#172"

    :goto_0
    return-object p0
.end method

.method public static getStorageList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/StorageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/mounts"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "vfat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "/mnt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_1
    :goto_1
    const-string v4, "/mnt/secure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/mnt/asec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/mnt/obb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/dev/mapper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "tmpfs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/mnt/vendor/param"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/tee"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/Reserve0/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/boot "

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/mnt/scratch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, " "

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "ro"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v0, v3, v4}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->processMountPoint(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_5

    aget-object v3, v1, v2

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->processMountPoint(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_6

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    new-instance v1, LE/a;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, LE/a;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_6
    sget-object v2, Lsk/mimac/slideshow/utils/MountedStorageUtils;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t get mounted storage list"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-object v0
.end method

.method public static getStorageListWithInternal()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/StorageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->getStorageList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long v4, v4, v2

    const-wide/32 v2, 0x100000

    div-long/2addr v4, v2

    long-to-int v5, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long v8, v8, v6

    div-long/2addr v8, v2

    long-to-int v1, v8

    new-instance v2, Lsk/mimac/slideshow/utils/StorageInfo;

    int-to-long v9, v5

    int-to-long v11, v1

    const-string v7, ""

    const/4 v8, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lsk/mimac/slideshow/utils/StorageInfo;-><init>(Ljava/lang/String;ZJJ)V

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic lambda$getStorageList$0(Lsk/mimac/slideshow/utils/StorageInfo;Lsk/mimac/slideshow/utils/StorageInfo;)I
    .locals 3

    new-instance v0, Lorg/apache/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;-><init>()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/StorageInfo;->isReadOnly()Z

    move-result v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/StorageInfo;->isReadOnly()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(ZZ)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/StorageInfo;->getTotalSpace()J

    move-result-wide v1

    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/StorageInfo;->getTotalSpace()J

    move-result-wide p0

    invoke-virtual {v0, v1, v2, p0, p1}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result p0

    return p0
.end method

.method private static processMountPoint(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/StorageInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "/mnt/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long v3, v3, v1

    const-wide/32 v1, 0x100000

    div-long/2addr v3, v1

    long-to-int v4, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v7

    mul-long v7, v7, v5

    div-long/2addr v7, v1

    long-to-int v0, v7

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    new-instance v1, Lsk/mimac/slideshow/utils/StorageInfo;

    int-to-long v8, v4

    int-to-long v10, v0

    move-object v5, v1

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v5 .. v11}, Lsk/mimac/slideshow/utils/StorageInfo;-><init>(Ljava/lang/String;ZJJ)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    :cond_1
    return-void
.end method
