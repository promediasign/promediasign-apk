.class public Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/jam/JamService;


# instance fields
.field private mClassNames:[Ljava/lang/String;

.field private mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;->mClassNames:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null classes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null jcl"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAllClasses()[Lorg/apache/xmlbeans/impl/jam/JClass;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;->mClassNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/jam/JClass;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;->mClassNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getClassNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;->mClassNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getClasses()Lorg/apache/xmlbeans/impl/jam/JamClassIterator;
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;->getClassNames()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;-><init>(Lorg/apache/xmlbeans/impl/jam/JamClassLoader;[Ljava/lang/String;)V

    return-object v0
.end method

.method public setClassNames([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceImpl;->mClassNames:[Ljava/lang/String;

    return-void
.end method
