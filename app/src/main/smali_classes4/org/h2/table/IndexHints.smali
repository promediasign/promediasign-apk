.class public final Lorg/h2/table/IndexHints;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allowedIndexes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/LinkedHashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/table/IndexHints;->allowedIndexes:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static createUseIndexHints(Ljava/util/LinkedHashSet;)Lorg/h2/table/IndexHints;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/h2/table/IndexHints;"
        }
    .end annotation

    new-instance v0, Lorg/h2/table/IndexHints;

    invoke-direct {v0, p0}, Lorg/h2/table/IndexHints;-><init>(Ljava/util/LinkedHashSet;)V

    return-object v0
.end method


# virtual methods
.method public allowIndex(Lorg/h2/index/Index;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/table/IndexHints;->allowedIndexes:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllowedIndexes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/table/IndexHints;->allowedIndexes:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IndexHints{allowedIndexes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/table/IndexHints;->allowedIndexes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
