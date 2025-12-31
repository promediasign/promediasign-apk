.class public Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;
.super Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/multimap/AbstractListValuedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337b4eL


# instance fields
.field private final initialListCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/multimap/AbstractListValuedMap;-><init>(Ljava/util/Map;)V

    iput p2, p0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->initialListCapacity:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->setMap(Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/AbstractMultiValuedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public createCollection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->initialListCapacity:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->createCollection()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCollection()Ljava/util/List;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;->createCollection()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
