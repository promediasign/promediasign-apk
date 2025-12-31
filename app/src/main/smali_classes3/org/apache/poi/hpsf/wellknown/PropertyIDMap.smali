.class public Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final PID_APPNAME:I = 0x12

.field public static final PID_AUTHOR:I = 0x4

.field public static final PID_BEHAVIOUR:I = -0x7ffffffd

.field public static final PID_BYTECOUNT:I = 0x4

.field public static final PID_CATEGORY:I = 0x2

.field public static final PID_CCHWITHSPACES:I = 0x11

.field public static final PID_CHARCOUNT:I = 0x10

.field public static final PID_CODEPAGE:I = 0x1

.field public static final PID_COMMENTS:I = 0x6

.field public static final PID_COMPANY:I = 0xf

.field public static final PID_CONTENTSTATUS:I = 0x1b

.field public static final PID_CONTENTTYPE:I = 0x1a

.field public static final PID_CREATE_DTM:I = 0xc

.field public static final PID_DICTIONARY:I = 0x0

.field public static final PID_DIGSIG:I = 0x18

.field public static final PID_DOCPARTS:I = 0xd

.field public static final PID_DOCVERSION:I = 0x1d

.field public static final PID_EDITTIME:I = 0xa

.field public static final PID_HEADINGPAIR:I = 0xc

.field public static final PID_HIDDENCOUNT:I = 0x9

.field public static final PID_HYPERLINKSCHANGED:I = 0x16

.field public static final PID_KEYWORDS:I = 0x5

.field public static final PID_LANGUAGE:I = 0x1c

.field public static final PID_LASTAUTHOR:I = 0x8

.field public static final PID_LASTPRINTED:I = 0xb

.field public static final PID_LASTSAVE_DTM:I = 0xd

.field public static final PID_LINECOUNT:I = 0x5

.field public static final PID_LINKSDIRTY:I = 0x10

.field public static final PID_LOCALE:I = -0x80000000

.field public static final PID_MANAGER:I = 0xe

.field public static final PID_MAX:I = 0x1f

.field public static final PID_MMCLIPCOUNT:I = 0xa

.field public static final PID_NOTECOUNT:I = 0x8

.field public static final PID_PAGECOUNT:I = 0xe

.field public static final PID_PARCOUNT:I = 0x6

.field public static final PID_PRESFORMAT:I = 0x3

.field public static final PID_REVNUMBER:I = 0x9

.field public static final PID_SCALE:I = 0xb

.field public static final PID_SECURITY:I = 0x13

.field public static final PID_SLIDECOUNT:I = 0x7

.field public static final PID_SUBJECT:I = 0x3

.field public static final PID_TEMPLATE:I = 0x7

.field public static final PID_THUMBNAIL:I = 0x11

.field public static final PID_TITLE:I = 0x2

.field public static final PID_VERSION:I = 0x17

.field public static final PID_WORDCOUNT:I = 0xf

.field private static final documentSummaryInformationIdValues:[[Ljava/lang/Object;

.field private static documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

.field private static final fallbackIdValues:[[Ljava/lang/Object;

.field private static fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

.field private static final summaryInformationIdValues:[[Ljava/lang/Object;

.field private static summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;


# instance fields
.field private final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "PID_TITLE"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v3

    const-string v7, "PID_SUBJECT"

    aput-object v7, v6, v5

    const-wide/16 v7, 0x4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v3

    const-string v9, "PID_AUTHOR"

    aput-object v9, v8, v5

    const-wide/16 v9, 0x5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v9, v10, v3

    const-string v11, "PID_KEYWORDS"

    aput-object v11, v10, v5

    const-wide/16 v11, 0x6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v11, v12, v3

    const-string v13, "PID_COMMENTS"

    aput-object v13, v12, v5

    const-wide/16 v13, 0x7

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-array v14, v1, [Ljava/lang/Object;

    aput-object v13, v14, v3

    const-string v15, "PID_TEMPLATE"

    aput-object v15, v14, v5

    const-wide/16 v15, 0x8

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v15, v5, v3

    const-string v17, "PID_LASTAUTHOR"

    const/16 v16, 0x1

    aput-object v17, v5, v16

    const-wide/16 v17, 0x9

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v18, v15

    new-array v15, v1, [Ljava/lang/Object;

    aput-object v17, v15, v3

    const-string v19, "PID_REVNUMBER"

    aput-object v19, v15, v16

    const-wide/16 v19, 0xa

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v20, v13

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v19, v13, v3

    const-string v21, "PID_EDITTIME"

    aput-object v21, v13, v16

    const-wide/16 v21, 0xb

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v22, v11

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v21, v11, v3

    const-string v23, "PID_LASTPRINTED"

    aput-object v23, v11, v16

    const-wide/16 v23, 0xc

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v24, v9

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v23, v9, v3

    const-string v25, "PID_CREATE_DTM"

    aput-object v25, v9, v16

    const-wide/16 v25, 0xd

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v26, v7

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v25, v7, v3

    const-string v27, "PID_LASTSAVE_DTM"

    aput-object v27, v7, v16

    const-wide/16 v27, 0xe

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v28, v4

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v27, v4, v3

    const-string v29, "PID_PAGECOUNT"

    aput-object v29, v4, v16

    const-wide/16 v29, 0xf

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v30, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v29, v0, v3

    const-string v31, "PID_WORDCOUNT"

    aput-object v31, v0, v16

    const-wide/16 v31, 0x10

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v32, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v31, v0, v3

    const-string v33, "PID_CHARCOUNT"

    aput-object v33, v0, v16

    const-wide/16 v33, 0x11

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v36, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v35, v0, v3

    const-string v35, "PID_THUMBNAIL"

    aput-object v35, v0, v16

    const-wide/16 v37, 0x12

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v37, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v35, v0, v3

    const-string v35, "PID_APPNAME"

    aput-object v35, v0, v16

    const-wide/16 v38, 0x13

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v38, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v35, v0, v3

    const-string v35, "PID_SECURITY"

    aput-object v35, v0, v16

    const/16 v1, 0x12

    move-object/from16 v39, v0

    new-array v0, v1, [[Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object v6, v0, v16

    const/4 v2, 0x2

    aput-object v8, v0, v2

    const/4 v2, 0x3

    aput-object v10, v0, v2

    const/4 v6, 0x4

    aput-object v12, v0, v6

    const/4 v8, 0x5

    aput-object v14, v0, v8

    const/4 v10, 0x6

    aput-object v5, v0, v10

    const/4 v5, 0x7

    aput-object v15, v0, v5

    const/16 v12, 0x8

    aput-object v13, v0, v12

    const/16 v13, 0x9

    aput-object v11, v0, v13

    const/16 v11, 0xa

    aput-object v9, v0, v11

    const/16 v9, 0xb

    aput-object v7, v0, v9

    const/16 v7, 0xc

    aput-object v4, v0, v7

    const/16 v4, 0xd

    aput-object v32, v0, v4

    const/16 v14, 0xe

    aput-object v36, v0, v14

    const/16 v15, 0xf

    aput-object v37, v0, v15

    const/16 v32, 0x10

    aput-object v38, v0, v32

    const/16 v1, 0x11

    aput-object v39, v0, v1

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationIdValues:[[Ljava/lang/Object;

    const-wide/16 v37, 0x0

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v39, "PID_DICTIONARY"

    const/4 v15, 0x2

    new-array v14, v15, [Ljava/lang/Object;

    aput-object v0, v14, v3

    const/4 v0, 0x1

    aput-object v39, v14, v0

    const-wide/16 v40, 0x1

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v42, "PID_CODEPAGE"

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v16, v4, v3

    aput-object v42, v4, v0

    const-string v43, "PID_CATEGORY"

    new-array v7, v15, [Ljava/lang/Object;

    aput-object v30, v7, v3

    aput-object v43, v7, v0

    const-string v44, "PID_PRESFORMAT"

    new-array v9, v15, [Ljava/lang/Object;

    aput-object v28, v9, v3

    aput-object v44, v9, v0

    new-array v11, v15, [Ljava/lang/Object;

    aput-object v26, v11, v3

    const-string v45, "PID_BYTECOUNT"

    aput-object v45, v11, v0

    new-array v13, v15, [Ljava/lang/Object;

    aput-object v24, v13, v3

    const-string v46, "PID_LINECOUNT"

    aput-object v46, v13, v0

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v22, v12, v3

    const-string v47, "PID_PARCOUNT"

    aput-object v47, v12, v0

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v20, v5, v3

    const-string v16, "PID_SLIDECOUNT"

    aput-object v16, v5, v0

    new-array v10, v15, [Ljava/lang/Object;

    aput-object v18, v10, v3

    const-string v16, "PID_NOTECOUNT"

    aput-object v16, v10, v0

    new-array v8, v15, [Ljava/lang/Object;

    aput-object v17, v8, v3

    const-string v16, "PID_HIDDENCOUNT"

    aput-object v16, v8, v0

    new-array v6, v15, [Ljava/lang/Object;

    aput-object v19, v6, v3

    const-string v16, "PID_MMCLIPCOUNT"

    aput-object v16, v6, v0

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v21, v2, v3

    const-string v16, "PID_SCALE"

    aput-object v16, v2, v0

    new-array v1, v15, [Ljava/lang/Object;

    aput-object v23, v1, v3

    const-string v16, "PID_HEADINGPAIR"

    aput-object v16, v1, v0

    new-array v0, v15, [Ljava/lang/Object;

    aput-object v25, v0, v3

    const-string v35, "PID_DOCPARTS"

    const/16 v16, 0x1

    aput-object v35, v0, v16

    move-object/from16 v48, v0

    new-array v0, v15, [Ljava/lang/Object;

    aput-object v27, v0, v3

    const-string v35, "PID_MANAGER"

    aput-object v35, v0, v16

    move-object/from16 v49, v0

    new-array v0, v15, [Ljava/lang/Object;

    aput-object v29, v0, v3

    const-string v35, "PID_COMPANY"

    aput-object v35, v0, v16

    move-object/from16 v50, v0

    new-array v0, v15, [Ljava/lang/Object;

    aput-object v31, v0, v3

    const-string v35, "PID_LINKSDIRTY"

    aput-object v35, v0, v16

    move-object/from16 v51, v0

    const/16 v15, 0x11

    new-array v0, v15, [[Ljava/lang/Object;

    aput-object v14, v0, v3

    aput-object v4, v0, v16

    const/4 v4, 0x2

    aput-object v7, v0, v4

    const/4 v4, 0x3

    aput-object v9, v0, v4

    const/4 v4, 0x4

    aput-object v11, v0, v4

    const/4 v4, 0x5

    aput-object v13, v0, v4

    const/4 v4, 0x6

    aput-object v12, v0, v4

    const/4 v4, 0x7

    aput-object v5, v0, v4

    const/16 v4, 0x8

    aput-object v10, v0, v4

    const/16 v4, 0x9

    aput-object v8, v0, v4

    const/16 v4, 0xa

    aput-object v6, v0, v4

    const/16 v4, 0xb

    aput-object v2, v0, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0xd

    aput-object v48, v0, v1

    const/16 v1, 0xe

    aput-object v49, v0, v1

    const/16 v1, 0xf

    aput-object v50, v0, v1

    aput-object v51, v0, v32

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationIdValues:[[Ljava/lang/Object;

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v39, v2, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    aput-object v42, v5, v0

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v30, v4, v3

    aput-object v43, v4, v0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v28, v6, v3

    aput-object v44, v6, v0

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v26, v7, v3

    aput-object v45, v7, v0

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v24, v8, v3

    aput-object v46, v8, v0

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v22, v9, v3

    aput-object v47, v9, v0

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v20, v10, v3

    const-string v11, "PID_SLIDECOUNT"

    aput-object v11, v10, v0

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v18, v11, v3

    const-string v12, "PID_NOTECOUNT"

    aput-object v12, v11, v0

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v17, v12, v3

    const-string v13, "PID_HIDDENCOUNT"

    aput-object v13, v12, v0

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v19, v13, v3

    const-string v14, "PID_MMCLIPCOUNT"

    aput-object v14, v13, v0

    new-array v14, v1, [Ljava/lang/Object;

    aput-object v21, v14, v3

    const-string v15, "PID_SCALE"

    aput-object v15, v14, v0

    new-array v15, v1, [Ljava/lang/Object;

    aput-object v23, v15, v3

    const-string v16, "PID_HEADINGPAIR"

    aput-object v16, v15, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v25, v0, v3

    const-string v17, "PID_DOCPARTS"

    const/16 v16, 0x1

    aput-object v17, v0, v16

    move-object/from16 v17, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v27, v0, v3

    const-string v18, "PID_MANAGER"

    aput-object v18, v0, v16

    move-object/from16 v18, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v29, v0, v3

    const-string v19, "PID_COMPANY"

    aput-object v19, v0, v16

    move-object/from16 v19, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v31, v0, v3

    const-string v20, "PID_LINKSDIRTY"

    aput-object v20, v0, v16

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v21, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v20, v0, v3

    const-string v20, "PID_CCHWITHSPACES"

    aput-object v20, v0, v16

    const-wide/16 v22, 0x16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v22, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v20, v0, v3

    const-string v20, "PID_HYPERLINKSCHANGED"

    aput-object v20, v0, v16

    const-wide/16 v23, 0x17

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v23, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v20, v0, v3

    const-string v20, "PID_VERSION"

    aput-object v20, v0, v16

    const-wide/16 v24, 0x18

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v24, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v20, v0, v3

    const-string v20, "PID_DIGSIG"

    aput-object v20, v0, v16

    const-wide/16 v25, 0x1a

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v25, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v20, v0, v3

    const-string v20, "PID_CONTENTTYPE"

    aput-object v20, v0, v16

    const-wide/16 v26, 0x1b

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v26, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v20, v0, v3

    const-string v20, "PID_CONTENTSTATUS"

    aput-object v20, v0, v16

    const-wide/16 v27, 0x1c

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v27, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v20, v0, v3

    const-string v20, "PID_LANGUAGE"

    aput-object v20, v0, v16

    const-wide/16 v28, 0x1d

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v28, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v20, v0, v3

    const-string v20, "PID_DOCVERSION"

    aput-object v20, v0, v16

    const-wide/16 v29, 0x1f

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v29, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v20, v0, v3

    const-string v20, "PID_MAX"

    aput-object v20, v0, v16

    const-wide/32 v30, -0x80000000

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v30, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v20, v0, v3

    const-string v20, "PID_LOCALE"

    aput-object v20, v0, v16

    const-wide/32 v33, -0x7ffffffd

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v31, v0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v20, v0, v3

    const-string v20, "PID_BEHAVIOUR"

    aput-object v20, v0, v16

    const/16 v1, 0x1c

    new-array v1, v1, [[Ljava/lang/Object;

    aput-object v2, v1, v3

    aput-object v5, v1, v16

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v6, v1, v2

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v8, v1, v2

    const/4 v2, 0x6

    aput-object v9, v1, v2

    const/4 v2, 0x7

    aput-object v10, v1, v2

    const/16 v2, 0x8

    aput-object v11, v1, v2

    const/16 v2, 0x9

    aput-object v12, v1, v2

    const/16 v2, 0xa

    aput-object v13, v1, v2

    const/16 v2, 0xb

    aput-object v14, v1, v2

    const/16 v2, 0xc

    aput-object v15, v1, v2

    const/16 v2, 0xd

    aput-object v17, v1, v2

    const/16 v2, 0xe

    aput-object v18, v1, v2

    const/16 v2, 0xf

    aput-object v19, v1, v2

    aput-object v21, v1, v32

    const/16 v2, 0x11

    aput-object v22, v1, v2

    const/16 v2, 0x12

    aput-object v23, v1, v2

    const/16 v2, 0x13

    aput-object v24, v1, v2

    const/16 v2, 0x14

    aput-object v25, v1, v2

    const/16 v2, 0x15

    aput-object v26, v1, v2

    const/16 v2, 0x16

    aput-object v27, v1, v2

    const/16 v2, 0x17

    aput-object v28, v1, v2

    const/16 v2, 0x18

    aput-object v29, v1, v2

    const/16 v2, 0x19

    aput-object v30, v1, v2

    const/16 v2, 0x1a

    aput-object v31, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackIdValues:[[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>([[Ljava/lang/Object;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    aget-object v5, v4, v2

    check-cast v5, Ljava/lang/Long;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 3

    const-class v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    sget-object v2, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationIdValues:[[Ljava/lang/Object;

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;-><init>([[Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getFallbackProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 3

    const-class v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    sget-object v2, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackIdValues:[[Ljava/lang/Object;

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;-><init>([[Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 3

    const-class v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    sget-object v2, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationIdValues:[[Ljava/lang/Object;

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;-><init>([[Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object p0

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "s2: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->put(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
