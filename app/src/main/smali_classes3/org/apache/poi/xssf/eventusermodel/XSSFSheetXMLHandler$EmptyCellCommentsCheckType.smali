.class final enum Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmptyCellCommentsCheckType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

.field public static final enum CELL:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

.field public static final enum END_OF_ROW:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

.field public static final enum END_OF_SHEET_DATA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    const-string v1, "CELL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->CELL:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    new-instance v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    const-string v3, "END_OF_ROW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_ROW:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    new-instance v3, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    const-string v5, "END_OF_SHEET_DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->END_OF_SHEET_DATA:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->$VALUES:[Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->$VALUES:[Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    invoke-virtual {v0}, [Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$EmptyCellCommentsCheckType;

    return-object v0
.end method
