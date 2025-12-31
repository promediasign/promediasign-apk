.class public Lch/qos/logback/core/joran/util/Introspector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-le v2, v1, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p0, v1, v0}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    return-object v0

    .line 37
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static getMethodDescriptors(Ljava/lang/Class;)[Lch/qos/logback/core/joran/util/MethodDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lch/qos/logback/core/joran/util/MethodDescriptor;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    new-instance v5, Lch/qos/logback/core/joran/util/MethodDescriptor;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lch/qos/logback/core/joran/util/MethodDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p0, v2, [Lch/qos/logback/core/joran/util/MethodDescriptor;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lch/qos/logback/core/joran/util/MethodDescriptor;

    return-object p0
.end method

.method public static getPropertyDescriptors(Ljava/lang/Class;)[Lch/qos/logback/core/joran/util/PropertyDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lch/qos/logback/core/joran/util/PropertyDescriptor;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const-string v9, "set"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v8, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    if-nez v6, :cond_2

    if-eqz v9, :cond_5

    :cond_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lch/qos/logback/core/joran/util/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lch/qos/logback/core/joran/util/PropertyDescriptor;

    if-nez v8, :cond_3

    new-instance v8, Lch/qos/logback/core/joran/util/PropertyDescriptor;

    invoke-direct {v8, v5}, Lch/qos/logback/core/joran/util/PropertyDescriptor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    if-eqz v9, :cond_4

    array-length v6, v5

    if-ne v6, v7, :cond_5

    invoke-virtual {v8, v4}, Lch/qos/logback/core/joran/util/PropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V

    aget-object v4, v5, v2

    :goto_3
    invoke-virtual {v8, v4}, Lch/qos/logback/core/joran/util/PropertyDescriptor;->setPropertyType(Ljava/lang/Class;)V

    goto :goto_4

    :cond_4
    if-eqz v6, :cond_5

    array-length v5, v5

    if-nez v5, :cond_5

    invoke-virtual {v8, v4}, Lch/qos/logback/core/joran/util/PropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V

    invoke-virtual {v8}, Lch/qos/logback/core/joran/util/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-array v0, v2, [Lch/qos/logback/core/joran/util/PropertyDescriptor;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lch/qos/logback/core/joran/util/PropertyDescriptor;

    return-object p0
.end method
