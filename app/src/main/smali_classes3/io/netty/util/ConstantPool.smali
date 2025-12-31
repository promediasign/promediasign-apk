.class public abstract Lio/netty/util/ConstantPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/netty/util/Constant<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final constants:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/netty/util/ConstantPool;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static checkNotNullAndNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "empty name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createOrThrow(Ljava/lang/String;)Lio/netty/util/Constant;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/netty/util/Constant;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/netty/util/ConstantPool;->nextId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0, p1}, Lio/netty/util/ConstantPool;->newConstant(ILjava/lang/String;)Lio/netty/util/Constant;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    .line 20
    .line 21
    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lio/netty/util/Constant;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v1, "\'"

    .line 33
    .line 34
    const-string v2, "\' is already in use"

    .line 35
    .line 36
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method private getOrCreate(Ljava/lang/String;)Lio/netty/util/Constant;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/Constant;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/netty/util/ConstantPool;->nextId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lio/netty/util/ConstantPool;->newConstant(ILjava/lang/String;)Lio/netty/util/Constant;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/Constant;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    move-object v0, p1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public exists(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lio/netty/util/ConstantPool;->checkNotNullAndNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract newConstant(ILjava/lang/String;)Lio/netty/util/Constant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public newInstance(Ljava/lang/String;)Lio/netty/util/Constant;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lio/netty/util/ConstantPool;->checkNotNullAndNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/netty/util/ConstantPool;->createOrThrow(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object p1

    return-object p1
.end method

.method public final nextId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/util/ConstantPool;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/Constant;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstNameComponent"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "secondNameComponent"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object p1

    return-object p1
.end method

.method public valueOf(Ljava/lang/String;)Lio/netty/util/Constant;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lio/netty/util/ConstantPool;->checkNotNullAndNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/netty/util/ConstantPool;->getOrCreate(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object p1

    return-object p1
.end method
