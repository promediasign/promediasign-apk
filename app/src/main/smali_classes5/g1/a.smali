.class public final synthetic Lg1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg1/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1
    iget v0, p0, Lg1/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->d(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1}, Lsk/mimac/slideshow/communication/IPv8;->a(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p1}, Lsk/mimac/slideshow/communication/CommunicationService;->b(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
