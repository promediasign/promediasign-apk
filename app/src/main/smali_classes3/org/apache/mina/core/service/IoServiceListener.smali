.class public interface abstract Lorg/apache/mina/core/service/IoServiceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract serviceActivated(Lorg/apache/mina/core/service/IoService;)V
.end method

.method public abstract serviceDeactivated(Lorg/apache/mina/core/service/IoService;)V
.end method

.method public abstract serviceIdle(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/session/IdleStatus;)V
.end method

.method public abstract sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
.end method

.method public abstract sessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
.end method
