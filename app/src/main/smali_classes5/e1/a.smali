.class public final synthetic Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Le1/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Le1/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lsk/mimac/slideshow/ApiService;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {}, Lsk/mimac/slideshow/ApiService;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
