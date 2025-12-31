.class public Lsk/mimac/slideshow/http/HttpCookie;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FORMAT:Ljava/lang/String; = "%s=%s; Max-Age=%d; HttpOnly; SameSite=Strict"


# instance fields
.field private final maxAge:I

.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/HttpCookie;->name:Ljava/lang/String;

    iput-object p2, p0, Lsk/mimac/slideshow/http/HttpCookie;->value:Ljava/lang/String;

    iput p3, p0, Lsk/mimac/slideshow/http/HttpCookie;->maxAge:I

    return-void
.end method


# virtual methods
.method public getHTTPHeader()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/http/HttpCookie;->name:Ljava/lang/String;

    iget-object v1, p0, Lsk/mimac/slideshow/http/HttpCookie;->value:Ljava/lang/String;

    iget v2, p0, Lsk/mimac/slideshow/http/HttpCookie;->maxAge:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%s=%s; Max-Age=%d; HttpOnly; SameSite=Strict"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
