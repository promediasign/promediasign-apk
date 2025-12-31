.class public final synthetic Lg1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Integer;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lg1/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/b;->b:Ljava/lang/Integer;

    iput-object p2, p0, Lg1/b;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lg1/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/b;->c:Ljava/lang/String;

    iput-object p2, p0, Lg1/b;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lg1/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg1/b;->b:Ljava/lang/Integer;

    iget-object v1, p0, Lg1/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/communication/CommunicationService;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg1/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lg1/b;->b:Ljava/lang/Integer;

    invoke-static {v1, v0}, Lsk/mimac/slideshow/communication/CommunicationService;->c(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
