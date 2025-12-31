.class public interface abstract Lorg/apache/mina/core/service/IoHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
.end method

.method public abstract messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
.end method

.method public abstract messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
.end method

.method public abstract sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
.end method

.method public abstract sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
.end method

.method public abstract sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
.end method

.method public abstract sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
.end method
