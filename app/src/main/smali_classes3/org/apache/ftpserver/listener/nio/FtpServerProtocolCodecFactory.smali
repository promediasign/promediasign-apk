.class public Lorg/apache/ftpserver/listener/nio/FtpServerProtocolCodecFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# instance fields
.field private decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

.field private encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/FtpServerProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    new-instance v0, Lorg/apache/ftpserver/listener/nio/FtpResponseEncoder;

    invoke-direct {v0}, Lorg/apache/ftpserver/listener/nio/FtpResponseEncoder;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/FtpServerProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    return-void
.end method


# virtual methods
.method public getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 0

    iget-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpServerProtocolCodecFactory;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    return-object p1
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 0

    iget-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpServerProtocolCodecFactory;->encoder:Lorg/apache/mina/filter/codec/ProtocolEncoder;

    return-object p1
.end method
