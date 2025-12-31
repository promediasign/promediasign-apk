.class public Lorg/h2/value/NullableKeyConcurrentMap;
.super Lj$/util/concurrent/ConcurrentHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final NULL:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lorg/h2/value/NullableKeyConcurrentMap;->NULL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method private static toUpper(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/h2/value/NullableKeyConcurrentMap;->NULL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lorg/h2/value/NullableKeyConcurrentMap;->toUpper(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-static {p1}, Lorg/h2/value/NullableKeyConcurrentMap;->toUpper(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/h2/value/NullableKeyConcurrentMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/h2/value/NullableKeyConcurrentMap;->toUpper(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-static {p1}, Lorg/h2/value/NullableKeyConcurrentMap;->toUpper(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
