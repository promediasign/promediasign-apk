.class public abstract Lorg/apache/commons/compress/utils/Lists;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static newArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/apache/commons/compress/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/compress/utils/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method
