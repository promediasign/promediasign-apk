.class public Lsk/mimac/slideshow/benchmark/FileBenchmark;
.super Lsk/mimac/slideshow/benchmark/AbstractBenchmark;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;-><init>()V

    return-void
.end method


# virtual methods
.method public doCalculations()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x3a98

    if-ge v2, v3, :cond_0

    const-string v3, "Lorem ipsum dolor sit amet, consectetur adipiscing elit...\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_1
    const/16 v2, 0x10

    if-ge v1, v2, :cond_4

    new-instance v2, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    const-string v4, "txt"

    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[BZ)V

    invoke-static {v2, v0, v3}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[BZ)V

    invoke-static {v2, v0, v3}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[BZ)V

    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v4

    array-length v5, v4

    array-length v6, v0

    mul-int/lit8 v6, v6, 0x4

    if-ne v5, v6, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x2ee0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lt v4, v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "File count doesn\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "File size is wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File size doesn\'t match (expected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actual="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "File read & write"

    return-object v0
.end method
