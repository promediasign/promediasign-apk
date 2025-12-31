.class public Lio/milton/http/http11/PutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/PutHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validate(Lio/milton/http/Range;)Z
    .locals 6

    invoke-virtual {p1}, Lio/milton/http/Range;->getStart()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    sget-object p1, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    const-string v0, "invalid range, start is negative"

    :goto_0
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    sget-object p1, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    const-string v0, "invalid range, finish is negative"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/milton/http/Range;->getStart()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-lez p1, :cond_2

    sget-object p1, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    const-string v0, "invalid range, start is greater then finish"

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public findContentTypes(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p2}, Lio/milton/common/ContentTypeUtils;->findContentTypes(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object p2, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    .line 6
    .line 7
    const-string v0, "findContentTypes: got type from name. Type: "

    .line 8
    .line 9
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v0, v1, v2

    .line 18
    .line 19
    invoke-static {p2, v1}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public findNearestParent(Lio/milton/http/HttpManager;Ljava/lang/String;Lio/milton/common/Path;)Lio/milton/resource/CollectionResource;
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v1

    invoke-virtual {p3}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of p1, v1, Lio/milton/resource/CollectionResource;

    if-eqz p1, :cond_1

    check-cast v1, Lio/milton/resource/CollectionResource;

    return-object v1

    :cond_1
    sget-object p1, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "parent is not a collection: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-virtual {p3}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/milton/http/http11/PutHelper;->findNearestParent(Lio/milton/http/HttpManager;Ljava/lang/String;Lio/milton/common/Path;)Lio/milton/resource/CollectionResource;

    move-result-object p1

    return-object p1
.end method

.method public getContentLength(Lio/milton/http/Request;)Ljava/lang/Long;
    .locals 4

    .line 1
    invoke-interface {p1}, Lio/milton/http/Request;->getContentLengthHeader()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lio/milton/http/Request$Header;->X_EXPECTED_ENTITY_LENGTH:Lio/milton/http/Request$Header;

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lio/milton/http/Request;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    sget-object v0, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    .line 22
    .line 23
    const-string v1, "no content-length given, but founhd non-standard length header: "

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    new-instance v0, Lio/milton/http/exceptions/BadRequestException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "invalid length for header: "

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v2, Lio/milton/http/Request$Header;->X_EXPECTED_ENTITY_LENGTH:Lio/milton/http/Request$Header;

    .line 51
    .line 52
    iget-object v2, v2, Lio/milton/http/Request$Header;->code:Ljava/lang/String;

    .line 53
    .line 54
    const-string v3, ". value is: "

    .line 55
    .line 56
    invoke-static {v1, v2, v3, p1}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {v0, v1, p1}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_0
    :goto_0
    return-object v0
.end method

.method public parseContentRange(Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/Range;
    .locals 5

    const-string v0, " Raw header:"

    invoke-interface {p2}, Lio/milton/http/Request;->getContentRangeHeader()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, "bytes"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x2d

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p2, Lio/milton/http/Range;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p2, v2, v0}, Lio/milton/http/Range;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-direct {p0, p2}, Lio/milton/http/http11/PutHelper;->validate(Lio/milton/http/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    new-instance p2, Lio/milton/http/exceptions/BadRequestException;

    invoke-direct {p2, p1}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;)V

    throw p2

    :catch_0
    sget-object v2, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid range header, finish is not a valid number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance p2, Lio/milton/http/exceptions/BadRequestException;

    invoke-direct {p2, p1}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;)V

    throw p2

    :catch_1
    sget-object v1, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid range header, start is not a valid number: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance p2, Lio/milton/http/exceptions/BadRequestException;

    invoke-direct {p2, p1}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;)V

    throw p2

    :cond_2
    sget-object v0, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    const-string v1, "Invalid range header, slash not found: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance p2, Lio/milton/http/exceptions/BadRequestException;

    invoke-direct {p2, p1}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;)V

    throw p2

    :cond_3
    sget-object v0, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    const-string v1, "Invalid range header, dash not found: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance p2, Lio/milton/http/exceptions/BadRequestException;

    invoke-direct {p2, p1}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;)V

    throw p2

    :cond_4
    sget-object v0, Lio/milton/http/http11/PutHelper;->log:Lorg/slf4j/Logger;

    const-string v1, "Invalid range header, does not start with \'bytes\': "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance p2, Lio/milton/http/exceptions/BadRequestException;

    invoke-direct {p2, p1}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;)V

    throw p2
.end method
