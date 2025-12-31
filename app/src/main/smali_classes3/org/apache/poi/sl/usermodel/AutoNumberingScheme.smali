.class public final enum Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabic1Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabic2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum circleNumDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum circleNumWdBlackPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum circleNumWdWhitePlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChsPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChsPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChtPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChtPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1JpnChsDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1JpnKorPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1JpnKorPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hebrew2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiAlpha1Period:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiAlphaParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiAlphaParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiNumParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;


# instance fields
.field public final nativeId:I

.field public final ooxmlId:I


# direct methods
.method static constructor <clinit>()V
    .locals 45

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v1, "alphaLcParenBoth"

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v1, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v5, "alphaUcParenBoth"

    const/16 v6, 0xa

    const/4 v7, 0x2

    invoke-direct {v1, v5, v4, v6, v7}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v8, "alphaLcParenRight"

    const/16 v9, 0x9

    const/4 v10, 0x3

    invoke-direct {v5, v8, v7, v9, v10}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v11, "alphaUcParenRight"

    const/16 v12, 0xb

    const/4 v13, 0x4

    invoke-direct {v8, v11, v10, v12, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v11, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v14, "alphaLcPeriod"

    const/4 v15, 0x5

    invoke-direct {v11, v14, v13, v2, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v14, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v2, "alphaUcPeriod"

    const/4 v12, 0x6

    invoke-direct {v14, v2, v15, v4, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v2, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v4, "arabicParenBoth"

    const/16 v15, 0xc

    const/4 v13, 0x7

    invoke-direct {v2, v4, v12, v15, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v4, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "arabicParenRight"

    invoke-direct {v4, v12, v13, v7, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v7, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "arabicPeriod"

    invoke-direct {v7, v12, v3, v10, v9}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v10, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "arabicPlain"

    const/16 v3, 0xd

    invoke-direct {v10, v12, v9, v3, v6}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v9, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "romanLcParenBoth"

    const/4 v3, 0x4

    const/16 v13, 0xb

    invoke-direct {v9, v12, v6, v3, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "romanUcParenBoth"

    const/16 v6, 0xe

    invoke-direct {v3, v12, v13, v6, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v13, "romanLcParenRight"

    move-object/from16 v16, v3

    const/16 v3, 0xd

    const/4 v6, 0x5

    invoke-direct {v12, v13, v15, v6, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v13, "romanUcParenRight"

    const/16 v15, 0xf

    move-object/from16 v17, v12

    const/16 v12, 0xe

    invoke-direct {v6, v13, v3, v15, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v13, "romanLcPeriod"

    move-object/from16 v20, v6

    const/4 v6, 0x6

    invoke-direct {v3, v13, v12, v6, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "romanUcPeriod"

    const/16 v13, 0x10

    move-object/from16 v18, v3

    const/4 v3, 0x7

    invoke-direct {v6, v12, v15, v3, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "circleNumDbPlain"

    const/16 v15, 0x12

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v3, v12, v13, v15, v6}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->circleNumDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v13, "circleNumWdBlackPlain"

    move-object/from16 v21, v3

    const/16 v3, 0x14

    invoke-direct {v12, v13, v6, v3, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->circleNumWdBlackPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v13, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v6, "circleNumWdWhitePlain"

    const/16 v3, 0x13

    invoke-direct {v13, v6, v15, v3, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->circleNumWdWhitePlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v15, "arabicDbPeriod"

    move-object/from16 v22, v13

    const/16 v13, 0x1d

    move-object/from16 v23, v12

    const/16 v12, 0x14

    invoke-direct {v6, v15, v3, v13, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v15, 0x1c

    const/16 v13, 0x15

    move-object/from16 v25, v6

    const-string v6, "arabicDbPlain"

    invoke-direct {v3, v6, v12, v15, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v12, 0x16

    const-string v15, "ea1ChsPeriod"

    move-object/from16 v26, v3

    const/16 v3, 0x11

    invoke-direct {v6, v15, v13, v3, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChsPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v15, 0x17

    const-string v13, "ea1ChsPlain"

    move-object/from16 v27, v6

    const/16 v6, 0x10

    invoke-direct {v3, v13, v12, v6, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChsPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v13, 0x18

    const-string v12, "ea1ChtPeriod"

    move-object/from16 v28, v3

    const/16 v3, 0x15

    invoke-direct {v6, v12, v15, v3, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChtPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v12, 0x19

    const-string v15, "ea1ChtPlain"

    move-object/from16 v29, v6

    const/16 v6, 0x14

    invoke-direct {v3, v15, v13, v6, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChtPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v15, 0x26

    const/16 v13, 0x1a

    move-object/from16 v30, v3

    const-string v3, "ea1JpnChsDbPeriod"

    invoke-direct {v6, v3, v12, v15, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1JpnChsDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v15, 0x1b

    const-string v12, "ea1JpnKorPlain"

    invoke-direct {v3, v12, v13, v13, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1JpnKorPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v13, "ea1JpnKorPeriod"

    move-object/from16 v31, v3

    const/16 v3, 0x1c

    invoke-direct {v12, v13, v15, v15, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1JpnKorPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v13, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v15, "arabic1Minus"

    move-object/from16 v24, v6

    move-object/from16 v32, v12

    const/16 v6, 0x17

    const/16 v12, 0x1d

    invoke-direct {v13, v15, v3, v6, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabic1Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v6, 0x1e

    const-string v15, "arabic2Minus"

    move-object/from16 v33, v13

    const/16 v13, 0x18

    invoke-direct {v3, v15, v12, v13, v6}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabic2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v13, 0x1f

    const-string v15, "hebrew2Minus"

    move-object/from16 v34, v3

    const/16 v3, 0x19

    invoke-direct {v12, v15, v6, v3, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hebrew2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v15, 0x20

    move-object/from16 v35, v12

    const-string v12, "thaiAlphaPeriod"

    invoke-direct {v3, v12, v13, v6, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v6, 0x21

    move-object/from16 v36, v3

    const-string v3, "thaiAlphaParenRight"

    invoke-direct {v12, v3, v15, v13, v6}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiAlphaParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v13, 0x22

    move-object/from16 v37, v12

    const-string v12, "thaiAlphaParenBoth"

    invoke-direct {v3, v12, v6, v15, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiAlphaParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v15, 0x23

    move-object/from16 v38, v3

    const-string v3, "thaiNumPeriod"

    invoke-direct {v12, v3, v13, v6, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v6, 0x24

    move-object/from16 v39, v12

    const-string v12, "thaiNumParenRight"

    invoke-direct {v3, v12, v15, v13, v6}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v13, 0x25

    move-object/from16 v40, v3

    const-string v3, "thaiNumParenBoth"

    invoke-direct {v12, v3, v6, v15, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiNumParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v15, "hindiAlphaPeriod"

    move-object/from16 v41, v12

    const/16 v12, 0x26

    invoke-direct {v3, v15, v13, v6, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v15, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v6, "hindiNumPeriod"

    move-object/from16 v42, v3

    const/16 v3, 0x27

    invoke-direct {v15, v6, v12, v13, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "hindiNumParenRight"

    const/16 v13, 0x28

    invoke-direct {v6, v12, v3, v3, v13}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-object/from16 v43, v6

    const/16 v6, 0x29

    move-object/from16 v44, v15

    const-string v15, "hindiAlpha1Period"

    invoke-direct {v12, v15, v13, v3, v6}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiAlpha1Period:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/16 v3, 0x29

    new-array v3, v3, [Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object v8, v3, v0

    const/4 v0, 0x4

    aput-object v11, v3, v0

    const/4 v0, 0x5

    aput-object v14, v3, v0

    const/4 v0, 0x6

    aput-object v2, v3, v0

    const/4 v0, 0x7

    aput-object v4, v3, v0

    const/16 v0, 0x8

    aput-object v7, v3, v0

    const/16 v0, 0x9

    aput-object v10, v3, v0

    const/16 v0, 0xa

    aput-object v9, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v20, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v21, v3, v0

    const/16 v0, 0x11

    aput-object v23, v3, v0

    const/16 v0, 0x12

    aput-object v22, v3, v0

    const/16 v0, 0x13

    aput-object v25, v3, v0

    const/16 v0, 0x14

    aput-object v26, v3, v0

    const/16 v0, 0x15

    aput-object v27, v3, v0

    const/16 v0, 0x16

    aput-object v28, v3, v0

    const/16 v0, 0x17

    aput-object v29, v3, v0

    const/16 v0, 0x18

    aput-object v30, v3, v0

    const/16 v0, 0x19

    aput-object v24, v3, v0

    const/16 v0, 0x1a

    aput-object v31, v3, v0

    const/16 v0, 0x1b

    aput-object v32, v3, v0

    const/16 v0, 0x1c

    aput-object v33, v3, v0

    const/16 v0, 0x1d

    aput-object v34, v3, v0

    const/16 v0, 0x1e

    aput-object v35, v3, v0

    const/16 v0, 0x1f

    aput-object v36, v3, v0

    const/16 v0, 0x20

    aput-object v37, v3, v0

    const/16 v0, 0x21

    aput-object v38, v3, v0

    const/16 v0, 0x22

    aput-object v39, v3, v0

    const/16 v0, 0x23

    aput-object v40, v3, v0

    const/16 v0, 0x24

    aput-object v41, v3, v0

    const/16 v0, 0x25

    aput-object v42, v3, v0

    const/16 v0, 0x26

    aput-object v44, v3, v0

    const/16 v0, 0x27

    aput-object v43, v3, v0

    aput-object v12, v3, v13

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->$VALUES:[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->nativeId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ooxmlId:I

    return-void
.end method

.method private static addIndexedChar(ILjava/lang/String;ZLjava/lang/StringBuilder;)V
    .locals 2

    if-eqz p2, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p0, v0, :cond_1

    div-int v1, p0, v0

    invoke-static {v1, p1, p2, p3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->addIndexedChar(ILjava/lang/String;ZLjava/lang/StringBuilder;)V

    :cond_1
    rem-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static forNativeID(I)Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->values()[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forOoxmlID(I)Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->values()[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private formatCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "uc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private formatIndex(I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "roman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatRomanIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "arabic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "0123456789"

    invoke-static {p1, v0, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-static {p1, v0, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "WdWhite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v4, 0xa

    if-eqz v1, :cond_4

    if-ne p1, v4, :cond_3

    const-string p1, "\u008a"

    goto :goto_0

    :cond_3
    const-string v0, "\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089"

    invoke-static {p1, v0, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_4
    const-string v1, "WdBlack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-ne p1, v4, :cond_5

    const-string p1, "\u0095"

    goto :goto_1

    :cond_5
    const-string v0, "\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094"

    invoke-static {p1, v0, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_6
    const-string v1, "NumDb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne p1, v4, :cond_7

    const-string p1, "\u277f"

    goto :goto_2

    :cond_7
    const-string v0, "\u2776\u2777\u2778\u2779\u277a\u277b\u277c\u277d\u277e"

    invoke-static {p1, v0, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_8
    const-string p1, "?"

    return-object p1
.end method

.method private formatRomanIndex(I)Ljava/lang/String;
    .locals 20

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/4 v4, 0x5

    const/16 v5, 0xd

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    const-string v18, "IV"

    const-string v19, "I"

    const-string v7, "M"

    const-string v8, "CM"

    const-string v9, "D"

    const-string v10, "CD"

    const-string v11, "C"

    const-string v12, "XC"

    const-string v13, "L"

    const-string v14, "XL"

    const-string v15, "X"

    const-string v16, "IX"

    const-string v17, "V"

    filled-new-array/range {v7 .. v19}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x18

    new-array v9, v8, [[Ljava/lang/String;

    const-string v10, "XLV"

    const-string v11, "VL"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string v10, "XCV"

    const-string v12, "VC"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    const-string v10, "CDL"

    const-string v12, "LD"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v9, v12

    const-string v10, "CML"

    const-string v12, "LM"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v9, v12

    const-string v10, "CMVC"

    const-string v12, "LMVL"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    const-string v0, "CDXC"

    const-string v10, "LDXL"

    filled-new-array {v0, v10}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v4, "CDVC"

    const-string v10, "LDVL"

    filled-new-array {v4, v10}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x6

    aput-object v10, v9, v13

    const-string v10, "CMXC"

    const-string v13, "LMXL"

    filled-new-array {v10, v13}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v9, v14

    const-string v13, "XCIX"

    const-string v14, "VCIV"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v9, v15

    const-string v14, "XLIX"

    const-string v15, "VLIV"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v15

    aput-object v15, v9, v3

    const-string v3, "IL"

    filled-new-array {v14, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    const-string v2, "IC"

    filled-new-array {v13, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v9, v3

    const-string v2, "XD"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v9, v2

    const-string v0, "XDV"

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v5

    const-string v2, "CDIC"

    const-string v3, "XDIX"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe

    aput-object v2, v9, v4

    const-string v2, "XMV"

    filled-new-array {v12, v2}, [Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0xf

    aput-object v4, v9, v12

    const-string v4, "CMIC"

    const-string v12, "XMIX"

    filled-new-array {v4, v12}, [Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x10

    aput-object v4, v9, v13

    const-string v4, "XM"

    filled-new-array {v10, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0x11

    aput-object v4, v9, v10

    const-string v4, "VD"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x12

    aput-object v0, v9, v4

    const-string v0, "VDIV"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13

    aput-object v3, v9, v4

    const-string v3, "VM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v9, v3

    const-string v2, "VMIV"

    filled-new-array {v12, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x15

    aput-object v3, v9, v4

    const-string v3, "ID"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x16

    aput-object v0, v9, v3

    const-string v0, "IM"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v9, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    :goto_1
    aget v4, v6, v3

    if-lt v2, v4, :cond_0

    sub-int/2addr v2, v4

    aget-object v4, v7, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_2

    aget-object v3, v9, v2

    aget-object v4, v3, v11

    aget-object v3, v3, v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    goto :goto_2

    :cond_2
    return-object v0

    :array_0
    .array-data 4
        0x3e8
        0x384
        0x1f4
        0x190
        0x64
        0x5a
        0x32
        0x28
        0xa
        0x9
        0x5
        0x4
        0x1
    .end array-data
.end method

.method private formatSeperator(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "plain"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    const-string v1, "parenright"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, ")"

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-static {p1, v2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_1
    const-string v1, "parenboth"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const-string v0, "("

    .line 44
    .line 45
    invoke-static {v0, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_2
    const-string v1, "period"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    const-string v0, "."

    .line 59
    .line 60
    invoke-static {p1, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_3
    const-string v1, "minus"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    const-string v0, "-"

    .line 74
    .line 75
    invoke-static {p1, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :cond_4
    return-object p1
.end method

.method private static getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->addIndexedChar(ILjava/lang/String;ZLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->$VALUES:[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-object v0
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatIndex(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatSeperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme$1;->$SwitchMap$org$apache$poi$sl$usermodel$AutoNumberingScheme:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Hindi alphabetic character followed by a period."

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown Numbered Scheme"

    return-object v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const-string v0, "Hindi numeric character followed by a closing parenthesis."

    return-object v0

    :pswitch_2
    const-string v0, "Japanese with double-byte period."

    return-object v0

    :pswitch_3
    const-string v0, "Hindi numeric character followed by a period."

    return-object v0

    :pswitch_4
    return-object v1

    :pswitch_5
    const-string v0, "Thai numeral enclosed in parentheses."

    return-object v0

    :pswitch_6
    const-string v0, "Thai numeral followed by a closing parenthesis."

    return-object v0

    :pswitch_7
    const-string v0, "Thai numeral followed by a period."

    return-object v0

    :pswitch_8
    const-string v0, "Thai alphabetic character enclosed by parentheses."

    return-object v0

    :pswitch_9
    const-string v0, "Thai alphabetic character followed by a closing parenthesis."

    return-object v0

    :pswitch_a
    const-string v0, "Thai alphabetic character followed by a period."

    return-object v0

    :pswitch_b
    const-string v0, "Double-byte Arabic numbers with double-byte period."

    return-object v0

    :pswitch_c
    const-string v0, "Double-byte Arabic numbers."

    return-object v0

    :pswitch_d
    const-string v0, "Japanese/Korean with single-byte period."

    return-object v0

    :pswitch_e
    const-string v0, "Japanese/Korean."

    return-object v0

    :pswitch_f
    const-string v0, "Bidi Hebrew 2 with ANSI minus symbol."

    return-object v0

    :pswitch_10
    const-string v0, "Bidi Arabic 2 (AraAbjad) with ANSI minus symbol."

    return-object v0

    :pswitch_11
    const-string v0, "Bidi Arabic 1 (AraAlpha) with ANSI minus symbol."

    return-object v0

    :pswitch_12
    const-string v0, "Traditional Chinese with single-byte period."

    return-object v0

    :pswitch_13
    const-string v0, "Traditional Chinese."

    return-object v0

    :pswitch_14
    const-string v0, "Wingdings black circle numbers."

    return-object v0

    :pswitch_15
    const-string v0, "Wingdings white circle numbers."

    return-object v0

    :pswitch_16
    const-string v0, "Double byte circle numbers."

    return-object v0

    :pswitch_17
    const-string v0, "Simplified Chinese with single-byte period."

    return-object v0

    :pswitch_18
    const-string v0, "Simplified Chinese."

    return-object v0

    :pswitch_19
    const-string v0, "Uppercase Roman numeral followed by a closing parenthesis. Example: I), II), III), ..."

    return-object v0

    :pswitch_1a
    const-string v0, "Uppercase Roman numeral enclosed in parentheses. Example: (I), (II), (III), ..."

    return-object v0

    :pswitch_1b
    const-string v0, "Arabic numeral. Example: 1, 2, 3, ..."

    return-object v0

    :pswitch_1c
    const-string v0, "Arabic numeral enclosed in parentheses. Example: (1), (2), (3), ..."

    return-object v0

    :pswitch_1d
    const-string v0, "Uppercase alphabetic character followed by a closing parenthesis. Example: A), B), C), ..."

    return-object v0

    :pswitch_1e
    const-string v0, "Uppercase alphabetic character enclosed in parentheses. Example: (A), (B), (C), ..."

    return-object v0

    :pswitch_1f
    const-string v0, "Lowercase alphabetic character followed by a closing parenthesis. Example: a), b), c), ..."

    return-object v0

    :pswitch_20
    const-string v0, "Lowercase alphabetic character enclosed in parentheses. Example: (a), (b), (c), ..."

    return-object v0

    :pswitch_21
    const-string v0, "Uppercase Roman numeral followed by a period. Example: I., II., III., ..."

    return-object v0

    :pswitch_22
    const-string v0, "Lowercase Roman numeral followed by a period. Example: i., ii., iii., ..."

    return-object v0

    :pswitch_23
    const-string v0, "Lowercase Roman numeral followed by a closing parenthesis. Example: i), ii), iii), ..."

    return-object v0

    :pswitch_24
    const-string v0, "Lowercase Roman numeral enclosed in parentheses. Example: (i), (ii), (iii), ..."

    return-object v0

    :pswitch_25
    const-string v0, "Arabic numeral followed by a period. Example: 1., 2., 3., ..."

    return-object v0

    :pswitch_26
    const-string v0, "Arabic numeral followed by a closing parenthesis. Example: 1), 2), 3), ..."

    return-object v0

    :pswitch_27
    const-string v0, "Uppercase Latin character followed by a period. Example: A., B., C., ..."

    return-object v0

    :pswitch_28
    const-string v0, "Lowercase Latin character followed by a period. Example: a., b., c., ..."

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
