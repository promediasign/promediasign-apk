.class public Lio/milton/http/fs/SimpleSecurityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/SecurityManager;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private digestGenerator:Lio/milton/http/http11/auth/DigestGenerator;

.field private nameAndPasswords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/fs/SimpleSecurityManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/fs/SimpleSecurityManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/fs/SimpleSecurityManager;->realm:Ljava/lang/String;

    iput-object p2, p0, Lio/milton/http/fs/SimpleSecurityManager;->nameAndPasswords:Ljava/util/Map;

    new-instance p1, Lio/milton/http/http11/auth/DigestGenerator;

    invoke-direct {p1}, Lio/milton/http/http11/auth/DigestGenerator;-><init>()V

    iput-object p1, p0, Lio/milton/http/fs/SimpleSecurityManager;->digestGenerator:Lio/milton/http/http11/auth/DigestGenerator;

    return-void
.end method


# virtual methods
.method public authenticate(Lio/milton/http/http11/auth/DigestResponse;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/milton/http/fs/SimpleSecurityManager;->digestGenerator:Lio/milton/http/http11/auth/DigestGenerator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/milton/http/fs/SimpleSecurityManager;->nameAndPasswords:Ljava/util/Map;

    invoke-virtual {p1}, Lio/milton/http/http11/auth/DigestResponse;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lio/milton/http/fs/SimpleSecurityManager;->digestGenerator:Lio/milton/http/http11/auth/DigestGenerator;

    invoke-virtual {v1, p1, v0}, Lio/milton/http/http11/auth/DigestGenerator;->generateDigest(Lio/milton/http/http11/auth/DigestResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/milton/http/http11/auth/DigestResponse;->getResponseDigest()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ok"

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No digest generator is configured"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 2
    sget-object v0, Lio/milton/http/fs/SimpleSecurityManager;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authenticate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lio/milton/http/fs/SimpleSecurityManager;->nameAndPasswords:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "user not found: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    return-object p1
.end method

.method public authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;Lio/milton/resource/Resource;)Z
    .locals 0

    const/4 p1, 0x0

    if-nez p3, :cond_0

    sget-object p2, Lio/milton/http/fs/SimpleSecurityManager;->log:Lorg/slf4j/Logger;

    const-string p3, "authorise: declining because there is no auth object"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return p1

    :cond_0
    invoke-virtual {p3}, Lio/milton/http/Auth;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object p2, Lio/milton/http/fs/SimpleSecurityManager;->log:Lorg/slf4j/Logger;

    const-string p3, "authorise: declining because there is no auth.getTag() object"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return p1

    :cond_1
    sget-object p1, Lio/milton/http/fs/SimpleSecurityManager;->log:Lorg/slf4j/Logger;

    const-string p2, "authorise: permitting because there is an authenticated user associated with this request"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getRealm(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lio/milton/http/fs/SimpleSecurityManager;->realm:Ljava/lang/String;

    return-object p1
.end method

.method public isDigestAllowed()Z
    .locals 1

    iget-object v0, p0, Lio/milton/http/fs/SimpleSecurityManager;->digestGenerator:Lio/milton/http/http11/auth/DigestGenerator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
