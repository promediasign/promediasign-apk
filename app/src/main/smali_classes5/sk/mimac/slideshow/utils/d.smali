.class public final synthetic Lsk/mimac/slideshow/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/utils/d;->a:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/utils/d;->a:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/utils/WebpageParserUtils$1;->a(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Ljava/lang/String;)V

    return-void
.end method
