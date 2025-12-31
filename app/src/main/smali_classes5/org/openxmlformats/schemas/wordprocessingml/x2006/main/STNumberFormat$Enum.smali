.class public final Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method static constructor <clinit>()V
    .locals 63

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v2, "decimal"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "upperRoman"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v6, "lowerRoman"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v8, "upperLetter"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v10, "lowerLetter"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v11}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v12, "ordinal"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v13}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v14, "cardinalText"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v15}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v15, "ordinalText"

    const/16 v13, 0x8

    invoke-direct {v14, v15, v13}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v13, "hex"

    const/16 v11, 0x9

    invoke-direct {v15, v13, v11}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v11, "chicago"

    const/16 v9, 0xa

    invoke-direct {v13, v11, v9}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v9, "ideographDigital"

    const/16 v7, 0xb

    invoke-direct {v11, v9, v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v7, "japaneseCounting"

    const/16 v5, 0xc

    invoke-direct {v9, v7, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "aiueo"

    const/16 v3, 0xd

    invoke-direct {v7, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v3, "iroha"

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v0, "decimalFullWidth"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v0, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "decimalHalfWidth"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v3, "japaneseLegal"

    move-object/from16 v19, v0

    const/16 v0, 0x11

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v0, "japaneseDigitalTenThousand"

    move-object/from16 v20, v5

    const/16 v5, 0x12

    invoke-direct {v3, v0, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "decimalEnclosedCircle"

    move-object/from16 v21, v3

    const/16 v3, 0x13

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v3, "decimalFullWidth2"

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v0, "aiueoFullWidth"

    move-object/from16 v23, v5

    const/16 v5, 0x15

    invoke-direct {v3, v0, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "irohaFullWidth"

    move-object/from16 v24, v3

    const/16 v3, 0x16

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v3, "decimalZero"

    move-object/from16 v25, v0

    const/16 v0, 0x17

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v3, "bullet"

    move-object/from16 v26, v5

    const/16 v5, 0x18

    invoke-direct {v0, v3, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "ganada"

    move-object/from16 v27, v0

    const/16 v0, 0x19

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "chosung"

    move-object/from16 v28, v3

    const/16 v3, 0x1a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "decimalEnclosedFullstop"

    move-object/from16 v29, v0

    const/16 v0, 0x1b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "decimalEnclosedParen"

    move-object/from16 v30, v3

    const/16 v3, 0x1c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "decimalEnclosedCircleChinese"

    move-object/from16 v31, v0

    const/16 v0, 0x1d

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "ideographEnclosedCircle"

    move-object/from16 v32, v3

    const/16 v3, 0x1e

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "ideographTraditional"

    move-object/from16 v33, v0

    const/16 v0, 0x1f

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "ideographZodiac"

    move-object/from16 v34, v3

    const/16 v3, 0x20

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "ideographZodiacTraditional"

    move-object/from16 v35, v0

    const/16 v0, 0x21

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "taiwaneseCounting"

    move-object/from16 v36, v3

    const/16 v3, 0x22

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "ideographLegalTraditional"

    move-object/from16 v37, v0

    const/16 v0, 0x23

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "taiwaneseCountingThousand"

    move-object/from16 v38, v3

    const/16 v3, 0x24

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "taiwaneseDigital"

    move-object/from16 v39, v0

    const/16 v0, 0x25

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "chineseCounting"

    move-object/from16 v40, v3

    const/16 v3, 0x26

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "chineseLegalSimplified"

    move-object/from16 v41, v0

    const/16 v0, 0x27

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "chineseCountingThousand"

    move-object/from16 v42, v3

    const/16 v3, 0x28

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "koreanDigital"

    move-object/from16 v43, v0

    const/16 v0, 0x29

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "koreanCounting"

    move-object/from16 v44, v3

    const/16 v3, 0x2a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "koreanLegal"

    move-object/from16 v45, v0

    const/16 v0, 0x2b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "koreanDigital2"

    move-object/from16 v46, v3

    const/16 v3, 0x2c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "vietnameseCounting"

    move-object/from16 v47, v0

    const/16 v0, 0x2d

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "russianLower"

    move-object/from16 v48, v3

    const/16 v3, 0x2e

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "russianUpper"

    move-object/from16 v49, v0

    const/16 v0, 0x2f

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "none"

    move-object/from16 v50, v3

    const/16 v3, 0x30

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "numberInDash"

    move-object/from16 v51, v0

    const/16 v0, 0x31

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "hebrew1"

    move-object/from16 v52, v3

    const/16 v3, 0x32

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "hebrew2"

    move-object/from16 v53, v0

    const/16 v0, 0x33

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "arabicAlpha"

    move-object/from16 v54, v3

    const/16 v3, 0x34

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "arabicAbjad"

    move-object/from16 v55, v0

    const/16 v0, 0x35

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "hindiVowels"

    move-object/from16 v56, v3

    const/16 v3, 0x36

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "hindiConsonants"

    move-object/from16 v57, v0

    const/16 v0, 0x37

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "hindiNumbers"

    move-object/from16 v58, v3

    const/16 v3, 0x38

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "hindiCounting"

    move-object/from16 v59, v0

    const/16 v0, 0x39

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "thaiLetters"

    move-object/from16 v60, v3

    const/16 v3, 0x3a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "thaiNumbers"

    move-object/from16 v61, v0

    const/16 v0, 0x3b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v5, "thaiCounting"

    move-object/from16 v62, v3

    const/16 v3, 0x3c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-array v3, v3, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v4, v3, v1

    const/4 v1, 0x3

    aput-object v6, v3, v1

    const/4 v1, 0x4

    aput-object v8, v3, v1

    const/4 v1, 0x5

    aput-object v10, v3, v1

    const/4 v1, 0x6

    aput-object v12, v3, v1

    const/4 v1, 0x7

    aput-object v14, v3, v1

    const/16 v1, 0x8

    aput-object v15, v3, v1

    const/16 v1, 0x9

    aput-object v13, v3, v1

    const/16 v1, 0xa

    aput-object v11, v3, v1

    const/16 v1, 0xb

    aput-object v9, v3, v1

    const/16 v1, 0xc

    aput-object v7, v3, v1

    const/16 v1, 0xd

    aput-object v17, v3, v1

    const/16 v1, 0xe

    aput-object v18, v3, v1

    const/16 v1, 0xf

    aput-object v19, v3, v1

    const/16 v1, 0x10

    aput-object v20, v3, v1

    const/16 v1, 0x11

    aput-object v21, v3, v1

    const/16 v1, 0x12

    aput-object v22, v3, v1

    const/16 v1, 0x13

    aput-object v23, v3, v1

    const/16 v1, 0x14

    aput-object v24, v3, v1

    const/16 v1, 0x15

    aput-object v25, v3, v1

    const/16 v1, 0x16

    aput-object v26, v3, v1

    const/16 v1, 0x17

    aput-object v27, v3, v1

    const/16 v1, 0x18

    aput-object v28, v3, v1

    const/16 v1, 0x19

    aput-object v29, v3, v1

    const/16 v1, 0x1a

    aput-object v30, v3, v1

    const/16 v1, 0x1b

    aput-object v31, v3, v1

    const/16 v1, 0x1c

    aput-object v32, v3, v1

    const/16 v1, 0x1d

    aput-object v33, v3, v1

    const/16 v1, 0x1e

    aput-object v34, v3, v1

    const/16 v1, 0x1f

    aput-object v35, v3, v1

    const/16 v1, 0x20

    aput-object v36, v3, v1

    const/16 v1, 0x21

    aput-object v37, v3, v1

    const/16 v1, 0x22

    aput-object v38, v3, v1

    const/16 v1, 0x23

    aput-object v39, v3, v1

    const/16 v1, 0x24

    aput-object v40, v3, v1

    const/16 v1, 0x25

    aput-object v41, v3, v1

    const/16 v1, 0x26

    aput-object v42, v3, v1

    const/16 v1, 0x27

    aput-object v43, v3, v1

    const/16 v1, 0x28

    aput-object v44, v3, v1

    const/16 v1, 0x29

    aput-object v45, v3, v1

    const/16 v1, 0x2a

    aput-object v46, v3, v1

    const/16 v1, 0x2b

    aput-object v47, v3, v1

    const/16 v1, 0x2c

    aput-object v48, v3, v1

    const/16 v1, 0x2d

    aput-object v49, v3, v1

    const/16 v1, 0x2e

    aput-object v50, v3, v1

    const/16 v1, 0x2f

    aput-object v51, v3, v1

    const/16 v1, 0x30

    aput-object v52, v3, v1

    const/16 v1, 0x31

    aput-object v53, v3, v1

    const/16 v1, 0x32

    aput-object v54, v3, v1

    const/16 v1, 0x33

    aput-object v55, v3, v1

    const/16 v1, 0x34

    aput-object v56, v3, v1

    const/16 v1, 0x35

    aput-object v57, v3, v1

    const/16 v1, 0x36

    aput-object v58, v3, v1

    const/16 v1, 0x37

    aput-object v59, v3, v1

    const/16 v1, 0x38

    aput-object v60, v3, v1

    const/16 v1, 0x39

    aput-object v61, v3, v1

    const/16 v1, 0x3a

    aput-object v62, v3, v1

    const/16 v1, 0x3b

    aput-object v0, v3, v1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object v0

    return-object v0
.end method
