.class public Lorg/apache/velocity/util/introspection/IntrospectionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static boxingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field static unboxingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->boxingMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->boxingMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->boxingMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->boxingMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->boxingMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->boxingMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->boxingMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->boxingMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->unboxingMap:Ljava/util/Map;

    sget-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->boxingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->unboxingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoxedClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->boxingMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getUnboxedClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->unboxingMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static isMethodInvocationConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->boxingMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_2

    if-eq v1, p0, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_5

    return v0

    :cond_5
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_7

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v3, :cond_6

    if-ne p1, v1, :cond_7

    :cond_6
    return v0

    :cond_7
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v3, :cond_9

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v4, :cond_8

    if-eq p1, v1, :cond_8

    if-ne p1, v2, :cond_9

    :cond_8
    return v0

    :cond_9
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_b

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v5, :cond_a

    if-eq p1, v1, :cond_a

    if-eq p1, v2, :cond_a

    if-ne p1, v3, :cond_b

    :cond_a
    return v0

    :cond_b
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v5, :cond_1a

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v5, :cond_c

    if-eq p1, v1, :cond_c

    if-eq p1, v2, :cond_c

    if-eq p1, v3, :cond_c

    if-ne p1, v4, :cond_1a

    :cond_c
    return v0

    :cond_d
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_e

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_e

    return v0

    :cond_e
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_f

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_f

    return v0

    :cond_f
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    if-ne p0, v1, :cond_10

    if-ne p1, v2, :cond_10

    return v0

    :cond_10
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Short;

    if-ne p0, v1, :cond_12

    if-eq p1, v3, :cond_11

    if-ne p1, v2, :cond_12

    :cond_11
    return v0

    :cond_12
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    if-ne p0, v1, :cond_14

    if-eq p1, v4, :cond_13

    if-eq p1, v3, :cond_13

    if-ne p1, v2, :cond_14

    :cond_13
    return v0

    :cond_14
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Long;

    if-ne p0, v1, :cond_16

    if-eq p1, v5, :cond_15

    if-eq p1, v4, :cond_15

    if-eq p1, v3, :cond_15

    if-ne p1, v2, :cond_16

    :cond_15
    return v0

    :cond_16
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    if-ne p0, v1, :cond_18

    if-eq p1, v6, :cond_17

    if-eq p1, v5, :cond_17

    if-eq p1, v4, :cond_17

    if-eq p1, v3, :cond_17

    if-ne p1, v2, :cond_18

    :cond_17
    return v0

    :cond_18
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1a

    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_19

    if-eq p1, v6, :cond_19

    if-eq p1, v5, :cond_19

    if-eq p1, v4, :cond_19

    if-eq p1, v3, :cond_19

    if-ne p1, v2, :cond_1a

    :cond_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->isMethodInvocationConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result p0

    return p0

    :cond_1c
    return v0
.end method

.method public static isStrictMethodInvocationConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_2

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_2

    return v0

    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_4

    if-eq p1, v1, :cond_3

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_4

    :cond_3
    return v0

    :cond_4
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v3, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_5

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v4, :cond_6

    :cond_5
    return v0

    :cond_6
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_7

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_8

    :cond_7
    return v0

    :cond_8
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v5, :cond_a

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_9

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_a

    :cond_9
    return v0

    :cond_a
    const/4 v0, 0x0

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->isStrictMethodInvocationConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result p0

    return p0

    :cond_c
    return v0
.end method
