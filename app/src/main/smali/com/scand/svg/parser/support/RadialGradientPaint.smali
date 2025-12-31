.class public Lcom/scand/svg/parser/support/RadialGradientPaint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public colors:[Lcom/scand/svg/parser/support/ColorSVG;

.field public matrix:Landroid/graphics/Matrix;

.field public positions:[F

.field public rad:F

.field public tileMode:Landroid/graphics/Shader$TileMode;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFFFF[F[Lcom/scand/svg/parser/support/ColorSVG;Landroid/graphics/Shader$TileMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scand/svg/parser/support/RadialGradientPaint;->x:F

    iput p2, p0, Lcom/scand/svg/parser/support/RadialGradientPaint;->y:F

    iput p3, p0, Lcom/scand/svg/parser/support/RadialGradientPaint;->rad:F

    iput-object p8, p0, Lcom/scand/svg/parser/support/RadialGradientPaint;->tileMode:Landroid/graphics/Shader$TileMode;

    iput-object p6, p0, Lcom/scand/svg/parser/support/RadialGradientPaint;->positions:[F

    iput-object p7, p0, Lcom/scand/svg/parser/support/RadialGradientPaint;->colors:[Lcom/scand/svg/parser/support/ColorSVG;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;[F[Lcom/scand/svg/parser/support/ColorSVG;Landroid/graphics/Shader$TileMode;Landroid/graphics/Matrix;)V
    .locals 9

    .line 2
    move-object v0, p1

    move-object v1, p3

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/scand/svg/parser/support/RadialGradientPaint;-><init>(FFFFF[F[Lcom/scand/svg/parser/support/ColorSVG;Landroid/graphics/Shader$TileMode;)V

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/scand/svg/parser/support/RadialGradientPaint;->matrix:Landroid/graphics/Matrix;

    return-void
.end method
