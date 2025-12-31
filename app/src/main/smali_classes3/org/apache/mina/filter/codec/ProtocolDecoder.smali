.class public interface abstract Lorg/apache/mina/filter/codec/ProtocolDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
.end method

.method public abstract dispose(Lorg/apache/mina/core/session/IoSession;)V
.end method

.method public abstract finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
.end method
