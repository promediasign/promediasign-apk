.class public Lio/milton/http/http11/MultipleRangeWritingOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private currentByte:I

.field private currentRange:Lio/milton/http/Range;

.field private currentRangeNum:I

.field private final out:Ljava/io/OutputStream;

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/Range;",
            ">;"
        }
    .end annotation
.end field

.field private final totalResourceLength:J


# direct methods
.method public constructor <init>(JLjava/io/OutputStream;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Lio/milton/http/Range;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p3, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->out:Ljava/io/OutputStream;

    iput-object p4, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->ranges:Ljava/util/List;

    iput-object p5, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->boundary:Ljava/lang/String;

    iput-object p6, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->contentType:Ljava/lang/String;

    iput-wide p1, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->totalResourceLength:J

    return-void
.end method

.method private getCurrentRange()Lio/milton/http/Range;
    .locals 4

    iget-object v0, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->currentRange:Lio/milton/http/Range;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->isValid(Lio/milton/http/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->currentRange:Lio/milton/http/Range;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->currentRange:Lio/milton/http/Range;

    :cond_1
    iget v1, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->currentRangeNum:I

    iget-object v2, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->ranges:Ljava/util/List;

    iget v2, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->currentRangeNum:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->currentRangeNum:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/Range;

    invoke-direct {p0, v1}, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->isValid(Lio/milton/http/Range;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->writeRangeHeader(Lio/milton/http/Range;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method private isValid(Lio/milton/http/Range;)Z
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lio/milton/http/Range;->getStart()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/milton/http/Range;->getStart()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->currentByte:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    :cond_0
    invoke-virtual {p1}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget p1, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->currentByte:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private writeRangeHeader(Lio/milton/http/Range;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "--"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->boundary:Ljava/lang/String;

    .line 11
    .line 12
    const-string v3, "\n"

    .line 13
    .line 14
    invoke-static {v2, v3, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lio/milton/common/Utils;->UTF8:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->contentType:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->out:Ljava/io/OutputStream;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v4, "Content-Type: "

    .line 36
    .line 37
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->contentType:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v0, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->out:Ljava/io/OutputStream;

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v4, "Content-Range: "

    .line 64
    .line 65
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget v4, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->currentByte:I

    .line 69
    .line 70
    int-to-long v4, v4

    .line 71
    invoke-virtual {p1}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    iget-wide v8, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->totalResourceLength:J

    .line 80
    .line 81
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v4, v5, v6, v7, p1}, Lio/milton/common/RangeUtils;->toRangeString(JJLjava/lang/Long;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 104
    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    invoke-direct {p0}, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->getCurrentRange()Lio/milton/http/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    iget p1, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->currentByte:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/milton/http/http11/MultipleRangeWritingOutputStream;->currentByte:I

    return-void
.end method
