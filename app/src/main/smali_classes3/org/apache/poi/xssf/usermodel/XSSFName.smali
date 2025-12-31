.class public final Lorg/apache/poi/xssf/usermodel/XSSFName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Name;


# static fields
.field public static final BUILTIN_CONSOLIDATE_AREA:Ljava/lang/String; = "_xlnm.Consolidate_Area"

.field public static final BUILTIN_CRITERIA:Ljava/lang/String; = "_xlnm.Criteria:"

.field public static final BUILTIN_DATABASE:Ljava/lang/String; = "_xlnm.Database"

.field public static final BUILTIN_EXTRACT:Ljava/lang/String; = "_xlnm.Extract:"

.field public static final BUILTIN_FILTER_DB:Ljava/lang/String; = "_xlnm._FilterDatabase"

.field public static final BUILTIN_PRINT_AREA:Ljava/lang/String; = "_xlnm.Print_Area"

.field public static final BUILTIN_PRINT_TITLE:Ljava/lang/String; = "_xlnm.Print_Titles"

.field public static final BUILTIN_SHEET_TITLE:Ljava/lang/String; = "_xlnm.Sheet_Title"


# instance fields
.field private _ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

.field private _workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    return-void
.end method

.method private static validateName(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0xff

    .line 12
    .line 13
    const-string v2, "Invalid name: \'"

    .line 14
    .line 15
    if-gt v0, v1, :cond_9

    .line 16
    .line 17
    const-string v0, "R"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_8

    .line 24
    .line 25
    const-string v0, "C"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_8

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, -0x1

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    const-string v3, "_\\"

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eq v1, v4, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string v1, "\': first character must be underscore or a letter"

    .line 57
    .line 58
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    array-length v3, v1

    .line 71
    :goto_1
    if-ge v0, v3, :cond_4

    .line 72
    .line 73
    aget-char v5, v1, v0

    .line 74
    .line 75
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-nez v6, :cond_3

    .line 80
    .line 81
    const-string v6, "_.\\"

    .line 82
    .line 83
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eq v5, v4, :cond_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string v1, "\': name must be letter, digit, period, or underscore"

    .line 93
    .line 94
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    const-string v0, "[A-Za-z]+\\d+"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    const-string v0, "\\d"

    .line 114
    .line 115
    const-string v1, ""

    .line 116
    .line 117
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v3, "[A-Za-z]"

    .line 122
    .line 123
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :try_start_0
    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 128
    .line 129
    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/util/CellReference;->cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v3, "\': cannot be $A$1-style cell reference"

    .line 150
    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :catch_0
    nop

    .line 163
    :cond_6
    :goto_3
    const-string v0, "[Rr]\\d+[Cc]\\d+"

    .line 164
    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_7

    .line 170
    .line 171
    return-void

    .line 172
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    const-string v1, "\': cannot be R1C1-style cell reference"

    .line 175
    .line 176
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 185
    .line 186
    const-string v1, "\': cannot be special shorthand R or C"

    .line 187
    .line 188
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 197
    .line 198
    const-string v1, "\': cannot exceed 255 characters in length"

    .line 199
    .line 200
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v0

    .line 208
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 209
    .line 210
    const-string v0, "Name cannot be blank"

    .line 211
    .line 212
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunction()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getFunction()Z

    move-result v0

    return v0
.end method

.method public getFunctionGroupId()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getFunctionGroupId()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getNameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefersToFormula()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSheetIndex()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDeleted()Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v3

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->doesFormulaReferToDeletedCell([Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v0

    return v0
.end method

.method public isFunctionName()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getFunction()Z

    move-result v0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setComment(Ljava/lang/String;)V

    return-void
.end method

.method public setFunction(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setFunction(Z)V

    return-void
.end method

.method public setFunctionGroupId(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setFunctionGroupId(J)V

    return-void
.end method

.method public setNameName(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->validateName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNames(Ljava/lang/String;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFName;

    .line 33
    .line 34
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ne v4, v1, :cond_0

    .line 39
    .line 40
    if-eq v3, p0, :cond_0

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "The "

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v2, -0x1

    .line 50
    if-ne v1, v2, :cond_1

    .line 51
    .line 52
    const-string v1, "workbook"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string v1, "sheet"

    .line 56
    .line 57
    :goto_0
    const-string v2, " already contains this name: "

    .line 58
    .line 59
    invoke-static {v0, v1, v2, p1}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    .line 70
    .line 71
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setName(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 75
    .line 76
    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->updateName(Lorg/apache/poi/xssf/usermodel/XSSFName;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public setRefersToFormula(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v2

    const/4 v3, -0x1

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method public setSheetIndex(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfSheets()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-lt p1, v1, :cond_3

    .line 11
    .line 12
    if-le p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    if-ne p1, v1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    .line 18
    .line 19
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    .line 26
    .line 27
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->unsetLocalSheetId()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    .line 32
    .line 33
    int-to-long v1, p1

    .line 34
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setLocalSheetId(J)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void

    .line 38
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v3, "Sheet index ("

    .line 41
    .line 42
    const-string v4, ") is out of range"

    .line 43
    .line 44
    invoke-static {p1, v3, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne v0, v1, :cond_4

    .line 49
    .line 50
    const-string v0, ""

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    const-string v1, " (0.."

    .line 54
    .line 55
    const-string v3, ")"

    .line 56
    .line 57
    invoke-static {v0, v1, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v2
.end method
