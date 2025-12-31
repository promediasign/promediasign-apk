.class Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl29;
.super Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl29"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;-><init>()V

    return-void
.end method


# virtual methods
.method public computeAndSetTextDirection(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p2}, LA/d;->g(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;

    move-result-object p2

    invoke-static {p1, p2}, LA/a;->r(Landroid/text/StaticLayout$Builder;Landroid/text/TextDirectionHeuristic;)V

    return-void
.end method

.method public isHorizontallyScrollable(Landroid/widget/TextView;)Z
    .locals 0

    invoke-static {p1}, LA/d;->v(Landroid/widget/TextView;)Z

    move-result p1

    return p1
.end method
