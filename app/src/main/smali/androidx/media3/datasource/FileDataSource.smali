.class public final Landroidx/media3/datasource/FileDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/FileDataSource$FileDataSourceException;,
        Landroidx/media3/datasource/FileDataSource$Api21;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private file:Ljava/io/RandomAccessFile;

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    return-void
.end method

.method private static openLocalFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;
    .locals 7

    .line 1
    const/16 v0, 0x7d6

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "r"

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :catch_1
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :catch_2
    move-exception v1

    .line 26
    goto :goto_2

    .line 27
    :goto_0
    new-instance v0, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    .line 28
    .line 29
    const/16 v1, 0x7d0

    .line 30
    .line 31
    invoke-direct {v0, p0, v1}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :goto_1
    new-instance v1, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    .line 36
    .line 37
    invoke-direct {v1, p0, v0}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :goto_2
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    new-instance p0, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    .line 62
    .line 63
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 64
    .line 65
    const/16 v3, 0x15

    .line 66
    .line 67
    if-lt v2, v3, :cond_0

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2}, Landroidx/media3/datasource/FileDataSource$Api21;->access$000(Ljava/lang/Throwable;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_0
    const/16 v0, 0x7d5

    .line 81
    .line 82
    :goto_3
    invoke-direct {p0, v1, v0}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_1
    new-instance v0, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string v4, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path="

    .line 101
    .line 102
    const-string v5, ",query="

    .line 103
    .line 104
    const-string v6, ",fragment="

    .line 105
    .line 106
    invoke-static {v4, v2, v5, v3, v6}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const/16 v2, 0x3ec

    .line 118
    .line 119
    invoke-direct {v0, p0, v1, v2}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 120
    .line 121
    .line 122
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/FileDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v0, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Landroidx/media3/datasource/FileDataSource;->opened:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroidx/media3/datasource/FileDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    new-instance v3, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-object v0, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Landroidx/media3/datasource/FileDataSource;->opened:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/media3/datasource/FileDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_2
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/FileDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 5

    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/datasource/FileDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    invoke-static {v0}, Landroidx/media3/datasource/FileDataSource;->openLocalFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    :try_start_0
    iget-wide v1, p1, Landroidx/media3/datasource/DataSpec;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v0, p0, Landroidx/media3/datasource/FileDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/FileDataSource;->opened:Z

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    iget-wide v0, p0, Landroidx/media3/datasource/FileDataSource;->bytesRemaining:J

    return-wide v0

    :cond_1
    new-instance p1, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 v0, 0x7d8

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :goto_1
    new-instance v0, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 v1, 0x7d0

    invoke-direct {v0, p1, v1}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public read([BII)I
    .locals 5

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/FileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Landroidx/media3/datasource/FileDataSource;->bytesRemaining:J

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    iget-wide p2, p0, Landroidx/media3/datasource/FileDataSource;->bytesRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/FileDataSource;->bytesRemaining:J

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    :cond_2
    return p1

    :catch_0
    move-exception p1

    new-instance p2, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method
