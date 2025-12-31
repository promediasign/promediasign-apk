.class public final Lorg/apache/poi/openxml4j/opc/internal/ContentType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final patternParams:Ljava/util/regex/Pattern;

.field private static final patternTypeSubType:Ljava/util/regex/Pattern;

.field private static final patternTypeSubTypeParams:Ljava/util/regex/Pattern;


# instance fields
.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final subType:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^([\\x21-\\x7E&&[^\\(\\)<>@,;:\\\\/\"\\[\\]\\?={}\\x20\\x09]]+)/([\\x21-\\x7E&&[^\\(\\)<>@,;:\\\\/\"\\[\\]\\?={}\\x20\\x09]]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternTypeSubType:Ljava/util/regex/Pattern;

    const-string v0, "^([\\x21-\\x7E&&[^\\(\\)<>@,;:\\\\/\"\\[\\]\\?={}\\x20\\x09]]+)/([\\x21-\\x7E&&[^\\(\\)<>@,;:\\\\/\"\\[\\]\\?={}\\x20\\x09]]+)(;([\\x21-\\x7E&&[^\\(\\)<>@,;:\\\\/\"\\[\\]\\?={}\\x20\\x09]]+)=(\"?[\\x21-\\x7E&&[^\\(\\)<>@,;:\\\\/\"\\[\\]\\?={}\\x20\\x09]]+\"?))*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternTypeSubTypeParams:Ljava/util/regex/Pattern;

    const-string v0, ";([\\x21-\\x7E&&[^\\(\\)<>@,;:\\\\/\"\\[\\]\\?={}\\x20\\x09]]+)=(\"?[\\x21-\\x7E&&[^\\(\\)<>@,;:\\\\/\"\\[\\]\\?={}\\x20\\x09]]+\"?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternParams:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternTypeSubType:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternTypeSubTypeParams:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x2

    .line 33
    if-lt v1, v2, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iput-object v3, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->type:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iput-object v3, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->subType:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v3, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v3, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x5

    .line 60
    if-lt v3, v4, :cond_2

    .line 61
    .line 62
    sget-object v3, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternParams:Ljava/util/regex/Pattern;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->end(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const-string p1, ""

    .line 97
    .line 98
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->type:Ljava/lang/String;

    .line 99
    .line 100
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->subType:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    .line 107
    .line 108
    :cond_2
    return-void

    .line 109
    :cond_3
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    .line 110
    .line 111
    const-string v1, "The specified content type \'"

    .line 112
    .line 113
    const-string v2, "\' is not compliant with RFC 2616: malformed content type."

    .line 114
    .line 115
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {v0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getParameterKeys()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hasParameters()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Z)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
