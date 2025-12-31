.class public Lio/milton/http/http11/MatchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final eTagGenerator:Lio/milton/http/http11/ETagGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/MatchHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/MatchHelper;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/http11/ETagGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/MatchHelper;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    return-void
.end method

.method private _checkIfMatch(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/lang/Boolean;
    .locals 2

    invoke-interface {p2}, Lio/milton/http/Request;->getIfMatchHeader()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    iget-object v0, p0, Lio/milton/http/http11/MatchHelper;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    invoke-interface {v0, p1}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lio/milton/http/http11/MatchHelper;->splitToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/milton/http/http11/MatchHelper;->cleanUp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    sget-object p1, Lio/milton/http/http11/MatchHelper;->log:Lorg/slf4j/Logger;

    const-string p2, "Did not find matching etag"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_6
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private checkIfMatch(Lio/milton/resource/Resource;Ljava/lang/String;)Z
    .locals 2

    .line 2
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lio/milton/http/http11/MatchHelper;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    invoke-interface {v1, p1}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lio/milton/http/http11/MatchHelper;->cleanUp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "*"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method private cleanUp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&quot;"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\"\""

    const-string v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private splitToList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public checkIfMatch(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lio/milton/http/Request;->getIfMatchHeader()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/milton/http/http11/MatchHelper;->_checkIfMatch(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    invoke-interface {p2}, Lio/milton/http/Request;->getIfHeader()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    return v0

    :cond_3
    const-string v1, ".*\\[\"(.*)\"\\]\\)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/milton/http/http11/MatchHelper;->checkIfMatch(Lio/milton/resource/Resource;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkIfNoneMatch(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 3

    invoke-interface {p2}, Lio/milton/http/Request;->getIfNoneMatchHeader()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string v1, "*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz p1, :cond_2

    sget-object p2, Lio/milton/http/http11/MatchHelper;->log:Lorg/slf4j/Logger;

    const-string v0, "if-none-match header is star, and a resource exists, so check has failed: resource name={}"

    invoke-interface {p1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_2
    return v0

    :cond_3
    iget-object v1, p0, Lio/milton/http/http11/MatchHelper;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    invoke-interface {v1, p1}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lio/milton/http/http11/MatchHelper;->log:Lorg/slf4j/Logger;

    const-string p2, "Null etag for resource, so pass if-none-match test"

    :goto_0
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v0

    :cond_4
    invoke-direct {p0, p2}, Lio/milton/http/http11/MatchHelper;->splitToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_6
    sget-object p1, Lio/milton/http/http11/MatchHelper;->log:Lorg/slf4j/Logger;

    const-string p2, "None of the provided etags match, so if-none-match test passes"

    goto :goto_0
.end method

.method public checkIfRange(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 3

    invoke-interface {p2}, Lio/milton/http/Request;->getIfRangeHeader()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lio/milton/http/http11/MatchHelper;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    invoke-interface {v1, p1}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "*"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    return v0
.end method
