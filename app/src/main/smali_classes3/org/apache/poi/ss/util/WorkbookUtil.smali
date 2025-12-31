.class public Lorg/apache/poi/ss/util/WorkbookUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createSafeSheetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lorg/apache/poi/ss/util/WorkbookUtil;->createSafeSheetName(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final createSafeSheetName(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4

    .line 2
    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const-string p0, "empty"

    return-object p0

    :cond_1
    const/16 v0, 0x1f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    if-eqz p0, :cond_3

    const/4 v3, 0x3

    if-eq p0, v3, :cond_3

    const/16 v3, 0x27

    if-eq p0, v3, :cond_2

    const/16 v3, 0x2a

    if-eq p0, v3, :cond_3

    const/16 v3, 0x2f

    if-eq p0, v3, :cond_3

    const/16 v3, 0x3a

    if-eq p0, v3, :cond_3

    const/16 v3, 0x3f

    if-eq p0, v3, :cond_3

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 p0, v0, -0x1

    if-ne v1, p0, :cond_4

    :cond_3
    :pswitch_0
    invoke-virtual {v2, v1, p1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static validateSheetName(Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_3

    .line 9
    .line 10
    const/16 v2, 0x1f

    .line 11
    .line 12
    if-gt v0, v2, :cond_3

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/16 v5, 0x2a

    .line 23
    .line 24
    if-eq v4, v5, :cond_0

    .line 25
    .line 26
    const/16 v5, 0x2f

    .line 27
    .line 28
    if-eq v4, v5, :cond_0

    .line 29
    .line 30
    const/16 v5, 0x3a

    .line 31
    .line 32
    if-eq v4, v5, :cond_0

    .line 33
    .line 34
    const/16 v5, 0x3f

    .line 35
    .line 36
    if-eq v4, v5, :cond_0

    .line 37
    .line 38
    packed-switch v4, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "Invalid char ("

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ") found at index ("

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ") in sheet name \'"

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, "\'"

    .line 70
    .line 71
    invoke-static {p0, v2, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/16 v3, 0x27

    .line 84
    .line 85
    if-eq v2, v3, :cond_2

    .line 86
    .line 87
    sub-int/2addr v0, v1

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eq v0, v3, :cond_2

    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string v1, "Invalid sheet name \'"

    .line 98
    .line 99
    const-string v2, "\'. Sheet names must not begin or end with (\')."

    .line 100
    .line 101
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    const-string v1, "sheetName \'"

    .line 112
    .line 113
    const-string v2, "\' is invalid - character count MUST be greater than or equal to 1 and less than or equal to 31"

    .line 114
    .line 115
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string v0, "sheetName must not be null"

    .line 126
    .line 127
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static validateSheetState(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Invalid sheet state : "

    .line 13
    .line 14
    const-string v2, "\nSheet state must be one of the Workbook.SHEET_STATE_* constants"

    .line 15
    .line 16
    invoke-static {p0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_0
    return-void
.end method
