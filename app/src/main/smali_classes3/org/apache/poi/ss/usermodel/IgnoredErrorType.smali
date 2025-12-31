.class public final enum Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/IgnoredErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

.field public static final enum CALCULATED_COLUMN:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

.field public static final enum EMPTY_CELL_REFERENCE:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

.field public static final enum EVALUATION_ERROR:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

.field public static final enum FORMULA:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

.field public static final enum FORMULA_RANGE:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

.field public static final enum LIST_DATA_VALIDATION:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

.field public static final enum NUMBER_STORED_AS_TEXT:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

.field public static final enum TWO_DIGIT_TEXT_YEAR:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

.field public static final enum UNLOCKED_FORMULA:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    const-string v1, "CALCULATED_COLUMN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->CALCULATED_COLUMN:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    new-instance v1, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    const-string v3, "EMPTY_CELL_REFERENCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->EMPTY_CELL_REFERENCE:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    new-instance v3, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    const-string v5, "EVALUATION_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->EVALUATION_ERROR:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    new-instance v5, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    const-string v7, "FORMULA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->FORMULA:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    new-instance v7, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    const-string v9, "FORMULA_RANGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->FORMULA_RANGE:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    new-instance v9, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    const-string v11, "LIST_DATA_VALIDATION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->LIST_DATA_VALIDATION:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    new-instance v11, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    const-string v13, "NUMBER_STORED_AS_TEXT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->NUMBER_STORED_AS_TEXT:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    new-instance v13, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    const-string v15, "TWO_DIGIT_TEXT_YEAR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->TWO_DIGIT_TEXT_YEAR:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    new-instance v15, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    const-string v14, "UNLOCKED_FORMULA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->UNLOCKED_FORMULA:Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    const/16 v14, 0x9

    new-array v14, v14, [Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->$VALUES:[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->$VALUES:[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    return-object v0
.end method
