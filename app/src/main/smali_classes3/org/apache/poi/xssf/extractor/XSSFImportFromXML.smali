.class public Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;,
        Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _map:Lorg/apache/poi/xssf/usermodel/XSSFMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->_map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    return-void
.end method

.method private setCellValue(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V
    .locals 6

    const-string v0, " for cell "

    const-string v1, "\' as "

    const-string v2, "Unable to format value \'"

    invoke-static {p3}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->getDataType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    move-result-object p3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$1;->$SwitchMap$org$apache$poi$xssf$extractor$XSSFImportFromXML$DataType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/util/Date;)V

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p2, v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(D)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(D)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Z)V

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-void

    :catch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v4, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v4, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public importFromXML(Ljava/lang/String;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    new-instance v4, Lorg/xml/sax/InputSource;

    .line 8
    .line 9
    new-instance v5, Ljava/io/StringReader;

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->_map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    .line 26
    .line 27
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getRelatedSingleXMLCell()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->_map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    .line 32
    .line 33
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getRelatedTables()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    new-instance v7, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;

    .line 46
    .line 47
    invoke-direct {v7, v3}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;-><init>(Lorg/w3c/dom/Document;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v6, v7}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    const-string v8, " in sheet "

    .line 62
    .line 63
    const-string v9, "-"

    .line 64
    .line 65
    const-string v10, "\' to cell "

    .line 66
    .line 67
    const-string v11, "Setting \'"

    .line 68
    .line 69
    const-string v12, "\'"

    .line 70
    .line 71
    const-string v13, " : value is \'"

    .line 72
    .line 73
    const-string v14, "Extracting with xpath "

    .line 74
    .line 75
    if-eqz v7, :cond_1

    .line 76
    .line 77
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;

    .line 82
    .line 83
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getXpath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODE:Lorg/apache/poi/javax/xml/namespace/QName;

    .line 92
    .line 93
    invoke-interface {v6, v1, v3, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lorg/w3c/dom/Node;

    .line 98
    .line 99
    if-eqz v2, :cond_0

    .line 100
    .line 101
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    move-object/from16 p1, v4

    .line 106
    .line 107
    sget-object v4, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->logger:Lorg/apache/poi/util/POILogger;

    .line 108
    .line 109
    invoke-static {v14, v1, v13, v2, v12}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/4 v12, 0x1

    .line 114
    new-array v13, v12, [Ljava/lang/Object;

    .line 115
    .line 116
    const/4 v14, 0x0

    .line 117
    aput-object v1, v13, v14

    .line 118
    .line 119
    invoke-virtual {v4, v12, v13}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getReferencedCell()Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v11, v2, v10}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v8}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    const/4 v8, 0x1

    .line 166
    new-array v9, v8, [Ljava/lang/Object;

    .line 167
    .line 168
    const/4 v10, 0x0

    .line 169
    aput-object v7, v9, v10

    .line 170
    .line 171
    invoke-virtual {v4, v8, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {v0, v2, v1, v15}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->setCellValue(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_0
    move-object/from16 p1, v4

    .line 179
    .line 180
    :goto_1
    move-object/from16 v4, p1

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_6

    .line 192
    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 198
    .line 199
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCommonXpath()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    sget-object v5, Ljavax/xml/xpath/XPathConstants;->NODESET:Lorg/apache/poi/javax/xml/namespace/QName;

    .line 204
    .line 205
    invoke-interface {v6, v4, v3, v5}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    check-cast v4, Lorg/w3c/dom/NodeList;

    .line 210
    .line 211
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    const/4 v7, 0x1

    .line 220
    add-int/2addr v5, v7

    .line 221
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    invoke-virtual {v15}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    .line 226
    .line 227
    .line 228
    move-result v15

    .line 229
    sub-int/2addr v15, v7

    .line 230
    move-object/from16 p1, v1

    .line 231
    .line 232
    const/4 v7, 0x0

    .line 233
    :goto_3
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-ge v7, v1, :cond_5

    .line 238
    .line 239
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    move-object/from16 v17, v3

    .line 244
    .line 245
    const/4 v3, 0x1

    .line 246
    invoke-interface {v1, v3}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXmlColumnPrs()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v18

    .line 262
    if-eqz v18, :cond_4

    .line 263
    .line 264
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v18

    .line 268
    check-cast v18, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    .line 269
    .line 270
    move-object/from16 v20, v3

    .line 271
    .line 272
    move-object/from16 v19, v4

    .line 273
    .line 274
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getId()J

    .line 275
    .line 276
    .line 277
    move-result-wide v3

    .line 278
    long-to-int v4, v3

    .line 279
    add-int v3, v5, v7

    .line 280
    .line 281
    add-int/2addr v4, v15

    .line 282
    move/from16 v21, v5

    .line 283
    .line 284
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getLocalXPath()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    move/from16 v23, v7

    .line 289
    .line 290
    move/from16 v22, v15

    .line 291
    .line 292
    const/4 v15, 0x1

    .line 293
    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    const/16 v15, 0x2f

    .line 298
    .line 299
    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(I)I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    add-int/lit8 v7, v7, 0x2

    .line 304
    .line 305
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    sget-object v7, Ljavax/xml/xpath/XPathConstants;->STRING:Lorg/apache/poi/javax/xml/namespace/QName;

    .line 310
    .line 311
    invoke-interface {v6, v5, v1, v7}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    check-cast v7, Ljava/lang/String;

    .line 316
    .line 317
    sget-object v15, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->logger:Lorg/apache/poi/util/POILogger;

    .line 318
    .line 319
    invoke-static {v14, v5, v13, v7, v12}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    move-object/from16 v24, v1

    .line 324
    .line 325
    move-object/from16 v25, v6

    .line 326
    .line 327
    const/4 v1, 0x1

    .line 328
    new-array v6, v1, [Ljava/lang/Object;

    .line 329
    .line 330
    const/16 v16, 0x0

    .line 331
    .line 332
    aput-object v5, v6, v16

    .line 333
    .line 334
    invoke-virtual {v15, v1, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    if-nez v1, :cond_2

    .line 346
    .line 347
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    :cond_2
    invoke-virtual {v1, v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    if-nez v3, :cond_3

    .line 360
    .line 361
    invoke-virtual {v1, v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    :cond_3
    invoke-static {v11, v7, v10}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    const/4 v4, 0x1

    .line 405
    new-array v5, v4, [Ljava/lang/Object;

    .line 406
    .line 407
    const/4 v6, 0x0

    .line 408
    aput-object v1, v5, v6

    .line 409
    .line 410
    invoke-virtual {v15, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-direct {v0, v7, v3, v1}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->setCellValue(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V

    .line 418
    .line 419
    .line 420
    move-object/from16 v4, v19

    .line 421
    .line 422
    move-object/from16 v3, v20

    .line 423
    .line 424
    move/from16 v5, v21

    .line 425
    .line 426
    move/from16 v15, v22

    .line 427
    .line 428
    move/from16 v7, v23

    .line 429
    .line 430
    move-object/from16 v1, v24

    .line 431
    .line 432
    move-object/from16 v6, v25

    .line 433
    .line 434
    goto/16 :goto_4

    .line 435
    .line 436
    :cond_4
    move-object/from16 v19, v4

    .line 437
    .line 438
    move/from16 v21, v5

    .line 439
    .line 440
    move-object/from16 v25, v6

    .line 441
    .line 442
    move/from16 v23, v7

    .line 443
    .line 444
    move/from16 v22, v15

    .line 445
    .line 446
    const/4 v4, 0x1

    .line 447
    const/4 v6, 0x0

    .line 448
    add-int/lit8 v7, v23, 0x1

    .line 449
    .line 450
    move-object/from16 v3, v17

    .line 451
    .line 452
    move-object/from16 v4, v19

    .line 453
    .line 454
    move-object/from16 v6, v25

    .line 455
    .line 456
    goto/16 :goto_3

    .line 457
    .line 458
    :cond_5
    move-object/from16 v1, p1

    .line 459
    .line 460
    goto/16 :goto_2

    .line 461
    .line 462
    :cond_6
    return-void
.end method
