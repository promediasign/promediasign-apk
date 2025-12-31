.class Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/fs/FileNioMemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressLaterCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput p1, p0, Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;->size:I

    return-void
.end method


# virtual methods
.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    iget v1, p0, Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;->size:I

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;

    iget-object v0, p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;->data:Lorg/h2/store/fs/FileNioMemData;

    iget p1, p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;->page:I

    invoke-virtual {v0, p1}, Lorg/h2/store/fs/FileNioMemData;->compressPage(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setCacheSize(I)V
    .locals 0

    iput p1, p0, Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;->size:I

    return-void
.end method
