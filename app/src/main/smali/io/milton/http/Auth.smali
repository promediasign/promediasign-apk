.class public Lio/milton/http/Auth;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/Auth$Scheme;
    }
.end annotation


# static fields
.field private static basicParserCharset:Ljava/nio/charset/Charset;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private cnonce:Ljava/lang/String;

.field private nc:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private nonceStale:Z

.field private password:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private responseDigest:Ljava/lang/String;

.field private scheme:Lio/milton/http/Auth$Scheme;

.field private tag:Ljava/lang/Object;

.field private uri:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/Auth;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/Auth;->log:Lorg/slf4j/Logger;

    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/milton/http/Auth;->basicParserCharset:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/milton/http/Auth;->basicParserCharset:Ljava/nio/charset/Charset;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lio/milton/http/Auth$Scheme;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/Auth;->scheme:Lio/milton/http/Auth$Scheme;

    iput-object p2, p0, Lio/milton/http/Auth;->user:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/milton/http/Auth;->password:Ljava/lang/String;

    iput-object p3, p0, Lio/milton/http/Auth;->tag:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/milton/http/Auth$Scheme;->valueOf(Ljava/lang/String;)Lio/milton/http/Auth$Scheme;

    move-result-object v1

    iput-object v1, p0, Lio/milton/http/Auth;->scheme:Lio/milton/http/Auth$Scheme;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/milton/http/Auth$Scheme;->valueOf(Ljava/lang/String;)Lio/milton/http/Auth$Scheme;

    move-result-object p1

    iput-object p1, p0, Lio/milton/http/Auth;->scheme:Lio/milton/http/Auth$Scheme;

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lio/milton/http/Auth;->scheme:Lio/milton/http/Auth$Scheme;

    sget-object v1, Lio/milton/http/Auth$Scheme;->BASIC:Lio/milton/http/Auth$Scheme;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lio/milton/http/Auth;->parseBasic(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/milton/http/Auth;->scheme:Lio/milton/http/Auth$Scheme;

    sget-object v1, Lio/milton/http/Auth$Scheme;->DIGEST:Lio/milton/http/Auth$Scheme;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lio/milton/http/Auth;->parseDigest(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/milton/http/Auth;->scheme:Lio/milton/http/Auth$Scheme;

    sget-object v1, Lio/milton/http/Auth$Scheme;->BEARER:Lio/milton/http/Auth$Scheme;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lio/milton/http/Auth;->parseBearer(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private parseBasic(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lio/milton/http/Auth;->basicParserCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/milton/http/Auth;->user:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/milton/http/Auth;->password:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lio/milton/http/Auth;->user:Ljava/lang/String;

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private parseBearer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/Auth;->user:Ljava/lang/String;

    return-void
.end method

.method private parseDigest(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lio/milton/common/StringSplitUtils;->splitIgnoringQuotes(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "="

    const-string v1, "\""

    invoke-static {p1, v0, v1}, Lio/milton/common/StringSplitUtils;->splitEachArrayElementAndCreateMap([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "username"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/milton/http/Auth;->user:Ljava/lang/String;

    const-string v0, "realm"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/milton/http/Auth;->realm:Ljava/lang/String;

    const-string v0, "nonce"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/milton/http/Auth;->nonce:Ljava/lang/String;

    const-string v0, "uri"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/milton/http/Auth;->uri:Ljava/lang/String;

    const-string v0, "response"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/milton/http/Auth;->responseDigest:Ljava/lang/String;

    const-string v0, "qop"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/milton/http/Auth;->qop:Ljava/lang/String;

    const-string v0, "nc"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/milton/http/Auth;->nc:Ljava/lang/String;

    const-string v0, "cnonce"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/milton/http/Auth;->cnonce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCnonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Auth;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Auth;->nc:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Auth;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Auth;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Auth;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Auth;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Auth;->responseDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Lio/milton/http/Auth$Scheme;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Auth;->scheme:Lio/milton/http/Auth$Scheme;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Auth;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Auth;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Auth;->user:Ljava/lang/String;

    return-object v0
.end method

.method public isNonceStale()Z
    .locals 1

    iget-boolean v0, p0, Lio/milton/http/Auth;->nonceStale:Z

    return v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/Auth;->tag:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scheme: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/Auth;->scheme:Lio/milton/http/Auth$Scheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/milton/http/Auth;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/milton/http/Auth;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
