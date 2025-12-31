.class public Lorg/apache/mina/filter/codec/ProtocolDecoderException;
.super Lorg/apache/mina/filter/codec/ProtocolCodecException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x3135363438363135L


# instance fields
.field private hexdump:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getHexdump()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    const-string v1, " "

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, "(Hexdump: "

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    .line 35
    .line 36
    const/16 v1, 0x29

    .line 37
    .line 38
    invoke-static {v2, v0, v1}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_2
    return-object v0
.end method

.method public setHexdump(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Hexdump cannot be set more than once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
