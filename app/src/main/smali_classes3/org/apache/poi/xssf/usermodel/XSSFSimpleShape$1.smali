.class synthetic Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

.field static final synthetic $SwitchMap$org$apache$poi$xssf$usermodel$TextAutofit:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/TextAutofit;->values()[Lorg/apache/poi/xssf/usermodel/TextAutofit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$TextAutofit:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/apache/poi/xssf/usermodel/TextAutofit;->NONE:Lorg/apache/poi/xssf/usermodel/TextAutofit;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$TextAutofit:[I

    sget-object v3, Lorg/apache/poi/xssf/usermodel/TextAutofit;->NORMAL:Lorg/apache/poi/xssf/usermodel/TextAutofit;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$TextAutofit:[I

    sget-object v4, Lorg/apache/poi/xssf/usermodel/TextAutofit;->SHAPE:Lorg/apache/poi/xssf/usermodel/TextAutofit;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->values()[Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    :try_start_3
    sget-object v4, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ALPHA_LC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v3, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ALPHA_LC_PARENT_R:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ALPHA_UC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ALPHA_UC_PARENT_R:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ALPHA_LC_PERIOD:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ALPHA_UC_PERIOD:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ARABIC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ARABIC_PARENT_R:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ARABIC_PERIOD:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ARABIC_PLAIN:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ROMAN_LC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ROMAN_LC_PARENT_R:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ROMAN_UC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ROMAN_UC_PARENT_R:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ROMAN_LC_PERIOD:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ROMAN_UC_PERIOD:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
