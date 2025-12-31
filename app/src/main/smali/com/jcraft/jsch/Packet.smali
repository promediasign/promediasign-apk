.class public Lcom/jcraft/jsch/Packet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static random:Lcom/jcraft/jsch/Random;


# instance fields
.field ba4:[B

.field buffer:Lcom/jcraft/jsch/Buffer;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/Buffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    iput-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    return-void
.end method

.method public static setRandom(Lcom/jcraft/jsch/Random;)V
    .locals 0

    sput-object p0, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    return-void
.end method


# virtual methods
.method public getBuffer()Lcom/jcraft/jsch/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    return-object v0
.end method

.method public padding(I)V
    .locals 7

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->index:I

    neg-int v2, v1

    add-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    if-ge v2, p1, :cond_0

    add-int/2addr v2, p1

    :cond_0
    add-int/2addr v1, v2

    const/4 p1, 0x4

    sub-int/2addr v1, p1

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    ushr-int/lit8 v4, v1, 0x18

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    const/4 v6, 0x1

    aput-byte v4, v3, v6

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    const/4 v6, 0x2

    aput-byte v4, v3, v6

    const/4 v4, 0x3

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v3, v5, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    int-to-byte v1, v2

    aput-byte v1, v0, p1

    sget-object p1, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v3, v1, v2}, Lcom/jcraft/jsch/Random;->fill([BII)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x5

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->index:I

    return-void
.end method

.method public shift(III)I
    .locals 4

    add-int/lit8 v0, p1, 0xe

    neg-int v1, v0

    add-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    if-ge v1, p2, :cond_0

    add-int/2addr v1, p2

    :cond_0
    const/16 p2, 0x20

    invoke-static {v0, v1, p3, p2}, LA/g;->a(IIII)I

    move-result p2

    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v1

    iget p3, p3, Lcom/jcraft/jsch/Buffer;->index:I

    add-int v3, p2, p3

    add-int/lit8 v3, v3, -0xe

    sub-int/2addr v3, p1

    if-ge v2, v3, :cond_1

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0xe

    sub-int/2addr p3, p1

    new-array p3, p3, [B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, p3, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iput-object p3, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    :cond_1
    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget p3, p3, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 p3, p3, -0xe

    sub-int/2addr p3, p1

    invoke-static {v1, v0, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xa

    iput v1, p3, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-virtual {p3, p1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->index:I

    return p2
.end method

.method public unshift(BIII)V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v1, 0xe

    invoke-static {v0, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v2, 0x5

    aput-byte p1, v0, v2

    const/4 p1, 0x6

    iput p1, p3, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-virtual {p3, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    add-int/2addr p4, v1

    iput p4, p1, Lcom/jcraft/jsch/Buffer;->index:I

    return-void
.end method
