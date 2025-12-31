.class public Lcom/scand/svg/parser/support/LinearGradientPaint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public colors:[Lcom/scand/svg/parser/support/ColorSVG;

.field mTileMode:Landroid/graphics/Shader$TileMode;

.field matrix:Landroid/graphics/Matrix;

.field public positions:[F

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>(FFFF[F[Lcom/scand/svg/parser/support/ColorSVG;Landroid/graphics/Shader$TileMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scand/svg/parser/support/LinearGradientPaint;->x1:F

    iput p2, p0, Lcom/scand/svg/parser/support/LinearGradientPaint;->y1:F

    iput p3, p0, Lcom/scand/svg/parser/support/LinearGradientPaint;->x2:F

    iput p4, p0, Lcom/scand/svg/parser/support/LinearGradientPaint;->y2:F

    iput-object p5, p0, Lcom/scand/svg/parser/support/LinearGradientPaint;->positions:[F

    iput-object p6, p0, Lcom/scand/svg/parser/support/LinearGradientPaint;->colors:[Lcom/scand/svg/parser/support/ColorSVG;

    iput-object p7, p0, Lcom/scand/svg/parser/support/LinearGradientPaint;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;[F[Lcom/scand/svg/parser/support/ColorSVG;Landroid/graphics/Shader$TileMode;Landroid/graphics/Matrix;)V
    .locals 8

    .line 2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    move-object v0, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/scand/svg/parser/support/LinearGradientPaint;-><init>(FFFF[F[Lcom/scand/svg/parser/support/ColorSVG;Landroid/graphics/Shader$TileMode;)V

    iput-object p6, p0, Lcom/scand/svg/parser/support/LinearGradientPaint;->matrix:Landroid/graphics/Matrix;

    return-void
.end method
