.class public abstract Lorg/apache/xmlbeans/impl/jam/annotation/TypedAnnotationProxyBase;
.super Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;
.source "SourceFile"


# instance fields
.field private mValues:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/annotation/TypedAnnotationProxyBase;->mValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSetterFor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    const-string v0, "set"

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->warning(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValues()[Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/annotation/TypedAnnotationProxyBase;->mValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/annotation/TypedAnnotationProxyBase;->mValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/xmlbeans/impl/jam/JClass;)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/annotation/TypedAnnotationProxyBase;->mValues:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/annotation/TypedAnnotationProxyBase;->mValues:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/annotation/TypedAnnotationProxyBase;->mValues:Ljava/util/List;

    new-instance v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->mContext:Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;

    check-cast v2, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    invoke-direct {v1, v2, p1, p2, p3}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/xmlbeans/impl/jam/JClass;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lorg/apache/xmlbeans/impl/jam/annotation/TypedAnnotationProxyBase;->getSetterFor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x1

    :try_start_0
    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->warning(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
