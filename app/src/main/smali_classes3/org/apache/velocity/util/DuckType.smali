.class public abstract Lorg/apache/velocity/util/DuckType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/util/DuckType$Types;
    }
.end annotation


# static fields
.field protected static final NO_METHOD:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/velocity/util/DuckType;->NO_METHOD:Ljava/lang/Object;

    return-void
.end method

.method public static asBoolean(Ljava/lang/Object;Z)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lorg/apache/velocity/util/DuckType$Types;->BOOLEAN:Lorg/apache/velocity/util/DuckType$Types;

    invoke-static {p0, v0}, Lorg/apache/velocity/util/DuckType;->get(Ljava/lang/Object;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/velocity/util/DuckType;->NO_METHOD:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lorg/apache/velocity/util/DuckType;->asEmpty(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_3
    return v0
.end method

.method public static asEmpty(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    sget-object v1, Lorg/apache/velocity/util/DuckType$Types;->EMPTY:Lorg/apache/velocity/util/DuckType$Types;

    invoke-static {p0, v1}, Lorg/apache/velocity/util/DuckType;->get(Ljava/lang/Object;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lorg/apache/velocity/util/DuckType;->NO_METHOD:Ljava/lang/Object;

    if-eq v1, v3, :cond_3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    sget-object v1, Lorg/apache/velocity/util/DuckType$Types;->LENGTH:Lorg/apache/velocity/util/DuckType$Types;

    invoke-static {p0, v1}, Lorg/apache/velocity/util/DuckType;->get(Ljava/lang/Object;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v3, :cond_4

    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_4

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->isZero(Ljava/lang/Number;)Z

    move-result p0

    return p0

    :cond_4
    sget-object v1, Lorg/apache/velocity/util/DuckType$Types;->SIZE:Lorg/apache/velocity/util/DuckType$Types;

    invoke-static {p0, v1}, Lorg/apache/velocity/util/DuckType;->get(Ljava/lang/Object;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v3, :cond_5

    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_5

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->isZero(Ljava/lang/Number;)Z

    move-result p0

    return p0

    :cond_5
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_6

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->isZero(Ljava/lang/Number;)Z

    move-result p0

    return p0

    :cond_6
    sget-object v1, Lorg/apache/velocity/util/DuckType$Types;->STRING:Lorg/apache/velocity/util/DuckType$Types;

    invoke-static {p0, v1}, Lorg/apache/velocity/util/DuckType;->get(Ljava/lang/Object;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    return v0

    :cond_7
    if-eq v1, v3, :cond_9

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_9
    sget-object v1, Lorg/apache/velocity/util/DuckType$Types;->NUMBER:Lorg/apache/velocity/util/DuckType$Types;

    invoke-static {p0, v1}, Lorg/apache/velocity/util/DuckType;->get(Ljava/lang/Object;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_a

    return v0

    :cond_a
    if-eq p0, v3, :cond_b

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->isZero(Ljava/lang/Number;)Z

    move-result p0

    return p0

    :cond_b
    return v2
.end method

.method public static asNull(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lorg/apache/velocity/util/DuckType$Types;->STRING:Lorg/apache/velocity/util/DuckType$Types;

    invoke-static {p0, v0}, Lorg/apache/velocity/util/DuckType;->get(Ljava/lang/Object;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/velocity/util/DuckType$Types;->NUMBER:Lorg/apache/velocity/util/DuckType$Types;

    invoke-static {p0, v0}, Lorg/apache/velocity/util/DuckType;->get(Ljava/lang/Object;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static asNumber(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/velocity/util/DuckType;->asNumber(Ljava/lang/Object;Z)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static asNumber(Ljava/lang/Object;Z)Ljava/lang/Number;
    .locals 3

    .line 2
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_1
    sget-object v1, Lorg/apache/velocity/util/DuckType$Types;->NUMBER:Lorg/apache/velocity/util/DuckType$Types;

    invoke-static {p0, v1}, Lorg/apache/velocity/util/DuckType;->get(Ljava/lang/Object;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/apache/velocity/util/DuckType;->NO_METHOD:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    check-cast v1, Ljava/lang/Number;

    return-object v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p0}, Lorg/apache/velocity/util/DuckType;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    return-object v0
.end method

.method public static asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/velocity/util/DuckType;->asString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static asString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3

    .line 2
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object v1, Lorg/apache/velocity/util/DuckType$Types;->STRING:Lorg/apache/velocity/util/DuckType$Types;

    invoke-static {p0, v1}, Lorg/apache/velocity/util/DuckType;->get(Ljava/lang/Object;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/apache/velocity/util/DuckType;->NO_METHOD:Ljava/lang/Object;

    if-ne v1, v2, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static findMethod(Ljava/lang/Class;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/reflect/Method;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lorg/apache/velocity/util/DuckType$Types;->name:Ljava/lang/String;

    invoke-static {p0, v1}, Lorg/apache/velocity/util/DuckType;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-static {v4, p1}, Lorg/apache/velocity/util/DuckType;->findMethod(Ljava/lang/Class;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/velocity/util/DuckType;->findMethod(Ljava/lang/Class;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static get(Ljava/lang/Object;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/velocity/util/DuckType$Types;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/apache/velocity/util/DuckType;->NO_METHOD:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-static {v0, p1}, Lorg/apache/velocity/util/DuckType;->findMethod(Ljava/lang/Class;Lorg/apache/velocity/util/DuckType$Types;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0, v2}, Lorg/apache/velocity/util/DuckType$Types;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    invoke-virtual {p1, v0, v1}, Lorg/apache/velocity/util/DuckType$Types;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    throw p0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-object p0

    :catch_0
    :cond_0
    return-object v1
.end method
