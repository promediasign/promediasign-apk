.class public final Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;
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
    .locals 190

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v2, "line"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v4, "lineInv"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v6, "triangle"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v8, "rtTriangle"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v10, "rect"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v12, "diamond"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v14, "parallelogram"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v15}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v15, "trapezoid"

    const/16 v13, 0x8

    invoke-direct {v14, v15, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v13, "nonIsoscelesTrapezoid"

    const/16 v11, 0x9

    invoke-direct {v15, v13, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v11, "pentagon"

    const/16 v9, 0xa

    invoke-direct {v13, v11, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v9, "hexagon"

    const/16 v7, 0xb

    invoke-direct {v11, v9, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v7, "heptagon"

    const/16 v5, 0xc

    invoke-direct {v9, v7, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "octagon"

    const/16 v3, 0xd

    invoke-direct {v7, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v3, "decagon"

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v0, "dodecagon"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v0, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "star4"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v3, "star5"

    move-object/from16 v19, v0

    const/16 v0, 0x11

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v0, "star6"

    move-object/from16 v20, v5

    const/16 v5, 0x12

    invoke-direct {v3, v0, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "star7"

    move-object/from16 v21, v3

    const/16 v3, 0x13

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v3, "star8"

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v0, "star10"

    move-object/from16 v23, v5

    const/16 v5, 0x15

    invoke-direct {v3, v0, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "star12"

    move-object/from16 v24, v3

    const/16 v3, 0x16

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v3, "star16"

    move-object/from16 v25, v0

    const/16 v0, 0x17

    invoke-direct {v5, v3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v3, "star24"

    move-object/from16 v26, v5

    const/16 v5, 0x18

    invoke-direct {v0, v3, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "star32"

    move-object/from16 v27, v0

    const/16 v0, 0x19

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "roundRect"

    move-object/from16 v28, v3

    const/16 v3, 0x1a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "round1Rect"

    move-object/from16 v29, v0

    const/16 v0, 0x1b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "round2SameRect"

    move-object/from16 v30, v3

    const/16 v3, 0x1c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "round2DiagRect"

    move-object/from16 v31, v0

    const/16 v0, 0x1d

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "snipRoundRect"

    move-object/from16 v32, v3

    const/16 v3, 0x1e

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "snip1Rect"

    move-object/from16 v33, v0

    const/16 v0, 0x1f

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "snip2SameRect"

    move-object/from16 v34, v3

    const/16 v3, 0x20

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "snip2DiagRect"

    move-object/from16 v35, v0

    const/16 v0, 0x21

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "plaque"

    move-object/from16 v36, v3

    const/16 v3, 0x22

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "ellipse"

    move-object/from16 v37, v0

    const/16 v0, 0x23

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "teardrop"

    move-object/from16 v38, v3

    const/16 v3, 0x24

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "homePlate"

    move-object/from16 v39, v0

    const/16 v0, 0x25

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "chevron"

    move-object/from16 v40, v3

    const/16 v3, 0x26

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "pieWedge"

    move-object/from16 v41, v0

    const/16 v0, 0x27

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "pie"

    move-object/from16 v42, v3

    const/16 v3, 0x28

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "blockArc"

    move-object/from16 v43, v0

    const/16 v0, 0x29

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "donut"

    move-object/from16 v44, v3

    const/16 v3, 0x2a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "noSmoking"

    move-object/from16 v45, v0

    const/16 v0, 0x2b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "rightArrow"

    move-object/from16 v46, v3

    const/16 v3, 0x2c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "leftArrow"

    move-object/from16 v47, v0

    const/16 v0, 0x2d

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "upArrow"

    move-object/from16 v48, v3

    const/16 v3, 0x2e

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "downArrow"

    move-object/from16 v49, v0

    const/16 v0, 0x2f

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "stripedRightArrow"

    move-object/from16 v50, v3

    const/16 v3, 0x30

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "notchedRightArrow"

    move-object/from16 v51, v0

    const/16 v0, 0x31

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "bentUpArrow"

    move-object/from16 v52, v3

    const/16 v3, 0x32

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "leftRightArrow"

    move-object/from16 v53, v0

    const/16 v0, 0x33

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "upDownArrow"

    move-object/from16 v54, v3

    const/16 v3, 0x34

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "leftUpArrow"

    move-object/from16 v55, v0

    const/16 v0, 0x35

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "leftRightUpArrow"

    move-object/from16 v56, v3

    const/16 v3, 0x36

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "quadArrow"

    move-object/from16 v57, v0

    const/16 v0, 0x37

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "leftArrowCallout"

    move-object/from16 v58, v3

    const/16 v3, 0x38

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "rightArrowCallout"

    move-object/from16 v59, v0

    const/16 v0, 0x39

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "upArrowCallout"

    move-object/from16 v60, v3

    const/16 v3, 0x3a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "downArrowCallout"

    move-object/from16 v61, v0

    const/16 v0, 0x3b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "leftRightArrowCallout"

    move-object/from16 v62, v3

    const/16 v3, 0x3c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "upDownArrowCallout"

    move-object/from16 v63, v0

    const/16 v0, 0x3d

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "quadArrowCallout"

    move-object/from16 v64, v3

    const/16 v3, 0x3e

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "bentArrow"

    move-object/from16 v65, v0

    const/16 v0, 0x3f

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "uturnArrow"

    move-object/from16 v66, v3

    const/16 v3, 0x40

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "circularArrow"

    move-object/from16 v67, v0

    const/16 v0, 0x41

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "leftCircularArrow"

    move-object/from16 v68, v3

    const/16 v3, 0x42

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "leftRightCircularArrow"

    move-object/from16 v69, v0

    const/16 v0, 0x43

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "curvedRightArrow"

    move-object/from16 v70, v3

    const/16 v3, 0x44

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "curvedLeftArrow"

    move-object/from16 v71, v0

    const/16 v0, 0x45

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "curvedUpArrow"

    move-object/from16 v72, v3

    const/16 v3, 0x46

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "curvedDownArrow"

    move-object/from16 v73, v0

    const/16 v0, 0x47

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "swooshArrow"

    move-object/from16 v74, v3

    const/16 v3, 0x48

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "cube"

    move-object/from16 v75, v0

    const/16 v0, 0x49

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "can"

    move-object/from16 v76, v3

    const/16 v3, 0x4a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "lightningBolt"

    move-object/from16 v77, v0

    const/16 v0, 0x4b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "heart"

    move-object/from16 v78, v3

    const/16 v3, 0x4c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "sun"

    move-object/from16 v79, v0

    const/16 v0, 0x4d

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "moon"

    move-object/from16 v80, v3

    const/16 v3, 0x4e

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "smileyFace"

    move-object/from16 v81, v0

    const/16 v0, 0x4f

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "irregularSeal1"

    move-object/from16 v82, v3

    const/16 v3, 0x50

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "irregularSeal2"

    move-object/from16 v83, v0

    const/16 v0, 0x51

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "foldedCorner"

    move-object/from16 v84, v3

    const/16 v3, 0x52

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "bevel"

    move-object/from16 v85, v0

    const/16 v0, 0x53

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "frame"

    move-object/from16 v86, v3

    const/16 v3, 0x54

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "halfFrame"

    move-object/from16 v87, v0

    const/16 v0, 0x55

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "corner"

    move-object/from16 v88, v3

    const/16 v3, 0x56

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "diagStripe"

    move-object/from16 v89, v0

    const/16 v0, 0x57

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "chord"

    move-object/from16 v90, v3

    const/16 v3, 0x58

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "arc"

    move-object/from16 v91, v0

    const/16 v0, 0x59

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "leftBracket"

    move-object/from16 v92, v3

    const/16 v3, 0x5a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "rightBracket"

    move-object/from16 v93, v0

    const/16 v0, 0x5b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "leftBrace"

    move-object/from16 v94, v3

    const/16 v3, 0x5c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "rightBrace"

    move-object/from16 v95, v0

    const/16 v0, 0x5d

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "bracketPair"

    move-object/from16 v96, v3

    const/16 v3, 0x5e

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "bracePair"

    move-object/from16 v97, v0

    const/16 v0, 0x5f

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "straightConnector1"

    move-object/from16 v98, v3

    const/16 v3, 0x60

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "bentConnector2"

    move-object/from16 v99, v0

    const/16 v0, 0x61

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "bentConnector3"

    move-object/from16 v100, v3

    const/16 v3, 0x62

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "bentConnector4"

    move-object/from16 v101, v0

    const/16 v0, 0x63

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "bentConnector5"

    move-object/from16 v102, v3

    const/16 v3, 0x64

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "curvedConnector2"

    move-object/from16 v103, v0

    const/16 v0, 0x65

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "curvedConnector3"

    move-object/from16 v104, v3

    const/16 v3, 0x66

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "curvedConnector4"

    move-object/from16 v105, v0

    const/16 v0, 0x67

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "curvedConnector5"

    move-object/from16 v106, v3

    const/16 v3, 0x68

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "callout1"

    move-object/from16 v107, v0

    const/16 v0, 0x69

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "callout2"

    move-object/from16 v108, v3

    const/16 v3, 0x6a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "callout3"

    move-object/from16 v109, v0

    const/16 v0, 0x6b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "accentCallout1"

    move-object/from16 v110, v3

    const/16 v3, 0x6c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "accentCallout2"

    move-object/from16 v111, v0

    const/16 v0, 0x6d

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "accentCallout3"

    move-object/from16 v112, v3

    const/16 v3, 0x6e

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "borderCallout1"

    move-object/from16 v113, v0

    const/16 v0, 0x6f

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "borderCallout2"

    move-object/from16 v114, v3

    const/16 v3, 0x70

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "borderCallout3"

    move-object/from16 v115, v0

    const/16 v0, 0x71

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "accentBorderCallout1"

    move-object/from16 v116, v3

    const/16 v3, 0x72

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "accentBorderCallout2"

    move-object/from16 v117, v0

    const/16 v0, 0x73

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "accentBorderCallout3"

    move-object/from16 v118, v3

    const/16 v3, 0x74

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "wedgeRectCallout"

    move-object/from16 v119, v0

    const/16 v0, 0x75

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "wedgeRoundRectCallout"

    move-object/from16 v120, v3

    const/16 v3, 0x76

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "wedgeEllipseCallout"

    move-object/from16 v121, v0

    const/16 v0, 0x77

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "cloudCallout"

    move-object/from16 v122, v3

    const/16 v3, 0x78

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "cloud"

    move-object/from16 v123, v0

    const/16 v0, 0x79

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "ribbon"

    move-object/from16 v124, v3

    const/16 v3, 0x7a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "ribbon2"

    move-object/from16 v125, v0

    const/16 v0, 0x7b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "ellipseRibbon"

    move-object/from16 v126, v3

    const/16 v3, 0x7c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "ellipseRibbon2"

    move-object/from16 v127, v0

    const/16 v0, 0x7d

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "leftRightRibbon"

    move-object/from16 v128, v3

    const/16 v3, 0x7e

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "verticalScroll"

    move-object/from16 v129, v0

    const/16 v0, 0x7f

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "horizontalScroll"

    move-object/from16 v130, v3

    const/16 v3, 0x80

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "wave"

    move-object/from16 v131, v0

    const/16 v0, 0x81

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "doubleWave"

    move-object/from16 v132, v3

    const/16 v3, 0x82

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "plus"

    move-object/from16 v133, v0

    const/16 v0, 0x83

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartProcess"

    move-object/from16 v134, v3

    const/16 v3, 0x84

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartDecision"

    move-object/from16 v135, v0

    const/16 v0, 0x85

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartInputOutput"

    move-object/from16 v136, v3

    const/16 v3, 0x86

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartPredefinedProcess"

    move-object/from16 v137, v0

    const/16 v0, 0x87

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartInternalStorage"

    move-object/from16 v138, v3

    const/16 v3, 0x88

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartDocument"

    move-object/from16 v139, v0

    const/16 v0, 0x89

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartMultidocument"

    move-object/from16 v140, v3

    const/16 v3, 0x8a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartTerminator"

    move-object/from16 v141, v0

    const/16 v0, 0x8b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartPreparation"

    move-object/from16 v142, v3

    const/16 v3, 0x8c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartManualInput"

    move-object/from16 v143, v0

    const/16 v0, 0x8d

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartManualOperation"

    move-object/from16 v144, v3

    const/16 v3, 0x8e

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartConnector"

    move-object/from16 v145, v0

    const/16 v0, 0x8f

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartPunchedCard"

    move-object/from16 v146, v3

    const/16 v3, 0x90

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartPunchedTape"

    move-object/from16 v147, v0

    const/16 v0, 0x91

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartSummingJunction"

    move-object/from16 v148, v3

    const/16 v3, 0x92

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartOr"

    move-object/from16 v149, v0

    const/16 v0, 0x93

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartCollate"

    move-object/from16 v150, v3

    const/16 v3, 0x94

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartSort"

    move-object/from16 v151, v0

    const/16 v0, 0x95

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartExtract"

    move-object/from16 v152, v3

    const/16 v3, 0x96

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartMerge"

    move-object/from16 v153, v0

    const/16 v0, 0x97

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartOfflineStorage"

    move-object/from16 v154, v3

    const/16 v3, 0x98

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartOnlineStorage"

    move-object/from16 v155, v0

    const/16 v0, 0x99

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartMagneticTape"

    move-object/from16 v156, v3

    const/16 v3, 0x9a

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartMagneticDisk"

    move-object/from16 v157, v0

    const/16 v0, 0x9b

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartMagneticDrum"

    move-object/from16 v158, v3

    const/16 v3, 0x9c

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartDisplay"

    move-object/from16 v159, v0

    const/16 v0, 0x9d

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartDelay"

    move-object/from16 v160, v3

    const/16 v3, 0x9e

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartAlternateProcess"

    move-object/from16 v161, v0

    const/16 v0, 0x9f

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "flowChartOffpageConnector"

    move-object/from16 v162, v3

    const/16 v3, 0xa0

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonBlank"

    move-object/from16 v163, v0

    const/16 v0, 0xa1

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonHome"

    move-object/from16 v164, v3

    const/16 v3, 0xa2

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonHelp"

    move-object/from16 v165, v0

    const/16 v0, 0xa3

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonInformation"

    move-object/from16 v166, v3

    const/16 v3, 0xa4

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonForwardNext"

    move-object/from16 v167, v0

    const/16 v0, 0xa5

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonBackPrevious"

    move-object/from16 v168, v3

    const/16 v3, 0xa6

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonEnd"

    move-object/from16 v169, v0

    const/16 v0, 0xa7

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonBeginning"

    move-object/from16 v170, v3

    const/16 v3, 0xa8

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonReturn"

    move-object/from16 v171, v0

    const/16 v0, 0xa9

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonDocument"

    move-object/from16 v172, v3

    const/16 v3, 0xaa

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonSound"

    move-object/from16 v173, v0

    const/16 v0, 0xab

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "actionButtonMovie"

    move-object/from16 v174, v3

    const/16 v3, 0xac

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "gear6"

    move-object/from16 v175, v0

    const/16 v0, 0xad

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "gear9"

    move-object/from16 v176, v3

    const/16 v3, 0xae

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "funnel"

    move-object/from16 v177, v0

    const/16 v0, 0xaf

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "mathPlus"

    move-object/from16 v178, v3

    const/16 v3, 0xb0

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "mathMinus"

    move-object/from16 v179, v0

    const/16 v0, 0xb1

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "mathMultiply"

    move-object/from16 v180, v3

    const/16 v3, 0xb2

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "mathDivide"

    move-object/from16 v181, v0

    const/16 v0, 0xb3

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "mathEqual"

    move-object/from16 v182, v3

    const/16 v3, 0xb4

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "mathNotEqual"

    move-object/from16 v183, v0

    const/16 v0, 0xb5

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "cornerTabs"

    move-object/from16 v184, v3

    const/16 v3, 0xb6

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "squareTabs"

    move-object/from16 v185, v0

    const/16 v0, 0xb7

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "plaqueTabs"

    move-object/from16 v186, v3

    const/16 v3, 0xb8

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "chartX"

    move-object/from16 v187, v0

    const/16 v0, 0xb9

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "chartStar"

    move-object/from16 v188, v3

    const/16 v3, 0xba

    invoke-direct {v0, v5, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const-string v5, "chartPlus"

    move-object/from16 v189, v0

    const/16 v0, 0xbb

    invoke-direct {v3, v5, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-array v0, v0, [Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    const/4 v5, 0x0

    aput-object v1, v0, v5

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v4, v0, v1

    const/4 v1, 0x3

    aput-object v6, v0, v1

    const/4 v1, 0x4

    aput-object v8, v0, v1

    const/4 v1, 0x5

    aput-object v10, v0, v1

    const/4 v1, 0x6

    aput-object v12, v0, v1

    const/4 v1, 0x7

    aput-object v14, v0, v1

    const/16 v1, 0x8

    aput-object v15, v0, v1

    const/16 v1, 0x9

    aput-object v13, v0, v1

    const/16 v1, 0xa

    aput-object v11, v0, v1

    const/16 v1, 0xb

    aput-object v9, v0, v1

    const/16 v1, 0xc

    aput-object v7, v0, v1

    const/16 v1, 0xd

    aput-object v17, v0, v1

    const/16 v1, 0xe

    aput-object v18, v0, v1

    const/16 v1, 0xf

    aput-object v19, v0, v1

    const/16 v1, 0x10

    aput-object v20, v0, v1

    const/16 v1, 0x11

    aput-object v21, v0, v1

    const/16 v1, 0x12

    aput-object v22, v0, v1

    const/16 v1, 0x13

    aput-object v23, v0, v1

    const/16 v1, 0x14

    aput-object v24, v0, v1

    const/16 v1, 0x15

    aput-object v25, v0, v1

    const/16 v1, 0x16

    aput-object v26, v0, v1

    const/16 v1, 0x17

    aput-object v27, v0, v1

    const/16 v1, 0x18

    aput-object v28, v0, v1

    const/16 v1, 0x19

    aput-object v29, v0, v1

    const/16 v1, 0x1a

    aput-object v30, v0, v1

    const/16 v1, 0x1b

    aput-object v31, v0, v1

    const/16 v1, 0x1c

    aput-object v32, v0, v1

    const/16 v1, 0x1d

    aput-object v33, v0, v1

    const/16 v1, 0x1e

    aput-object v34, v0, v1

    const/16 v1, 0x1f

    aput-object v35, v0, v1

    const/16 v1, 0x20

    aput-object v36, v0, v1

    const/16 v1, 0x21

    aput-object v37, v0, v1

    const/16 v1, 0x22

    aput-object v38, v0, v1

    const/16 v1, 0x23

    aput-object v39, v0, v1

    const/16 v1, 0x24

    aput-object v40, v0, v1

    const/16 v1, 0x25

    aput-object v41, v0, v1

    const/16 v1, 0x26

    aput-object v42, v0, v1

    const/16 v1, 0x27

    aput-object v43, v0, v1

    const/16 v1, 0x28

    aput-object v44, v0, v1

    const/16 v1, 0x29

    aput-object v45, v0, v1

    const/16 v1, 0x2a

    aput-object v46, v0, v1

    const/16 v1, 0x2b

    aput-object v47, v0, v1

    const/16 v1, 0x2c

    aput-object v48, v0, v1

    const/16 v1, 0x2d

    aput-object v49, v0, v1

    const/16 v1, 0x2e

    aput-object v50, v0, v1

    const/16 v1, 0x2f

    aput-object v51, v0, v1

    const/16 v1, 0x30

    aput-object v52, v0, v1

    const/16 v1, 0x31

    aput-object v53, v0, v1

    const/16 v1, 0x32

    aput-object v54, v0, v1

    const/16 v1, 0x33

    aput-object v55, v0, v1

    const/16 v1, 0x34

    aput-object v56, v0, v1

    const/16 v1, 0x35

    aput-object v57, v0, v1

    const/16 v1, 0x36

    aput-object v58, v0, v1

    const/16 v1, 0x37

    aput-object v59, v0, v1

    const/16 v1, 0x38

    aput-object v60, v0, v1

    const/16 v1, 0x39

    aput-object v61, v0, v1

    const/16 v1, 0x3a

    aput-object v62, v0, v1

    const/16 v1, 0x3b

    aput-object v63, v0, v1

    const/16 v1, 0x3c

    aput-object v64, v0, v1

    const/16 v1, 0x3d

    aput-object v65, v0, v1

    const/16 v1, 0x3e

    aput-object v66, v0, v1

    const/16 v1, 0x3f

    aput-object v67, v0, v1

    const/16 v1, 0x40

    aput-object v68, v0, v1

    const/16 v1, 0x41

    aput-object v69, v0, v1

    const/16 v1, 0x42

    aput-object v70, v0, v1

    const/16 v1, 0x43

    aput-object v71, v0, v1

    const/16 v1, 0x44

    aput-object v72, v0, v1

    const/16 v1, 0x45

    aput-object v73, v0, v1

    const/16 v1, 0x46

    aput-object v74, v0, v1

    const/16 v1, 0x47

    aput-object v75, v0, v1

    const/16 v1, 0x48

    aput-object v76, v0, v1

    const/16 v1, 0x49

    aput-object v77, v0, v1

    const/16 v1, 0x4a

    aput-object v78, v0, v1

    const/16 v1, 0x4b

    aput-object v79, v0, v1

    const/16 v1, 0x4c

    aput-object v80, v0, v1

    const/16 v1, 0x4d

    aput-object v81, v0, v1

    const/16 v1, 0x4e

    aput-object v82, v0, v1

    const/16 v1, 0x4f

    aput-object v83, v0, v1

    const/16 v1, 0x50

    aput-object v84, v0, v1

    const/16 v1, 0x51

    aput-object v85, v0, v1

    const/16 v1, 0x52

    aput-object v86, v0, v1

    const/16 v1, 0x53

    aput-object v87, v0, v1

    const/16 v1, 0x54

    aput-object v88, v0, v1

    const/16 v1, 0x55

    aput-object v89, v0, v1

    const/16 v1, 0x56

    aput-object v90, v0, v1

    const/16 v1, 0x57

    aput-object v91, v0, v1

    const/16 v1, 0x58

    aput-object v92, v0, v1

    const/16 v1, 0x59

    aput-object v93, v0, v1

    const/16 v1, 0x5a

    aput-object v94, v0, v1

    const/16 v1, 0x5b

    aput-object v95, v0, v1

    const/16 v1, 0x5c

    aput-object v96, v0, v1

    const/16 v1, 0x5d

    aput-object v97, v0, v1

    const/16 v1, 0x5e

    aput-object v98, v0, v1

    const/16 v1, 0x5f

    aput-object v99, v0, v1

    const/16 v1, 0x60

    aput-object v100, v0, v1

    const/16 v1, 0x61

    aput-object v101, v0, v1

    const/16 v1, 0x62

    aput-object v102, v0, v1

    const/16 v1, 0x63

    aput-object v103, v0, v1

    const/16 v1, 0x64

    aput-object v104, v0, v1

    const/16 v1, 0x65

    aput-object v105, v0, v1

    const/16 v1, 0x66

    aput-object v106, v0, v1

    const/16 v1, 0x67

    aput-object v107, v0, v1

    const/16 v1, 0x68

    aput-object v108, v0, v1

    const/16 v1, 0x69

    aput-object v109, v0, v1

    const/16 v1, 0x6a

    aput-object v110, v0, v1

    const/16 v1, 0x6b

    aput-object v111, v0, v1

    const/16 v1, 0x6c

    aput-object v112, v0, v1

    const/16 v1, 0x6d

    aput-object v113, v0, v1

    const/16 v1, 0x6e

    aput-object v114, v0, v1

    const/16 v1, 0x6f

    aput-object v115, v0, v1

    const/16 v1, 0x70

    aput-object v116, v0, v1

    const/16 v1, 0x71

    aput-object v117, v0, v1

    const/16 v1, 0x72

    aput-object v118, v0, v1

    const/16 v1, 0x73

    aput-object v119, v0, v1

    const/16 v1, 0x74

    aput-object v120, v0, v1

    const/16 v1, 0x75

    aput-object v121, v0, v1

    const/16 v1, 0x76

    aput-object v122, v0, v1

    const/16 v1, 0x77

    aput-object v123, v0, v1

    const/16 v1, 0x78

    aput-object v124, v0, v1

    const/16 v1, 0x79

    aput-object v125, v0, v1

    const/16 v1, 0x7a

    aput-object v126, v0, v1

    const/16 v1, 0x7b

    aput-object v127, v0, v1

    const/16 v1, 0x7c

    aput-object v128, v0, v1

    const/16 v1, 0x7d

    aput-object v129, v0, v1

    const/16 v1, 0x7e

    aput-object v130, v0, v1

    const/16 v1, 0x7f

    aput-object v131, v0, v1

    const/16 v1, 0x80

    aput-object v132, v0, v1

    const/16 v1, 0x81

    aput-object v133, v0, v1

    const/16 v1, 0x82

    aput-object v134, v0, v1

    const/16 v1, 0x83

    aput-object v135, v0, v1

    const/16 v1, 0x84

    aput-object v136, v0, v1

    const/16 v1, 0x85

    aput-object v137, v0, v1

    const/16 v1, 0x86

    aput-object v138, v0, v1

    const/16 v1, 0x87

    aput-object v139, v0, v1

    const/16 v1, 0x88

    aput-object v140, v0, v1

    const/16 v1, 0x89

    aput-object v141, v0, v1

    const/16 v1, 0x8a

    aput-object v142, v0, v1

    const/16 v1, 0x8b

    aput-object v143, v0, v1

    const/16 v1, 0x8c

    aput-object v144, v0, v1

    const/16 v1, 0x8d

    aput-object v145, v0, v1

    const/16 v1, 0x8e

    aput-object v146, v0, v1

    const/16 v1, 0x8f

    aput-object v147, v0, v1

    const/16 v1, 0x90

    aput-object v148, v0, v1

    const/16 v1, 0x91

    aput-object v149, v0, v1

    const/16 v1, 0x92

    aput-object v150, v0, v1

    const/16 v1, 0x93

    aput-object v151, v0, v1

    const/16 v1, 0x94

    aput-object v152, v0, v1

    const/16 v1, 0x95

    aput-object v153, v0, v1

    const/16 v1, 0x96

    aput-object v154, v0, v1

    const/16 v1, 0x97

    aput-object v155, v0, v1

    const/16 v1, 0x98

    aput-object v156, v0, v1

    const/16 v1, 0x99

    aput-object v157, v0, v1

    const/16 v1, 0x9a

    aput-object v158, v0, v1

    const/16 v1, 0x9b

    aput-object v159, v0, v1

    const/16 v1, 0x9c

    aput-object v160, v0, v1

    const/16 v1, 0x9d

    aput-object v161, v0, v1

    const/16 v1, 0x9e

    aput-object v162, v0, v1

    const/16 v1, 0x9f

    aput-object v163, v0, v1

    const/16 v1, 0xa0

    aput-object v164, v0, v1

    const/16 v1, 0xa1

    aput-object v165, v0, v1

    const/16 v1, 0xa2

    aput-object v166, v0, v1

    const/16 v1, 0xa3

    aput-object v167, v0, v1

    const/16 v1, 0xa4

    aput-object v168, v0, v1

    const/16 v1, 0xa5

    aput-object v169, v0, v1

    const/16 v1, 0xa6

    aput-object v170, v0, v1

    const/16 v1, 0xa7

    aput-object v171, v0, v1

    const/16 v1, 0xa8

    aput-object v172, v0, v1

    const/16 v1, 0xa9

    aput-object v173, v0, v1

    const/16 v1, 0xaa

    aput-object v174, v0, v1

    const/16 v1, 0xab

    aput-object v175, v0, v1

    const/16 v1, 0xac

    aput-object v176, v0, v1

    const/16 v1, 0xad

    aput-object v177, v0, v1

    const/16 v1, 0xae

    aput-object v178, v0, v1

    const/16 v1, 0xaf

    aput-object v179, v0, v1

    const/16 v1, 0xb0

    aput-object v180, v0, v1

    const/16 v1, 0xb1

    aput-object v181, v0, v1

    const/16 v1, 0xb2

    aput-object v182, v0, v1

    const/16 v1, 0xb3

    aput-object v183, v0, v1

    const/16 v1, 0xb4

    aput-object v184, v0, v1

    const/16 v1, 0xb5

    aput-object v185, v0, v1

    const/16 v1, 0xb6

    aput-object v186, v0, v1

    const/16 v1, 0xb7

    aput-object v187, v0, v1

    const/16 v1, 0xb8

    aput-object v188, v0, v1

    const/16 v1, 0xb9

    aput-object v189, v0, v1

    const/16 v1, 0xba

    aput-object v3, v0, v1

    move-object/from16 v1, v16

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object v0

    return-object v0
.end method
