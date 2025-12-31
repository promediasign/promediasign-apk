.class public final Lorg/apache/xmlbeans/impl/jam/internal/elements/CommentImpl;
.super Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/jam/mutable/MComment;


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/CommentImpl;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/xmlbeans/impl/jam/visitor/JVisitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/jam/visitor/JVisitor;->visit(Lorg/apache/xmlbeans/impl/jam/JComment;)V

    return-void
.end method

.method public accept(Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;->visit(Lorg/apache/xmlbeans/impl/jam/mutable/MComment;)V

    return-void
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getParent()Lorg/apache/xmlbeans/impl/jam/JElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".{comment}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/CommentImpl;->mText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/CommentImpl;->mText:Ljava/lang/String;

    return-void
.end method
