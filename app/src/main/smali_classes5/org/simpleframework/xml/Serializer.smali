.class public interface abstract Lorg/simpleframework/xml/Serializer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract read(Ljava/lang/Class;Ljava/io/File;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract read(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/InputStream;",
            "Z)TT;"
        }
    .end annotation
.end method

.method public abstract read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract write(Ljava/lang/Object;Ljava/io/OutputStream;)V
.end method

.method public abstract write(Ljava/lang/Object;Ljava/io/Writer;)V
.end method

.method public abstract write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)V
.end method
