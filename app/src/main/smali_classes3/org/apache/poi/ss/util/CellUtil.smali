.class public final Lorg/apache/poi/ss/util/CellUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    }
.end annotation


# static fields
.field public static final ALIGNMENT:Ljava/lang/String; = "alignment"

.field public static final BORDER_BOTTOM:Ljava/lang/String; = "borderBottom"

.field public static final BORDER_LEFT:Ljava/lang/String; = "borderLeft"

.field public static final BORDER_RIGHT:Ljava/lang/String; = "borderRight"

.field public static final BORDER_TOP:Ljava/lang/String; = "borderTop"

.field public static final BOTTOM_BORDER_COLOR:Ljava/lang/String; = "bottomBorderColor"

.field public static final DATA_FORMAT:Ljava/lang/String; = "dataFormat"

.field public static final FILL_BACKGROUND_COLOR:Ljava/lang/String; = "fillBackgroundColor"

.field public static final FILL_FOREGROUND_COLOR:Ljava/lang/String; = "fillForegroundColor"

.field public static final FILL_PATTERN:Ljava/lang/String; = "fillPattern"

.field public static final FONT:Ljava/lang/String; = "font"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final INDENTION:Ljava/lang/String; = "indention"

.field public static final LEFT_BORDER_COLOR:Ljava/lang/String; = "leftBorderColor"

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final RIGHT_BORDER_COLOR:Ljava/lang/String; = "rightBorderColor"

.field public static final ROTATION:Ljava/lang/String; = "rotation"

.field public static final TOP_BORDER_COLOR:Ljava/lang/String; = "topBorderColor"

.field public static final VERTICAL_ALIGNMENT:Ljava/lang/String; = "verticalAlignment"

.field public static final WRAP_TEXT:Ljava/lang/String; = "wrapText"

.field private static final booleanValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final borderTypeValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/apache/poi/util/POILogger;

.field private static final shortValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-class v0, Lorg/apache/poi/ss/util/CellUtil;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    new-instance v0, Ljava/util/HashSet;

    const-string v9, "font"

    const-string v10, "rotation"

    const-string v1, "bottomBorderColor"

    const-string v2, "leftBorderColor"

    const-string v3, "rightBorderColor"

    const-string v4, "topBorderColor"

    const-string v5, "fillForegroundColor"

    const-string v6, "fillBackgroundColor"

    const-string v7, "indention"

    const-string v8, "dataFormat"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->shortValues:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "hidden"

    const-string v2, "wrapText"

    const-string v3, "locked"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->booleanValues:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "borderRight"

    const-string v2, "borderTop"

    const-string v3, "borderBottom"

    const-string v4, "borderLeft"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellUtil;->borderTypeValues:Ljava/util/Set;

    const-string v0, "alpha"

    const-string v1, "\u03b1"

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v0

    const-string v1, "beta"

    const-string v2, "\u03b2"

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v1

    const-string v2, "gamma"

    const-string v3, "\u03b3"

    invoke-static {v2, v3}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v2

    const-string v3, "delta"

    const-string v4, "\u03b4"

    invoke-static {v3, v4}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v3

    const-string v4, "epsilon"

    const-string v5, "\u03b5"

    invoke-static {v4, v5}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v4

    const-string v5, "zeta"

    const-string v6, "\u03b6"

    invoke-static {v5, v6}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v5

    const-string v6, "eta"

    const-string v7, "\u03b7"

    invoke-static {v6, v7}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v6

    const-string v7, "theta"

    const-string v8, "\u03b8"

    invoke-static {v7, v8}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v7

    const-string v8, "iota"

    const-string v9, "\u03b9"

    invoke-static {v8, v9}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v8

    const-string v9, "kappa"

    const-string v10, "\u03ba"

    invoke-static {v9, v10}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v9

    const-string v10, "lambda"

    const-string v11, "\u03bb"

    invoke-static {v10, v11}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v10

    const-string v11, "mu"

    const-string v12, "\u03bc"

    invoke-static {v11, v12}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v11

    const-string v12, "nu"

    const-string v13, "\u03bd"

    invoke-static {v12, v13}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v12

    const-string v13, "xi"

    const-string v14, "\u03be"

    invoke-static {v13, v14}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v13

    const-string v14, "omicron"

    const-string v15, "\u03bf"

    invoke-static {v14, v15}, Lorg/apache/poi/ss/util/CellUtil;->um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    move-result-object v14

    const/16 v15, 0xf

    new-array v15, v15, [Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v0, 0x2

    aput-object v2, v15, v0

    const/4 v0, 0x3

    aput-object v3, v15, v0

    const/4 v0, 0x4

    aput-object v4, v15, v0

    const/4 v0, 0x5

    aput-object v5, v15, v0

    const/4 v0, 0x6

    aput-object v6, v15, v0

    const/4 v0, 0x7

    aput-object v7, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v9, v15, v0

    const/16 v0, 0xa

    aput-object v10, v15, v0

    const/16 v0, 0xb

    aput-object v11, v15, v0

    const/16 v0, 0xc

    aput-object v12, v15, v0

    const/16 v0, 0xd

    aput-object v13, v15, v0

    const/16 v0, 0xe

    aput-object v14, v15, v0

    sput-object v15, Lorg/apache/poi/ss/util/CellUtil;->unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    return-void
.end method

.method public static createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    return-object p0
.end method

.method public static createCell(Lorg/apache/poi/ss/usermodel/Row;ILjava/lang/String;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellUtil;->getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    if-eqz p3, :cond_0

    invoke-interface {p0, p3}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    :cond_0
    return-object p0
.end method

.method private static getBoolean(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/BorderStyle;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/Short;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    sget-object v0, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const-string v2, "Deprecation warning: CellUtil properties map uses Short values for "

    .line 26
    .line 27
    const-string v3, ". Should use BorderStyle enums instead."

    .line 28
    .line 29
    invoke-static {v2, p1, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v2, 0x1

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object p1, v2, v3

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    check-cast p0, Ljava/lang/Short;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    if-nez p0, :cond_3

    .line 54
    .line 55
    sget-object p0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 56
    .line 57
    :goto_0
    return-object p0

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    const-string p1, "Unexpected border style class. Must be BorderStyle or Short (deprecated)."

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public static getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getFillPattern(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FillPatternType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/FillPatternType;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/Short;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    sget-object v0, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const-string v2, "Deprecation warning: CellUtil properties map uses Short values for "

    .line 26
    .line 27
    const-string v3, ". Should use FillPatternType enums instead."

    .line 28
    .line 29
    invoke-static {v2, p1, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v2, 0x1

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object p1, v2, v3

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    check-cast p0, Ljava/lang/Short;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FillPatternType;->forInt(I)Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    if-nez p0, :cond_3

    .line 54
    .line 55
    sget-object p0, Lorg/apache/poi/ss/usermodel/FillPatternType;->NO_FILL:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 56
    .line 57
    :goto_0
    return-object p0

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    const-string p1, "Unexpected fill pattern style class. Must be FillPatternType or Short (deprecated)."

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method private static getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getAlignmentEnum()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v1

    const-string v2, "alignment"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "verticalAlignment"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getVerticalAlignmentEnum()Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "borderBottom"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "borderLeft"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "borderRight"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "borderTop"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBottomBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "bottomBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "dataFormat"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "fillPattern"

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillPatternEnum()Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillForegroundColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "fillForegroundColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFillBackgroundColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "fillBackgroundColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFontIndex()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "font"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getHidden()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hidden"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndention()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "indention"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getLeftBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "leftBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getLocked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "locked"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRightBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "rightBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRotation()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getTopBorderColor()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "topBorderColor"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getWrapText()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "wrapText"

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/util/CellUtil;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getHorizontalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/HorizontalAlignment;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/Short;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    sget-object v0, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const-string v2, "Deprecation warning: CellUtil properties map used a Short value for "

    .line 26
    .line 27
    const-string v3, ". Should use HorizontalAlignment enums instead."

    .line 28
    .line 29
    invoke-static {v2, p1, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v2, 0x1

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object p1, v2, v3

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    check-cast p0, Ljava/lang/Short;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    if-nez p0, :cond_3

    .line 54
    .line 55
    sget-object p0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->GENERAL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 56
    .line 57
    :goto_0
    return-object p0

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    const-string p1, "Unexpected horizontal alignment style class. Must be HorizontalAlignment or Short (deprecated)."

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public static getRow(ILorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getShort(Ljava/util/Map;Ljava/lang/String;)S
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")S"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Short;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getVerticalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/ss/usermodel/VerticalAlignment;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/Short;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    sget-object v0, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const-string v2, "Deprecation warning: CellUtil properties map used a Short value for "

    .line 26
    .line 27
    const-string v3, ". Should use VerticalAlignment enums instead."

    .line 28
    .line 29
    invoke-static {v2, p1, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v2, 0x1

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object p1, v2, v3

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    check-cast p0, Ljava/lang/Short;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->forInt(I)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    if-nez p0, :cond_3

    .line 54
    .line 55
    sget-object p0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->BOTTOM:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 56
    .line 57
    :goto_0
    return-object p0

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    const-string p1, "Unexpected vertical alignment style class. Must be VerticalAlignment or Short (deprecated)."

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method private static put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static putAll(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_7

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->shortValues:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :goto_1
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->booleanValues:Ljava/util/Set;

    .line 42
    .line 43
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->borderTypeValues:Ljava/util/Set;

    .line 59
    .line 60
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const-string v2, "alignment"

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getHorizontalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const-string v2, "verticalAlignment"

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getVerticalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    goto :goto_1

    .line 97
    :cond_5
    const-string v2, "fillPattern"

    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/CellUtil;->getFillPattern(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    goto :goto_1

    .line 110
    :cond_6
    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->log:Lorg/apache/poi/util/POILogger;

    .line 111
    .line 112
    const/4 v3, 0x3

    .line 113
    invoke-virtual {v2, v3}, Lorg/apache/poi/util/POILogger;->check(I)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_0

    .line 118
    .line 119
    const-string v4, "Ignoring unrecognized CellUtil format properties key: "

    .line 120
    .line 121
    invoke-static {v4, v1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const/4 v4, 0x1

    .line 126
    new-array v4, v4, [Ljava/lang/Object;

    .line 127
    .line 128
    const/4 v5, 0x0

    .line 129
    aput-object v1, v4, v5

    .line 130
    .line 131
    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_7
    return-void
.end method

.method public static setAlignment(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setCellStyleProperties(Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellUtil;->getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/poi/ss/util/CellUtil;->putAll(Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumCellStyles()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-interface {v0, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/util/CellUtil;->getFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lorg/apache/poi/ss/util/CellUtil;->setFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/util/Map;)V

    :cond_2
    invoke-interface {p0, v3}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    return-void
.end method

.method public static setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperties(Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;)V

    return-void
.end method

.method public static setFont(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Font;->getIndex()S

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    const-string v0, "font"

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Font does not belong to this workbook"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setFormatProperties(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/Workbook;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            "Lorg/apache/poi/ss/usermodel/Workbook;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "alignment"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getHorizontalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setAlignment(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V

    const-string v0, "verticalAlignment"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getVerticalAlignment(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setVerticalAlignment(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V

    const-string v0, "borderBottom"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    const-string v0, "borderLeft"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    const-string v0, "borderRight"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    const-string v0, "borderTop"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getBorderStyle(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V

    const-string v0, "bottomBorderColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setBottomBorderColor(S)V

    const-string v0, "dataFormat"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setDataFormat(S)V

    const-string v0, "fillPattern"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getFillPattern(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FillPatternType;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillPattern(Lorg/apache/poi/ss/usermodel/FillPatternType;)V

    const-string v0, "fillForegroundColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillForegroundColor(S)V

    const-string v0, "fillBackgroundColor"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFillBackgroundColor(S)V

    const-string v0, "font"

    invoke-static {p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFont(Lorg/apache/poi/ss/usermodel/Font;)V

    const-string p1, "hidden"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setHidden(Z)V

    const-string p1, "indention"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setIndention(S)V

    const-string p1, "leftBorderColor"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setLeftBorderColor(S)V

    const-string p1, "locked"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setLocked(Z)V

    const-string p1, "rightBorderColor"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setRightBorderColor(S)V

    const-string p1, "rotation"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setRotation(S)V

    const-string p1, "topBorderColor"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getShort(Ljava/util/Map;Ljava/lang/String;)S

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setTopBorderColor(S)V

    const-string p1, "wrapText"

    invoke-static {p2, p1}, Lorg/apache/poi/ss/util/CellUtil;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setWrapText(Z)V

    return-void
.end method

.method public static setVerticalAlignment(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V
    .locals 1

    const-string v0, "verticalAlignment"

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/util/CellUtil;->setCellStyleProperty(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static translateUnicodeValues(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 9

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/util/CellUtil;->unicodeMappings:[Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    iget-object v7, v6, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;->entityName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v5, v6, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;->resolvedValue:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    :cond_2
    return-object p0
.end method

.method private static um(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
