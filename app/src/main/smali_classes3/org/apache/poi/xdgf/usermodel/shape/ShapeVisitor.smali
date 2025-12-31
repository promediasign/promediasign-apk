.class public abstract Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->getAcceptor()Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->_acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->_acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    invoke-interface {v0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result p1

    return p1
.end method

.method public getAcceptor()Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;
    .locals 1

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor$1;-><init>(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    return-object v0
.end method

.method public setAcceptor(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->_acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    return-void
.end method

.method public abstract visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V
.end method
