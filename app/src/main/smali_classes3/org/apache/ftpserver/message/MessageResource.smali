.class public interface abstract Lorg/apache/ftpserver/message/MessageResource;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAvailableLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMessages(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
