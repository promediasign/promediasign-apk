.class Lorg/apache/poi/sl/draw/DrawBackground$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PlaceableShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sl/draw/DrawBackground;->draw(Ljava/awt/Graphics2D;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/sl/draw/DrawBackground;

.field final synthetic val$anchor:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/DrawBackground;Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawBackground$1;->this$0:Lorg/apache/poi/sl/draw/DrawBackground;

    iput-object p2, p0, Lorg/apache/poi/sl/draw/DrawBackground$1;->val$anchor:Ljava/awt/geom/Rectangle2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawBackground$1;->val$anchor:Ljava/awt/geom/Rectangle2D;

    return-object v0
.end method

.method public getFlipHorizontal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFlipVertical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSheet()Lorg/apache/poi/sl/usermodel/Sheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawBackground$1;->this$0:Lorg/apache/poi/sl/draw/DrawBackground;

    iget-object v0, v0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shape;->getSheet()Lorg/apache/poi/sl/usermodel/Sheet;

    move-result-object v0

    return-object v0
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 0

    return-void
.end method

.method public setFlipVertical(Z)V
    .locals 0

    return-void
.end method

.method public setRotation(D)V
    .locals 0

    return-void
.end method
