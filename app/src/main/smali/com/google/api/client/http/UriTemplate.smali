.class public abstract Lcom/google/api/client/http/UriTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    }
.end annotation


# static fields
.field static final COMPOSITE_PREFIXES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/google/api/client/http/UriTemplate$CompositeOutput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/http/UriTemplate;->COMPOSITE_PREFIXES:Ljava/util/Map;

    invoke-static {}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->values()[Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    return-void
.end method

.method public static expand(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-static {p1}, Lcom/google/api/client/http/UriTemplate;->getMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_c

    const/16 v4, 0x7b

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x2

    const/16 v5, 0x7d

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/api/client/http/UriTemplate;->getCompositeOutput(Ljava/lang/String;)Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    move-result-object v4

    const/16 v6, 0x2c

    invoke-static {v6}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v10

    if-ne v10, v6, :cond_2

    invoke-virtual {v4}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getVarNameStartIndex()I

    move-result v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v9, :cond_3

    add-int/lit8 v11, v11, -0x1

    :cond_3
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    invoke-virtual {v4}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getExplodeJoiner()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getOutputPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_3
    instance-of v11, v10, Ljava/util/Iterator;

    if-eqz v11, :cond_6

    check-cast v10, Ljava/util/Iterator;

    :goto_4
    invoke-static {v8, v10, v9, v4}, Lcom/google/api/client/http/UriTemplate;->getListPropertyValue(Ljava/lang/String;Ljava/util/Iterator;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_6
    instance-of v11, v10, Ljava/lang/Iterable;

    if-nez v11, :cond_a

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isEnum()Z

    move-result v11

    if-eqz v11, :cond_8

    move-object v9, v10

    check-cast v9, Ljava/lang/Enum;

    invoke-static {v9}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    :goto_5
    invoke-static {v8, v9, v4}, Lcom/google/api/client/http/UriTemplate;->getSimpleValue(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_8
    invoke-static {v10}, Lcom/google/api/client/util/Data;->isValueOfPrimitiveType(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-static {v10}, Lcom/google/api/client/http/UriTemplate;->getMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v8, v10, v9, v4}, Lcom/google/api/client/http/UriTemplate;->getMapPropertyValue(Ljava/lang/String;Ljava/util/Map;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_9
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_a
    :goto_6
    invoke-static {v10}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    goto :goto_4

    :goto_7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    move v3, v5

    goto/16 :goto_0

    :cond_c
    :goto_8
    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/api/client/http/GenericUrl;->addQueryParams(Ljava/util/Set;Ljava/lang/StringBuilder;)V

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/api/client/http/GenericUrl;->setRawPath(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p0, p1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_2
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/google/api/client/http/UriTemplate;->expand(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCompositeOutput(Ljava/lang/String;)Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .locals 2

    sget-object v0, Lcom/google/api/client/http/UriTemplate;->COMPOSITE_PREFIXES:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->SIMPLE:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    :cond_0
    return-object p0
.end method

.method private static getListPropertyValue(Ljava/lang/String;Ljava/util/Iterator;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "*>;Z",
            "Lcom/google/api/client/http/UriTemplate$CompositeOutput;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "="

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getExplodeJoiner()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, ","

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getMapPropertyValue(Ljava/lang/String;Ljava/util/Map;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/google/api/client/http/UriTemplate$CompositeOutput;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "="

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getExplodeJoiner()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ","

    move-object p0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSimpleValue(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "="

    .line 12
    .line 13
    invoke-static {p0, p2, p1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
