.class public Lch/qos/logback/core/pattern/FormatInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private leftPad:Z

.field private leftTruncate:Z

.field private max:I

.field private min:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    const v0, 0x7fffffff

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    iput p2, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    iput p2, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    iput-boolean p3, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    iput-boolean p4, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/pattern/FormatInfo;
    .locals 5

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    new-instance v0, Lch/qos/logback/core/pattern/FormatInfo;

    .line 4
    .line 5
    invoke-direct {v0}, Lch/qos/logback/core/pattern/FormatInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x2e

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eq v1, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    move-object v1, p0

    .line 35
    move-object p0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string v1, "Formatting string ["

    .line 40
    .line 41
    const-string v2, "] should not end with \'.\'"

    .line 42
    .line 43
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    :goto_0
    if-eqz p0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-lez v2, :cond_3

    .line 59
    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-ltz p0, :cond_2

    .line 65
    .line 66
    iput p0, v0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    neg-int p0, p0

    .line 70
    iput p0, v0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    .line 71
    .line 72
    iput-boolean v3, v0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    .line 73
    .line 74
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-lez p0, :cond_5

    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-ltz p0, :cond_4

    .line 87
    .line 88
    iput p0, v0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    neg-int p0, p0

    .line 92
    iput p0, v0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    .line 93
    .line 94
    iput-boolean v3, v0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    .line 95
    .line 96
    :cond_5
    :goto_2
    return-object v0

    .line 97
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    .line 98
    .line 99
    const-string v0, "Argument cannot be null"

    .line 100
    .line 101
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lch/qos/logback/core/pattern/FormatInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lch/qos/logback/core/pattern/FormatInfo;

    iget v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    iget v3, p1, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    iget v3, p1, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    iget-boolean v3, p1, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    iget-boolean p1, p1, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeftPad()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    return v0
.end method

.method public isLeftTruncate()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    return v0
.end method

.method public setLeftPad(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    return-void
.end method

.method public setLeftTruncate(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    return-void
.end method

.method public setMin(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FormatInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
