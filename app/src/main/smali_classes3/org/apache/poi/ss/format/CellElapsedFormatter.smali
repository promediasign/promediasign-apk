.class public Lorg/apache/poi/ss/format/CellElapsedFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;,
        Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    }
.end annotation


# static fields
.field private static final PERCENTS:Ljava/util/regex/Pattern;


# instance fields
.field private final printfFmt:Ljava/lang/String;

.field private final specs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;",
            ">;"
        }
    .end annotation
.end field

.field private topmost:Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "%"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->PERCENTS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    .line 10
    .line 11
    sget-object v1, Lorg/apache/poi/ss/format/CellFormatType;->ELAPSED:Lorg/apache/poi/ss/format/CellFormatType;

    .line 12
    .line 13
    new-instance v2, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, p0, v3}, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;-><init>(Lorg/apache/poi/ss/format/CellElapsedFormatter;Lorg/apache/poi/ss/format/CellElapsedFormatter$1;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    .line 42
    .line 43
    iget v2, v1, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->pos:I

    .line 44
    .line 45
    iget v3, v1, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->len:I

    .line 46
    .line 47
    add-int/2addr v3, v2

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v5, "%0"

    .line 51
    .line 52
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v5, v1, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->len:I

    .line 56
    .line 57
    const-string v6, "d"

    .line 58
    .line 59
    invoke-static {v6, v5, v4}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {p1, v2, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    iget-char v2, v1, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->type:C

    .line 67
    .line 68
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->topmost:Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    .line 69
    .line 70
    iget-char v3, v3, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->type:C

    .line 71
    .line 72
    if-eq v2, v3, :cond_0

    .line 73
    .line 74
    iget v3, v1, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->len:I

    .line 75
    .line 76
    invoke-static {v2, v3}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->modFor(CI)D

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    iput-wide v2, v1, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->modBy:D

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->printfFmt:Ljava/lang/String;

    .line 88
    .line 89
    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/ss/format/CellElapsedFormatter;)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->topmost:Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/apache/poi/ss/format/CellElapsedFormatter;Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->topmost:Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    return-object p1
.end method

.method public static synthetic access$100(Lorg/apache/poi/ss/format/CellElapsedFormatter;CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->assignSpec(CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->PERCENTS:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private assignSpec(CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    .locals 7

    new-instance v6, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    invoke-static {p1, p3}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->factorFor(CI)D

    move-result-wide v4

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;-><init>(CIID)V

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method private static factorFor(CI)D
    .locals 5

    const/16 v0, 0x30

    const-wide v1, 0x3ee845c8a0ce5129L    # 1.1574074074074073E-5

    if-eq p0, v0, :cond_3

    const/16 p1, 0x68

    if-eq p0, p1, :cond_2

    const/16 p1, 0x6d

    if-eq p0, p1, :cond_1

    const/16 p1, 0x73

    if-ne p0, p1, :cond_0

    return-wide v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Uknown elapsed time spec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide p0, 0x3f46c16c16c16c16L    # 6.944444444444444E-4

    return-wide p0

    :cond_2
    const-wide p0, 0x3fa5555555555555L    # 0.041666666666666664

    return-wide p0

    :cond_3
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    int-to-double p0, p1

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    div-double/2addr v1, p0

    return-wide v1
.end method

.method private static modFor(CI)D
    .locals 2

    const/16 v0, 0x30

    if-eq p0, v0, :cond_3

    const/16 p1, 0x68

    if-eq p0, p1, :cond_2

    const/16 p1, 0x6d

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    if-eq p0, p1, :cond_1

    const/16 p1, 0x73

    if-ne p0, p1, :cond_0

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Uknown elapsed time spec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide v0

    :cond_2
    const-wide/high16 p0, 0x4038000000000000L    # 24.0

    return-wide p0

    :cond_3
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    const/16 p2, 0x2d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-double v0, v0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    invoke-virtual {v3, v0, v1}, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->valueFor(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    :try_start_0
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->printfFmt:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    throw p1
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method
