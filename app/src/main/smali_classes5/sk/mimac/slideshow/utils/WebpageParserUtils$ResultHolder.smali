.class Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/utils/WebpageParserUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultHolder"
.end annotation


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/utils/WebpageParserUtils$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->errorMessage:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->result:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$202(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->result:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic access$302(Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/WebpageParserUtils$ResultHolder;->webView:Landroid/webkit/WebView;

    return-object p1
.end method
