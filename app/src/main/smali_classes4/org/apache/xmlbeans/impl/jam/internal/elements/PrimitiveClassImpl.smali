.class public final Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;
.super Lorg/apache/xmlbeans/impl/jam/internal/elements/BuiltinClassImpl;
.source "SourceFile"


# static fields
.field private static final NAME_TO_CLASS:Ljava/util/Map;

.field private static final NAME_TO_FD:Ljava/util/Map;

.field private static final PRIMITIVES:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "int"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "I"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [Ljava/lang/Object;

    const-string v6, "long"

    aput-object v6, v2, v3

    const-string v6, "J"

    aput-object v6, v2, v4

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "boolean"

    aput-object v7, v6, v3

    const-string v7, "Z"

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "short"

    aput-object v8, v7, v3

    const-string v8, "S"

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    new-array v8, v0, [Ljava/lang/Object;

    const-string v9, "byte"

    aput-object v9, v8, v3

    const-string v9, "B"

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    new-array v9, v0, [Ljava/lang/Object;

    const-string v10, "char"

    aput-object v10, v9, v3

    const-string v10, "C"

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    new-array v10, v0, [Ljava/lang/Object;

    const-string v11, "float"

    aput-object v11, v10, v3

    const-string v11, "F"

    aput-object v11, v10, v4

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    new-array v11, v0, [Ljava/lang/Object;

    const-string v12, "double"

    aput-object v12, v11, v3

    const-string v12, "D"

    aput-object v12, v11, v4

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v5

    const/16 v12, 0x8

    new-array v12, v12, [[Ljava/lang/Object;

    aput-object v1, v12, v3

    aput-object v2, v12, v4

    aput-object v6, v12, v5

    aput-object v7, v12, v0

    const/4 v0, 0x4

    aput-object v8, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v10, v12, v0

    const/4 v0, 0x7

    aput-object v11, v12, v0

    sput-object v12, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->PRIMITIVES:[[Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->NAME_TO_FD:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->NAME_TO_CLASS:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->PRIMITIVES:[[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->NAME_TO_FD:Ljava/util/Map;

    aget-object v6, v1, v0

    aget-object v7, v6, v3

    aget-object v6, v6, v4

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->NAME_TO_CLASS:Ljava/util/Map;

    aget-object v1, v1, v0

    aget-object v6, v1, v3

    aget-object v1, v1, v5

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/BuiltinClassImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    sget-object p1, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->NAME_TO_FD:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/jam/internal/elements/BuiltinClassImpl;->reallySetSimpleName(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Unknown primitive class \'"

    .line 21
    .line 22
    const-string v1, "\'"

    .line 23
    .line 24
    invoke-static {v0, p2, v1}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string p2, "null name"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public static final getFieldDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->NAME_TO_FD:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->NAME_TO_CLASS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static getPrimitiveClassForName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->NAME_TO_FD:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isPrimitive(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->NAME_TO_FD:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mapNameToPrimitive(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;Ljava/util/Map;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->PRIMITIVES:[[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;

    aget-object v4, v2, v1

    aget-object v4, v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;Ljava/lang/String;)V

    aget-object v4, v2, v1

    aget-object v4, v4, v0

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v2, v1

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFieldDescriptor()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->NAME_TO_FD:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPrimitiveClass()Ljava/lang/Class;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->NAME_TO_CLASS:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAssignableFrom(Lorg/apache/xmlbeans/impl/jam/JClass;)Z
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JClass;->isPrimitiveType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPrimitiveType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
