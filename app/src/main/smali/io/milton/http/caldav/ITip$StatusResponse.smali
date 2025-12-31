.class public final enum Lio/milton/http/caldav/ITip$StatusResponse;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/caldav/ITip$StatusResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_CONFLICT_400:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_ERROR_50:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_ERROR_51:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_ERROR_52:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_ERROR_53:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_30:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_31:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_310:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_311:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_312:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_313:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_314:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_32:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_33:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_34:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_35:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_36:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_37:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_38:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_INVALID_39:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_20:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_21:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_210:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_211:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_22:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_23:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_24:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_25:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_26:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_27:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_28:Lio/milton/http/caldav/ITip$StatusResponse;

.field public static final enum RS_SUCCESS_29:Lio/milton/http/caldav/ITip$StatusResponse;


# instance fields
.field public code:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public longerDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 47

    new-instance v6, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v4, "Success"

    const-string v5, "None."

    const-string v1, "RS_SUCCESS_20"

    const/4 v2, 0x0

    const-string v3, "2.0"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_20:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v0, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v11, "Success but fallback taken on one or more property values."

    const-string v12, "Property name and value MAY be specified."

    const-string v8, "RS_SUCCESS_21"

    const/4 v9, 0x1

    const-string v10, "2.1"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_21:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v1, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v17, "Success, invalid property ignored."

    const-string v18, "Property name MAY be specified."

    const-string v14, "RS_SUCCESS_22"

    const/4 v15, 0x2

    const-string v16, "2.2"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_22:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v2, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v11, "Success, invalid property parameter ignored."

    const-string v12, "Property parameter name and value MAY be specified."

    const-string v8, "RS_SUCCESS_23"

    const/4 v9, 0x3

    const-string v10, "2.3"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_23:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v3, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v17, "Success, unknown non-standard property ignored."

    const-string v18, "Non-standard property name MAY be specified."

    const-string v14, "RS_SUCCESS_24"

    const/4 v15, 0x4

    const-string v16, "2.4"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_24:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v4, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v11, "Success, unknown non standard property value ignored."

    const-string v12, "Property and non-standard value MAY be specified."

    const-string v8, "RS_SUCCESS_25"

    const/4 v9, 0x5

    const-string v10, "2.5"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_25:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v5, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v17, "Success, invalid calendar component ignored."

    const-string v18, "Calendar component sentinel (e.g., BEGIN:ALARM) MAY be specified."

    const-string v14, "RS_SUCCESS_26"

    const/4 v15, 0x6

    const-string v16, "2.6"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_26:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v13, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v11, "Success, request forwarded to Calendar User."

    const-string v12, "Original and forwarded caluser addresses MAY be specified."

    const-string v8, "RS_SUCCESS_27"

    const/4 v9, 0x7

    const-string v10, "2.7"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_27:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v7, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v18, "Success, repeating event ignored. Scheduled as a single component."

    const-string v19, "RRULE or RDATE property name and value MAY be specified."

    const-string v15, "RS_SUCCESS_28"

    const/16 v16, 0x8

    const-string v17, "2.8"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_28:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v8, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v24, "Success, truncated end date time to date boundary."

    const-string v25, "DTEND property value MAY be specified."

    const-string v21, "RS_SUCCESS_29"

    const/16 v22, 0x9

    const-string v23, "2.9"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_29:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v9, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v18, "Success, repeating VTODO ignored. Scheduled as a single VTODO."

    const-string v19, "RRULE or RDATE property name and value MAY be specified."

    const-string v15, "RS_SUCCESS_210"

    const/16 v16, 0xa

    const-string v17, "2.10"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_210:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v10, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v24, "Success, unbounded RRULE clipped at some finite number of instances"

    const-string v25, "RRULE property name and value MAY be specified. Number of instances MAY also be specified."

    const-string v21, "RS_SUCCESS_211"

    const/16 v22, 0xb

    const-string v23, "2.11"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lio/milton/http/caldav/ITip$StatusResponse;->RS_SUCCESS_211:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v11, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v18, "Invalid property name."

    const-string v19, "Property name MAY be specified."

    const-string v15, "RS_INVALID_30"

    const/16 v16, 0xc

    const-string v17, "3.0"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_30:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v12, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v24, "Invalid property value."

    const-string v25, "Property name and value MAY be specified."

    const-string v21, "RS_INVALID_31"

    const/16 v22, 0xd

    const-string v23, "3.1"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_31:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v20, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v18, "Invalid property parameter."

    const-string v19, "Property parameter name and value MAY be specified."

    const-string v15, "RS_INVALID_32"

    const/16 v16, 0xe

    const-string v17, "3.2"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v20, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_32:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v14, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v25, "Invalid property parameter value."

    const-string v26, "Property parameter name and value MAY be specified."

    const-string v22, "RS_INVALID_33"

    const/16 v23, 0xf

    const-string v24, "3.3"

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_33:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v15, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v31, "Invalid calendar componentsequence."

    const-string v32, "Calendar component sentinel MAY be specified (e.g., BEGIN:VTIMEZONE)."

    const-string v28, "RS_INVALID_34"

    const/16 v29, 0x10

    const-string v30, "3.4"

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_34:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v16, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v25, "Invalid date or time."

    const-string v26, "Date/time value(s) MAY be specified."

    const-string v22, "RS_INVALID_35"

    const/16 v23, 0x11

    const-string v24, "3.5"

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v16, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_35:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v17, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v31, "Invalid rule"

    const-string v32, "Rule value MAY be specified."

    const-string v28, "RS_INVALID_36"

    const/16 v29, 0x12

    const-string v30, "3.6"

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v17, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_36:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v18, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v25, "Invalid Calendar User"

    const-string v26, "Attendee property value MAY be specified."

    const-string v22, "RS_INVALID_37"

    const/16 v23, 0x13

    const-string v24, "3.7"

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v18, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_37:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v19, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v31, "No authority."

    const-string v32, "METHOD and Attendee property values MAY be specified."

    const-string v28, "RS_INVALID_38"

    const/16 v29, 0x14

    const-string v30, "3.8"

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v19, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_38:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v27, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v25, "Unsupported version."

    const-string v26, "VERSION property name and value MAY be specified."

    const-string v22, "RS_INVALID_39"

    const/16 v23, 0x15

    const-string v24, "3.9"

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v27, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_39:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v21, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v32, "Request entity too large."

    const-string v33, "None."

    const-string v29, "RS_INVALID_310"

    const/16 v30, 0x16

    const-string v31, "3.10"

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v21, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_310:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v22, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v38, "Required component or property missing."

    const-string v39, "Component or property name MAY be specified."

    const-string v35, "RS_INVALID_311"

    const/16 v36, 0x17

    const-string v37, "3.11"

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v22, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_311:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v23, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v32, "Unknown component or property found "

    const-string v33, "Component or property name MAY be specified"

    const-string v29, "RS_INVALID_312"

    const/16 v30, 0x18

    const-string v31, "3.12"

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v23, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_312:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v24, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v38, "Unsupported component or property found"

    const-string v39, "Component or property name MAY be specified"

    const-string v35, "RS_INVALID_313"

    const/16 v36, 0x19

    const-string v37, "3.13"

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v24, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_313:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v25, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v32, "Unsupported capability"

    const-string v33, "Method or action MAY be specified"

    const-string v29, "RS_INVALID_314"

    const/16 v30, 0x1a

    const-string v31, "3.14"

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v25, Lio/milton/http/caldav/ITip$StatusResponse;->RS_INVALID_314:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v26, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v38, "Event conflict. Date/time is busy."

    const-string v39, "DTSTART and DTEND property name and values MAY be specified."

    const-string v35, "RS_CONFLICT_400"

    const/16 v36, 0x1b

    const-string v37, "4.0"

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v26, Lio/milton/http/caldav/ITip$StatusResponse;->RS_CONFLICT_400:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v34, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v32, "Request MAY supported. (WTF?!)"

    const-string v33, "Method property value MAY be specified."

    const-string v29, "RS_ERROR_50"

    const/16 v30, 0x1c

    const-string v31, "5.0"

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v34, Lio/milton/http/caldav/ITip$StatusResponse;->RS_ERROR_50:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v28, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v39, "Service unavailable."

    const-string v40, "ATTENDEE property value MAY be specified."

    const-string v36, "RS_ERROR_51"

    const/16 v37, 0x1d

    const-string v38, "5.1"

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v28, Lio/milton/http/caldav/ITip$StatusResponse;->RS_ERROR_51:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v29, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v45, "Invalid calendar service."

    const-string v46, "ATTENDEE property value MAY be specified."

    const-string v42, "RS_ERROR_52"

    const/16 v43, 0x1e

    const-string v44, "5.2"

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v29, Lio/milton/http/caldav/ITip$StatusResponse;->RS_ERROR_52:Lio/milton/http/caldav/ITip$StatusResponse;

    new-instance v30, Lio/milton/http/caldav/ITip$StatusResponse;

    const-string v39, "No scheduling support for user."

    const-string v40, "ATTENDEE property value MAY be specified"

    const-string v36, "RS_ERROR_53"

    const/16 v37, 0x1f

    const-string v38, "5.3"

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Lio/milton/http/caldav/ITip$StatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v30, Lio/milton/http/caldav/ITip$StatusResponse;->RS_ERROR_53:Lio/milton/http/caldav/ITip$StatusResponse;

    move-object/from16 v31, v15

    const/16 v15, 0x20

    new-array v15, v15, [Lio/milton/http/caldav/ITip$StatusResponse;

    const/16 v32, 0x0

    aput-object v6, v15, v32

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v31, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    sput-object v15, Lio/milton/http/caldav/ITip$StatusResponse;->$VALUES:[Lio/milton/http/caldav/ITip$StatusResponse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/milton/http/caldav/ITip$StatusResponse;->code:Ljava/lang/String;

    iput-object p4, p0, Lio/milton/http/caldav/ITip$StatusResponse;->description:Ljava/lang/String;

    iput-object p5, p0, Lio/milton/http/caldav/ITip$StatusResponse;->longerDesc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/caldav/ITip$StatusResponse;
    .locals 1

    const-class v0, Lio/milton/http/caldav/ITip$StatusResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/caldav/ITip$StatusResponse;

    return-object p0
.end method

.method public static values()[Lio/milton/http/caldav/ITip$StatusResponse;
    .locals 1

    sget-object v0, Lio/milton/http/caldav/ITip$StatusResponse;->$VALUES:[Lio/milton/http/caldav/ITip$StatusResponse;

    invoke-virtual {v0}, [Lio/milton/http/caldav/ITip$StatusResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/caldav/ITip$StatusResponse;

    return-object v0
.end method
