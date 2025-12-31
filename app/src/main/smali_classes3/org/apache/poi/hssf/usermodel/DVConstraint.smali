.class public Lorg/apache/poi/hssf/usermodel/DVConstraint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidationConstraint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;,
        Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;
    }
.end annotation


# instance fields
.field private _explicitListValues:[Ljava/lang/String;

.field private _formula1:Ljava/lang/String;

.field private _formula2:Ljava/lang/String;

.field private _operator:I

.field private final _validationType:I

.field private _value1:Ljava/lang/Double;

.field private _value2:Ljava/lang/Double;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_validationType:I

    iput p2, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_operator:I

    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula2:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value1:Ljava/lang/Double;

    iput-object p6, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value2:Ljava/lang/Double;

    if-nez p7, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p7}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .line 2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    return-void
.end method

.method private static convertDate(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/lang/Double;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseYYYYMMDDDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Ljava/lang/Double;

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse date \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' using specified format \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static convertDoubleFormula(Ljava/lang/String;Ljava/lang/Double;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    const/4 p1, 0x1

    new-array p1, p1, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result p2

    invoke-static {p0, p1, v0, p2}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Both formula and value cannot be present"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static convertNumber(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Double;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    const-string v1, "The supplied text \'"

    .line 14
    .line 15
    const-string v2, "\' could not be parsed as a number"

    .line 16
    .line 17
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method private static convertTime(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/Double;

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->convertTime(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static createCustomFormulaConstraint(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 9

    if-eqz p0, :cond_0

    new-instance v8, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    return-object v8

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "formula must be supplied"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createDVConstraint(Lorg/apache/poi/hssf/record/DVRecord;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getDataType()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "validationType="

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getDataType()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->string()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createCustomFormulaConstraint(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getListExplicitFormula()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->string()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "\""

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v3, 0x1

    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-static {v0, v3, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :cond_1
    const-string v1, "\u0000"

    .line 94
    .line 95
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createExplicitListConstraint([Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->string()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createFormulaListConstraint(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getFormula2()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v2, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v10, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    .line 142
    .line 143
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getDataType()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getConditionOperator()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->formula()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->formula()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->value()Ljava/lang/Double;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->value()Ljava/lang/Double;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    const/4 v9, 0x0

    .line 168
    move-object v2, v10

    .line 169
    invoke-direct/range {v2 .. v9}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-object v10

    .line 173
    :pswitch_3
    new-instance v0, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/record/DVRecord;->getConditionOperator()I

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    const/16 v17, 0x0

    .line 180
    .line 181
    const/16 v18, 0x0

    .line 182
    .line 183
    const/4 v12, 0x0

    .line 184
    const/4 v14, 0x0

    .line 185
    const/4 v15, 0x0

    .line 186
    const/16 v16, 0x0

    .line 187
    .line 188
    move-object v11, v0

    .line 189
    invoke-direct/range {v11 .. v18}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return-object v0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static createDateConstraint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 10

    if-eqz p1, :cond_3

    invoke-static {p0, p2}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint$OperatorType;->validateSecondArg(ILjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {p1, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertDate(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/lang/Double;

    move-result-object p1

    move-object v7, p1

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    invoke-static {p2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {p2, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertDate(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/lang/Double;

    move-result-object v0

    :cond_2
    move-object v8, v0

    new-instance p1, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v3, 0x4

    const/4 v9, 0x0

    move-object v2, p1

    move v4, p0

    invoke-direct/range {v2 .. v9}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "expr1 must be supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createExplicitListConstraint([Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFormulaListConstraint(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private createListFormula(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->DATAVALIDATION_LIST:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result p1

    invoke-static {v1, v0, v2, p1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-lez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v2, v0

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    new-array p1, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    aput-object v2, p1, v1

    return-object p1
.end method

.method public static createNumericConstraint(IILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 8

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p2, "Validation Type ("

    .line 16
    .line 17
    const-string p3, ") not supported with this method"

    .line 18
    .line 19
    invoke-static {p0, p2, p3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 28
    .line 29
    invoke-static {p1, p3}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint$OperatorType;->validateSecondArg(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p1, "expr1 must be supplied"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_3
    if-nez p2, :cond_6

    .line 42
    .line 43
    if-nez p3, :cond_6

    .line 44
    .line 45
    :goto_1
    invoke-static {p2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v0, 0x0

    .line 50
    if-nez v3, :cond_4

    .line 51
    .line 52
    invoke-static {p2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertNumber(Ljava/lang/String;)Ljava/lang/Double;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    move-object v5, p2

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    move-object v5, v0

    .line 59
    :goto_2
    invoke-static {p3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-nez v4, :cond_5

    .line 64
    .line 65
    invoke-static {p3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertNumber(Ljava/lang/String;)Ljava/lang/Double;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    move-object v6, p2

    .line 70
    goto :goto_3

    .line 71
    :cond_5
    move-object v6, v0

    .line 72
    :goto_3
    new-instance p2, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    move-object v0, p2

    .line 76
    move v1, p0

    .line 77
    move v2, p1

    .line 78
    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object p2

    .line 82
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p1, "expr1 and expr2 must be null for validation type \'any\'"

    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public static createTimeConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 8

    if-eqz p1, :cond_2

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint$OperatorType;->validateSecondArg(ILjava/lang/String;)V

    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v3, :cond_0

    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertTime(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    invoke-static {p2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {p2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertTime(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    move-object v6, p1

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    new-instance p1, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    const/4 v1, 0x5

    const/4 v7, 0x0

    move-object v0, p1

    move v2, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/hssf/usermodel/DVConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;[Ljava/lang/String;)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "expr1 must be supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getFormulaFromTextExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty string is not a valid formula/value expression"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;-><init>(Lorg/apache/poi/hssf/usermodel/DVConstraint$1;)V

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    invoke-static {p1, p0}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p1

    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-ne p0, v1, :cond_0

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->access$102(Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->access$202(Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public createFormulas(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->isListValidationType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createListFormula(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value1:Ljava/lang/Double;

    invoke-static {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertDoubleFormula(Ljava/lang/String;Ljava/lang/Double;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula2:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value2:Ljava/lang/Double;

    invoke-static {v1, v2, p1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->convertDoubleFormula(Ljava/lang/String;Ljava/lang/Double;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_0
    new-instance v1, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;-><init>([Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v1
.end method

.method public getExplicitListValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    return-object v0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula2:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_operator:I

    return v0
.end method

.method public getValidationType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_validationType:I

    return v0
.end method

.method public getValue1()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value1:Ljava/lang/Double;

    return-object v0
.end method

.method public getValue2()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value2:Ljava/lang/Double;

    return-object v0
.end method

.method public isExplicitList()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_validationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isListValidationType()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_validationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setExplicitListValues([Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_validationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot setExplicitListValues on non-list constraint"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFormula1(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value1:Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_explicitListValues:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    return-void
.end method

.method public setFormula2(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value2:Ljava/lang/Double;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula2:Ljava/lang/String;

    return-void
.end method

.method public setOperator(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_operator:I

    return-void
.end method

.method public setValue1(D)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula1:Ljava/lang/String;

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value1:Ljava/lang/Double;

    return-void
.end method

.method public setValue2(D)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_formula2:Ljava/lang/String;

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint;->_value2:Ljava/lang/Double;

    return-void
.end method
