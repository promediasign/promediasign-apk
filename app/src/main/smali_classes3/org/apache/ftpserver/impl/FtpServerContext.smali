.class public interface abstract Lorg/apache/ftpserver/impl/FtpServerContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FtpletContext;


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;
.end method

.method public abstract getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;
.end method

.method public abstract getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;
.end method

.method public abstract getListener(Ljava/lang/String;)Lorg/apache/ftpserver/listener/Listener;
.end method

.method public abstract getListeners()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/listener/Listener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageResource()Lorg/apache/ftpserver/message/MessageResource;
.end method

.method public abstract getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
.end method
