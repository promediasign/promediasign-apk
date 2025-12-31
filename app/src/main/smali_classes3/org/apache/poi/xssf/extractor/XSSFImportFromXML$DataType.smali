.class final enum Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

.field public static final enum BOOLEAN:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

.field public static final enum DATE:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

.field public static final enum DOUBLE:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

.field public static final enum INTEGER:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

.field public static final enum STRING:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;


# instance fields
.field private xmlDataTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType;->BOOLEAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v4, v2}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;-><init>(Ljava/lang/String;I[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->BOOLEAN:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    new-instance v2, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    new-array v3, v1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType;->DOUBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    aput-object v5, v3, v4

    const-string v5, "DOUBLE"

    invoke-direct {v2, v5, v1, v3}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;-><init>(Ljava/lang/String;I[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V

    sput-object v2, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->DOUBLE:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    new-instance v3, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    const/4 v5, 0x3

    new-array v6, v5, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    sget-object v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType;->INT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    aput-object v7, v6, v4

    sget-object v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType;->UNSIGNED_INT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    aput-object v7, v6, v1

    sget-object v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType;->INTEGER:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "INTEGER"

    invoke-direct {v3, v7, v8, v6}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;-><init>(Ljava/lang/String;I[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V

    sput-object v3, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->INTEGER:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    new-instance v6, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    new-array v7, v1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    sget-object v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType;->STRING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    aput-object v9, v7, v4

    const-string v9, "STRING"

    invoke-direct {v6, v9, v5, v7}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;-><init>(Ljava/lang/String;I[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V

    sput-object v6, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->STRING:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    new-instance v7, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    new-array v9, v1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    sget-object v10, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType;->DATE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;

    aput-object v10, v9, v4

    const-string v10, "DATE"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v9}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;-><init>(Ljava/lang/String;I[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V

    sput-object v7, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->DATE:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    aput-object v0, v9, v4

    aput-object v2, v9, v1

    aput-object v3, v9, v8

    aput-object v6, v9, v5

    aput-object v7, v9, v11

    sput-object v9, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->$VALUES:[Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->xmlDataTypes:Ljava/util/Set;

    return-void
.end method

.method public static getDataType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->values()[Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->xmlDataTypes:Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->$VALUES:[Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    invoke-virtual {v0}, [Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    return-object v0
.end method
