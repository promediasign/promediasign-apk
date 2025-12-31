.class public Lch/qos/logback/core/pattern/util/RegularEscapeUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/qos/logback/core/pattern/util/IEscapeUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static basicEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x6e

    if-ne v4, v3, :cond_0

    const/16 v4, 0xa

    goto :goto_1

    :cond_0
    const/16 v3, 0x72

    if-ne v4, v3, :cond_1

    const/16 v4, 0xd

    goto :goto_1

    :cond_1
    const/16 v3, 0x74

    if-ne v4, v3, :cond_2

    const/16 v4, 0x9

    goto :goto_1

    :cond_2
    const/16 v3, 0x66

    if-ne v4, v3, :cond_4

    const/16 v4, 0xc

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public escape(Ljava/lang/String;Ljava/lang/StringBuffer;CI)V
    .locals 2

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/16 v0, 0x5c

    .line 12
    .line 13
    if-eq p3, v0, :cond_4

    .line 14
    .line 15
    const/16 v0, 0x5f

    .line 16
    .line 17
    if-eq p3, v0, :cond_5

    .line 18
    .line 19
    const/16 v0, 0x6e

    .line 20
    .line 21
    if-eq p3, v0, :cond_3

    .line 22
    .line 23
    const/16 v0, 0x72

    .line 24
    .line 25
    if-eq p3, v0, :cond_2

    .line 26
    .line 27
    const/16 v0, 0x74

    .line 28
    .line 29
    if-ne p3, v0, :cond_1

    .line 30
    .line 31
    const/16 p1, 0x9

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0, p1}, Lch/qos/logback/core/pattern/util/RegularEscapeUtil;->formatEscapeCharsForListing(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "Illegal char \'"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p3, " at column "

    .line 54
    .line 55
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p3, ". Only \\\\, \\_"

    .line 62
    .line 63
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p3, ", \\t, \\n, \\r combinations are allowed as escape characters."

    .line 67
    .line 68
    invoke-static {p1, p3, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p2

    .line 76
    :cond_2
    const/16 p1, 0xd

    .line 77
    .line 78
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/16 p1, 0xa

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_1
    return-void
.end method

.method public formatEscapeCharsForListing(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, ", \\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
