.class public Lcom/scand/svg/parser/support/PathExt;
.super Landroid/graphics/Path;
.source "SourceFile"

# interfaces
.implements Lcom/scand/svg/parser/support/GraphElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
