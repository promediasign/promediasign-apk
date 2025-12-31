.class public final Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType;
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
    .locals 31

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v2, "wholeTable"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v4, "headerRow"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v6, "totalRow"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v8, "firstColumn"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v10, "lastColumn"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v12, "firstRowStripe"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v13}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v14, "secondRowStripe"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v15}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v15, "firstColumnStripe"

    const/16 v13, 0x8

    invoke-direct {v14, v15, v13}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v13, "secondColumnStripe"

    const/16 v11, 0x9

    invoke-direct {v15, v13, v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v11, "firstHeaderCell"

    const/16 v9, 0xa

    invoke-direct {v13, v11, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v9, "lastHeaderCell"

    const/16 v7, 0xb

    invoke-direct {v11, v9, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v7, "firstTotalCell"

    const/16 v5, 0xc

    invoke-direct {v9, v7, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v5, "lastTotalCell"

    const/16 v3, 0xd

    invoke-direct {v7, v5, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v3, "firstSubtotalColumn"

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v0, "secondSubtotalColumn"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v0, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v5, "thirdSubtotalColumn"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v3, "firstSubtotalRow"

    move-object/from16 v19, v0

    const/16 v0, 0x11

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v0, "secondSubtotalRow"

    move-object/from16 v20, v5

    const/16 v5, 0x12

    invoke-direct {v3, v0, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v5, "thirdSubtotalRow"

    move-object/from16 v21, v3

    const/16 v3, 0x13

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v3, "blankRow"

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v0, "firstColumnSubheading"

    move-object/from16 v23, v5

    const/16 v5, 0x15

    invoke-direct {v3, v0, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v5, "secondColumnSubheading"

    move-object/from16 v24, v3

    const/16 v3, 0x16

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v3, "thirdColumnSubheading"

    move-object/from16 v25, v0

    const/16 v0, 0x17

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v3, "firstRowSubheading"

    move-object/from16 v26, v5

    const/16 v5, 0x18

    invoke-direct {v0, v3, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v5, "secondRowSubheading"

    move-object/from16 v27, v0

    const/16 v0, 0x19

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v5, "thirdRowSubheading"

    move-object/from16 v28, v3

    const/16 v3, 0x1a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v5, "pageFieldLabels"

    move-object/from16 v29, v0

    const/16 v0, 0x1b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    const-string v5, "pageFieldValues"

    move-object/from16 v30, v3

    const/16 v3, 0x1c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;-><init>(Ljava/lang/String;I)V

    new-array v3, v3, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

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

    aput-object v0, v3, v1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-result-object v0

    return-object v0
.end method
