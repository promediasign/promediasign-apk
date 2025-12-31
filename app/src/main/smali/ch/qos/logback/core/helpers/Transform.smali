.class public Lch/qos/logback/core/helpers/Transform;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CDATA_EMBEDED_END:Ljava/lang/String; = "]]>]]&gt;<![CDATA["

.field private static final CDATA_END:Ljava/lang/String; = "]]>"

.field private static final CDATA_END_LEN:I = 0x3

.field private static final CDATA_PSEUDO_END:Ljava/lang/String; = "]]&gt;"

.field private static final CDATA_START:Ljava/lang/String; = "<![CDATA["

.field private static final UNSAFE_XML_CHARS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\u0000-\u0008\u000b\u000c\u000e-\u001f<>&\'\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/qos/logback/core/helpers/Transform;->UNSAFE_XML_CHARS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendEscapingCDATA(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "]]>"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-gez v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    :goto_0
    const/4 v3, -0x1

    .line 18
    if-le v1, v3, :cond_3

    .line 19
    .line 20
    const-string v3, "]]>]]&gt;<![CDATA["

    .line 21
    .line 22
    invoke-static {p1, v2, v1, p0, v3}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget v2, Lch/qos/logback/core/helpers/Transform;->CDATA_END_LEN:I

    .line 26
    .line 27
    add-int/2addr v2, v1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ge v2, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void

    .line 40
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static escapeTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lch/qos/logback/core/helpers/Transform;->UNSAFE_XML_CHARS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static escapeTags(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3

    .line 2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_5

    const/16 v2, 0xa

    if-eq v1, v2, :cond_5

    const/16 v2, 0xd

    if-eq v1, v2, :cond_5

    const/16 v2, 0x22

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x26

    if-eq v1, v2, :cond_1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_5

    add-int/lit8 v1, v0, 0x1

    const-string v2, "\ufffd"

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v0, 0x1

    const-string v2, "&#39;"

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    const-string v2, "&amp;"

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, 0x1

    const-string v2, "&gt;"

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x1

    const-string v2, "&lt;"

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v0, 0x1

    const-string v2, "&quot;"

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
