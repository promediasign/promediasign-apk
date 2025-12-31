.class public final Lorg/apache/poi/hssf/usermodel/HSSFName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Name;


# instance fields
.field private _book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

.field private _commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

.field private _definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

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
    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

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
    const-string v1, "\': cannot be $A$1-style cell reference"

    .line 139
    .line 140
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_6
    :goto_3
    const-string v0, "[Rr]\\d+[Cc]\\d+"

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_7

    .line 155
    .line 156
    return-void

    .line 157
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    const-string v1, "\': cannot be R1C1-style cell reference"

    .line 160
    .line 161
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    const-string v1, "\': cannot be special shorthand R or C"

    .line 172
    .line 173
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0

    .line 181
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 182
    .line 183
    const-string v1, "\': cannot exceed 255 characters in length"

    .line 184
    .line 185
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    const-string v0, "Name cannot be blank"

    .line 196
    .line 197
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p0
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getCommentText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getCommentText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getCommentText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefersToFormula()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->isFunctionName()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only applicable to named ranges"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSheetIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getExternSheetNumber()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetFirstNameFromExternSheet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->doesFormulaReferToDeletedCell([Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v0

    return v0
.end method

.method public isFunctionName()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->isFunctionName()Z

    move-result v0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setDescriptionText(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameCommentRecord;->setCommentText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFunction(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setFunction(Z)V

    return-void
.end method

.method public setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-void
.end method

.method public setNameName(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFName;->validateName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setNameText(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    :goto_0
    if-ltz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    .line 34
    .line 35
    if-eq v3, v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ne v1, v3, :cond_1

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "The "

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    const-string v1, "workbook"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    const-string v1, "sheet"

    .line 66
    .line 67
    :goto_1
    const-string v2, " already contains this name: "

    .line 68
    .line 69
    invoke-static {v0, v1, v2, p1}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, "(2)"

    .line 84
    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setNameText(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameCommentRecord;->setNameText(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 112
    .line 113
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateNameCommentRecordCache(Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    return-void
.end method

.method public setRefersToFormula(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getSheetIndex()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-void
.end method

.method public setSheetIndex(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

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
    if-lt p1, v1, :cond_1

    .line 11
    .line 12
    if-le p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setSheetNumber(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v3, "Sheet index ("

    .line 26
    .line 27
    const-string v4, ") is out of range"

    .line 28
    .line 29
    invoke-static {p1, v3, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    const-string v0, ""

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const-string v1, " (0.."

    .line 39
    .line 40
    const-string v3, ")"

    .line 41
    .line 42
    invoke-static {v0, v1, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
