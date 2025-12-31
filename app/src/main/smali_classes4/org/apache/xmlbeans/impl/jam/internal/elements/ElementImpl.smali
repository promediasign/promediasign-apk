.class public abstract Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/xmlbeans/impl/jam/mutable/MElement;


# static fields
.field public static final NO_ANNOTATION:[Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;

.field public static final NO_CLASS:[Lorg/apache/xmlbeans/impl/jam/internal/elements/ClassImpl;

.field public static final NO_COMMENT:[Lorg/apache/xmlbeans/impl/jam/internal/elements/CommentImpl;

.field public static final NO_CONSTRUCTOR:[Lorg/apache/xmlbeans/impl/jam/internal/elements/ConstructorImpl;

.field public static final NO_FIELD:[Lorg/apache/xmlbeans/impl/jam/internal/elements/FieldImpl;

.field public static final NO_METHOD:[Lorg/apache/xmlbeans/impl/jam/internal/elements/MethodImpl;

.field public static final NO_NODE:[Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;

.field public static final NO_PACKAGE:[Lorg/apache/xmlbeans/impl/jam/JPackage;

.field public static final NO_PARAMETER:[Lorg/apache/xmlbeans/impl/jam/internal/elements/ParameterImpl;

.field public static final NO_PROPERTY:[Lorg/apache/xmlbeans/impl/jam/JProperty;


# instance fields
.field private mArtifact:Ljava/lang/Object;

.field private mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

.field private mParent:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;

.field private mPosition:Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;

.field protected mSimpleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;

    sput-object v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->NO_NODE:[Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/jam/internal/elements/ClassImpl;

    sput-object v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->NO_CLASS:[Lorg/apache/xmlbeans/impl/jam/internal/elements/ClassImpl;

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/jam/internal/elements/FieldImpl;

    sput-object v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->NO_FIELD:[Lorg/apache/xmlbeans/impl/jam/internal/elements/FieldImpl;

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/jam/internal/elements/ConstructorImpl;

    sput-object v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->NO_CONSTRUCTOR:[Lorg/apache/xmlbeans/impl/jam/internal/elements/ConstructorImpl;

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/jam/internal/elements/MethodImpl;

    sput-object v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->NO_METHOD:[Lorg/apache/xmlbeans/impl/jam/internal/elements/MethodImpl;

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/jam/internal/elements/ParameterImpl;

    sput-object v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->NO_PARAMETER:[Lorg/apache/xmlbeans/impl/jam/internal/elements/ParameterImpl;

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/jam/JPackage;

    sput-object v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->NO_PACKAGE:[Lorg/apache/xmlbeans/impl/jam/JPackage;

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;

    sput-object v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->NO_ANNOTATION:[Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationImpl;

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/jam/internal/elements/CommentImpl;

    sput-object v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->NO_COMMENT:[Lorg/apache/xmlbeans/impl/jam/internal/elements/CommentImpl;

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/jam/JProperty;

    sput-object v0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->NO_PROPERTY:[Lorg/apache/xmlbeans/impl/jam/JProperty;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mPosition:Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mArtifact:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null ctx"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mPosition:Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mArtifact:Ljava/lang/Object;

    if-eqz p1, :cond_3

    if-eq p1, p0, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getParent()Lorg/apache/xmlbeans/impl/jam/JElement;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/JElement;->getParent()Lorg/apache/xmlbeans/impl/jam/JElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cycle detected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getContext()Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mParent:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An element cannot be its own parent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null ctx"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static defaultName(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "unnamed_"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lorg/apache/xmlbeans/impl/jam/JElement;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/apache/xmlbeans/impl/jam/JElement;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public createSourcePosition()Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/jam/internal/elements/SourcePositionImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/SourcePositionImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mPosition:Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getArtifact()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mArtifact:Ljava/lang/Object;

    return-object v0
.end method

.method public getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    return-object v0
.end method

.method public getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    check-cast v0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    return-object v0
.end method

.method public getMutableSourcePosition()Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mPosition:Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;

    return-object v0
.end method

.method public final getParent()Lorg/apache/xmlbeans/impl/jam/JElement;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mParent:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mSimpleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePosition()Lorg/apache/xmlbeans/impl/jam/JSourcePosition;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mPosition:Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public removeSourcePosition()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mPosition:Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;

    return-void
.end method

.method public setArtifact(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mArtifact:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mArtifact:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "artifact already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSimpleName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->mSimpleName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
