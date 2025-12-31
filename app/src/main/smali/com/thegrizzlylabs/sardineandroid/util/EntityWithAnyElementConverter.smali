.class public Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/convert/Converter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private entityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private serializer:Lorg/simpleframework/xml/Serializer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/Serializer;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/Serializer;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->serializer:Lorg/simpleframework/xml/Serializer;

    iput-object p2, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->entityClass:Ljava/lang/Class;

    return-void
.end method

.method private getEntityFields()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->entityClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-class v5, Lorg/simpleframework/xml/Element;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/Element;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lorg/simpleframework/xml/Element;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Lorg/simpleframework/xml/Element;->name()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getGetterForField(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->entityClass:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method private getSetterForField(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->entityClass:Ljava/lang/Class;

    .line 35
    .line 36
    const-string v4, "set"

    .line 37
    .line 38
    invoke-static {v4, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-array v3, v3, [Ljava/lang/Class;

    .line 47
    .line 48
    aput-object p1, v3, v2

    .line 49
    .line 50
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method private skipChildrenOfNode(Lorg/simpleframework/xml/stream/InputNode;)V
    .locals 1

    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->getEntityFields()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->entityClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;

    invoke-interface {v1}, Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;->getAny()Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/simpleframework/xml/stream/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/simpleframework/xml/stream/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-direct {p0, v4}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->getSetterForField(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v6, v4, v3}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-virtual {v5, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lorg/simpleframework/xml/stream/InputNode;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lorg/simpleframework/xml/stream/InputNode;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/thegrizzlylabs/sardineandroid/util/ElementConverter;->read(Lorg/simpleframework/xml/stream/InputNode;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->skipChildrenOfNode(Lorg/simpleframework/xml/stream/InputNode;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public bridge synthetic read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->read(Lorg/simpleframework/xml/stream/InputNode;)Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;->getAny()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-static {p1, v1}, Lcom/thegrizzlylabs/sardineandroid/util/ElementConverter;->write(Lorg/simpleframework/xml/stream/OutputNode;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->getEntityFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-direct {p0, v3}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->getGetterForField(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    const-string v4, "DAV:"

    invoke-interface {v2, v4}, Lorg/simpleframework/xml/stream/OutputNode;->setReference(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-interface {v2, v3, p1}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public bridge synthetic write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;

    invoke-virtual {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->write(Lorg/simpleframework/xml/stream/OutputNode;Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;)V

    return-void
.end method
