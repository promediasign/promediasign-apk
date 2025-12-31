.class synthetic Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$poi$ss$usermodel$charts$AxisCrosses:[I

.field static final synthetic $SwitchMap$org$apache$poi$ss$usermodel$charts$AxisOrientation:[I

.field static final synthetic $SwitchMap$org$apache$poi$ss$usermodel$charts$AxisPosition:[I

.field static final synthetic $SwitchMap$org$apache$poi$ss$usermodel$charts$AxisTickMark:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->values()[Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisTickMark:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->NONE:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisTickMark:[I

    sget-object v3, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->IN:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisTickMark:[I

    sget-object v4, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->OUT:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisTickMark:[I

    sget-object v5, Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;->CROSS:Lorg/apache/poi/ss/usermodel/charts/AxisTickMark;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lorg/apache/poi/ss/usermodel/charts/AxisPosition;->values()[Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisPosition:[I

    :try_start_4
    sget-object v5, Lorg/apache/poi/ss/usermodel/charts/AxisPosition;->BOTTOM:Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisPosition:[I

    sget-object v5, Lorg/apache/poi/ss/usermodel/charts/AxisPosition;->LEFT:Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisPosition:[I

    sget-object v5, Lorg/apache/poi/ss/usermodel/charts/AxisPosition;->RIGHT:Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisPosition:[I

    sget-object v5, Lorg/apache/poi/ss/usermodel/charts/AxisPosition;->TOP:Lorg/apache/poi/ss/usermodel/charts/AxisPosition;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->values()[Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisCrosses:[I

    :try_start_8
    sget-object v4, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->AUTO_ZERO:Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisCrosses:[I

    sget-object v4, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->MIN:Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisCrosses:[I

    sget-object v4, Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;->MAX:Lorg/apache/poi/ss/usermodel/charts/AxisCrosses;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    invoke-static {}, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->values()[Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisOrientation:[I

    :try_start_b
    sget-object v3, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->MIN_MAX:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lorg/apache/poi/xssf/usermodel/charts/XSSFChartAxis$1;->$SwitchMap$org$apache$poi$ss$usermodel$charts$AxisOrientation:[I

    sget-object v2, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->MAX_MIN:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
