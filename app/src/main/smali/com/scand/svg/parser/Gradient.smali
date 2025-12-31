.class public Lcom/scand/svg/parser/Gradient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/scand/svg/parser/support/ColorSVG;",
            ">;"
        }
    .end annotation
.end field

.field public fx:Ljava/lang/Float;

.field public fy:Ljava/lang/Float;

.field public gradientUnits:Ljava/lang/String;

.field id:Ljava/lang/String;

.field public isLinear:Z

.field public matrix:Landroid/graphics/Matrix;

.field public pFX:Z

.field public pFY:Z

.field public pR:Z

.field public pX:Z

.field public pX1:Z

.field public pX2:Z

.field public pY:Z

.field public pY1:Z

.field public pY2:Z

.field public positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public radius:Ljava/lang/Float;

.field public spreadMethod:Ljava/lang/String;

.field public x:Ljava/lang/Float;

.field public x1:Ljava/lang/Float;

.field public x2:Ljava/lang/Float;

.field xlink:Ljava/lang/String;

.field public y:Ljava/lang/Float;

.field public y1:Ljava/lang/Float;

.field public y2:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/parser/Gradient;->positions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/parser/Gradient;->colors:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public createChild(Lcom/scand/svg/parser/Gradient;)Lcom/scand/svg/parser/Gradient;
    .locals 2

    new-instance v0, Lcom/scand/svg/parser/Gradient;

    invoke-direct {v0}, Lcom/scand/svg/parser/Gradient;-><init>()V

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/scand/svg/parser/Gradient;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->xlink:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/scand/svg/parser/Gradient;->isLinear:Z

    iput-boolean v1, v0, Lcom/scand/svg/parser/Gradient;->isLinear:Z

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->x1:Ljava/lang/Float;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->x1:Ljava/lang/Float;

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->x2:Ljava/lang/Float;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->x2:Ljava/lang/Float;

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->y1:Ljava/lang/Float;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->y1:Ljava/lang/Float;

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->y2:Ljava/lang/Float;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->y2:Ljava/lang/Float;

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->x:Ljava/lang/Float;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->x:Ljava/lang/Float;

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->y:Ljava/lang/Float;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->y:Ljava/lang/Float;

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->fx:Ljava/lang/Float;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->fx:Ljava/lang/Float;

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->fy:Ljava/lang/Float;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->fy:Ljava/lang/Float;

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->radius:Ljava/lang/Float;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->radius:Ljava/lang/Float;

    iget-boolean v1, p1, Lcom/scand/svg/parser/Gradient;->pX1:Z

    iput-boolean v1, v0, Lcom/scand/svg/parser/Gradient;->pX1:Z

    iget-boolean v1, p1, Lcom/scand/svg/parser/Gradient;->pX2:Z

    iput-boolean v1, v0, Lcom/scand/svg/parser/Gradient;->pX2:Z

    iget-boolean v1, p1, Lcom/scand/svg/parser/Gradient;->pY1:Z

    iput-boolean v1, v0, Lcom/scand/svg/parser/Gradient;->pY1:Z

    iget-boolean v1, p1, Lcom/scand/svg/parser/Gradient;->pY2:Z

    iput-boolean v1, v0, Lcom/scand/svg/parser/Gradient;->pY2:Z

    iget-boolean v1, p1, Lcom/scand/svg/parser/Gradient;->pX:Z

    iput-boolean v1, v0, Lcom/scand/svg/parser/Gradient;->pX:Z

    iget-boolean v1, p1, Lcom/scand/svg/parser/Gradient;->pY:Z

    iput-boolean v1, v0, Lcom/scand/svg/parser/Gradient;->pY:Z

    iget-boolean v1, p1, Lcom/scand/svg/parser/Gradient;->pR:Z

    iput-boolean v1, v0, Lcom/scand/svg/parser/Gradient;->pR:Z

    iget-boolean v1, p1, Lcom/scand/svg/parser/Gradient;->pFX:Z

    iput-boolean v1, v0, Lcom/scand/svg/parser/Gradient;->pFX:Z

    iget-boolean v1, p1, Lcom/scand/svg/parser/Gradient;->pFY:Z

    iput-boolean v1, v0, Lcom/scand/svg/parser/Gradient;->pFY:Z

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->spreadMethod:Ljava/lang/String;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->spreadMethod:Ljava/lang/String;

    iget-object v1, p1, Lcom/scand/svg/parser/Gradient;->gradientUnits:Ljava/lang/String;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->gradientUnits:Ljava/lang/String;

    iget-object v1, p0, Lcom/scand/svg/parser/Gradient;->positions:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->positions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/scand/svg/parser/Gradient;->colors:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->colors:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    iget-object p1, p1, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_0

    :goto_0
    iput-object p1, v0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    goto :goto_1

    :cond_0
    new-instance p1, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p1, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
