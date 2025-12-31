.class public final synthetic Lsk/mimac/slideshow/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/utils/c;->a:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    iput-boolean p2, p0, Lsk/mimac/slideshow/utils/c;->b:Z

    iput-object p3, p0, Lsk/mimac/slideshow/utils/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lsk/mimac/slideshow/utils/c;->b:Z

    iget-object v1, p0, Lsk/mimac/slideshow/utils/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lsk/mimac/slideshow/utils/c;->a:Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;

    invoke-static {v2, v0, v1}, Lsk/mimac/slideshow/utils/WebpageParserUtils;->b(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;ZLjava/lang/String;)V

    return-void
.end method
