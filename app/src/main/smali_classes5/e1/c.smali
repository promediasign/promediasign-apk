.class public final synthetic Le1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Le1/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Le1/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lsk/mimac/slideshow/utils/LastStartUtils;->a()V

    return-void

    :pswitch_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reloadApp()V

    return-void

    :pswitch_1
    invoke-static {}, Lsk/mimac/slideshow/userinput/KeyboardListener;->b()V

    return-void

    :pswitch_2
    invoke-static {}, Lsk/mimac/slideshow/userinput/KeyboardListener;->c()V

    return-void

    :pswitch_3
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->showWebSettingsActivity()V

    return-void

    :pswitch_4
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->showSettingsActivity()V

    return-void

    :pswitch_5
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->deleteLastFile()V

    return-void

    :pswitch_6
    invoke-static {}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->f()V

    return-void

    :pswitch_7
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->e()V

    return-void

    :pswitch_8
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->b()V

    return-void

    :pswitch_9
    invoke-static {}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->b()V

    return-void

    :pswitch_a
    invoke-static {}, Lsk/mimac/slideshow/benchmark/MultithreadBenchmark;->a()V

    return-void

    :pswitch_b
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->a()V

    return-void

    :pswitch_c
    invoke-static {}, Lsk/mimac/slideshow/MountListener;->b()V

    return-void

    :pswitch_d
    invoke-static {}, Lsk/mimac/slideshow/WebService;->stop()V

    return-void

    :pswitch_e
    invoke-static {}, Lsk/mimac/slideshow/ApiServiceImpl;->i()V

    return-void

    :pswitch_f
    invoke-static {}, Lsk/mimac/slideshow/ApiServiceImpl;->h()V

    return-void

    :pswitch_10
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->toggleFullscreen()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
