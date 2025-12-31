.class public abstract Lcom/jcraft/jsch/DHECN;
.super Lcom/jcraft/jsch/KeyExchange;
.source "SourceFile"


# instance fields
.field I_C:[B

.field I_S:[B

.field Q_C:[B

.field V_C:[B

.field V_S:[B

.field private buf:Lcom/jcraft/jsch/Buffer;

.field private ecdh:Lcom/jcraft/jsch/ECDH;

.field protected key_size:I

.field private packet:Lcom/jcraft/jsch/Packet;

.field protected sha_name:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/DHECN;->state:I

    return v0
.end method

.method public init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/DHECN;->V_S:[B

    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->V_C:[B

    iput-object p4, p0, Lcom/jcraft/jsch/DHECN;->I_S:[B

    iput-object p5, p0, Lcom/jcraft/jsch/DHECN;->I_C:[B

    :try_start_0
    iget-object p3, p0, Lcom/jcraft/jsch/DHECN;->sha_name:Ljava/lang/String;

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

    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    new-instance p4, Lcom/jcraft/jsch/Packet;

    invoke-direct {p4, p3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p4, p0, Lcom/jcraft/jsch/DHECN;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p4}, Lcom/jcraft/jsch/Packet;->reset()V

    iget-object p3, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 p4, 0x1e

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    :try_start_1
    const-string p3, "ecdh-sha2-nistp"

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/ECDH;

    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->ecdh:Lcom/jcraft/jsch/ECDH;

    iget p4, p0, Lcom/jcraft/jsch/DHECN;->key_size:I

    invoke-interface {p3, p4}, Lcom/jcraft/jsch/ECDH;->init(I)V

    iget-object p3, p0, Lcom/jcraft/jsch/DHECN;->ecdh:Lcom/jcraft/jsch/ECDH;

    invoke-interface {p3}, Lcom/jcraft/jsch/ECDH;->getQ()[B

    move-result-object p3

    iput-object p3, p0, Lcom/jcraft/jsch/DHECN;->Q_C:[B

    iget-object p4, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p4, p3}, Lcom/jcraft/jsch/Buffer;->putString([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHECN;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p3, "SSH_MSG_KEX_ECDH_INIT sent"

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p3, "expecting SSH_MSG_KEX_ECDH_REPLY"

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    const/16 p1, 0x1f

    iput p1, p0, Lcom/jcraft/jsch/DHECN;->state:I

    return-void

    :catch_1
    move-exception p1

    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 7

    iget v0, p0, Lcom/jcraft/jsch/DHECN;->state:I

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

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/KeyPairECDSA;->fromPoint([B)[[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->ecdh:Lcom/jcraft/jsch/ECDH;

    aget-object v4, v2, v1

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-interface {v3, v4, v6}, Lcom/jcraft/jsch/ECDH;->validate([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->ecdh:Lcom/jcraft/jsch/ECDH;

    aget-object v4, v2, v1

    aget-object v2, v2, v5

    invoke-interface {v3, v4, v2}, Lcom/jcraft/jsch/ECDH;->getSecret([B[B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyExchange;->normalize([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->reset()V

    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->V_C:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->V_S:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->I_C:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->I_S:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->Q_C:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    new-array v2, v0, [B

    iget-object v3, p0, Lcom/jcraft/jsch/DHECN;->buf:Lcom/jcraft/jsch/Buffer;

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

    aget-byte v3, v0, v5

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

    iput v1, p0, Lcom/jcraft/jsch/DHECN;->state:I

    return p1
.end method
