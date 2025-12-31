.class public final Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;
.super Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotation;


# instance fields
.field private mAnnotationInstance:Ljava/lang/Object;

.field private mProxy:Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;

.field private mQualifiedName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mAnnotationInstance:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mQualifiedName:Ljava/lang/String;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mProxy:Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;

    const/16 p1, 0x2e

    invoke-virtual {p3, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->setSimpleName(Ljava/lang/String;)V

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mQualifiedName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null qn"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null proxy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public accept(Lorg/apache/xmlbeans/impl/jam/visitor/JVisitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/jam/visitor/JVisitor;->visit(Lorg/apache/xmlbeans/impl/jam/JAnnotation;)V

    return-void
.end method

.method public accept(Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;->visit(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotation;)V

    return-void
.end method

.method public createNestedValue(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotation;
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getContext()Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->createAnnotationProxy(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getContext()Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    move-result-object v2

    invoke-direct {v1, v2, v0, p2}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getContext()Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mProxy:Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;

    invoke-virtual {v0, p1, v1, p2}, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->setValue(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/xmlbeans/impl/jam/JClass;)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null typename"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createNestedValueArray(Ljava/lang/String;Ljava/lang/String;I)[Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotation;
    .locals 5

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    if-ltz p3, :cond_1

    .line 6
    .line 7
    new-array v0, p3, [Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotation;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getContext()Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2, p2}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->createAnnotationProxy(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getContext()Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-direct {v3, v4, v2, p2}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    aput-object v3, v0, v1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getContext()Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-interface {p3}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    new-instance v1, Ljava/lang/StringBuffer;

    .line 43
    .line 44
    const-string v2, "[L"

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    const-string p2, ";"

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p3, p2}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mProxy:Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;

    .line 66
    .line 67
    invoke-virtual {p3, p1, v0, p2}, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->setValue(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/xmlbeans/impl/jam/JClass;)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string p2, "dimensions = "

    .line 74
    .line 75
    invoke-static {p3, p2}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    const-string p2, "null typename"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    const-string p2, "null name"

    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method public getAnnotationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mAnnotationInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getProxy()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mProxy:Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mQualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mProxy:Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->getValue(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;

    move-result-object p1

    return-object p1
.end method

.method public getValues()[Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mProxy:Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->getValues()[Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;

    move-result-object v0

    return-object v0
.end method

.method public setAnnotationInstance(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mAnnotationInstance:Ljava/lang/Object;

    return-void
.end method

.method public setSimpleValue(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/xmlbeans/impl/jam/JClass;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;->mProxy:Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->setValue(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/xmlbeans/impl/jam/JClass;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
