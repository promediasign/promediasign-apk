.class public Lcom/jcraft/jsch/DHG14;
.super Lcom/jcraft/jsch/KeyExchange;
.source "SourceFile"


# static fields
.field static final g:[B

.field static final p:[B


# instance fields
.field I_C:[B

.field I_S:[B

.field V_C:[B

.field V_S:[B

.field private buf:Lcom/jcraft/jsch/Buffer;

.field dh:Lcom/jcraft/jsch/DH;

.field e:[B

.field private packet:Lcom/jcraft/jsch/Packet;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lcom/jcraft/jsch/DHG14;->g:[B

    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jsch/DHG14;->p:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x37t
        0xft
        -0x26t
        -0x5et
        0x21t
        0x68t
        -0x3et
        0x34t
        -0x3ct
        -0x3at
        0x62t
        -0x75t
        -0x80t
        -0x24t
        0x1ct
        -0x2ft
        0x29t
        0x2t
        0x4et
        0x8t
        -0x76t
        0x67t
        -0x34t
        0x74t
        0x2t
        0xbt
        -0x42t
        -0x5at
        0x3bt
        0x13t
        -0x65t
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        -0x72t
        0x34t
        0x4t
        -0x23t
        -0x11t
        -0x6bt
        0x19t
        -0x4dt
        -0x33t
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        -0xet
        0x5ft
        0x14t
        0x37t
        0x4ft
        -0x1ft
        0x35t
        0x6dt
        0x6dt
        0x51t
        -0x3et
        0x45t
        -0x1ct
        -0x7bt
        -0x4bt
        0x76t
        0x62t
        0x5et
        0x7et
        -0x3at
        -0xct
        0x4ct
        0x42t
        -0x17t
        -0x5at
        0x37t
        -0x13t
        0x6bt
        0xbt
        -0x1t
        0x5ct
        -0x4at
        -0xct
        0x6t
        -0x49t
        -0x13t
        -0x12t
        0x38t
        0x6bt
        -0x5t
        0x5at
        -0x77t
        -0x61t
        -0x5bt
        -0x52t
        -0x61t
        0x24t
        0x11t
        0x7ct
        0x4bt
        0x1ft
        -0x1at
        0x49t
        0x28t
        0x66t
        0x51t
        -0x14t
        -0x1ct
        0x5bt
        0x3dt
        -0x3et
        0x0t
        0x7ct
        -0x48t
        -0x5ft
        0x63t
        -0x41t
        0x5t
        -0x68t
        -0x26t
        0x48t
        0x36t
        0x1ct
        0x55t
        -0x2dt
        -0x66t
        0x69t
        0x16t
        0x3ft
        -0x58t
        -0x3t
        0x24t
        -0x31t
        0x5ft
        -0x7dt
        0x65t
        0x5dt
        0x23t
        -0x24t
        -0x5dt
        -0x53t
        -0x6at
        0x1ct
        0x62t
        -0xdt
        0x56t
        0x20t
        -0x7bt
        0x52t
        -0x45t
        -0x62t
        -0x2bt
        0x29t
        0x7t
        0x70t
        -0x6at
        -0x6at
        0x6dt
        0x67t
        0xct
        0x35t
        0x4et
        0x4at
        -0x44t
        -0x68t
        0x4t
        -0xft
        0x74t
        0x6ct
        0x8t
        -0x36t
        0x18t
        0x21t
        0x7ct
        0x32t
        -0x70t
        0x5et
        0x46t
        0x2et
        0x36t
        -0x32t
        0x3bt
        -0x1dt
        -0x62t
        0x77t
        0x2ct
        0x18t
        0xet
        -0x7at
        0x3t
        -0x65t
        0x27t
        -0x7dt
        -0x5et
        -0x14t
        0x7t
        -0x5et
        -0x71t
        -0x4bt
        -0x3bt
        0x5dt
        -0x10t
        0x6ft
        0x4ct
        0x52t
        -0x37t
        -0x22t
        0x2bt
        -0x35t
        -0xat
        -0x6bt
        0x58t
        0x17t
        0x18t
        0x39t
        -0x6bt
        0x49t
        0x7ct
        -0x16t
        -0x6bt
        0x6at
        -0x1bt
        0x15t
        -0x2et
        0x26t
        0x18t
        -0x68t
        -0x6t
        0x5t
        0x10t
        0x15t
        0x72t
        -0x72t
        0x5at
        -0x76t
        -0x54t
        -0x56t
        0x68t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/DHG14;->state:I

    return v0
.end method

.method public init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/DHG14;->V_S:[B

    iput-object p3, p0, Lcom/jcraft/jsch/DHG14;->V_C:[B

    iput-object p4, p0, Lcom/jcraft/jsch/DHG14;->I_S:[B

    iput-object p5, p0, Lcom/jcraft/jsch/DHG14;->I_C:[B

    :try_start_0
    const-string p3, "sha-1"

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/HASH;

    iput-object p3, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {p3}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p4, p3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    new-instance p3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p3, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    new-instance p4, Lcom/jcraft/jsch/Packet;

    invoke-direct {p4, p3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p4, p0, Lcom/jcraft/jsch/DHG14;->packet:Lcom/jcraft/jsch/Packet;

    const-string p3, "dh"

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/DH;

    iput-object p3, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {p3}, Lcom/jcraft/jsch/DH;->init()V

    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    sget-object p4, Lcom/jcraft/jsch/DHG14;->p:[B

    invoke-interface {p3, p4}, Lcom/jcraft/jsch/DH;->setP([B)V

    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    sget-object p4, Lcom/jcraft/jsch/DHG14;->g:[B

    invoke-interface {p3, p4}, Lcom/jcraft/jsch/DH;->setG([B)V

    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {p3}, Lcom/jcraft/jsch/DH;->getE()[B

    move-result-object p3

    iput-object p3, p0, Lcom/jcraft/jsch/DHG14;->e:[B

    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p3}, Lcom/jcraft/jsch/Packet;->reset()V

    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 p4, 0x1e

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object p3, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object p4, p0, Lcom/jcraft/jsch/DHG14;->e:[B

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHG14;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p3, "SSH_MSG_KEXDH_INIT sent"

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p3, "expecting SSH_MSG_KEXDH_REPLY"

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    const/16 p1, 0x1f

    iput p1, p0, Lcom/jcraft/jsch/DHG14;->state:I

    return-void
.end method

.method public next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 5

    iget v0, p0, Lcom/jcraft/jsch/DHG14;->state:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    if-eq v0, v2, :cond_1

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type: must be 31 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/DH;->setF([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->checkRange()V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->getK()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyExchange;->normalize([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->reset()V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->V_C:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->V_S:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->I_C:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->I_S:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->e:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    new-array v2, v0, [B

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v3, v2, v1, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    aget-byte v2, v0, v1

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const/4 v3, 0x4

    invoke-static {v0, v3, v2}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/jcraft/jsch/KeyExchange;->verify(Ljava/lang/String;[BI[B)Z

    move-result p1

    iput v1, p0, Lcom/jcraft/jsch/DHG14;->state:I

    return p1
.end method
