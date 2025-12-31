.class public final synthetic Lp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/core/widget/ContentLoadingProgressBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp/a;->a:I

    iput-object p1, p0, Lp/a;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lp/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp/a;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->a(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lp/a;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->b(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
