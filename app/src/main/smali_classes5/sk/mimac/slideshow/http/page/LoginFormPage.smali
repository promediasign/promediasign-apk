.class public Lsk/mimac/slideshow/http/page/LoginFormPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# instance fields
.field private final authenticator:Lsk/mimac/slideshow/http/Authenticator;

.field private cookie:Lsk/mimac/slideshow/http/HttpCookie;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirect:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/http/Authenticator;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/http/Authenticator;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/LoginFormPage;->authenticator:Lsk/mimac/slideshow/http/Authenticator;

    iput-object p4, p0, Lsk/mimac/slideshow/http/page/LoginFormPage;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCookie()Lsk/mimac/slideshow/http/HttpCookie;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/LoginFormPage;->cookie:Lsk/mimac/slideshow/http/HttpCookie;

    return-object v0
.end method

.method public getPageHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "login"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 7

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "redirect"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/LoginFormPage;->redirect:Ljava/lang/String;

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "username"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "username_empty"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v2, "password"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "password_empty"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v4, "remember"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->hasAnyErrors()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lsk/mimac/slideshow/http/page/LoginFormPage;->authenticator:Lsk/mimac/slideshow/http/Authenticator;

    iget-object v5, p0, Lsk/mimac/slideshow/http/page/LoginFormPage;->headers:Ljava/util/Map;

    const-string v6, "tunneled"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v0, v1, v3, v5}, Lsk/mimac/slideshow/http/Authenticator;->generateCookie(Ljava/lang/String;Ljava/lang/String;ZZ)Lsk/mimac/slideshow/http/HttpCookie;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/LoginFormPage;->cookie:Lsk/mimac/slideshow/http/HttpCookie;

    if-nez v0, :cond_4

    const-string v0, "bad_username_or_password"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/LoginFormPage;->redirect:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "/"

    :cond_5
    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->redirectTo:Ljava/lang/String;

    :cond_6
    :goto_0
    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    const-string v0, "<p>"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const-string v0, "login_info"

    .line 7
    .line 8
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "</p>"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "<form method=\'post\'><table>"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "text\' autofocus=\'true"

    .line 26
    .line 27
    const-string v1, "username"

    .line 28
    .line 29
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, p1, v1, v0, v2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "password"

    .line 37
    .line 38
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, p1, v0, v0, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "login_remember"

    .line 46
    .line 47
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "remember"

    .line 52
    .line 53
    invoke-virtual {p0, p1, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeCheckboxTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "</table>"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/LoginFormPage;->redirect:Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    const-string v0, "<input type=\'hidden\' name=\'redirect\' value=\'"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/LoginFormPage;->redirect:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, "\'>"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_0
    const-string v0, "<input type=\'submit\' class=\'button\' value=\'"

    .line 85
    .line 86
    const-string v1, "login"

    .line 87
    .line 88
    const-string v2, "\'/></form>"

    .line 89
    .line 90
    invoke-static {p1, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
