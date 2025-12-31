.class Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/utils/SimpleCookieJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CookieWrapper"
.end annotation


# instance fields
.field private final cookie:Lokhttp3/Cookie;

.field final synthetic this$0:Lsk/mimac/slideshow/utils/SimpleCookieJar;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/utils/SimpleCookieJar;Lokhttp3/Cookie;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->this$0:Lsk/mimac/slideshow/utils/SimpleCookieJar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;

    iget-object v2, p1, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v2}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v3}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v2}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v3}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v2}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v3}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v2}, Lokhttp3/Cookie;->secure()Z

    move-result v2

    iget-object v3, p0, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v3}, Lokhttp3/Cookie;->secure()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object p1, p1, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {p1}, Lokhttp3/Cookie;->hostOnly()Z

    move-result p1

    iget-object v2, p0, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v2}, Lokhttp3/Cookie;->hostOnly()Z

    move-result v2

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCookie()Lokhttp3/Cookie;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v0}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lsk/mimac/slideshow/utils/SimpleCookieJar$CookieWrapper;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v1}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
