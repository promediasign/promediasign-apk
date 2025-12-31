.class public final enum Lorg/apache/poi/xssf/binary/XSSFBRecordType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xssf/binary/XSSFBRecordType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginHeaderFooter:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginSheet:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBundleSh:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellBlank:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellIsst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellRString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellReal:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellRk:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellSt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtColInfo:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCommentAuthor:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCommentText:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaNum:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtHLink:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtRowHdr:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtSstItem:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtWsDim:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtWsProp:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtXf:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field private static final TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/binary/XSSFBRecordType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Unimplemented:Lorg/apache/poi/xssf/binary/XSSFBRecordType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 44

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v1, "BrtCellBlank"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellBlank:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v4, "BrtCellRk"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellRk:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v4, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v6, "BrtCellError"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v8, "BrtCellBool"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v8, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v10, "BrtCellReal"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellReal:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v10, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v12, "BrtCellSt"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellSt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v12, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v14, "BrtCellIsst"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellIsst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v14, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v13, "BrtFmlaString"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v13, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v15, "BrtFmlaNum"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaNum:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v15, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v11, "BrtFmlaBool"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v11, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v9, "BrtFmlaError"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v9, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v7, "BrtRowHdr"

    invoke-direct {v9, v7, v5, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtRowHdr:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v7, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0xc

    const/16 v3, 0x3e

    const-string v2, "BrtCellRString"

    invoke-direct {v7, v2, v5, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellRString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v3, 0xd

    const/16 v5, 0x81

    move-object/from16 v16, v7

    const-string v7, "BrtBeginSheet"

    invoke-direct {v2, v7, v3, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginSheet:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v7, 0xe

    const/16 v3, 0x93

    move-object/from16 v17, v2

    const-string v2, "BrtWsProp"

    invoke-direct {v5, v2, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtWsProp:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v3, 0xf

    const/16 v7, 0x94

    move-object/from16 v18, v5

    const-string v5, "BrtWsDim"

    invoke-direct {v2, v5, v3, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtWsDim:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v7, 0x10

    const/16 v3, 0x3c

    move-object/from16 v19, v2

    const-string v2, "BrtColInfo"

    invoke-direct {v5, v2, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtColInfo:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v3, 0x11

    const/16 v7, 0x91

    move-object/from16 v20, v5

    const-string v5, "BrtBeginSheetData"

    invoke-direct {v2, v5, v3, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v7, 0x12

    const/16 v3, 0x92

    move-object/from16 v21, v2

    const-string v2, "BrtEndSheetData"

    invoke-direct {v5, v2, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v3, 0x1ee

    const-string v7, "BrtHLink"

    move-object/from16 v22, v5

    const/16 v5, 0x13

    invoke-direct {v2, v7, v5, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtHLink:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v7, 0x14

    const/16 v5, 0x1df

    move-object/from16 v23, v2

    const-string v2, "BrtBeginHeaderFooter"

    invoke-direct {v3, v2, v7, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginHeaderFooter:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x15

    const/16 v7, 0x276

    move-object/from16 v24, v3

    const-string v3, "BrtBeginCommentAuthors"

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v7, 0x16

    const/16 v5, 0x277

    move-object/from16 v25, v2

    const-string v2, "BrtEndCommentAuthors"

    invoke-direct {v3, v2, v7, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x17

    const/16 v7, 0x278

    move-object/from16 v26, v3

    const-string v3, "BrtCommentAuthor"

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCommentAuthor:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x18

    const/16 v7, 0x27b

    move-object/from16 v27, v2

    const-string v2, "BrtBeginComment"

    invoke-direct {v3, v2, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x19

    const/16 v7, 0x27d

    move-object/from16 v28, v3

    const-string v3, "BrtCommentText"

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCommentText:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x1a

    const/16 v7, 0x27c

    move-object/from16 v29, v2

    const-string v2, "BrtEndComment"

    invoke-direct {v3, v2, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x1b

    const/16 v7, 0x2f

    move-object/from16 v30, v3

    const-string v3, "BrtXf"

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtXf:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x1c

    const/16 v7, 0x2c

    move-object/from16 v31, v2

    const-string v2, "BrtFmt"

    invoke-direct {v3, v2, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x1d

    const/16 v7, 0x267

    move-object/from16 v32, v3

    const-string v3, "BrtBeginFmts"

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x1e

    const/16 v7, 0x268

    move-object/from16 v33, v2

    const-string v2, "BrtEndFmts"

    invoke-direct {v3, v2, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x1f

    const/16 v7, 0x269

    move-object/from16 v34, v3

    const-string v3, "BrtBeginCellXFs"

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x20

    const/16 v7, 0x26a

    move-object/from16 v35, v2

    const-string v2, "BrtEndCellXFs"

    invoke-direct {v3, v2, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x21

    const/16 v7, 0x272

    move-object/from16 v36, v3

    const-string v3, "BrtBeginCellStyleXFS"

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x22

    const/16 v7, 0x273

    move-object/from16 v37, v2

    const-string v2, "BrtEndCellStyleXFS"

    invoke-direct {v3, v2, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtSstItem"

    const/16 v7, 0x23

    move-object/from16 v38, v3

    const/16 v3, 0x13

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtSstItem:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x24

    const/16 v7, 0x9f

    move-object/from16 v39, v2

    const-string v2, "BrtBeginSst"

    invoke-direct {v3, v2, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x25

    const/16 v7, 0xa0

    move-object/from16 v40, v3

    const-string v3, "BrtEndSst"

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x26

    const/16 v7, 0x9c

    move-object/from16 v41, v2

    const-string v2, "BrtBundleSh"

    invoke-direct {v3, v2, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBundleSh:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x27

    const/16 v7, 0x817

    move-object/from16 v42, v3

    const-string v3, "BrtAbsPath15"

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v5, 0x28

    const/4 v7, -0x1

    move-object/from16 v43, v2

    const-string v2, "Unimplemented"

    invoke-direct {v3, v2, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->Unimplemented:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/16 v2, 0x29

    new-array v2, v2, [Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v13, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v9, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v3, v2, v0

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->$VALUES:[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->TYPE_MAP:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->values()[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->id:I

    return-void
.end method

.method public static lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->TYPE_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->Unimplemented:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->$VALUES:[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v0}, [Lorg/apache/poi/xssf/binary/XSSFBRecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->id:I

    return v0
.end method
