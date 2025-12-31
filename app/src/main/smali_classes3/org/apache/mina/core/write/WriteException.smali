.class public Lorg/apache/mina/core/write/WriteException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x39ee796f1d098c25L


# instance fields
.field private final requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/Throwable;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-void
.end method

.method private static asRequestList(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/mina/util/MapBackedSet;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/mina/util/MapBackedSet;-><init>(Ljava/util/Map;)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v1}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "requests is empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "requests"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    .line 2
    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "request"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/write/WriteRequest;

    return-object v0
.end method

.method public getRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-object v0
.end method
