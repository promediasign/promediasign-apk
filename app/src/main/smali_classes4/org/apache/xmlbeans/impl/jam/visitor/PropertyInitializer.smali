.class public Lorg/apache/xmlbeans/impl/jam/visitor/PropertyInitializer;
.super Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;-><init>()V

    return-void
.end method

.method private addProperties(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;Z)V
    .locals 11

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JClass;->getDeclaredMethods()[Lorg/apache/xmlbeans/impl/jam/JMethod;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JClass;->getMethods()[Lorg/apache/xmlbeans/impl/jam/JMethod;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_d

    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/jam/JElement;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v9, :cond_2

    :cond_1
    const-string v6, "is"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_8

    :cond_2
    aget-object v6, v0, v3

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/jam/JMethod;->getReturnType()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v6

    if-nez v6, :cond_3

    goto/16 :goto_6

    :cond_3
    aget-object v10, v0, v3

    invoke-interface {v10}, Lorg/apache/xmlbeans/impl/jam/JInvokable;->getParameters()[Lorg/apache/xmlbeans/impl/jam/JParameter;

    move-result-object v10

    array-length v10, v10

    if-lez v10, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/jam/JProperty;

    if-nez v5, :cond_7

    if-eqz p2, :cond_6

    aget-object v5, v0, v3

    invoke-interface {p1, v4, v5, v8}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewDeclaredProperty(Ljava/lang/String;Lorg/apache/xmlbeans/impl/jam/JMethod;Lorg/apache/xmlbeans/impl/jam/JMethod;)Lorg/apache/xmlbeans/impl/jam/JProperty;

    move-result-object v5

    goto :goto_3

    :cond_6
    aget-object v5, v0, v3

    invoke-interface {p1, v4, v5, v8}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewProperty(Ljava/lang/String;Lorg/apache/xmlbeans/impl/jam/JMethod;Lorg/apache/xmlbeans/impl/jam/JMethod;)Lorg/apache/xmlbeans/impl/jam/JProperty;

    move-result-object v5

    :goto_3
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/jam/JProperty;->getType()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    check-cast v5, Lorg/apache/xmlbeans/impl/jam/internal/elements/PropertyImpl;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Lorg/apache/xmlbeans/impl/jam/internal/elements/PropertyImpl;->setGetter(Lorg/apache/xmlbeans/impl/jam/JMethod;)V

    :cond_8
    :goto_4
    const-string v5, "set"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_c

    aget-object v5, v0, v3

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/jam/JInvokable;->getParameters()[Lorg/apache/xmlbeans/impl/jam/JParameter;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    goto :goto_6

    :cond_9
    aget-object v5, v0, v3

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/jam/JInvokable;->getParameters()[Lorg/apache/xmlbeans/impl/jam/JParameter;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/jam/JParameter;->getType()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v5

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xmlbeans/impl/jam/JProperty;

    if-nez v6, :cond_b

    if-eqz p2, :cond_a

    aget-object v5, v0, v3

    invoke-interface {p1, v4, v8, v5}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewDeclaredProperty(Ljava/lang/String;Lorg/apache/xmlbeans/impl/jam/JMethod;Lorg/apache/xmlbeans/impl/jam/JMethod;)Lorg/apache/xmlbeans/impl/jam/JProperty;

    move-result-object v5

    goto :goto_5

    :cond_a
    aget-object v5, v0, v3

    invoke-interface {p1, v4, v8, v5}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewProperty(Ljava/lang/String;Lorg/apache/xmlbeans/impl/jam/JMethod;Lorg/apache/xmlbeans/impl/jam/JMethod;)Lorg/apache/xmlbeans/impl/jam/JProperty;

    move-result-object v5

    :goto_5
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/jam/JProperty;->getType()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    check-cast v6, Lorg/apache/xmlbeans/impl/jam/internal/elements/PropertyImpl;

    aget-object v4, v0, v3

    invoke-virtual {v6, v4}, Lorg/apache/xmlbeans/impl/jam/internal/elements/PropertyImpl;->setSetter(Lorg/apache/xmlbeans/impl/jam/JMethod;)V

    :cond_c
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_d
    return-void
.end method


# virtual methods
.method public visit(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/jam/visitor/PropertyInitializer;->addProperties(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/jam/visitor/PropertyInitializer;->addProperties(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;Z)V

    return-void
.end method
