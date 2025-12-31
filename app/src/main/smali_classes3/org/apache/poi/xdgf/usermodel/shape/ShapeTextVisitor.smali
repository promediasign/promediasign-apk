.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;
.super Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor$TextAcceptor;
    }
.end annotation


# instance fields
.field protected text:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;->text:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public getAcceptor()Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;
    .locals 1

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor$TextAcceptor;

    invoke-direct {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor$TextAcceptor;-><init>()V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V
    .locals 0

    iget-object p2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;->text:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;->text:Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
