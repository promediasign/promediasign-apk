.class public final synthetic Lsk/mimac/slideshow/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/utils/b;->a:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/utils/b;->a:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/WebpageParserUtils;->a(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)V

    return-void
.end method
