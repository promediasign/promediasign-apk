.class public Lorg/apache/poi/hpsf/Filetime;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _dwHighDateTime:I

.field private _dwLowDateTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/hpsf/Filetime;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v0

    const/16 p1, 0x20

    ushr-long v2, v0, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p1, v2

    iput p1, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    and-long/2addr v0, v4

    long-to-int p1, v0

    iput p1, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    return-void
.end method

.method public static dateToFileTime(Ljava/util/Date;)J
    .locals 4

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, -0xa9730b66800L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static filetimeToDate(J)Ljava/util/Date;
    .locals 2

    const-wide/16 v0, 0x2710

    div-long/2addr p0, v0

    const-wide v0, -0xa9730b66800L

    add-long/2addr p0, v0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static isUndefined(Ljava/util/Date;)Z
    .locals 4

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/hpsf/Filetime;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getJavaValue()Ljava/util/Date;
    .locals 6

    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Filetime;->filetimeToDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    return-void
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    const/16 p1, 0x8

    return p1
.end method
