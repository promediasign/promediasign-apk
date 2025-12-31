.class public Lorg/h2/store/fs/FilePathEncrypt;
.super Lorg/h2/store/fs/FilePathWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/fs/FilePathEncrypt$XTS;,
        Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;
    }
.end annotation


# static fields
.field private static final SCHEME:Ljava/lang/String; = "encrypt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathWrapper;-><init>()V

    return-void
.end method

.method public static getPasswordBytes([C)[B
    .locals 6

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-char v3, p0, v2

    add-int v4, v2, v2

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private parse(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathEncrypt;->getScheme()Ljava/lang/String;

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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathEncrypt;->getScheme()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/16 v0, 0x3a

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ltz v0, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    filled-new-array {v1, p1}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string v1, " doesn\'t contain encryption algorithm and password"

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string v1, " doesn\'t start with "

    .line 64
    .line 65
    invoke-static {p1, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathEncrypt;->getScheme()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method public static register()V
    .locals 1

    new-instance v0, Lorg/h2/store/fs/FilePathEncrypt;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathEncrypt;-><init>()V

    invoke-static {v0}, Lorg/h2/store/fs/FilePath;->register(Lorg/h2/store/fs/FilePath;)V

    return-void
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/h2/store/fs/FilePathEncrypt;->parse(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathEncrypt;->getScheme()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ":"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aget-object v0, v0, v3

    .line 26
    .line 27
    invoke-static {v0, v2, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "encrypt"

    return-object v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Lorg/h2/store/fs/FileChannelInputStream;

    const-string v1, "r"

    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathEncrypt;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/h2/store/fs/FileChannelInputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/h2/store/fs/FileChannelOutputStream;

    const-string v1, "rw"

    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathEncrypt;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/h2/store/fs/FileChannelOutputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 3

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/h2/store/fs/FilePathEncrypt;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1, p1}, Lorg/h2/store/fs/FileUtils;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;

    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;-><init>(Ljava/lang/String;[BLjava/nio/channels/FileChannel;)V

    return-object v1
.end method

.method public size()J
    .locals 9

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathWrapper;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v6, 0xfff

    and-long/2addr v6, v0

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 1

    invoke-direct {p0, p1}, Lorg/h2/store/fs/FilePathEncrypt;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1
.end method
