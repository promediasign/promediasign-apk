.class public final Lorg/apache/poi/xssf/usermodel/XSSFCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Cell;


# instance fields
.field private _cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

.field private _cellNum:I

.field private final _row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

.field private _sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

.field private _stylesSource:Lorg/apache/poi/xssf/model/StylesTable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p2

    :goto_0
    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getLastCellNum()S

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    sget-object v0, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-virtual {p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    return-void
.end method

.method private static checkBounds(I)V
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    if-gt p0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v3, "Invalid column index ("

    .line 15
    .line 16
    const-string v4, ").  Allowable column range for "

    .line 17
    .line 18
    invoke-static {p0, v3, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, " is (0.."

    .line 30
    .line 31
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ") or (\'A\'..\'"

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, "\')"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v2
.end method

.method private static checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private convertCellValueToBoolean()Z
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected cell type ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v2

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getEntryAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method private convertCellValueToString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v2, v1, v2

    .line 12
    .line 13
    const-string v3, "FALSE"

    .line 14
    .line 15
    const-string v4, "TRUE"

    .line 16
    .line 17
    const-string v5, "1"

    .line 18
    .line 19
    const-string v6, ")"

    .line 20
    .line 21
    packed-switch v2, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "Unexpected cell type ("

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 48
    .line 49
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    move-object v3, v4

    .line 60
    :cond_0
    return-object v3

    .line 61
    :pswitch_1
    const-string v0, ""

    .line 62
    .line 63
    return-object v0

    .line 64
    :pswitch_2
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 70
    .line 71
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    aget v1, v1, v7

    .line 80
    .line 81
    const/4 v7, 0x1

    .line 82
    if-eq v1, v7, :cond_5

    .line 83
    .line 84
    const/4 v7, 0x2

    .line 85
    if-eq v1, v7, :cond_5

    .line 86
    .line 87
    const/4 v7, 0x5

    .line 88
    if-eq v1, v7, :cond_2

    .line 89
    .line 90
    const/4 v3, 0x6

    .line 91
    if-ne v1, v3, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v3, "Unexpected formula result type ("

    .line 99
    .line 100
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v1

    .line 117
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    return-object v4

    .line 124
    :cond_3
    const-string v0, "0"

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    return-object v3

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    const-string v1, "Unexpected boolean cached formula value \'"

    .line 136
    .line 137
    const-string v3, "\'."

    .line 138
    .line 139
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_5
    :goto_0
    return-object v2

    .line 148
    :pswitch_3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 149
    .line 150
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    .line 159
    .line 160
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    .line 161
    .line 162
    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getEntryAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    return-object v0

    .line 174
    :pswitch_4
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 175
    .line 176
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private convertSharedFormula(ILorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSharedFormula(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    new-instance v2, Lorg/apache/poi/ss/formula/SharedFormula;

    .line 32
    .line 33
    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 34
    .line 35
    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/SharedFormula;-><init>(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 36
    .line 37
    .line 38
    sget-object v3, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-static {p1, p2, v3, v0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    sub-int/2addr v0, v3

    .line 57
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    sub-int/2addr v3, v1

    .line 66
    invoke-virtual {v2, p1, v0, v3}, Lorg/apache/poi/ss/formula/SharedFormula;->convertSharedFormulas([Lorg/apache/poi/ss/formula/ptg/Ptg;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p2, p1}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v0, "Master cell of a shared formula with sid="

    .line 78
    .line 79
    const-string v1, " was not found"

    .line 80
    .line 81
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p2
.end method

.method private getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal cell type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p1

    :pswitch_1
    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p1

    :cond_0
    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p1

    :pswitch_3
    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isFormulaCell()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->DATA_TABLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isCellInArrayFormulaContext(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private setBlank()V
    .locals 3

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setR(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetS()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getS()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setS(J)V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method private setFormula(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaType;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetF()V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v2

    invoke-static {p1, v1, p2, v0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetV()V

    :cond_2
    return-void
.end method

.method private static typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Cannot get a "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p0, " value from a "

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, " "

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const-string p0, "formula "

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p0, ""

    .line 30
    .line 31
    :goto_0
    const-string p1, "cell"

    .line 32
    .line 33
    invoke-static {p0, p1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method


# virtual methods
.method public copyCellFrom(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellValue()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellFormula()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid cell type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellErrorValue(B)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Z)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellFormula(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/util/Date;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(D)V

    goto :goto_0

    :cond_2
    :pswitch_5
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setBlank()V

    :cond_3
    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    :cond_5
    if-nez p1, :cond_6

    move-object p1, v1

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;

    move-result-object p1

    :goto_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isMergeHyperlink()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_9

    new-instance p2, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {p2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyHyperlink()Z

    move-result p2

    if-eqz p2, :cond_9

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    :goto_3
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    :cond_9
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    return-object v0
.end method

.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstCellInArrayFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cell "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not part of an array formula."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBooleanCellValue()Z
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, "1"

    const/4 v5, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    return v5

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    return-object v0
.end method

.method public getCachedFormulaResultType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.17"
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isFormulaCell()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only formula cells have cached results"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getCellComment()Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellComment()Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getCellComment()Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v1, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getCellFormula()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellFormula(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstCellInArrayFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide v0

    long-to-int v1, v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object p1

    :cond_1
    invoke-direct {p0, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->convertSharedFormula(ILorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    invoke-static {v1, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getS()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    long-to-int v1, v0

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getCellType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.17"
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isFormulaCell()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    return v0
.end method

.method public getDateCellValue()Ljava/util/Date;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCellString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getErrorCellValue()B
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getErrorCellString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error code"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getHyperlink()Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlink()Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    return-wide v4

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-wide v4

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    return-wide v4
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, v0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;)V

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-direct {v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->INLINE_STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetIs()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getIs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    if-ne v0, v1, :cond_8

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v3

    :cond_7
    invoke-direct {v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getEntryAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    move-object v0, v1

    goto :goto_0

    :cond_9
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    return-object v0
.end method

.method public bridge synthetic getRow()Lorg/apache/poi/ss/usermodel/Row;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    return-object v0
.end method

.method public getRowIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v0

    return v0
.end method

.method public getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    return-object v0
.end method

.method public isPartOfArrayFormulaGroup()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isCellInArrayFormulaContext(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Z

    move-result v0

    return v0
.end method

.method public notifyArrayFormulaChanging()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cell "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is part of a multi-cell array formula. You cannot change part of an array."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    return-void
.end method

.method public notifyArrayFormulaChanging(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getNumberOfCells()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCellComment()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellComment()Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCommentsTable(Z)Lorg/apache/poi/xssf/model/CommentsTable;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/poi/xssf/model/CommentsTable;->removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->removeCommentShape(II)Z

    :cond_0
    return-void
.end method

.method public removeHyperlink()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeHyperlink(II)V

    return-void
.end method

.method public setAsActiveCell()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V

    return-void
.end method

.method public setCTCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    return-void
.end method

.method public setCellArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->ARRAY:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setFormula(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaType;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->ARRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;)V

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setRef(Ljava/lang/String;)V

    return-void
.end method

.method public setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->removeCellComment()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/ss/usermodel/Comment;->setAddress(II)V

    return-void
.end method

.method public setCellErrorValue(B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    return-void
.end method

.method public setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    return-void
.end method

.method public setCellFormula(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->notifyArrayFormulaChanging()V

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setFormula(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaType;)V

    return-void
.end method

.method public setCellNum(I)V
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->checkBounds(I)V

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setR(Ljava/lang/String;)V

    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetS()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetS()V

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->verifyBelongsToStylesSource(Lorg/apache/poi/xssf/model/StylesTable;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->putStyle(Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;)I

    move-result p1

    int-to-long v0, p1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setS(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCellType(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.17"
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method public setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->notifyArrayFormulaChanging()V

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    :cond_1
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "0"

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal cell type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    :goto_0
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->convertCellValueToBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "1"

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->B:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setBlank()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetT()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetT()V

    goto :goto_1

    :pswitch_4
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v2, :cond_3

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->convertCellValueToString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/model/SharedStringsTable;->addEntry(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->N:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    goto :goto_0

    :cond_4
    :goto_1
    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetF()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCellValue(D)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object p2, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object p2, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->N:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setCellValue(Ljava/lang/String;)V
    .locals 1

    .line 2
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    return-void
.end method

.method public setCellValue(Ljava/util/Calendar;)V
    .locals 2

    .line 3
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(D)V

    return-void
.end method

.method public setCellValue(Ljava/util/Date;)V
    .locals 2

    .line 4
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(D)V

    return-void
.end method

.method public setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 2

    .line 5
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->length()I

    move-result v0

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxTextLength()I

    move-result v1

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->INLINE_STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->addEntry(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The maximum length of cell contents (text) is 32,767 characters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method public setCellValue(Z)V
    .locals 2

    .line 6
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->B:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->removeHyperlink()V

    return-void

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Cell Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getErrorCellValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBooleanCellValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0

    :pswitch_2
    const-string v0, ""

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy"

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
