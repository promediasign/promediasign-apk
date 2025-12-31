.class Lorg/apache/poi/poifs/property/PropertyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convertToProperties([Lorg/apache/poi/poifs/storage/ListManagedBlock;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/poi/poifs/storage/ListManagedBlock;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/apache/poi/poifs/storage/ListManagedBlock;->getData()[B

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/poi/poifs/property/PropertyFactory;->convertToProperties([BLjava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertToProperties([BLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;)V"
        }
    .end annotation

    .line 2
    array-length v0, p0

    div-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    add-int/lit8 v3, v2, 0x42

    aget-byte v3, p0, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    new-instance v3, Lorg/apache/poi/poifs/property/RootProperty;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4, p0, v2}, Lorg/apache/poi/poifs/property/RootProperty;-><init>(I[BI)V

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4, p0, v2}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(I[BI)V

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4, p0, v2}, Lorg/apache/poi/poifs/property/DirectoryProperty;-><init>(I[BI)V

    goto :goto_1

    :goto_2
    add-int/lit16 v2, v2, 0x80

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
