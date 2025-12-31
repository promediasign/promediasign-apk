.class public interface abstract Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract exceptionCaught(Ljava/lang/Throwable;)V
.end method

.method public abstract messageReceived(Ljava/lang/Object;)V
.end method

.method public abstract messageSent(Ljava/lang/Object;)V
.end method

.method public abstract sessionClosed()V
.end method

.method public abstract sessionCreated()V
.end method

.method public abstract sessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V
.end method

.method public abstract sessionOpened()V
.end method
