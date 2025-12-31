.class public Lcom/jcraft/jsch/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field buffer:[B

.field index:I

.field s:I

.field final tmp:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x5000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    return-void
.end method

.method public static fromBytes([[B)Lcom/jcraft/jsch/Buffer;
    .locals 4

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    array-length v3, v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2, v0}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_1

    aget-object v0, p0, v1

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public checkFreeSize(I)V
    .locals 3

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x80

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v1

    if-ge v2, p1, :cond_1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-ge v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    new-array p1, p1, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    :cond_1
    return-void
.end method

.method public getByte()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getByte(I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    return v0
.end method

.method public getByte([B)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    return-void
.end method

.method public getByte([BII)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    return-void
.end method

.method public getBytes(ILjava/lang/String;)[[B
    .locals 4

    new-array v0, p1, [[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v3

    if-lt v3, v2, :cond_0

    new-array v2, v2, [B

    aput-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method public getCommand()B
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    return v0
.end method

.method public getInt()I
    .locals 3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLong()J
    .locals 6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getMPInt()[B
    .locals 3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    const/16 v1, 0x2000

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x2000

    :cond_1
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    return-object v1
.end method

.method public getMPIntBits()[B
    .locals 5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    aput-byte v2, v3, v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    :cond_0
    return-object v1
.end method

.method public getOffSet()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    return v0
.end method

.method public getShort()I
    .locals 2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getString()[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    const/high16 v1, 0x40000

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    const/high16 v0, 0x40000

    :cond_1
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    return-object v1
.end method

.method public getString([I[I)[B
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->getByte(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, p1, v2

    aput v0, p2, v2

    iget-object p1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object p1
.end method

.method public getUInt()J
    .locals 7

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    const-wide/32 v3, 0xff00

    and-long/2addr v0, v3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v0, v5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v2

    and-long v2, v5, v3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    const/16 v4, 0x10

    shl-long/2addr v0, v4

    const-wide/32 v4, -0x10000

    and-long/2addr v0, v4

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public putByte(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public putByte([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    return-void
.end method

.method public putByte([BII)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    return-void
.end method

.method public putInt(I)V
    .locals 4

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget-object p1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v3, 0x4

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    return-void
.end method

.method public putLong(J)V
    .locals 10

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x38

    ushr-long v1, p1, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x30

    ushr-long v3, p1, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/16 v1, 0x28

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    const/16 v1, 0x20

    ushr-long v5, p1, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v6, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v7, 0x4

    invoke-static {v0, v2, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x18

    ushr-long v8, p1, v1

    long-to-int v1, v8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/16 v1, 0x10

    ushr-long v8, p1, v1

    long-to-int v1, v8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/16 v1, 0x8

    ushr-long v8, p1, v1

    long-to-int v3, v8

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v5

    iget-object p1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget p2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr p2, v7

    invoke-static {v0, v2, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    return-void
.end method

.method public putMPInt([B)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    return-void
.end method

.method public putString([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    return-void
.end method

.method public putString([BII)V
    .locals 0

    .line 2
    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    return-void
.end method

.method public rewind()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    return-void
.end method

.method public setOffSet(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    return-void
.end method

.method public shift()V
    .locals 4

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iput v3, p0, Lcom/jcraft/jsch/Buffer;->s:I

    return-void
.end method

.method public skip(I)V
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    return-void
.end method
