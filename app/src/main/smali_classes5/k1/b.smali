.class public final synthetic Lk1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsk/mimac/slideshow/gui/GuiCreator;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/GuiCreator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lk1/b;->a:I

    iput-object p1, p0, Lk1/b;->b:Lsk/mimac/slideshow/gui/GuiCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lk1/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk1/b;->b:Lsk/mimac/slideshow/gui/GuiCreator;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/GuiCreator;->c(Lsk/mimac/slideshow/gui/GuiCreator;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lk1/b;->b:Lsk/mimac/slideshow/gui/GuiCreator;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/GuiCreator;->d(Lsk/mimac/slideshow/gui/GuiCreator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
