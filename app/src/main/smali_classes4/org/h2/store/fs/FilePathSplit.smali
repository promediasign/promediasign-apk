.class public Lorg/h2/store/fs/FilePathSplit;
.super Lorg/h2/store/fs/FilePathWrapper;
.source "SourceFile"


# static fields
.field private static final PART_SUFFIX:Ljava/lang/String; = ".part"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathWrapper;-><init>()V

    return-void
.end method

.method private closeAndThrow(I[Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;J)V
    .locals 2

    .line 1
    const-string v0, "Expected file length: "

    .line 2
    .line 3
    const-string v1, " got: "

    .line 4
    .line 5
    invoke-static {v0, p4, p5, v1}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->size()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p3, " for "

    .line 17
    .line 18
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lorg/h2/store/fs/FilePathSplit;->getName(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    array-length p3, p2

    .line 33
    const/4 p4, 0x0

    .line 34
    :goto_0
    if-ge p4, p3, :cond_0

    .line 35
    .line 36
    aget-object p5, p2, p4

    .line 37
    .line 38
    invoke-virtual {p5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 39
    .line 40
    .line 41
    add-int/lit8 p4, p4, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p2
.end method

.method private getDefaultMaxLength()J
    .locals 3

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/h2/store/fs/FilePathSplit;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    return-wide v0
.end method

.method private getName(I)Ljava/lang/String;
    .locals 2

    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathWrapper;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v1

    iget-object v1, v1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".part"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathWrapper;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object p1

    iget-object p1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method private parse(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, " doesn\'t start with "

    .line 12
    .line 13
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getScheme()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getScheme()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    const/16 v1, 0x3a

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    sget-wide v0, Lorg/h2/engine/SysProperties;->SPLIT_FILE_SIZE_SHIFT:J

    .line 80
    .line 81
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :catch_0
    :goto_0
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1
.end method


# virtual methods
.method public delete()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/h2/store/fs/FilePath;->delete()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBase(I)Lorg/h2/store/fs/FilePath;
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/store/fs/FilePathSplit;->getName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->getScheme()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {p0, v2}, Lorg/h2/store/fs/FilePathSplit;->parse(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    aget-object v2, v2, v3

    .line 26
    .line 27
    invoke-static {v2, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "split"

    return-object v0
.end method

.method public lastModified()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->lastModified()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 3

    check-cast p1, Lorg/h2/store/fs/FilePathSplit;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/h2/store/fs/FilePath;->moveTo(Lorg/h2/store/fs/FilePath;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public newDirectoryStream()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathWrapper;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->newDirectoryStream()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/store/fs/FilePath;

    invoke-virtual {v4}, Lorg/h2/store/fs/FilePath;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".part"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4}, Lorg/h2/store/fs/FilePathWrapper;->wrap(Lorg/h2/store/fs/FilePath;)Lorg/h2/store/fs/FilePathWrapper;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic newDirectoryStream()Ljava/util/List;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathSplit;->newDirectoryStream()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 4

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathWrapper;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->newInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/h2/store/fs/FilePath;->newInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/SequenceInputStream;

    invoke-direct {v3, v0, v2}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/h2/store/fs/FileChannelOutputStream;

    const-string v1, "rw"

    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathSplit;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/h2/store/fs/FileChannelOutputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 14

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathWrapper;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v9, v2, [Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v3, v9, v0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    if-ne v2, v1, :cond_2

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathSplit;->getDefaultMaxLength()J

    move-result-wide v0

    cmp-long v2, v10, v0

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v10

    :goto_1
    move-wide v7, v10

    goto :goto_3

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v5, v10, v3

    if-nez v5, :cond_3

    const/4 v4, 0x0

    aget-object v6, v9, v0

    move-object v3, p0

    move-object v5, v9

    move-wide v7, v10

    invoke-direct/range {v3 .. v8}, Lorg/h2/store/fs/FilePathSplit;->closeAndThrow(I[Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;J)V

    :cond_3
    move-wide v3, v10

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v5, v2, -0x1

    if-ge v0, v5, :cond_5

    aget-object v6, v9, v0

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    add-long v12, v3, v7

    cmp-long v3, v7, v10

    if-eqz v3, :cond_4

    move-object v3, p0

    move v4, v0

    move-object v5, v9

    move-wide v7, v10

    invoke-direct/range {v3 .. v8}, Lorg/h2/store/fs/FilePathSplit;->closeAndThrow(I[Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;J)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move-wide v3, v12

    goto :goto_2

    :cond_5
    aget-object v6, v9, v5

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    add-long v12, v3, v0

    cmp-long v2, v0, v10

    if-lez v2, :cond_6

    move-object v3, p0

    move v4, v5

    move-object v5, v9

    move-wide v7, v10

    invoke-direct/range {v3 .. v8}, Lorg/h2/store/fs/FilePathSplit;->closeAndThrow(I[Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;J)V

    :cond_6
    move-wide v0, v10

    move-wide v7, v12

    :goto_3
    new-instance v2, Lorg/h2/store/fs/FileSplit;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, v9

    move-wide v9, v0

    invoke-direct/range {v3 .. v10}, Lorg/h2/store/fs/FileSplit;-><init>(Lorg/h2/store/fs/FilePathSplit;Ljava/lang/String;[Ljava/nio/channels/FileChannel;JJ)V

    return-object v2
.end method

.method public setReadOnly()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/h2/store/fs/FilePath;->setReadOnly()Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public size()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->size()J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 1

    invoke-direct {p0, p1}, Lorg/h2/store/fs/FilePathSplit;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1
.end method
