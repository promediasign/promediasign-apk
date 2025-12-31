.class public Lorg/apache/poi/xwpf/usermodel/XWPFTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IBodyElement;
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;
    }
.end annotation


# static fields
.field private static stBorderTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;",
            ">;"
        }
    .end annotation
.end field

.field private static xwpfBorderTypeMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

.field protected part:Lorg/apache/poi/xwpf/usermodel/IBody;

.field protected tableRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;",
            ">;"
        }
    .end annotation
.end field

.field protected text:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->NIL:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    const/4 v2, 0x1

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->NONE:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    const/4 v4, 0x2

    invoke-static {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    sget-object v5, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->SINGLE:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    const/4 v6, 0x3

    invoke-static {v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    sget-object v7, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THICK:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    const/4 v8, 0x4

    invoke-static {v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    sget-object v9, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DOUBLE:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    const/4 v10, 0x5

    invoke-static {v10}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    sget-object v11, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DOTTED:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    const/4 v12, 0x6

    invoke-static {v12}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v13

    invoke-virtual {v0, v11, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    sget-object v13, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DASHED:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    const/4 v14, 0x7

    invoke-static {v14}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v15

    invoke-virtual {v0, v13, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    sget-object v15, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DOT_DASH:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    const/16 v16, 0x8

    invoke-static/range {v16 .. v16}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v14

    invoke-virtual {v0, v15, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->text:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->createEmptyTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)V

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTrArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-direct {v5, v3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->getTcArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    invoke-interface {v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getPArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    new-instance v11, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v11, v10, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_1

    const/16 v10, 0x9

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v11}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->text:Ljava/lang/StringBuffer;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;II)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->createRow()Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p4, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getCell(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->createCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private addColumn(Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;I)V
    .locals 1

    if-lez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->createCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createEmptyTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)V
    .locals 3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->addNewTr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->addNewTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->addNewTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->SINGLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewInsideH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewInsideV()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    return-void
.end method

.method private getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->addNewTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addNewCol()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->createRow()Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->createCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addNewRowBetween(II)V
    .locals 0

    return-void
.end method

.method public addRow(Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->addNewTr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getNumberOfRows()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->setTrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRow(Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;I)Z
    .locals 2

    .line 2
    if-ltz p2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->insertNewTr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->setTrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public createRow()Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->sizeOfTcArray()I

    move-result v1

    :cond_0
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->addNewTr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->addColumn(Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;I)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getBody()Lorg/apache/poi/xwpf/usermodel/IBody;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    return-object v0
.end method

.method public getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    return-object v0
.end method

.method public getCellMarginBottom()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->getW()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCellMarginLeft()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->getW()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCellMarginRight()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->getW()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCellMarginTop()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->getW()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getColBandSize()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblStyleColBandSize()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyleColBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->TABLE:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    return-object v0
.end method

.method public getInsideHBorderColor()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideH()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getInsideH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->xgetColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInsideHBorderSize()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideH()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getInsideH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getSz()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getInsideHBorderSpace()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideH()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getInsideH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getSpace()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getInsideHBorderType()Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideH()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getInsideH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInsideVBorderColor()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideV()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getInsideV()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->xgetColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInsideVBorderSize()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideV()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getInsideV()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getSz()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getInsideVBorderSpace()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideV()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getInsideV()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getSpace()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getInsideVBorderType()Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideV()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getInsideV()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNumberOfRows()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result v0

    return v0
.end method

.method public getPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRowBandSize()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblStyleRowBandSize()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyleRowBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    return-object v0
.end method

.method public getStyleID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblW()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->getW()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public insertNewTableRow(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->insertNewTr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeRow(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->removeTr(I)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setCellMargins(IIII)V
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblCellMar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->isSetLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->addNewLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object v1

    :goto_1
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->DXA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    int-to-long v3, p2

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/math/BigInteger;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->isSetTop()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->addNewTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p2

    :goto_2
    invoke-interface {p2, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/math/BigInteger;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->isSetBottom()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->addNewBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p1

    :goto_3
    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    int-to-long p2, p3

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/math/BigInteger;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->isSetRight()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p1

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;->addNewRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p1

    :goto_4
    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    int-to-long p2, p4

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setColBandSize(I)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblStyleColBandSize()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyleColBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblStyleColBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    :goto_0
    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setInsideHBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideH()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getInsideH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewInsideH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    :goto_1
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    int-to-long p1, p2

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setSz(Ljava/math/BigInteger;)V

    int-to-long p1, p3

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setSpace(Ljava/math/BigInteger;)V

    invoke-interface {v0, p4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setColor(Ljava/lang/Object;)V

    return-void
.end method

.method public setInsideVBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideV()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->getInsideV()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewInsideV()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    :goto_1
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    int-to-long p1, p2

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setSz(Ljava/math/BigInteger;)V

    int-to-long p1, p3

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setSpace(Ljava/math/BigInteger;)V

    invoke-interface {v0, p4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setColor(Ljava/lang/Object;)V

    return-void
.end method

.method public setRowBandSize(I)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblStyleRowBandSize()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyleRowBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblStyleRowBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    :goto_0
    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setStyleID(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    :cond_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblW()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    .line 21
    .line 22
    const-string v2, ""

    .line 23
    .line 24
    invoke-static {p1, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/math/BigInteger;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
