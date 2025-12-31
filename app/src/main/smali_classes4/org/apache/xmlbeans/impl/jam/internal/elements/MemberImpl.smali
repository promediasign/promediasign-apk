.class public abstract Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;
.super Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotatedElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/jam/mutable/MMember;


# instance fields
.field private mModifiers:I


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotatedElementImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;->mModifiers:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotatedElementImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;->mModifiers:I

    return-void
.end method


# virtual methods
.method public getContainingClass()Lorg/apache/xmlbeans/impl/jam/JClass;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getParent()Lorg/apache/xmlbeans/impl/jam/JElement;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/xmlbeans/impl/jam/JClass;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/impl/jam/JClass;

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/apache/xmlbeans/impl/jam/JMember;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/xmlbeans/impl/jam/JMember;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/JMember;->getContainingClass()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;->mModifiers:I

    return v0
.end method

.method public isPackagePrivate()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivate()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public setModifiers(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;->mModifiers:I

    return-void
.end method
