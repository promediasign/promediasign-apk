.class public Lch/qos/logback/core/util/FileSize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOUBLE_GROUP:I = 0x1

.field private static final FILE_SIZE_PATTERN:Ljava/util/regex/Pattern;

.field public static final GB_COEFFICIENT:J = 0x40000000L

.field public static final KB_COEFFICIENT:J = 0x400L

.field private static final LENGTH_PART:Ljava/lang/String; = "([0-9]+)"

.field public static final MB_COEFFICIENT:J = 0x100000L

.field private static final UNIT_GROUP:I = 0x2

.field private static final UNIT_PART:Ljava/lang/String; = "(|kb|mb|gb)s?"


# instance fields
.field final size:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "([0-9]+)\\s*(|kb|mb|gb)s?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/qos/logback/core/util/FileSize;->FILE_SIZE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lch/qos/logback/core/util/FileSize;->size:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/util/FileSize;
    .locals 5

    .line 1
    sget-object v0, Lch/qos/logback/core/util/FileSize;->FILE_SIZE_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    const-string p0, ""

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    const-wide/16 v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p0, "kb"

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    const-wide/16 v3, 0x400

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string p0, "mb"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    const-wide/32 v3, 0x100000

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string p0, "gb"

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    const-wide/32 v3, 0x40000000

    .line 74
    .line 75
    .line 76
    :goto_0
    new-instance p0, Lch/qos/logback/core/util/FileSize;

    .line 77
    .line 78
    mul-long v1, v1, v3

    .line 79
    .line 80
    invoke-direct {p0, v1, v2}, Lch/qos/logback/core/util/FileSize;-><init>(J)V

    .line 81
    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string v1, "Unexpected "

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    const-string v1, "String value ["

    .line 99
    .line 100
    const-string v2, "] is not in the expected format."

    .line 101
    .line 102
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0
.end method


# virtual methods
.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lch/qos/logback/core/util/FileSize;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-wide v0, p0, Lch/qos/logback/core/util/FileSize;->size:J

    .line 2
    .line 3
    const-wide/16 v2, 0x400

    .line 4
    .line 5
    div-long v2, v0, v2

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    if-nez v6, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lch/qos/logback/core/util/FileSize;->size:J

    .line 19
    .line 20
    const-string v3, " Bytes"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    const-wide/32 v6, 0x100000

    .line 28
    .line 29
    .line 30
    div-long v6, v0, v6

    .line 31
    .line 32
    cmp-long v8, v6, v4

    .line 33
    .line 34
    if-nez v8, :cond_1

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, " KB"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_1
    const-wide/32 v2, 0x40000000

    .line 55
    .line 56
    .line 57
    div-long/2addr v0, v2

    .line 58
    cmp-long v2, v0, v4

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, " MB"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, " GB"

    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method
