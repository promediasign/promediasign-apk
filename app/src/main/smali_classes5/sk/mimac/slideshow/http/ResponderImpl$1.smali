.class Lsk/mimac/slideshow/http/ResponderImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/http/ResponderImpl;->processNextKeyCode()Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsk/mimac/slideshow/utils/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field keyCode:I

.field final synthetic this$0:Lsk/mimac/slideshow/http/ResponderImpl;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/http/ResponderImpl;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/http/ResponderImpl$1;->this$0:Lsk/mimac/slideshow/http/ResponderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lsk/mimac/slideshow/http/ResponderImpl$1;->keyCode:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lsk/mimac/slideshow/http/ResponderImpl$1;->keyCode:I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/http/ResponderImpl$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/http/ResponderImpl$1;->keyCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
