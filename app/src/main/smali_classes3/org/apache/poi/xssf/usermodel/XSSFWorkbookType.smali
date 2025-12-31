.class public final enum Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

.field public static final enum XLSM:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

.field public static final enum XLSX:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;


# instance fields
.field private final _contentType:Ljava/lang/String;

.field private final _extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xlsx"

    const-string v3, "XLSX"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSX:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xlsm"

    const-string v5, "XLSM"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSM:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    aput-object v0, v2, v4

    aput-object v1, v2, v6

    sput-object v2, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->$VALUES:[Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->_contentType:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->_extension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->$VALUES:[Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    invoke-virtual {v0}, [Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->_extension:Ljava/lang/String;

    return-object v0
.end method
