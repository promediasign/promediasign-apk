.class public Lorg/apache/velocity/io/UnicodeInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;
    }
.end annotation


# static fields
.field public static final UTF16BE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

.field public static final UTF16LE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

.field public static final UTF32BE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

.field public static final UTF32LE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

.field public static final UTF8_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;


# instance fields
.field private buf:[B

.field private final encoding:Ljava/lang/String;

.field private final inputStream:Ljava/io/PushbackInputStream;

.field private pos:I

.field private final skipBOM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "UTF-8"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;-><init>(Ljava/lang/String;[BLorg/apache/velocity/io/UnicodeInputStream$1;)V

    sput-object v0, Lorg/apache/velocity/io/UnicodeInputStream;->UTF8_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    new-instance v0, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    const-string v4, "UTF-16LE"

    invoke-direct {v0, v4, v2, v3}, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;-><init>(Ljava/lang/String;[BLorg/apache/velocity/io/UnicodeInputStream$1;)V

    sput-object v0, Lorg/apache/velocity/io/UnicodeInputStream;->UTF16LE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    new-instance v0, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    const-string v2, "UTF-16BE"

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;-><init>(Ljava/lang/String;[BLorg/apache/velocity/io/UnicodeInputStream$1;)V

    sput-object v0, Lorg/apache/velocity/io/UnicodeInputStream;->UTF16BE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    new-instance v0, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    const-string v4, "UTF-32LE"

    invoke-direct {v0, v4, v2, v3}, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;-><init>(Ljava/lang/String;[BLorg/apache/velocity/io/UnicodeInputStream$1;)V

    sput-object v0, Lorg/apache/velocity/io/UnicodeInputStream;->UTF32LE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    new-instance v0, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    const-string v2, "UTF-32BE"

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;-><init>(Ljava/lang/String;[BLorg/apache/velocity/io/UnicodeInputStream$1;)V

    sput-object v0, Lorg/apache/velocity/io/UnicodeInputStream;->UTF32BE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    return-void

    nop

    :array_0
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x1t
        -0x2t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        -0x2t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/velocity/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/velocity/io/UnicodeInputStream;->buf:[B

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/velocity/io/UnicodeInputStream;->pos:I

    iput-boolean p2, p0, Lorg/apache/velocity/io/UnicodeInputStream;->skipBOM:Z

    new-instance p2, Ljava/io/PushbackInputStream;

    invoke-direct {p2, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p2, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/io/UnicodeInputStream;->readEncoding()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/io/UnicodeInputStream;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not read BOM from Stream"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private match(Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;)Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget v2, p0, Lorg/apache/velocity/io/UnicodeInputStream;->pos:I

    if-gt v2, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/io/UnicodeInputStream;->readByte()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p2

    :cond_0
    aget-byte v2, v0, v1

    iget-object v3, p0, Lorg/apache/velocity/io/UnicodeInputStream;->buf:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_1

    return-object p2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private pushback(Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;)V
    .locals 3

    iget v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->pos:I

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lorg/apache/velocity/io/UnicodeInputStream;->skipBOM:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    iget v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->pos:I

    sub-int/2addr v0, p1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Match has more bytes than available!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lorg/apache/velocity/io/UnicodeInputStream;->buf:[B

    invoke-virtual {v1, v2, p1, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    return-void
.end method

.method private readByte()Z
    .locals 4

    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lorg/apache/velocity/io/UnicodeInputStream;->pos:I

    iget-object v2, p0, Lorg/apache/velocity/io/UnicodeInputStream;->buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/velocity/io/UnicodeInputStream;->pos:I

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BOM read error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sameEncoding(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "_"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public getEncodingFromStream()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public readEncoding()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->pos:I

    invoke-direct {p0}, Lorg/apache/velocity/io/UnicodeInputStream;->readByte()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/io/UnicodeInputStream;->buf:[B

    aget-byte v0, v1, v0

    const/16 v1, -0x11

    if-eq v0, v1, :cond_4

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/apache/velocity/io/UnicodeInputStream;->UTF32BE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    :goto_0
    invoke-direct {p0, v0, v2}, Lorg/apache/velocity/io/UnicodeInputStream;->match(Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;)Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/velocity/io/UnicodeInputStream;->UTF16LE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    invoke-direct {p0, v0, v2}, Lorg/apache/velocity/io/UnicodeInputStream;->match(Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;)Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Lorg/apache/velocity/io/UnicodeInputStream;->UTF32LE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    invoke-direct {p0, v1, v0}, Lorg/apache/velocity/io/UnicodeInputStream;->match(Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;)Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/apache/velocity/io/UnicodeInputStream;->UTF16BE_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/apache/velocity/io/UnicodeInputStream;->UTF8_BOM:Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;

    goto :goto_0

    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lorg/apache/velocity/io/UnicodeInputStream;->pushback(Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;)V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/apache/velocity/io/UnicodeInputStream$UnicodeBOM;->getEncoding()Ljava/lang/String;

    move-result-object v2

    :cond_6
    return-object v2
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/io/UnicodeInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/PushbackInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
