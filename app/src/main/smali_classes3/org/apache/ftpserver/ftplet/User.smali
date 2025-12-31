.class public interface abstract Lorg/apache/ftpserver/ftplet/User;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;
.end method

.method public abstract getAuthorities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthorities(Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnabled()Z
.end method

.method public abstract getHomeDirectory()Ljava/lang/String;
.end method

.method public abstract getMaxIdleTime()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method
