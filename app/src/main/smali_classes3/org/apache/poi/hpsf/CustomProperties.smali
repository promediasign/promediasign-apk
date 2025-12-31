.class public Lorg/apache/poi/hpsf/CustomProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private codepage:I

.field private final dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isPure:Z

.field private final props:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/hpsf/CustomProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/CustomProperties;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/CustomProperties;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->codepage:I

    return-void
.end method

.method private checkCodePage(Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperties;->getCodepage()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, -0x1

    .line 8
    if-ne v2, v3, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x4e4

    .line 11
    .line 12
    :cond_0
    const/16 v3, 0x4b0

    .line 13
    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :try_start_0
    invoke-static {v2, v1}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    sget-object v4, Lorg/apache/poi/hpsf/CustomProperties;->LOG:Lorg/apache/poi/util/POILogger;

    .line 23
    .line 24
    const-string v5, "Codepage \'"

    .line 25
    .line 26
    const-string v6, "\' can\'t be found."

    .line 27
    .line 28
    invoke-static {v2, v5, v6}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-array v5, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v2, v5, v1

    .line 35
    .line 36
    const/4 v2, 0x7

    .line 37
    invoke-virtual {v4, v2, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    sget-object v4, Lorg/apache/poi/hpsf/CustomProperties;->LOG:Lorg/apache/poi/util/POILogger;

    .line 64
    .line 65
    const-string v5, "Charset \'"

    .line 66
    .line 67
    const-string v6, "\' can\'t encode \'"

    .line 68
    .line 69
    const-string v7, "\' - switching to unicode."

    .line 70
    .line 71
    invoke-static {v5, v2, v6, p1, v7}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-array v2, v0, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object p1, v2, v1

    .line 78
    .line 79
    invoke-virtual {v4, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v3}, Lorg/apache/poi/hpsf/CustomProperties;->setCodepage(I)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;
    .locals 5

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/hpsf/Property;->setID(J)V

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->lastKey()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_2
    const-wide/16 v3, 0x1f

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_1

    :goto_3
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/hpsf/CustomProperty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hpsf/CustomProperties;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    check-cast p1, Lorg/apache/poi/hpsf/CustomProperties;

    iget-object p1, p1, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hpsf/CustomProperty;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCodepage()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->codepage:I

    return v0
.end method

.method public getDictionary()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public idSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isPure()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public nameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public properties()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/CustomProperty;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/16 v0, 0x14

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/16 v0, 0xb

    goto :goto_0

    :cond_6
    instance-of v0, p2, Ljava/math/BigInteger;

    const/16 v1, 0x40

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-gt v2, v1, :cond_7

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_7

    const/16 v0, 0x15

    goto :goto_0

    :cond_7
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_8

    const/16 v0, 0x40

    :goto_0
    new-instance v7, Lorg/apache/poi/hpsf/MutableProperty;

    const-wide/16 v2, -0x1

    int-to-long v4, v0

    move-object v1, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(JJLjava/lang/Object;)V

    new-instance p2, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-direct {p2, v7, p1}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/apache/poi/hpsf/CustomProperties;->put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unsupported datatype - currently String,Short,Integer,Long,Float,Double,Boolean,BigInteger(unsigned long),Date can be processed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/CustomProperties;->checkCodePage(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {p2}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    iget-object p1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hpsf/CustomProperty;

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \"name\" ("

    const-string v2, ") and custom property\'s name ("

    .line 4
    invoke-static {v1, p1, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") do not match."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/CustomProperties;->remove(Ljava/lang/Object;)Lorg/apache/poi/hpsf/CustomProperty;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lorg/apache/poi/hpsf/CustomProperty;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hpsf/CustomProperty;

    return-object p1
.end method

.method public setCodepage(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hpsf/CustomProperties;->codepage:I

    return-void
.end method

.method public setPure(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
