.class public Lcom/scand/svg/parser/support/BasicStroke;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCapStyle:Landroid/graphics/Paint$Cap;

.field public mDashArray:[F

.field public mDashOffset:F

.field public mJoinStyle:Landroid/graphics/Paint$Join;

.field public mLineWidth:F


# direct methods
.method public constructor <init>(FLandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scand/svg/parser/support/BasicStroke;->mLineWidth:F

    iput-object p2, p0, Lcom/scand/svg/parser/support/BasicStroke;->mCapStyle:Landroid/graphics/Paint$Cap;

    iput-object p3, p0, Lcom/scand/svg/parser/support/BasicStroke;->mJoinStyle:Landroid/graphics/Paint$Join;

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scand/svg/parser/support/BasicStroke;->mLineWidth:F

    iput-object p2, p0, Lcom/scand/svg/parser/support/BasicStroke;->mCapStyle:Landroid/graphics/Paint$Cap;

    iput-object p3, p0, Lcom/scand/svg/parser/support/BasicStroke;->mJoinStyle:Landroid/graphics/Paint$Join;

    iput-object p5, p0, Lcom/scand/svg/parser/support/BasicStroke;->mDashArray:[F

    iput p6, p0, Lcom/scand/svg/parser/support/BasicStroke;->mDashOffset:F

    return-void
.end method
