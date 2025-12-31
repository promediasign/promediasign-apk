.class public interface abstract Lcom/thegrizzlylabs/sardineandroid/Sardine;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract get(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract list(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCredentials(Ljava/lang/String;Ljava/lang/String;Z)V
.end method
