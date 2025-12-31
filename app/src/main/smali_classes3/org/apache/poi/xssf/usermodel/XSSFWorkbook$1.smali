.class synthetic Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/apache/poi/ss/usermodel/SheetVisibility;->values()[Lorg/apache/poi/ss/usermodel/SheetVisibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$1;->$SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility:[I

    :try_start_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$1;->$SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility:[I

    sget-object v1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$1;->$SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility:[I

    sget-object v1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
