.class Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->getAcceptor()Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor$1;->this$0:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isDeleted()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
