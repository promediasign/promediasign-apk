.class public Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/util/introspection/VelMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/util/introspection/UberspectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VelMethodImpl"
.end annotation


# instance fields
.field converters:[Lorg/apache/velocity/util/introspection/Converter;

.field isVarArg:Ljava/lang/Boolean;

.field final method:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lorg/apache/velocity/util/introspection/UberspectImpl;

.field wrapArray:Z


# direct methods
.method public constructor <init>(Lorg/apache/velocity/util/introspection/UberspectImpl;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;-><init>(Lorg/apache/velocity/util/introspection/UberspectImpl;Ljava/lang/reflect/Method;Z[Lorg/apache/velocity/util/introspection/Converter;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/util/introspection/UberspectImpl;Ljava/lang/reflect/Method;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;-><init>(Lorg/apache/velocity/util/introspection/UberspectImpl;Ljava/lang/reflect/Method;Z[Lorg/apache/velocity/util/introspection/Converter;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/util/introspection/UberspectImpl;Ljava/lang/reflect/Method;Z[Lorg/apache/velocity/util/introspection/Converter;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->this$0:Lorg/apache/velocity/util/introspection/UberspectImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->method:Ljava/lang/reflect/Method;

    iput-boolean p3, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->wrapArray:Z

    iput-object p4, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->converters:[Lorg/apache/velocity/util/introspection/Converter;

    return-void
.end method

.method private handleVarArg(Ljava/lang/Class;I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_0

    array-length v0, p3

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, p2

    :goto_0
    move-object p3, v0

    goto :goto_2

    :cond_0
    array-length v0, p3

    add-int/lit8 v3, p2, 0x1

    if-ne v0, v3, :cond_1

    aget-object v0, p3, p2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1, v0, v2}, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->isMethodInvocationConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    aget-object v0, p3, p2

    invoke-static {p1, v2, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    aput-object p1, p3, p2

    goto :goto_2

    :cond_1
    array-length v0, p3

    if-le v0, v3, :cond_3

    array-length v0, p3

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    add-int v4, p2, v1

    aget-object v4, p3, v4

    invoke-static {p1, v1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v0, p2

    goto :goto_0

    :cond_3
    :goto_2
    return-object p3
.end method


# virtual methods
.method public doInvoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->wrapArray:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/velocity/util/ArrayListWrapper;

    invoke-direct {v0, p1}, Lorg/apache/velocity/util/ArrayListWrapper;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->isVarArg()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    array-length v2, p2

    if-lt v2, v1, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->handleVarArg(Ljava/lang/Class;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->converters:[Lorg/apache/velocity/util/introspection/Converter;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->converters:[Lorg/apache/velocity/util/introspection/Converter;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    aget-object v2, p2, v0

    invoke-interface {v1, v2}, Lorg/apache/velocity/util/introspection/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->doInvoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVarArg()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->isVarArg:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->isVarArg:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;->isVarArg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
