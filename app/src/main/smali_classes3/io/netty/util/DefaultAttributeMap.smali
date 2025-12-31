.class public Lio/netty/util/DefaultAttributeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/AttributeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x4

.field private static final MASK:I = 0x3

.field private static final updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/DefaultAttributeMap;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const-string v1, "attributes"

    const-class v2, Lio/netty/util/DefaultAttributeMap;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static index(Lio/netty/util/AttributeKey;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/AttributeKey<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/AbstractConstant;->id()I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method


# virtual methods
.method public attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)",
            "Lio/netty/util/Attribute<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sget-object v3, Lio/netty/util/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    move-object v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 34
    .line 35
    :cond_2
    :goto_0
    invoke-static {p1}, Lio/netty/util/DefaultAttributeMap;->index(Lio/netty/util/AttributeKey;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 44
    .line 45
    if-nez v3, :cond_5

    .line 46
    .line 47
    new-instance v4, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 48
    .line 49
    invoke-direct {v4}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 53
    .line 54
    invoke-direct {v5, v4, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v4, v5}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$002(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 58
    .line 59
    .line 60
    invoke-static {v5, v4}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$102(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {v0, v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    return-object v5

    .line 70
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    move-object v3, v0

    .line 81
    check-cast v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 82
    .line 83
    :cond_5
    monitor-enter v3

    .line 84
    move-object v0, v3

    .line 85
    :goto_1
    :try_start_0
    invoke-static {v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-nez v1, :cond_6

    .line 90
    .line 91
    new-instance v1, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 92
    .line 93
    invoke-direct {v1, v3, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$002(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$102(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 100
    .line 101
    .line 102
    monitor-exit v3

    .line 103
    return-object v1

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-static {v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$200(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-ne v0, p1, :cond_7

    .line 111
    .line 112
    invoke-static {v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$300(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_7

    .line 117
    .line 118
    monitor-exit v3

    .line 119
    return-object v1

    .line 120
    :cond_7
    move-object v0, v1

    .line 121
    goto :goto_1

    .line 122
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p1
.end method

.method public hasAttr(Lio/netty/util/AttributeKey;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lio/netty/util/DefaultAttributeMap;->index(Lio/netty/util/AttributeKey;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    if-nez v0, :cond_1

    return v1

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$200(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v3

    if-ne v3, p1, :cond_2

    invoke-static {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$300(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v2

    goto :goto_0

    :cond_3
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
