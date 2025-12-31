.class public final enum Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/ToDateTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatTokenEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum AM_PM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum BC_AD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/util/List<",
            "Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum CC:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum D:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum DAY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum DD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum DDD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum DY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum E:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum EE:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FF:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum HH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum HH12:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum HH24:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum I:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum IY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum IYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum IYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum J:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum MI:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum MM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum MON:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum MONTH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum Q:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum RM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum RR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum RRRR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum SCC:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum SS:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum SSSSS:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum SYYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum TZD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum TZH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum TZM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum TZR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum Y:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum YY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum YYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum YYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;


# instance fields
.field private final patternToUse:Ljava/util/regex/Pattern;

.field private final toDateParslet:Lorg/h2/util/ToDateTokenizer$ToDateParslet;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    sget-object v1, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const-string v2, "YYYY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->YYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v2, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v4, "SYYYY"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v2, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SYYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v4, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v6, "IYYY"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v4, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->IYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v6, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v8, "YYY"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v6, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->YYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v8, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v10, "IYY"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v8, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->IYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v10, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v12, "YY"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v10, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->YY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v12, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v14, "IY"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v12, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->IY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v14, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v15, "SCC"

    const/4 v13, 0x7

    invoke-direct {v14, v15, v13, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v14, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SCC:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v15, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v13, "CC"

    const/16 v11, 0x8

    invoke-direct {v15, v13, v11, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v15, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CC:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v11, "RRRR"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->RRRR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v11, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v9, "RR"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v11, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->RR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v9, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v7, 0xb

    sget-object v5, Lorg/h2/util/ToDateTokenizer;->PATTERN_BC_AD:Ljava/util/regex/Pattern;

    const-string v3, "BC_AD"

    invoke-direct {v9, v3, v7, v1, v5}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;Ljava/util/regex/Pattern;)V

    sput-object v9, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->BC_AD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    sget-object v5, Lorg/h2/util/ToDateTokenizer;->PARSLET_MONTH:Lorg/h2/util/ToDateTokenizer$MonthParslet;

    const-string v7, "MONTH"

    move-object/from16 v16, v9

    const/16 v9, 0xc

    invoke-direct {v3, v7, v9, v5}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MONTH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v9, "MON"

    move-object/from16 v17, v3

    const/16 v3, 0xd

    invoke-direct {v7, v9, v3, v5}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MON:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v9, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v3, "MM"

    move-object/from16 v18, v7

    const/16 v7, 0xe

    invoke-direct {v9, v3, v7, v5}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v9, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v7, "RM"

    move-object/from16 v19, v9

    const/16 v9, 0xf

    invoke-direct {v3, v7, v9, v5}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->RM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    sget-object v9, Lorg/h2/util/ToDateTokenizer;->PARSLET_DAY:Lorg/h2/util/ToDateTokenizer$DayParslet;

    move-object/from16 v20, v3

    const-string v3, "DDD"

    move-object/from16 v21, v11

    const/16 v11, 0x10

    invoke-direct {v7, v3, v11, v9}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DDD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v11, "DAY"

    move-object/from16 v22, v7

    const/16 v7, 0x11

    invoke-direct {v3, v11, v7, v9}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DAY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v11, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v7, "DD"

    move-object/from16 v23, v3

    const/16 v3, 0x12

    invoke-direct {v11, v7, v3, v9}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v11, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v3, "DY"

    move-object/from16 v24, v11

    const/16 v11, 0x13

    invoke-direct {v7, v3, v11, v9}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    sget-object v11, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    move-object/from16 v25, v7

    const-string v7, "HH24"

    move-object/from16 v26, v13

    const/16 v13, 0x14

    invoke-direct {v3, v7, v13, v11}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->HH24:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v13, "HH12"

    move-object/from16 v27, v3

    const/16 v3, 0x15

    invoke-direct {v7, v13, v3, v11}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->HH12:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v3, "HH"

    move-object/from16 v28, v7

    const/16 v7, 0x16

    invoke-direct {v13, v3, v7, v11}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->HH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v7, "MI"

    move-object/from16 v29, v13

    const/16 v13, 0x17

    invoke-direct {v3, v7, v13, v11}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MI:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v13, "SSSSS"

    move-object/from16 v30, v3

    const/16 v3, 0x18

    invoke-direct {v7, v13, v3, v11}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SSSSS:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v13, "SS"

    move-object/from16 v31, v7

    const/16 v7, 0x19

    invoke-direct {v3, v13, v7, v11}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SS:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v13, 0x1a

    move-object/from16 v32, v3

    sget-object v3, Lorg/h2/util/ToDateTokenizer;->PATTERN_FF:Ljava/util/regex/Pattern;

    move-object/from16 v33, v15

    const-string v15, "FF"

    invoke-direct {v7, v15, v13, v11, v3}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;Ljava/util/regex/Pattern;)V

    sput-object v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->FF:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v13, "TZH"

    const/16 v15, 0x1b

    invoke-direct {v3, v13, v15, v11}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v15, "TZM"

    move-object/from16 v34, v3

    const/16 v3, 0x1c

    invoke-direct {v13, v15, v3, v11}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v15, "TZR"

    move-object/from16 v35, v13

    const/16 v13, 0x1d

    invoke-direct {v3, v15, v13, v11}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v15, "TZD"

    move-object/from16 v36, v3

    const/16 v3, 0x1e

    invoke-direct {v13, v15, v3, v11}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v15, 0x1f

    move-object/from16 v37, v13

    sget-object v13, Lorg/h2/util/ToDateTokenizer;->PATTERN_AM_PM:Ljava/util/regex/Pattern;

    move-object/from16 v38, v7

    const-string v7, "AM_PM"

    invoke-direct {v3, v7, v15, v11, v13}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;Ljava/util/regex/Pattern;)V

    sput-object v3, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->AM_PM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v11, "EE"

    const/16 v13, 0x20

    invoke-direct {v7, v11, v13, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v7, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->EE:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v11, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v13, "E"

    const/16 v15, 0x21

    invoke-direct {v11, v13, v15, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v11, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->E:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v15, "Y"

    move-object/from16 v39, v11

    const/16 v11, 0x22

    invoke-direct {v13, v15, v11, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->Y:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v11, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v15, "I"

    move-object/from16 v40, v13

    const/16 v13, 0x23

    invoke-direct {v11, v15, v13, v1}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v11, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->I:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v13, "Q"

    const/16 v15, 0x24

    invoke-direct {v1, v13, v15, v5}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->Q:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v5, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v13, "D"

    const/16 v15, 0x25

    invoke-direct {v5, v13, v15, v9}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v5, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->D:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v15, "J"

    move-object/from16 v41, v5

    const/16 v5, 0x26

    invoke-direct {v13, v15, v5, v9}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v13, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->J:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v5, 0x27

    new-array v5, v5, [Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/4 v9, 0x0

    aput-object v0, v5, v9

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v14, v5, v0

    const/16 v0, 0x8

    aput-object v33, v5, v0

    const/16 v0, 0x9

    aput-object v26, v5, v0

    const/16 v0, 0xa

    aput-object v21, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    const/16 v0, 0xc

    aput-object v17, v5, v0

    const/16 v0, 0xd

    aput-object v18, v5, v0

    const/16 v0, 0xe

    aput-object v19, v5, v0

    const/16 v0, 0xf

    aput-object v20, v5, v0

    const/16 v0, 0x10

    aput-object v22, v5, v0

    const/16 v0, 0x11

    aput-object v23, v5, v0

    const/16 v0, 0x12

    aput-object v24, v5, v0

    const/16 v0, 0x13

    aput-object v25, v5, v0

    const/16 v0, 0x14

    aput-object v27, v5, v0

    const/16 v0, 0x15

    aput-object v28, v5, v0

    const/16 v0, 0x16

    aput-object v29, v5, v0

    const/16 v0, 0x17

    aput-object v30, v5, v0

    const/16 v0, 0x18

    aput-object v31, v5, v0

    const/16 v0, 0x19

    aput-object v32, v5, v0

    const/16 v0, 0x1a

    aput-object v38, v5, v0

    const/16 v0, 0x1b

    aput-object v34, v5, v0

    const/16 v0, 0x1c

    aput-object v35, v5, v0

    const/16 v0, 0x1d

    aput-object v36, v5, v0

    const/16 v0, 0x1e

    aput-object v37, v5, v0

    const/16 v0, 0x1f

    aput-object v3, v5, v0

    const/16 v0, 0x20

    aput-object v7, v5, v0

    const/16 v0, 0x21

    aput-object v39, v5, v0

    const/16 v0, 0x22

    aput-object v40, v5, v0

    const/16 v0, 0x23

    aput-object v11, v5, v0

    const/16 v0, 0x24

    aput-object v1, v5, v0

    const/16 v0, 0x25

    aput-object v41, v5, v0

    const/16 v0, 0x26

    aput-object v13, v5, v0

    sput-object v5, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->$VALUES:[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->EMPTY_LIST:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->values()[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/util/ToDateTokenizer$ToDateParslet;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->toDateParslet:Lorg/h2/util/ToDateTokenizer$ToDateParslet;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "^("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->patternToUse:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;Ljava/util/regex/Pattern;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/util/ToDateTokenizer$ToDateParslet;",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->toDateParslet:Lorg/h2/util/ToDateTokenizer$ToDateParslet;

    iput-object p4, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->patternToUse:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static getTokensInQuestion(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CACHE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-static {}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->initCache()V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method private static declared-synchronized initCache()V
    .locals 11

    const-class v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CACHE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_4

    invoke-static {}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->values()[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    sget-object v8, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CACHE:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;
    .locals 1

    const-class v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    return-object p0
.end method

.method public static values()[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;
    .locals 1

    sget-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->$VALUES:[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    invoke-virtual {v0}, [Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    return-object v0
.end method


# virtual methods
.method public parseFormatStrWithToken(Lorg/h2/util/ToDateParser;)Z
    .locals 3

    iget-object v0, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->patternToUse:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getFormatStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->toDateParslet:Lorg/h2/util/ToDateTokenizer$ToDateParslet;

    invoke-interface {v2, p1, p0, v0}, Lorg/h2/util/ToDateTokenizer$ToDateParslet;->parse(Lorg/h2/util/ToDateParser;Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;Ljava/lang/String;)V

    :cond_0
    return v1
.end method
