.class public Lcom/jcraft/jsch/DHGEX;
.super Lcom/jcraft/jsch/KeyExchange;
.source "SourceFile"


# static fields
.field static min:I = 0x400

.field static preferred:I = 0x400


# instance fields
.field I_C:[B

.field I_S:[B

.field V_C:[B

.field V_S:[B

.field private buf:Lcom/jcraft/jsch/Buffer;

.field dh:Lcom/jcraft/jsch/DH;

.field private e:[B

.field private g:[B

.field protected hash:Ljava/lang/String;

.field max:I

.field private p:[B

.field private packet:Lcom/jcraft/jsch/Packet;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    const-string v0, "sha-1"

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->hash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check2048(Ljava/lang/Class;I)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/DH;

    invoke-interface {p1}, Lcom/jcraft/jsch/DH;->init()V

    const/16 v0, 0x101

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v2, 0x100

    const/16 v3, 0x73

    aput-byte v3, v0, v2

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setP([B)V

    new-array v0, v1, [B

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setG([B)V

    :try_start_0
    invoke-interface {p1}, Lcom/jcraft/jsch/DH;->getE()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0x800

    :catch_0
    return p2
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    return v0
.end method

.method public init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->V_S:[B

    iput-object p3, p0, Lcom/jcraft/jsch/DHGEX;->V_C:[B

    iput-object p4, p0, Lcom/jcraft/jsch/DHGEX;->I_S:[B

    iput-object p5, p0, Lcom/jcraft/jsch/DHGEX;->I_C:[B

    :try_start_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/HASH;

    iput-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {p2}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    new-instance p2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    new-instance p3, Lcom/jcraft/jsch/Packet;

    invoke-direct {p3, p2}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p3, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    const-string p2, "dh"

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {p0, p2, p3}, Lcom/jcraft/jsch/DHGEX;->check2048(Ljava/lang/Class;I)I

    move-result p3

    iput p3, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    sput p3, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/DH;

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {p2}, Lcom/jcraft/jsch/DH;->init()V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Packet;->reset()V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    sget p3, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    sget p3, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "SSH_MSG_KEX_DH_GEX_REQUEST("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p4, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "<"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p5, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ") sent"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p3, "expecting SSH_MSG_KEX_DH_GEX_GROUP"

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_0
    const/16 p1, 0x1f

    iput p1, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    return-void
.end method

.method public next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 5

    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    const/16 v1, 0x1f

    const/16 v2, 0x21

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    if-eq v0, v2, :cond_1

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type: must be SSH_MSG_KEX_DH_GEX_REPLY "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v4

    :cond_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/DH;->setF([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v1}, Lcom/jcraft/jsch/DH;->checkRange()V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v1}, Lcom/jcraft/jsch/DH;->getK()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyExchange;->normalize([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->reset()V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->V_C:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->V_S:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->I_C:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->I_S:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    sget v2, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    sget v2, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->g:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->e:[B

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v2, v1, v4, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    aget-byte v1, v0, v4

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/jcraft/jsch/KeyExchange;->verify(Ljava/lang/String;[BI[B)Z

    move-result p1

    iput v4, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    return p1

    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    if-eq v0, v1, :cond_3

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type: must be SSH_MSG_KEX_DH_GEX_GROUP "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX;->g:[B

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setP([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->g:[B

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setG([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {p1}, Lcom/jcraft/jsch/DH;->getE()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX;->e:[B

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Packet;->reset()V

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->e:[B

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "SSH_MSG_KEX_DH_GEX_INIT sent"

    invoke-interface {p1, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "expecting SSH_MSG_KEX_DH_GEX_REPLY"

    invoke-interface {p1, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_4
    iput v2, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    return v3
.end method
