.class public Lio/milton/http/http11/PartialGetHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private maxMemorySize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/PartialGetHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/PartialGetHelper;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x186a0

    iput v0, p0, Lio/milton/http/http11/PartialGetHelper;->maxMemorySize:I

    return-void
.end method


# virtual methods
.method public getRanges(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/milton/http/Range;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v1, "bytes="

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    const/4 v0, 0x6

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, ","

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    array-length v2, v0

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    if-ge v3, v2, :cond_1

    .line 38
    .line 39
    aget-object v4, v0, v3

    .line 40
    .line 41
    invoke-static {v4}, Lio/milton/http/Range;->parse(Ljava/lang/String;)Lio/milton/http/Range;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lio/milton/http/http11/PartialGetHelper;->log:Lorg/slf4j/Logger;

    .line 52
    .line 53
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    const-string v2, "getRanges: header: "

    .line 60
    .line 61
    const-string v3, " parsed ranges: "

    .line 62
    .line 63
    invoke-static {v2, p1, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-object v1

    .line 82
    :cond_3
    return-object v0

    .line 83
    :cond_4
    :goto_1
    sget-object p1, Lio/milton/http/http11/PartialGetHelper;->log:Lorg/slf4j/Logger;

    .line 84
    .line 85
    const-string v1, "getRanges: no range header"

    .line 86
    .line 87
    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method public sendPartialContent(Lio/milton/resource/GetableResource;Lio/milton/http/Request;Lio/milton/http/Response;Ljava/util/List;Ljava/util/Map;Lio/milton/http/http11/Http11ResponseHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/GetableResource;",
            "Lio/milton/http/Request;",
            "Lio/milton/http/Response;",
            "Ljava/util/List<",
            "Lio/milton/http/Range;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/milton/http/http11/Http11ResponseHandler;",
            ")V"
        }
    .end annotation

    sget-object v0, Lio/milton/http/http11/PartialGetHelper;->log:Lorg/slf4j/Logger;

    const-string v1, "sendPartialContent"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "partial get, single range"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Lio/milton/http/Range;

    move-object v0, p6

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    invoke-interface/range {v0 .. v5}, Lio/milton/http/http11/Http11ResponseHandler;->respondPartialContent(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;Lio/milton/http/Range;)V

    goto :goto_0

    :cond_0
    const-string v1, "partial get, multiple ranges"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    move-object v0, p6

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lio/milton/http/http11/Http11ResponseHandler;->respondPartialContent(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;Ljava/util/List;)V

    :goto_0
    return-void
.end method
