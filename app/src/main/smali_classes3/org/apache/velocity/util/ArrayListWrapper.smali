.class public Lorg/apache/velocity/util/ArrayListWrapper;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field private array:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/util/ArrayListWrapper;->array:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/ArrayListWrapper;->array:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/ArrayListWrapper;->array:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/velocity/util/ArrayListWrapper;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/util/ArrayListWrapper;->array:Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/ArrayListWrapper;->array:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
