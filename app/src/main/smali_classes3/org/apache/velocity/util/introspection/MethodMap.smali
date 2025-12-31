.class public Lorg/apache/velocity/util/introspection/MethodMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/util/introspection/MethodMap$AmbiguousException;,
        Lorg/apache/velocity/util/introspection/MethodMap$Match;
    }
.end annotation


# instance fields
.field conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

.field methodByNameMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/velocity/util/introspection/MethodMap;-><init>(Lorg/apache/velocity/util/introspection/ConversionHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/util/introspection/ConversionHandler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/util/introspection/MethodMap;->methodByNameMap:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/MethodMap;->conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/velocity/util/introspection/MethodMap;[Ljava/lang/Class;[Ljava/lang/Class;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/util/introspection/MethodMap;->compare([Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method private compare([Ljava/lang/Class;[Ljava/lang/Class;)I
    .locals 13

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v0, v1, :cond_4

    array-length v0, p2

    if-nez v0, :cond_0

    return v4

    :cond_0
    array-length v1, p1

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Class;

    sub-int/2addr v0, v4

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v4

    aput-object v2, p2, v0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    array-length v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_5

    return v3

    :cond_5
    array-length v1, p2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    sub-int/2addr v0, v4

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_6

    array-length v0, p2

    sub-int/2addr v0, v4

    aput-object v2, p1, v0

    goto :goto_1

    :cond_6
    :goto_3
    array-length v2, p2

    if-ge v0, v2, :cond_1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x3

    :goto_5
    array-length v9, p1

    const/4 v10, 0x2

    if-ge v6, v9, :cond_19

    if-nez v2, :cond_8

    array-length v9, p1

    sub-int/2addr v9, v4

    if-ne v6, v9, :cond_8

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    :goto_6
    aget-object v11, p1, v6

    aget-object v12, p2, v6

    if-eq v11, v12, :cond_18

    if-nez v11, :cond_a

    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_7
    const/4 v7, 0x0

    :cond_9
    const/4 v8, 0x0

    goto :goto_9

    :cond_a
    if-nez v12, :cond_c

    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    goto :goto_9

    :cond_c
    if-eq v7, v4, :cond_11

    if-eq v7, v10, :cond_f

    if-eq v7, v3, :cond_d

    goto :goto_8

    :cond_d
    invoke-static {v12, v11, v9}, Lorg/apache/velocity/util/introspection/MethodMap;->isStrictConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_8

    :cond_e
    const/4 v7, 0x2

    :cond_f
    aget-object v11, p2, v6

    aget-object v12, p1, v6

    invoke-direct {p0, v11, v12, v9}, Lorg/apache/velocity/util/introspection/MethodMap;->isConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v11

    if-eqz v11, :cond_10

    goto :goto_8

    :cond_10
    const/4 v7, 0x1

    :cond_11
    aget-object v11, p2, v6

    aget-object v12, p1, v6

    invoke-direct {p0, v11, v12, v9}, Lorg/apache/velocity/util/introspection/MethodMap;->isExplicitlyConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v11

    if-eqz v11, :cond_12

    goto :goto_8

    :cond_12
    const/4 v7, 0x0

    :goto_8
    if-eq v8, v4, :cond_17

    if-eq v8, v10, :cond_15

    if-eq v8, v3, :cond_13

    goto :goto_9

    :cond_13
    aget-object v11, p1, v6

    aget-object v12, p2, v6

    invoke-static {v11, v12, v9}, Lorg/apache/velocity/util/introspection/MethodMap;->isStrictConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v11

    if-eqz v11, :cond_14

    goto :goto_9

    :cond_14
    const/4 v8, 0x2

    :cond_15
    aget-object v10, p1, v6

    aget-object v11, p2, v6

    invoke-direct {p0, v10, v11, v9}, Lorg/apache/velocity/util/introspection/MethodMap;->isConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v10

    if-eqz v10, :cond_16

    goto :goto_9

    :cond_16
    const/4 v8, 0x1

    :cond_17
    aget-object v10, p1, v6

    aget-object v11, p2, v6

    invoke-direct {p0, v10, v11, v9}, Lorg/apache/velocity/util/introspection/MethodMap;->isExplicitlyConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_18
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_19
    if-nez v7, :cond_1a

    if-nez v8, :cond_1a

    return v5

    :cond_1a
    if-le v7, v8, :cond_1b

    return v4

    :cond_1b
    if-le v8, v7, :cond_1c

    return v3

    :cond_1c
    if-nez v0, :cond_1e

    if-nez v2, :cond_1d

    array-length v0, p1

    sub-int/2addr v0, v4

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_a

    :cond_1d
    const/4 p1, 0x0

    goto :goto_b

    :cond_1e
    :goto_a
    const/4 p1, 0x1

    :goto_b
    if-nez v1, :cond_1f

    if-nez v2, :cond_20

    array-length v0, p2

    sub-int/2addr v0, v4

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_20

    :cond_1f
    const/4 v5, 0x1

    :cond_20
    if-eqz p1, :cond_21

    if-nez v5, :cond_21

    return v3

    :cond_21
    if-nez p1, :cond_22

    if-eqz v5, :cond_22

    return v4

    :cond_22
    return v10
.end method

.method private getApplicability(Ljava/lang/reflect/Method;[Ljava/lang/Class;)I
    .locals 8

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v0, v1, :cond_5

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v1, v3

    if-ne v0, v1, :cond_4

    array-length v0, p1

    sub-int/2addr v0, v3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    aget-object v6, p2, v0

    invoke-static {v1, v6, v4}, Lorg/apache/velocity/util/introspection/MethodMap;->isStrictConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    aget-object v6, p2, v0

    invoke-direct {p0, v1, v6, v4}, Lorg/apache/velocity/util/introspection/MethodMap;->isConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    move v5, v1

    goto :goto_2

    :cond_0
    aget-object v1, p1, v0

    aget-object v6, p2, v0

    invoke-direct {p0, v1, v6, v4}, Lorg/apache/velocity/util/introspection/MethodMap;->isExplicitlyConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_1
    return v4

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v5

    :cond_4
    return v4

    :cond_5
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_c

    aget-object v1, p1, v0

    aget-object v6, p2, v0

    array-length v7, p2

    sub-int/2addr v7, v3

    if-ne v0, v7, :cond_6

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    invoke-static {v1, v6, v7}, Lorg/apache/velocity/util/introspection/MethodMap;->isStrictConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v1

    if-nez v1, :cond_b

    aget-object v1, p1, v0

    aget-object v6, p2, v0

    array-length v7, p2

    sub-int/2addr v7, v3

    if-ne v0, v7, :cond_7

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    invoke-direct {p0, v1, v6, v7}, Lorg/apache/velocity/util/introspection/MethodMap;->isConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_6
    move v5, v1

    goto :goto_8

    :cond_8
    aget-object v1, p1, v0

    aget-object v6, p2, v0

    array-length v7, p2

    sub-int/2addr v7, v3

    if-ne v0, v7, :cond_9

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :goto_7
    invoke-direct {p0, v1, v6, v7}, Lorg/apache/velocity/util/introspection/MethodMap;->isExplicitlyConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6

    :cond_a
    return v4

    :cond_b
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    return v5

    :cond_d
    array-length v0, p1

    if-lez v0, :cond_17

    array-length v0, p1

    sub-int/2addr v0, v3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_e

    return v4

    :cond_e
    const/4 v1, 0x0

    :goto_9
    array-length v6, p1

    sub-int/2addr v6, v3

    if-ge v1, v6, :cond_12

    aget-object v6, p1, v1

    aget-object v7, p2, v1

    invoke-static {v6, v7, v4}, Lorg/apache/velocity/util/introspection/MethodMap;->isStrictConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v6

    if-nez v6, :cond_11

    aget-object v6, p1, v1

    aget-object v7, p2, v1

    invoke-direct {p0, v6, v7, v4}, Lorg/apache/velocity/util/introspection/MethodMap;->isConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_a

    :cond_f
    aget-object v6, p1, v1

    aget-object v7, p2, v1

    invoke-direct {p0, v6, v7, v4}, Lorg/apache/velocity/util/introspection/MethodMap;->isExplicitlyConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_a

    :cond_10
    return v4

    :cond_11
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length p1, p1

    sub-int/2addr p1, v3

    :goto_b
    array-length v1, p2

    if-ge p1, v1, :cond_16

    aget-object v1, p2, p1

    invoke-static {v0, v1, v4}, Lorg/apache/velocity/util/introspection/MethodMap;->isStrictConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v1

    if-nez v1, :cond_15

    aget-object v1, p2, p1

    invoke-direct {p0, v0, v1, v4}, Lorg/apache/velocity/util/introspection/MethodMap;->isConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_c
    move v5, v1

    goto :goto_d

    :cond_13
    aget-object v1, p2, p1

    invoke-direct {p0, v0, v1, v4}, Lorg/apache/velocity/util/introspection/MethodMap;->isExplicitlyConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_c

    :cond_14
    return v4

    :cond_15
    :goto_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_16
    return v5

    :cond_17
    return v4
.end method

.method private getBestMatch(Ljava/util/List;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    array-length v1, p2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-object v4, p2, v3

    invoke-static {v4}, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->getUnboxedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v1}, Lorg/apache/velocity/util/introspection/MethodMap;->getApplicability(Ljava/lang/reflect/Method;[Ljava/lang/Class;)I

    move-result v5

    if-lez v5, :cond_1

    new-instance v6, Lorg/apache/velocity/util/introspection/MethodMap$Match;

    invoke-direct {v6, p0, v3, v5, v1}, Lorg/apache/velocity/util/introspection/MethodMap$Match;-><init>(Lorg/apache/velocity/util/introspection/MethodMap;Ljava/lang/reflect/Method;I[Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    const/4 v5, 0x1

    :cond_3
    :goto_3
    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/velocity/util/introspection/MethodMap$Match;

    iget v8, v7, Lorg/apache/velocity/util/introspection/MethodMap$Match;->specificity:I

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-ne v8, v10, :cond_5

    iget v11, v6, Lorg/apache/velocity/util/introspection/MethodMap$Match;->specificity:I

    if-ge v11, v9, :cond_5

    :cond_4
    :goto_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    iget v11, v6, Lorg/apache/velocity/util/introspection/MethodMap$Match;->specificity:I

    if-ne v11, v10, :cond_7

    if-ge v8, v9, :cond_7

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_3

    :cond_7
    iget v8, v7, Lorg/apache/velocity/util/introspection/MethodMap$Match;->applicability:I

    iget v9, v6, Lorg/apache/velocity/util/introspection/MethodMap$Match;->applicability:I

    if-le v8, v9, :cond_8

    :goto_6
    goto :goto_4

    :cond_8
    if-ge v8, v9, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {p2}, Lorg/apache/velocity/util/introspection/MethodMap;->onlyNullOrObjects([Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-boolean v8, v6, Lorg/apache/velocity/util/introspection/MethodMap$Match;->varargs:Z

    iget-boolean v7, v7, Lorg/apache/velocity/util/introspection/MethodMap$Match;->varargs:Z

    if-eq v8, v7, :cond_3

    if-eqz v8, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v7, :cond_3

    goto :goto_5

    :cond_b
    iget-object v8, v6, Lorg/apache/velocity/util/introspection/MethodMap$Match;->methodTypes:[Ljava/lang/Class;

    iget-object v7, v7, Lorg/apache/velocity/util/introspection/MethodMap$Match;->methodTypes:[Ljava/lang/Class;

    invoke-direct {p0, v8, v7}, Lorg/apache/velocity/util/introspection/MethodMap;->compare([Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v7

    if-eq v7, v4, :cond_6

    if-eq v7, v10, :cond_4

    goto :goto_3

    :cond_c
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_d
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-eqz p1, :cond_f

    if-ne p1, v4, :cond_e

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/util/introspection/MethodMap$Match;

    iget-object p1, p1, Lorg/apache/velocity/util/introspection/MethodMap$Match;->method:Ljava/lang/reflect/Method;

    return-object p1

    :cond_e
    new-instance p1, Lorg/apache/velocity/util/introspection/MethodMap$AmbiguousException;

    invoke-direct {p1}, Lorg/apache/velocity/util/introspection/MethodMap$AmbiguousException;-><init>()V

    throw p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method private isConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->isMethodInvocationConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result p1

    return p1
.end method

.method private isExplicitlyConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/MethodMap;->conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/velocity/util/introspection/ConversionHandler;->isExplicitlyConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isStrictConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->isStrictMethodInvocationConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result p0

    return p0
.end method

.method private static onlyNullOrObjects([Ljava/lang/Class;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p0

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public add(Ljava/lang/reflect/Method;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/velocity/util/introspection/MethodMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/MethodMap;->methodByNameMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public find(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/apache/velocity/util/introspection/MethodMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    array-length v1, p2

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Lorg/apache/velocity/util/introspection/MethodMap;->getBestMatch(Ljava/util/List;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/MethodMap;->methodByNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
