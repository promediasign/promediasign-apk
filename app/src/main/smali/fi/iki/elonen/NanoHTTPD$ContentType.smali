.class public Lfi/iki/elonen/NanoHTTPD$ContentType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentType"
.end annotation


# static fields
.field private static final BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final MIME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final contentTypeHeader:Ljava/lang/String;

.field private final encoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[ |\t]*([^/^ ^;^,]+/[^ ^;^,]+)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$ContentType;->MIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*(charset)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;^,]*)[\'|\"]?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$ContentType;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*(boundary)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;^,]*)[\'|\"]?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$ContentType;->BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentTypeHeader:Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "UTF-8"

    const-string v2, ""

    if-eqz p1, :cond_0

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$ContentType;->MIME_PATTERN:Ljava/util/regex/Pattern;

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v2, v4}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$ContentType;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    goto :goto_0

    :goto_1
    const-string v1, "multipart/form-data"

    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$ContentType;->BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v1, v2, v0}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->boundary:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->boundary:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    return-object p3
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentTypeHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "US-ASCII"

    :cond_0
    return-object v0
.end method

.method public isMultipart()Z
    .locals 2

    const-string v0, "multipart/form-data"

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public tryUTF8()Lfi/iki/elonen/NanoHTTPD$ContentType;
    .locals 4

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ContentType;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ContentType;->contentTypeHeader:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "; charset=UTF-8"

    .line 15
    .line 16
    invoke-static {v2, v3, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    return-object p0
.end method
