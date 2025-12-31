.class public abstract Lorg/apache/poi/ss/format/CellFormatCondition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TESTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "<"

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const-string v4, "<="

    .line 13
    .line 14
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    const-string v2, ">"

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    const-string v4, ">="

    .line 22
    .line 23
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "="

    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string v2, "=="

    .line 37
    .line 38
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "!="

    .line 47
    .line 48
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string v2, "<>"

    .line 52
    .line 53
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatCondition;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    if-eq v0, p1, :cond_4

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    if-eq v0, p1, :cond_3

    .line 30
    .line 31
    const/4 p1, 0x3

    .line 32
    if-eq v0, p1, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x4

    .line 35
    if-eq v0, p1, :cond_1

    .line 36
    .line 37
    const/4 p1, 0x5

    .line 38
    if-ne v0, p1, :cond_0

    .line 39
    .line 40
    new-instance p0, Lorg/apache/poi/ss/format/CellFormatCondition$6;

    .line 41
    .line 42
    invoke-direct {p0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$6;-><init>(D)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Cannot create for test number "

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, "(\""

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "\")"

    .line 67
    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_1
    new-instance p0, Lorg/apache/poi/ss/format/CellFormatCondition$5;

    .line 80
    .line 81
    invoke-direct {p0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$5;-><init>(D)V

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_2
    new-instance p0, Lorg/apache/poi/ss/format/CellFormatCondition$4;

    .line 86
    .line 87
    invoke-direct {p0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$4;-><init>(D)V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_3
    new-instance p0, Lorg/apache/poi/ss/format/CellFormatCondition$3;

    .line 92
    .line 93
    invoke-direct {p0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$3;-><init>(D)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_4
    new-instance p0, Lorg/apache/poi/ss/format/CellFormatCondition$2;

    .line 98
    .line 99
    invoke-direct {p0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$2;-><init>(D)V

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :cond_5
    new-instance p0, Lorg/apache/poi/ss/format/CellFormatCondition$1;

    .line 104
    .line 105
    invoke-direct {p0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$1;-><init>(D)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    const-string v0, "Unknown test: "

    .line 112
    .line 113
    invoke-static {v0, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method


# virtual methods
.method public abstract pass(D)Z
.end method
