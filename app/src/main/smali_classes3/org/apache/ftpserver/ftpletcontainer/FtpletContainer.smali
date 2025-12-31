.class public interface abstract Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Ftplet;


# virtual methods
.method public abstract getFtplet(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/Ftplet;
.end method

.method public abstract getFtplets()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/ftplet/Ftplet;",
            ">;"
        }
    .end annotation
.end method
