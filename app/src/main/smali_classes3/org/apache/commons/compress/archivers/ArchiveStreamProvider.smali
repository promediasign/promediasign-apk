.class public interface abstract Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.end method

.method public abstract getInputStreamArchiveNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
