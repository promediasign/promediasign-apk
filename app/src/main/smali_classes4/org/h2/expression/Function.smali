.class public Lorg/h2/expression/Function;
.super Lorg/h2/expression/Expression;
.source "SourceFile"

# interfaces
.implements Lorg/h2/expression/FunctionCall;


# static fields
.field public static final ABS:I = 0x0

.field public static final ACOS:I = 0x1

.field public static final ADD_MONTHS:I = 0x62

.field public static final ARRAY_CONTAINS:I = 0xe6

.field public static final ARRAY_GET:I = 0xd1

.field public static final ARRAY_LENGTH:I = 0xd9

.field public static final ASCII:I = 0x32

.field public static final ASIN:I = 0x2

.field public static final ATAN:I = 0x3

.field public static final ATAN2:I = 0x4

.field public static final AUTOCOMMIT:I = 0x9b

.field public static final BITAND:I = 0x5

.field public static final BITGET:I = 0x28

.field public static final BITOR:I = 0x6

.field public static final BITXOR:I = 0x7

.field public static final BIT_LENGTH:I = 0x33

.field public static final CANCEL_SESSION:I = 0xdd

.field public static final CASE:I = 0xce

.field public static final CASEWHEN:I = 0xc9

.field public static final CAST:I = 0xcb

.field public static final CEILING:I = 0x8

.field public static final CHAR:I = 0x34

.field public static final CHAR_LENGTH:I = 0x35

.field public static final COALESCE:I = 0xcc

.field public static final COMPRESS:I = 0x20

.field public static final CONCAT:I = 0x36

.field public static final CONCAT_WS:I = 0x5c

.field public static final CONVERT:I = 0xca

.field public static final COS:I = 0x9

.field public static final COSH:I = 0x24

.field public static final COT:I = 0xa

.field public static final CSVREAD:I = 0xd2

.field public static final CSVWRITE:I = 0xd3

.field public static final CURDATE:I = 0x64

.field public static final CURRENT_DATE:I = 0x75

.field public static final CURRENT_TIME:I = 0x76

.field public static final CURRENT_TIMESTAMP:I = 0x77

.field public static final CURRENT_USER:I = 0x98

.field public static final CURRVAL:I = 0xd0

.field public static final CURTIME:I = 0x65

.field public static final DATABASE:I = 0x96

.field public static final DATABASE_PATH:I = 0x9d

.field public static final DATE_ADD:I = 0x66

.field public static final DATE_DIFF:I = 0x67

.field private static final DATE_PART:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_NAME:I = 0x68

.field public static final DAY_OF_MONTH:I = 0x69

.field public static final DAY_OF_WEEK:I = 0x6a

.field public static final DAY_OF_YEAR:I = 0x6b

.field public static final DECODE:I = 0xe5

.field public static final DECRYPT:I = 0x1f

.field public static final DEGREES:I = 0xb

.field public static final DIFFERENCE:I = 0x37

.field public static final DISK_SPACE_USED:I = 0x9f

.field public static final ENCRYPT:I = 0x1e

.field public static final EXP:I = 0xc

.field public static final EXPAND:I = 0x21

.field public static final EXTRACT:I = 0x78

.field public static final FILE_READ:I = 0xe1

.field public static final FILE_WRITE:I = 0xe8

.field public static final FLOOR:I = 0xd

.field public static final FORMATDATETIME:I = 0x79

.field private static final FUNCTIONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/expression/FunctionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GREATEST:I = 0xdb

.field public static final H2VERSION:I = 0xe7

.field public static final HASH:I = 0x1d

.field public static final HEXTORAW:I = 0x38

.field public static final HOUR:I = 0x6c

.field public static final IDENTITY:I = 0x99

.field public static final IFNULL:I = 0xc8

.field public static final INSERT:I = 0x39

.field public static final INSTR:I = 0x3a

.field public static final ISO_DAY_OF_WEEK:I = 0x7d

.field public static final ISO_WEEK:I = 0x7c

.field public static final ISO_YEAR:I = 0x7b

.field public static final LCASE:I = 0x3b

.field public static final LEAST:I = 0xdc

.field public static final LEFT:I = 0x3c

.field public static final LENGTH:I = 0x3d

.field public static final LINK_SCHEMA:I = 0xda

.field public static final LN:I = 0x27

.field public static final LOCATE:I = 0x3e

.field public static final LOCK_MODE:I = 0xd6

.field public static final LOCK_TIMEOUT:I = 0x9e

.field public static final LOG:I = 0xe

.field public static final LOG10:I = 0xf

.field public static final LOWER:I = 0x4b

.field public static final LPAD:I = 0x5b

.field public static final LTRIM:I = 0x3f

.field public static final MEMORY_FREE:I = 0xd4

.field public static final MEMORY_USED:I = 0xd5

.field public static final MINUTE:I = 0x6d

.field public static final MOD:I = 0x10

.field public static final MONTH:I = 0x6e

.field public static final MONTH_NAME:I = 0x6f

.field public static final NEXTVAL:I = 0xcf

.field public static final NOW:I = 0x70

.field public static final NULLIF:I = 0xcd

.field public static final NVL2:I = 0xe4

.field public static final OCTET_LENGTH:I = 0x40

.field public static final ORA_HASH:I = 0x5f

.field public static final PARSEDATETIME:I = 0x7a

.field public static final PI:I = 0x11

.field public static final POSITION:I = 0x4d

.field public static final POWER:I = 0x12

.field private static final PRECISION_UNKNOWN:J = -0x1L

.field public static final QUARTER:I = 0x71

.field public static final RADIANS:I = 0x13

.field public static final RAND:I = 0x14

.field public static final RANDOM_UUID:I = 0x23

.field public static final RAWTOHEX:I = 0x41

.field public static final READONLY:I = 0x9c

.field public static final REGEXP_LIKE:I = 0xf0

.field public static final REGEXP_REPLACE:I = 0x59

.field public static final REPEAT:I = 0x42

.field public static final REPLACE:I = 0x43

.field public static final RIGHT:I = 0x44

.field public static final ROUND:I = 0x15

.field public static final ROUNDMAGIC:I = 0x16

.field public static final ROW_NUMBER:I = 0x12c

.field public static final RPAD:I = 0x5a

.field public static final RTRIM:I = 0x45

.field public static final SCHEMA:I = 0xd7

.field public static final SCOPE_IDENTITY:I = 0x9a

.field public static final SECOND:I = 0x72

.field public static final SECURE_RAND:I = 0x1c

.field public static final SESSION_ID:I = 0xd8

.field public static final SET:I = 0xde

.field public static final SIGN:I = 0x17

.field public static final SIN:I = 0x18

.field public static final SINH:I = 0x25

.field public static final SOUNDEX:I = 0x46

.field private static final SOUNDEX_INDEX:[C

.field public static final SPACE:I = 0x47

.field public static final SQRT:I = 0x19

.field public static final STRINGDECODE:I = 0x50

.field public static final STRINGENCODE:I = 0x4f

.field public static final STRINGTOUTF8:I = 0x51

.field public static final SUBSTR:I = 0x48

.field public static final SUBSTRING:I = 0x49

.field public static final TABLE:I = 0xdf

.field public static final TABLE_DISTINCT:I = 0xe0

.field public static final TAN:I = 0x1a

.field public static final TANH:I = 0x26

.field public static final TO_CHAR:I = 0x5d

.field public static final TO_DATE:I = 0x60

.field public static final TO_TIMESTAMP:I = 0x61

.field public static final TRANSACTION_ID:I = 0xe2

.field public static final TRANSLATE:I = 0x5e

.field public static final TRIM:I = 0x4e

.field public static final TRUNCATE:I = 0x1b

.field public static final TRUNCATE_VALUE:I = 0xe3

.field public static final UCASE:I = 0x4a

.field public static final UPPER:I = 0x4c

.field public static final USER:I = 0x97

.field public static final UTF8TOSTRING:I = 0x52

.field public static final VALUES:I = 0xfa

.field private static final VAR_ARGS:I = -0x1

.field public static final WEEK:I = 0x73

.field public static final XMLATTR:I = 0x53

.field public static final XMLCDATA:I = 0x56

.field public static final XMLCOMMENT:I = 0x55

.field public static final XMLNODE:I = 0x54

.field public static final XMLSTARTDOC:I = 0x57

.field public static final XMLTEXT:I = 0x58

.field public static final YEAR:I = 0x74

.field public static final ZERO:I = 0x22


# instance fields
.field protected args:[Lorg/h2/expression/Expression;

.field private dataType:I

.field private final database:Lorg/h2/engine/Database;

.field private displaySize:I

.field private final info:Lorg/h2/expression/FunctionInfo;

.field private precision:J

.field private scale:I

.field private varArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 30

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/expression/Function;->FUNCTIONS:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    const/16 v1, 0x80

    new-array v1, v1, [C

    sput-object v1, Lorg/h2/expression/Function;->SOUNDEX_INDEX:[C

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SQL_TSI_YEAR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "YEAR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "YYYY"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "YY"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "SQL_TSI_MONTH"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "MONTH"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "MM"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "M"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SQL_TSI_WEEK"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "WW"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "WK"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "WEEK"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "DAY"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "DD"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "D"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "SQL_TSI_DAY"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "DAYOFYEAR"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "DAY_OF_YEAR"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "DY"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "DOY"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "SQL_TSI_HOUR"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "HOUR"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "HH"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "SQL_TSI_MINUTE"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "MINUTE"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "MI"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "N"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "SQL_TSI_SECOND"

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "SECOND"

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "SS"

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "S"

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0xe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "MILLISECOND"

    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "MS"

    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/16 v13, 0x22

    if-ge v11, v13, :cond_1

    const-string v13, "7AEIOUY8HW1BFPV2CGJKQSXZ3DT4L5MN6R"

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-ge v13, v14, :cond_0

    move v12, v13

    goto :goto_1

    :cond_0
    sget-object v14, Lorg/h2/expression/Function;->SOUNDEX_INDEX:[C

    aput-char v12, v14, v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    aput-char v12, v14, v13

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const-string v11, "ABS"

    invoke-static {v11, v0, v1, v0}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "ACOS"

    const/4 v12, 0x7

    invoke-static {v11, v1, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "ASIN"

    invoke-static {v11, v2, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "ATAN"

    invoke-static {v11, v4, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "ATAN2"

    const/4 v13, 0x4

    invoke-static {v11, v13, v2, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "BITAND"

    invoke-static {v11, v5, v2, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "BITGET"

    const/16 v14, 0x28

    invoke-static {v11, v14, v2, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "BITOR"

    invoke-static {v11, v6, v2, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "BITXOR"

    invoke-static {v11, v12, v2, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "CEILING"

    const/16 v14, 0x8

    invoke-static {v11, v14, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "CEIL"

    invoke-static {v11, v14, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "COS"

    const/16 v14, 0x9

    invoke-static {v11, v14, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "COSH"

    const/16 v15, 0x24

    invoke-static {v11, v15, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "COT"

    const/16 v15, 0xa

    invoke-static {v11, v15, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "DEGREES"

    invoke-static {v11, v7, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "EXP"

    invoke-static {v11, v8, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "FLOOR"

    invoke-static {v11, v9, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v11, "LOG"

    invoke-static {v11, v10, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v10, "LN"

    const/16 v11, 0x27

    invoke-static {v10, v11, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v10, "LOG10"

    const/16 v11, 0xf

    invoke-static {v10, v11, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v10, "MOD"

    const/16 v11, 0x10

    invoke-static {v10, v11, v2, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v10, "PI"

    const/16 v11, 0x11

    invoke-static {v10, v11, v0, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v10, "POWER"

    const/16 v11, 0x12

    invoke-static {v10, v11, v2, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v10, "RADIANS"

    const/16 v6, 0x13

    invoke-static {v10, v6, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "RAND"

    const/16 v10, 0x14

    const/4 v11, -0x1

    invoke-static {v6, v10, v11, v12}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "RANDOM"

    invoke-static {v6, v10, v11, v12}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "ROUND"

    const/16 v14, 0x15

    invoke-static {v6, v14, v11, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "ROUNDMAGIC"

    const/16 v14, 0x16

    invoke-static {v6, v14, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "SIGN"

    const/16 v14, 0x17

    invoke-static {v6, v14, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "SIN"

    const/16 v14, 0x18

    invoke-static {v6, v14, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "SINH"

    const/16 v14, 0x25

    invoke-static {v6, v14, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "SQRT"

    const/16 v14, 0x19

    invoke-static {v6, v14, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "TAN"

    const/16 v14, 0x1a

    invoke-static {v6, v14, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "TANH"

    const/16 v14, 0x26

    invoke-static {v6, v14, v1, v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "TRUNCATE"

    const/16 v12, 0x1b

    invoke-static {v6, v12, v11, v0}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "TRUNC"

    invoke-static {v6, v12, v11, v0}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "HASH"

    const/16 v12, 0x1d

    invoke-static {v6, v12, v4, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "ENCRYPT"

    const/16 v12, 0x1e

    invoke-static {v6, v12, v4, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "DECRYPT"

    const/16 v12, 0x1f

    invoke-static {v6, v12, v4, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "SECURE_RAND"

    const/16 v12, 0x1c

    invoke-static {v6, v12, v1, v8}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "COMPRESS"

    const/16 v12, 0x20

    invoke-static {v6, v12, v11, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "EXPAND"

    const/16 v12, 0x21

    invoke-static {v6, v12, v1, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "ZERO"

    const/16 v12, 0x22

    invoke-static {v6, v12, v0, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "RANDOM_UUID"

    const/16 v12, 0x23

    invoke-static {v6, v12, v0, v10}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "SYS_GUID"

    invoke-static {v6, v12, v0, v10}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "UUID"

    invoke-static {v6, v12, v0, v10}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "ASCII"

    const/16 v10, 0x32

    invoke-static {v6, v10, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "BIT_LENGTH"

    const/16 v10, 0x33

    invoke-static {v6, v10, v1, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "CHAR"

    const/16 v10, 0x34

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "CHR"

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "CHAR_LENGTH"

    const/16 v10, 0x35

    invoke-static {v6, v10, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "CHARACTER_LENGTH"

    invoke-static {v6, v10, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "CONCAT"

    const/16 v10, 0x36

    invoke-static {v6, v10, v11, v9}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v6, "CONCAT_WS"

    const/16 v10, 0x5c

    invoke-static {v6, v10, v11, v9}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v6, "DIFFERENCE"

    const/16 v10, 0x37

    invoke-static {v6, v10, v2, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "HEXTORAW"

    const/16 v10, 0x38

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "INSERT"

    const/16 v10, 0x39

    invoke-static {v6, v10, v13, v9}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v6, "LCASE"

    const/16 v10, 0x3b

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "LEFT"

    const/16 v10, 0x3c

    invoke-static {v6, v10, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "LENGTH"

    const/16 v10, 0x3d

    invoke-static {v6, v10, v1, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "LOCATE"

    const/16 v10, 0x3e

    invoke-static {v6, v10, v11, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "CHARINDEX"

    invoke-static {v6, v10, v11, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "POSITION"

    invoke-static {v6, v10, v2, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "INSTR"

    const/16 v10, 0x3a

    invoke-static {v6, v10, v11, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "LTRIM"

    const/16 v10, 0x3f

    invoke-static {v6, v10, v11, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "OCTET_LENGTH"

    const/16 v10, 0x40

    invoke-static {v6, v10, v1, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "RAWTOHEX"

    const/16 v10, 0x41

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "REPEAT"

    const/16 v10, 0x42

    invoke-static {v6, v10, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "REPLACE"

    const/16 v10, 0x43

    invoke-static {v6, v10, v11, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "RIGHT"

    const/16 v10, 0x44

    invoke-static {v6, v10, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "RTRIM"

    const/16 v10, 0x45

    invoke-static {v6, v10, v11, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "SOUNDEX"

    const/16 v10, 0x46

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "SPACE"

    const/16 v10, 0x47

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "SUBSTR"

    const/16 v10, 0x48

    invoke-static {v6, v10, v11, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "SUBSTRING"

    const/16 v10, 0x49

    invoke-static {v6, v10, v11, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "UCASE"

    const/16 v10, 0x4a

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "LOWER"

    const/16 v10, 0x4b

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "UPPER"

    const/16 v10, 0x4c

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "POSITION"

    const/16 v10, 0x4d

    invoke-static {v6, v10, v2, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "TRIM"

    const/16 v10, 0x4e

    invoke-static {v6, v10, v11, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "STRINGENCODE"

    const/16 v10, 0x4f

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "STRINGDECODE"

    const/16 v10, 0x50

    invoke-static {v6, v10, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "STRINGTOUTF8"

    const/16 v10, 0x51

    invoke-static {v6, v10, v1, v8}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "UTF8TOSTRING"

    const/16 v8, 0x52

    invoke-static {v6, v8, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "XMLATTR"

    const/16 v8, 0x53

    invoke-static {v6, v8, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "XMLNODE"

    const/16 v8, 0x54

    invoke-static {v6, v8, v11, v9}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v6, "XMLCOMMENT"

    const/16 v8, 0x55

    invoke-static {v6, v8, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "XMLCDATA"

    const/16 v8, 0x56

    invoke-static {v6, v8, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "XMLSTARTDOC"

    const/16 v8, 0x57

    invoke-static {v6, v8, v0, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "XMLTEXT"

    const/16 v8, 0x58

    invoke-static {v6, v8, v11, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "REGEXP_REPLACE"

    const/16 v8, 0x59

    invoke-static {v6, v8, v11, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "RPAD"

    const/16 v8, 0x5a

    invoke-static {v6, v8, v11, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "LPAD"

    const/16 v8, 0x5b

    invoke-static {v6, v8, v11, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "TO_CHAR"

    const/16 v8, 0x5d

    invoke-static {v6, v8, v11, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "ORA_HASH"

    const/16 v8, 0x5f

    invoke-static {v6, v8, v11, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "TRANSLATE"

    const/16 v8, 0x5e

    invoke-static {v6, v8, v4, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "REGEXP_LIKE"

    const/16 v8, 0xf0

    invoke-static {v6, v8, v11, v1}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "CURRENT_DATE"

    const/16 v8, 0x75

    invoke-static {v6, v8, v0, v15}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "CURDATE"

    const/16 v8, 0x64

    invoke-static {v6, v8, v0, v15}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "TO_DATE"

    const/16 v8, 0x60

    invoke-static {v6, v8, v11, v7}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "TO_TIMESTAMP"

    const/16 v8, 0x61

    invoke-static {v6, v8, v11, v7}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "ADD_MONTHS"

    const/16 v8, 0x62

    invoke-static {v6, v8, v2, v7}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "GETDATE"

    const/16 v8, 0x64

    invoke-static {v6, v8, v0, v15}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "CURRENT_TIME"

    const/16 v8, 0x76

    const/16 v10, 0x9

    invoke-static {v6, v8, v0, v10}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "CURTIME"

    const/16 v8, 0x65

    invoke-static {v6, v8, v0, v10}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "CURRENT_TIMESTAMP"

    const/16 v8, 0x77

    invoke-static {v6, v8, v11, v7}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "NOW"

    const/16 v8, 0x70

    invoke-static {v6, v8, v11, v7}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v6, "DATEADD"

    const/16 v8, 0x66

    invoke-static {v6, v8, v4, v7}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "TIMESTAMPADD"

    invoke-static {v6, v8, v4, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "DATEDIFF"

    const/16 v8, 0x67

    invoke-static {v6, v8, v4, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "TIMESTAMPDIFF"

    invoke-static {v6, v8, v4, v5}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "DAYNAME"

    const/16 v8, 0x68

    invoke-static {v6, v8, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "DAYNAME"

    invoke-static {v6, v8, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "DAY"

    const/16 v8, 0x69

    invoke-static {v6, v8, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "DAY_OF_MONTH"

    invoke-static {v6, v8, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "DAY_OF_WEEK"

    const/16 v10, 0x6a

    invoke-static {v6, v10, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "DAY_OF_YEAR"

    const/16 v10, 0x6b

    invoke-static {v6, v10, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "DAYOFMONTH"

    invoke-static {v6, v8, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "DAYOFWEEK"

    const/16 v8, 0x6a

    invoke-static {v6, v8, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "DAYOFYEAR"

    const/16 v8, 0x6b

    invoke-static {v6, v8, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "HOUR"

    const/16 v8, 0x6c

    invoke-static {v6, v8, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "MINUTE"

    const/16 v8, 0x6d

    invoke-static {v6, v8, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "MONTH"

    const/16 v8, 0x6e

    invoke-static {v6, v8, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "MONTHNAME"

    const/16 v8, 0x6f

    invoke-static {v6, v8, v1, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "QUARTER"

    const/16 v8, 0x71

    invoke-static {v6, v8, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "SECOND"

    const/16 v8, 0x72

    invoke-static {v6, v8, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v6, "WEEK"

    const/16 v8, 0x73

    invoke-static {v6, v8, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const/16 v6, 0x74

    invoke-static {v3, v6, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v3, "EXTRACT"

    const/16 v6, 0x78

    invoke-static {v3, v6, v2, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v3, "FORMATDATETIME"

    const/16 v6, 0x79

    invoke-static {v3, v6, v11, v9}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "PARSEDATETIME"

    const/16 v6, 0x7a

    invoke-static {v3, v6, v11, v7}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "ISO_YEAR"

    const/16 v6, 0x7b

    invoke-static {v3, v6, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v3, "ISO_WEEK"

    const/16 v6, 0x7c

    invoke-static {v3, v6, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v3, "ISO_DAY_OF_WEEK"

    const/16 v6, 0x7d

    invoke-static {v3, v6, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v3, "DATABASE"

    const/16 v6, 0x96

    invoke-static {v3, v6, v0, v9}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "USER"

    const/16 v6, 0x97

    invoke-static {v3, v6, v0, v9}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "CURRENT_USER"

    const/16 v6, 0x98

    invoke-static {v3, v6, v0, v9}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "IDENTITY"

    const/16 v6, 0x99

    invoke-static {v3, v6, v0, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "SCOPE_IDENTITY"

    const/16 v7, 0x9a

    invoke-static {v3, v7, v0, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "IDENTITY_VAL_LOCAL"

    invoke-static {v3, v6, v0, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "LAST_INSERT_ID"

    invoke-static {v3, v6, v0, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "LASTVAL"

    invoke-static {v3, v6, v0, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "AUTOCOMMIT"

    const/16 v6, 0x9b

    invoke-static {v3, v6, v0, v1}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "READONLY"

    const/16 v6, 0x9c

    invoke-static {v3, v6, v0, v1}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "DATABASE_PATH"

    const/16 v6, 0x9d

    invoke-static {v3, v6, v0, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v3, "LOCK_TIMEOUT"

    const/16 v6, 0x9e

    invoke-static {v3, v6, v0, v13}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "IFNULL"

    const/16 v6, 0xc8

    invoke-static {v3, v6, v2, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "ISNULL"

    invoke-static {v3, v6, v2, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "CASEWHEN"

    const/16 v6, 0xc9

    invoke-static {v3, v6, v4, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "CONVERT"

    const/16 v6, 0xca

    invoke-static {v3, v6, v1, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "CAST"

    const/16 v6, 0xcb

    invoke-static {v3, v6, v1, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "TRUNCATE_VALUE"

    const/16 v6, 0xe3

    invoke-static {v3, v6, v4, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "COALESCE"

    const/16 v6, 0xcc

    invoke-static {v3, v6, v11, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "NVL"

    invoke-static {v3, v6, v11, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "NVL2"

    const/16 v6, 0xe4

    invoke-static {v3, v6, v4, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "NULLIF"

    const/16 v4, 0xcd

    invoke-static {v3, v4, v2, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "CASE"

    const/16 v4, 0xce

    invoke-static {v3, v4, v11, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v3, "NEXTVAL"

    const/16 v4, 0xcf

    invoke-static {v3, v4, v11, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "CURRVAL"

    const/16 v4, 0xd0

    invoke-static {v3, v4, v11, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v3, "ARRAY_GET"

    const/16 v4, 0xd1

    invoke-static {v3, v4, v2, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const-string v16, "ARRAY_CONTAINS"

    const/16 v17, 0xe6

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v23, "CSVREAD"

    const/16 v24, 0xd2

    const/16 v25, -0x1

    const/16 v26, 0x12

    const/16 v27, 0x0

    invoke-static/range {v23 .. v29}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const/16 v21, 0x0

    const-string v16, "CSVWRITE"

    const/16 v17, 0xd3

    const/16 v18, -0x1

    const/16 v19, 0x4

    invoke-static/range {v16 .. v22}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const-string v2, "MEMORY_FREE"

    const/16 v3, 0xd4

    invoke-static {v2, v3, v0, v13}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v2, "MEMORY_USED"

    const/16 v3, 0xd5

    invoke-static {v2, v3, v0, v13}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v2, "LOCK_MODE"

    const/16 v3, 0xd6

    invoke-static {v2, v3, v0, v13}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v2, "SCHEMA"

    const/16 v3, 0xd7

    invoke-static {v2, v3, v0, v9}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v2, "SESSION_ID"

    const/16 v3, 0xd8

    invoke-static {v2, v3, v0, v13}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v2, "ARRAY_LENGTH"

    const/16 v3, 0xd9

    invoke-static {v2, v3, v1, v13}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v2, "LINK_SCHEMA"

    const/16 v3, 0xda

    const/4 v4, 0x6

    const/16 v6, 0x12

    invoke-static {v2, v3, v4, v6}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v2, "LEAST"

    const/16 v3, 0xdc

    invoke-static {v2, v3, v11, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v2, "GREATEST"

    const/16 v3, 0xdb

    invoke-static {v2, v3, v11, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v2, "CANCEL_SESSION"

    const/16 v3, 0xdd

    invoke-static {v2, v3, v1, v1}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v16, "SET"

    const/16 v17, 0xde

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-static/range {v16 .. v22}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const/16 v29, 0x1

    const-string v23, "FILE_READ"

    const/16 v24, 0xe1

    const/16 v26, 0x0

    invoke-static/range {v23 .. v29}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const-string v16, "FILE_WRITE"

    const/16 v17, 0xe8

    const/16 v19, 0x5

    invoke-static/range {v16 .. v22}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    const-string v2, "TRANSACTION_ID"

    const/16 v3, 0xe2

    invoke-static {v2, v3, v0, v9}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v2, "DECODE"

    const/16 v3, 0xe5

    invoke-static {v2, v3, v11, v0}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v2, "DISK_SPACE_USED"

    const/16 v3, 0x9f

    invoke-static {v2, v3, v1, v5}, Lorg/h2/expression/Function;->addFunctionNotDeterministic(Ljava/lang/String;III)V

    const-string v1, "H2VERSION"

    const/16 v2, 0xe7

    invoke-static {v1, v2, v0, v9}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;III)V

    const-string v1, "TABLE"

    const/16 v2, 0xdf

    const/16 v3, 0x12

    invoke-static {v1, v2, v11, v3}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v1, "TABLE_DISTINCT"

    const/16 v2, 0xe0

    invoke-static {v1, v2, v11, v3}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const-string v1, "ROW_NUMBER"

    const/16 v2, 0x12c

    invoke-static {v1, v2, v0, v5}, Lorg/h2/expression/Function;->addFunctionWithNull(Ljava/lang/String;III)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v6, "VALUES"

    const/16 v7, 0xfa

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/expression/FunctionInfo;)V
    .locals 2

    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    iput-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    iput-object p2, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget p1, p2, Lorg/h2/expression/FunctionInfo;->parameterCount:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/Function;->varArgs:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-array p1, p1, [Lorg/h2/expression/Expression;

    iput-object p1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    :goto_0
    return-void
.end method

.method private static addFunction(Ljava/lang/String;III)V
    .locals 7

    .line 1
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    return-void
.end method

.method private static addFunction(Ljava/lang/String;IIIZZZ)V
    .locals 1

    .line 2
    new-instance v0, Lorg/h2/expression/FunctionInfo;

    invoke-direct {v0}, Lorg/h2/expression/FunctionInfo;-><init>()V

    iput-object p0, v0, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    iput p1, v0, Lorg/h2/expression/FunctionInfo;->type:I

    iput p2, v0, Lorg/h2/expression/FunctionInfo;->parameterCount:I

    iput p3, v0, Lorg/h2/expression/FunctionInfo;->returnDataType:I

    iput-boolean p4, v0, Lorg/h2/expression/FunctionInfo;->nullIfParameterIsNull:Z

    iput-boolean p5, v0, Lorg/h2/expression/FunctionInfo;->deterministic:Z

    iput-boolean p6, v0, Lorg/h2/expression/FunctionInfo;->bufferResultSetToLocalTemp:Z

    sget-object p1, Lorg/h2/expression/Function;->FUNCTIONS:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addFunctionNotDeterministic(Ljava/lang/String;III)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    return-void
.end method

.method private static addFunctionWithNull(Ljava/lang/String;III)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lorg/h2/expression/Function;->addFunction(Ljava/lang/String;IIIZZZ)V

    return-void
.end method

.method private calculatePrecisionAndDisplaySize()V
    .locals 10

    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v0, v0, Lorg/h2/expression/FunctionInfo;->type:I

    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-static {v0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v0

    iget-wide v1, v0, Lorg/h2/value/DataType;->defaultPrecision:J

    iput-wide v1, p0, Lorg/h2/expression/Function;->precision:J

    iget v0, v0, Lorg/h2/value/DataType;->defaultDisplaySize:I

    :goto_0
    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    goto/16 :goto_4

    :sswitch_0
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    long-to-int v1, v0

    iput v1, p0, Lorg/h2/expression/Function;->displaySize:I

    goto/16 :goto_4

    :sswitch_1
    iput-wide v1, p0, Lorg/h2/expression/Function;->precision:J

    long-to-int v0, v1

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v3

    mul-long v3, v3, v1

    :goto_1
    iput-wide v3, p0, Lorg/h2/expression/Function;->precision:J

    invoke-static {v3, v4}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    add-long/2addr v3, v5

    div-long/2addr v3, v1

    goto :goto_1

    :sswitch_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    iput v3, p0, Lorg/h2/expression/Function;->displaySize:I

    iget-object v2, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    iget-wide v6, p0, Lorg/h2/expression/Function;->precision:J

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v8

    add-long/2addr v8, v6

    iput-wide v8, p0, Lorg/h2/expression/Function;->precision:J

    iget v6, p0, Lorg/h2/expression/Function;->displaySize:I

    int-to-long v6, v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v5

    iput v5, p0, Lorg/h2/expression/Function;->displaySize:I

    iget-wide v5, p0, Lorg/h2/expression/Function;->precision:J

    cmp-long v7, v5, v0

    if-gez v7, :cond_0

    const-wide v5, 0x7fffffffffffffffL

    iput-wide v5, p0, Lorg/h2/expression/Function;->precision:J

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :sswitch_5
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    :goto_3
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/h2/expression/Function;->precision:J

    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v1

    goto :goto_3

    :sswitch_8
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v0, v0, v3

    goto :goto_3

    :cond_1
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_8
        0x1e -> :sswitch_7
        0x1f -> :sswitch_7
        0x20 -> :sswitch_6
        0x34 -> :sswitch_5
        0x36 -> :sswitch_4
        0x38 -> :sswitch_3
        0x3b -> :sswitch_8
        0x3f -> :sswitch_8
        0x41 -> :sswitch_2
        0x44 -> :sswitch_8
        0x45 -> :sswitch_8
        0x46 -> :sswitch_1
        0x4a -> :sswitch_8
        0x4b -> :sswitch_8
        0x4c -> :sswitch_8
        0x4e -> :sswitch_8
        0x50 -> :sswitch_8
        0x52 -> :sswitch_8
        0x68 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

.method private static cancelStatement(Lorg/h2/engine/Session;I)Z
    .locals 5

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getCurrentCommand()Lorg/h2/command/Command;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/command/Command;->cancel()V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private convertResult(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 1

    iget v0, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method private static dateadd(Ljava/lang/String;JLjava/sql/Timestamp;)Ljava/sql/Timestamp;
    .locals 4

    invoke-static {p0}, Lorg/h2/expression/Function;->getDatePart(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0xe

    const v1, 0xf4240

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/sql/Timestamp;

    invoke-virtual {p3}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result p1

    invoke-virtual {p3}, Ljava/sql/Timestamp;->getNanos()I

    move-result p2

    rem-int/2addr p2, v1

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object p0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p3}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    rem-int/2addr v2, v1

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    long-to-int p2, p1

    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    new-instance p2, Ljava/sql/Timestamp;

    invoke-direct {p2, p0, p1}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p2, p0}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object p2

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "DATEADD count"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static datediff(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/sql/Timestamp;)J
    .locals 18

    invoke-static/range {p0 .. p0}, Lorg/h2/expression/Function;->getDatePart(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    move-object/from16 v6, p1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v15, 0xe

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v17

    const/4 v15, 0x7

    move-object v6, v13

    const/4 v15, 0x5

    move/from16 v11, v16

    const/4 v15, 0x2

    move/from16 v12, v17

    invoke-virtual/range {v6 .. v12}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    move-object/from16 v6, p2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v6, 0xe

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object v6, v13

    invoke-virtual/range {v6 .. v12}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    const/4 v6, 0x6

    const/4 v7, 0x3

    const-wide/32 v8, 0x5265c00

    if-eq v0, v7, :cond_3

    const/4 v10, 0x5

    if-eq v0, v10, :cond_2

    if-eq v0, v6, :cond_3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v4, v3

    if-ne v0, v15, :cond_0

    mul-int/lit8 v4, v4, 0xc

    sub-int/2addr v1, v6

    add-int/2addr v1, v4

    int-to-long v0, v1

    return-wide v0

    :cond_0
    if-ne v0, v2, :cond_1

    int-to-long v0, v4

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DATEDIFF "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_0
    sub-long/2addr v4, v2

    return-wide v4

    :cond_2
    div-long/2addr v4, v8

    div-long/2addr v2, v8

    :goto_0
    sub-long/2addr v4, v2

    return-wide v4

    :cond_3
    :pswitch_1
    const-wide/32 v10, 0x36ee80

    div-long v12, v2, v10

    mul-long v12, v12, v10

    div-long v14, v4, v10

    mul-long v14, v14, v10

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    sub-long/2addr v2, v12

    sub-long/2addr v4, v12

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_2

    packed-switch v0, :pswitch_data_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "field:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_2
    const-wide/16 v0, 0x3e8

    :goto_1
    div-long/2addr v4, v0

    div-long/2addr v2, v0

    goto :goto_0

    :pswitch_3
    const-wide/32 v0, 0xea60

    goto :goto_1

    :pswitch_4
    div-long/2addr v4, v10

    div-long/2addr v2, v10

    goto :goto_0

    :cond_4
    const-wide/32 v0, 0x240c8400

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static decrypt(Ljava/lang/String;[B[B)[B
    .locals 1

    invoke-static {p0}, Lorg/h2/security/CipherFactory;->getBlockCipher(Ljava/lang/String;)Lorg/h2/security/BlockCipher;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/security/BlockCipher;->getKeyLength()I

    move-result v0

    invoke-static {p1, v0}, Lorg/h2/expression/Function;->getPaddedArrayCopy([BI)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/h2/security/BlockCipher;->setKey([B)V

    const/16 p1, 0x10

    invoke-static {p2, p1}, Lorg/h2/expression/Function;->getPaddedArrayCopy([BI)[B

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lorg/h2/security/BlockCipher;->decrypt([BII)V

    return-object p1
.end method

.method private static encrypt(Ljava/lang/String;[B[B)[B
    .locals 1

    invoke-static {p0}, Lorg/h2/security/CipherFactory;->getBlockCipher(Ljava/lang/String;)Lorg/h2/security/BlockCipher;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/security/BlockCipher;->getKeyLength()I

    move-result v0

    invoke-static {p1, v0}, Lorg/h2/expression/Function;->getPaddedArrayCopy([BI)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/h2/security/BlockCipher;->setKey([B)V

    const/16 p1, 0x10

    invoke-static {p2, p1}, Lorg/h2/expression/Function;->getPaddedArrayCopy([BI)[B

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lorg/h2/security/BlockCipher;->encrypt([BII)V

    return-object p1
.end method

.method private static getDatePart(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "date part"

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static getDifference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Lorg/h2/expression/Function;->getSoundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/h2/expression/Function;->getSoundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static getDiskSpaceUsed(Lorg/h2/engine/Session;Lorg/h2/value/Value;)J
    .locals 1

    new-instance v0, Lorg/h2/command/Parser;

    invoke-direct {v0, p0}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/h2/command/Parser;->parseTableName(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/table/Table;->getDiskSpaceUsed()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;
    .locals 3

    invoke-virtual {p0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lorg/h2/expression/Function;->getFunctionInfo(Ljava/lang/String;)Lorg/h2/expression/FunctionInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget v0, p1, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v1, 0xdf

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/h2/expression/Function;

    invoke-direct {v0, p0, p1}, Lorg/h2/expression/Function;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/FunctionInfo;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/h2/expression/TableFunction;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/h2/expression/TableFunction;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/FunctionInfo;J)V

    return-object v0
.end method

.method private static getFunctionInfo(Ljava/lang/String;)Lorg/h2/expression/FunctionInfo;
    .locals 1

    sget-object v0, Lorg/h2/expression/Function;->FUNCTIONS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/expression/FunctionInfo;

    return-object p0
.end method

.method private static getHash(Ljava/lang/String;[BI)[B
    .locals 1

    const-string v0, "SHA256"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-static {p1, p0}, Lorg/h2/security/SHA256;->getHash([BZ)[B

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const-string p1, "algorithm"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    if-lt p3, v0, :cond_0

    return-object v1

    :cond_0
    aget-object v0, p2, p3

    if-nez v0, :cond_2

    aget-object p1, p1, p3

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1, p0}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    aput-object v0, p2, p3

    :cond_2
    return-object v0
.end method

.method private static getPaddedArrayCopy([BI)[B
    .locals 2

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/h2/util/MathUtils;->roundUpInt(II)I

    move-result p1

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private getSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;Lorg/h2/value/Value;)Lorg/h2/schema/Sequence;
    .locals 1

    if-nez p3, :cond_2

    new-instance p3, Lorg/h2/command/Parser;

    invoke-direct {p3, p1}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/h2/command/Parser;->parseExpression(Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p3

    instance-of v0, p3, Lorg/h2/expression/ExpressionColumn;

    if-eqz v0, :cond_1

    check-cast p3, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {p3}, Lorg/h2/expression/ExpressionColumn;->getOriginalTableAliasName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3, p1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    :cond_3
    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object p3

    if-nez p3, :cond_4

    invoke-static {p2}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->getSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object p3

    :cond_4
    return-object p3
.end method

.method private getSimpleValue(Lorg/h2/engine/Session;Lorg/h2/value/Value;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 7

    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v0, v0, Lorg/h2/expression/FunctionInfo;->type:I

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_29

    const/4 v3, 0x3

    if-eq v0, v3, :cond_28

    const/16 v4, 0x13

    if-eq v0, v4, :cond_27

    const/16 v4, 0x14

    if-eq v0, v4, :cond_25

    const/16 v4, 0x40

    if-eq v0, v4, :cond_24

    const/16 v4, 0x41

    if-eq v0, v4, :cond_23

    const/16 v4, 0x46

    if-eq v0, v4, :cond_22

    const/16 v4, 0x47

    const/4 v5, 0x0

    if-eq v0, v4, :cond_20

    const/4 v4, 0x0

    const/16 v6, 0x11

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_1b

    :pswitch_0
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p2

    sget-object p3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v4

    goto/16 :goto_1b

    :pswitch_1
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v4

    goto/16 :goto_1b

    :pswitch_2
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->javaDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->javaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    const-wide/16 p3, 0x10

    :goto_1
    invoke-static {p2}, Lorg/h2/expression/Function;->length(Lorg/h2/value/Value;)J

    move-result-wide p1

    mul-long p1, p1, p3

    :goto_2
    invoke-static {p1, p2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v4

    goto/16 :goto_1b

    :pswitch_7
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_1b

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v4

    goto/16 :goto_1b

    :cond_2
    :pswitch_8
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    :goto_4
    invoke-static {p1, p2}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v4

    goto/16 :goto_1b

    :pswitch_9
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tanh(D)D

    move-result-wide p1

    goto :goto_4

    :pswitch_a
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p1

    goto :goto_4

    :pswitch_b
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cosh(D)D

    move-result-wide p1

    goto :goto_4

    :pswitch_c
    invoke-static {}, Lorg/h2/value/ValueUuid;->getNewRandom()Lorg/h2/value/ValueUuid;

    move-result-object v4

    goto/16 :goto_1b

    :pswitch_d
    invoke-static {v5}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v4

    goto/16 :goto_1b

    :pswitch_e
    invoke-static {}, Lorg/h2/tools/CompressTool;->getInstance()Lorg/h2/tools/CompressTool;

    move-result-object p1

    invoke-virtual {p2}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/tools/CompressTool;->expand([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v4

    goto/16 :goto_1b

    :pswitch_f
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    goto :goto_4

    :pswitch_10
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    goto :goto_4

    :pswitch_11
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    goto :goto_4

    :pswitch_12
    invoke-virtual {p2}, Lorg/h2/value/Value;->getSignum()I

    move-result p1

    goto :goto_3

    :pswitch_13
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->roundMagic(D)D

    move-result-wide p1

    goto :goto_4

    :sswitch_0
    invoke-static {v5}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v4

    invoke-virtual {p2}, Lorg/h2/value/Value;->getType()I

    move-result v0

    if-ne v0, v6, :cond_2d

    invoke-static {p1, p3, p4, v1}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p2, Lorg/h2/value/ValueArray;

    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p2

    array-length p3, p2

    :goto_5
    if-ge v5, p3, :cond_2d

    aget-object p4, p2, v5

    invoke-virtual {p4, p1}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {v1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    :cond_3
    :goto_6
    move-object v4, p1

    goto/16 :goto_1b

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :sswitch_1
    array-length v0, p3

    sub-int/2addr v0, v1

    const/4 v3, 0x1

    :goto_7
    if-ge v3, v0, :cond_6

    iget-object v4, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-static {p1, p3, p4, v3}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/2addr v3, v1

    goto :goto_8

    :cond_5
    add-int/lit8 v3, v3, 0x2

    goto :goto_7

    :cond_6
    const/4 v3, -0x1

    :goto_8
    if-gez v3, :cond_7

    array-length p2, p3

    rem-int/2addr p2, v2

    if-nez p2, :cond_7

    array-length p2, p3

    add-int/lit8 v3, p2, -0x1

    :cond_7
    if-gez v3, :cond_8

    :goto_9
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_a

    :cond_8
    invoke-static {p1, p3, p4, v3}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    :goto_a
    iget p2, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v4

    goto/16 :goto_1b

    :sswitch_2
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, v0, :cond_a

    :cond_9
    :goto_b
    invoke-static {p1, p3, p4, v2}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    goto :goto_a

    :cond_a
    invoke-static {p1, p3, p4, v1}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    goto :goto_a

    :sswitch_3
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionId()Lorg/h2/value/Value;

    move-result-object v4

    goto/16 :goto_1b

    :sswitch_4
    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p2

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->cancelStatement(Lorg/h2/engine/Session;I)Z

    move-result p1

    :goto_c
    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v4

    goto/16 :goto_1b

    :sswitch_5
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    move-object v4, p2

    :goto_d
    array-length p2, p3

    if-ge v5, p2, :cond_2d

    invoke-static {p1, p3, p4, v5}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p2

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p2, v0, :cond_d

    iget v1, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p2, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    if-ne v4, v0, :cond_b

    goto :goto_e

    :cond_b
    iget-object v0, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v4, p2}, Lorg/h2/engine/Database;->compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v1, v1, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v2, 0xdb

    if-ne v1, v2, :cond_c

    if-gez v0, :cond_c

    goto :goto_e

    :cond_c
    const/16 v2, 0xdc

    if-ne v1, v2, :cond_d

    if-lez v0, :cond_d

    :goto_e
    move-object v4, p2

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :sswitch_6
    invoke-virtual {p2}, Lorg/h2/value/Value;->getType()I

    move-result p1

    if-ne p1, v6, :cond_0

    check-cast p2, Lorg/h2/value/ValueArray;

    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p1

    array-length p1, p1

    goto/16 :goto_3

    :sswitch_7
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    goto/16 :goto_3

    :sswitch_8
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_9
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLockMode()I

    move-result p1

    goto/16 :goto_3

    :sswitch_a
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-static {}, Lorg/h2/util/Utils;->getMemoryUsed()I

    move-result p1

    goto/16 :goto_3

    :sswitch_b
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-static {}, Lorg/h2/util/Utils;->getMemoryFree()I

    move-result p1

    goto/16 :goto_3

    :sswitch_c
    invoke-virtual {p2}, Lorg/h2/value/Value;->getType()I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-static {p1, p3, p4, v1}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    check-cast p2, Lorg/h2/value/ValueArray;

    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p2

    if-lt p1, v1, :cond_f

    array-length p3, p2

    if-le p1, p3, :cond_e

    goto :goto_f

    :cond_e
    sub-int/2addr p1, v1

    aget-object p1, p2, p1

    goto/16 :goto_6

    :cond_f
    :goto_f
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_6

    :sswitch_d
    if-nez p2, :cond_11

    array-length p2, p3

    sub-int/2addr p2, v1

    const/4 p4, 0x1

    :goto_10
    if-ge p4, p2, :cond_13

    aget-object v0, p3, p4

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, v3, :cond_10

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    add-int/2addr p4, v1

    aget-object v4, p3, p4

    goto :goto_12

    :cond_10
    add-int/lit8 p4, p4, 0x2

    goto :goto_10

    :cond_11
    sget-object p4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p2, p4, :cond_13

    array-length p4, p3

    sub-int/2addr p4, v1

    const/4 v0, 0x1

    :goto_11
    if-ge v0, p4, :cond_13

    aget-object v3, p3, v0

    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v3

    iget-object v5, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v5, p2, v3}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/2addr v0, v1

    aget-object v4, p3, v0

    goto :goto_12

    :cond_12
    add-int/lit8 v0, v0, 0x2

    goto :goto_11

    :cond_13
    :goto_12
    if-nez v4, :cond_14

    array-length p2, p3

    rem-int/2addr p2, v2

    if-nez p2, :cond_14

    array-length p2, p3

    sub-int/2addr p2, v1

    aget-object v4, p3, p2

    :cond_14
    if-nez v4, :cond_15

    goto/16 :goto_9

    :cond_15
    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    goto/16 :goto_a

    :goto_13
    :sswitch_e
    array-length v0, p3

    if-ge v5, v0, :cond_17

    invoke-static {p1, p3, p4, v5}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v0

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, v1, :cond_16

    iget p1, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {v0, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    goto :goto_14

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_17
    :goto_14
    move-object v4, p2

    goto/16 :goto_1b

    :sswitch_f
    iget p1, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p2, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->convertOnlyToSmallerScale:Z

    iget p3, p0, Lorg/h2/expression/Function;->scale:I

    invoke-virtual {p1, p2, p3}, Lorg/h2/value/Value;->convertScale(ZI)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/expression/Function;->getPrecision()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v5}, Lorg/h2/value/Value;->convertPrecision(JZ)Lorg/h2/value/Value;

    move-result-object v4

    goto/16 :goto_1b

    :sswitch_10
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p2, v0, :cond_9

    invoke-virtual {p2}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_b

    :sswitch_11
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, v0, :cond_18

    invoke-static {p1, p3, p4, v1}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p2

    :cond_18
    invoke-direct {p0, p2}, Lorg/h2/expression/Function;->convertResult(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v4

    goto/16 :goto_1b

    :sswitch_12
    invoke-static {p1, p2}, Lorg/h2/expression/Function;->getDiskSpaceUsed(Lorg/h2/engine/Session;Lorg/h2/value/Value;)J

    move-result-wide p1

    goto/16 :goto_2

    :sswitch_13
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLockTimeout()I

    move-result p1

    goto/16 :goto_3

    :sswitch_14
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getDatabasePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    goto/16 :goto_f

    :cond_19
    iget-object p2, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p1, p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object p1

    goto/16 :goto_6

    :sswitch_15
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result p1

    goto/16 :goto_c

    :sswitch_16
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result p1

    goto/16 :goto_c

    :sswitch_17
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastScopeIdentity()Lorg/h2/value/Value;

    move-result-object v4

    goto/16 :goto_1b

    :sswitch_18
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastIdentity()Lorg/h2/value/Value;

    move-result-object v4

    goto/16 :goto_1b

    :sswitch_19
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_1a
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->getIsoDayOfWeek(Ljava/util/Date;)I

    move-result p1

    goto/16 :goto_3

    :sswitch_1c
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->getIsoWeek(Ljava/util/Date;)I

    move-result p1

    goto/16 :goto_3

    :sswitch_1d
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/DateTimeUtils;->getIsoYear(Ljava/util/Date;)I

    move-result p1

    goto/16 :goto_3

    :sswitch_1e
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    goto/16 :goto_3

    :sswitch_1f
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    goto/16 :goto_3

    :sswitch_20
    invoke-virtual {p2}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p1

    const/16 p2, 0xd

    :goto_15
    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    goto/16 :goto_3

    :sswitch_21
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1, v2}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    sub-int/2addr p1, v1

    div-int/2addr p1, v3

    add-int/2addr p1, v1

    goto/16 :goto_3

    :sswitch_22
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    move-result-wide p3

    invoke-static {p3, p4}, Lorg/h2/value/ValueTimestamp;->fromMillis(J)Lorg/h2/value/ValueTimestamp;

    move-result-object p1

    if-eqz p2, :cond_3

    iget-object p3, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p3

    iget-boolean p3, p3, Lorg/h2/engine/Mode;->convertOnlyToSmallerScale:Z

    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lorg/h2/value/ValueTimestamp;->convertScale(ZI)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueTimestamp;

    goto/16 :goto_6

    :sswitch_23
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p3, "MMMM"

    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_16
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_24
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    invoke-static {p1, v2}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result p1

    goto/16 :goto_3

    :sswitch_25
    invoke-virtual {p2}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p1

    const/16 p2, 0xc

    goto :goto_15

    :sswitch_26
    invoke-virtual {p2}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p1

    const/16 p2, 0xb

    goto :goto_15

    :sswitch_27
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    const/4 p2, 0x6

    goto :goto_15

    :sswitch_28
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    const/4 p2, 0x7

    goto :goto_15

    :sswitch_29
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1

    const/4 p2, 0x5

    goto :goto_15

    :sswitch_2a
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p3, "EEEE"

    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_16

    :sswitch_2b
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueTime;->fromMillis(J)Lorg/h2/value/ValueTime;

    move-result-object v4

    goto/16 :goto_1b

    :sswitch_2c
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDate;->fromMillis(J)Lorg/h2/value/ValueDate;

    move-result-object v4

    goto/16 :goto_1b

    :pswitch_14
    :sswitch_2d
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const/16 v2, 0x5c

    const-string v3, ""

    if-ne v0, v2, :cond_1a

    invoke-static {p1, p3, p4, v5}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_1a
    move-object v0, v3

    const/4 v1, 0x0

    :goto_17
    move-object v4, p2

    :goto_18
    array-length p2, p3

    if-ge v1, p2, :cond_1e

    invoke-static {p1, p3, p4, v1}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object p2

    sget-object v5, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, v5, :cond_1b

    goto :goto_19

    :cond_1b
    if-ne v4, v5, :cond_1c

    move-object v4, p2

    goto :goto_19

    :cond_1c
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {p2}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1d
    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v4, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v4

    iget-boolean v4, v4, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {p2, v4}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v4

    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_1e
    iget-object p1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget p1, p1, Lorg/h2/expression/FunctionInfo;->type:I

    if-ne p1, v2, :cond_2d

    if-eqz v0, :cond_2d

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v4, p1, :cond_2d

    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v3, p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v4

    goto/16 :goto_1b

    :sswitch_2e
    invoke-static {}, Lorg/h2/util/StringUtils;->xmlStartDoc()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_2f
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->xmlCData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_30
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->xmlComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_15
    :sswitch_31
    invoke-static {p2}, Lorg/h2/expression/Function;->length(Lorg/h2/value/Value;)J

    move-result-wide p1

    goto/16 :goto_2

    :pswitch_16
    :sswitch_32
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_33
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/Function;->hexToRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_34
    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    invoke-static {p1}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v4

    goto/16 :goto_1b

    :sswitch_35
    const-wide p1, 0x400921fb54442d18L    # Math.PI

    goto/16 :goto_4

    :sswitch_36
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->log10(D)D

    move-result-wide p1

    goto/16 :goto_4

    :sswitch_37
    iget-object p1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->logIsLogBase10:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    goto/16 :goto_4

    :sswitch_38
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    goto/16 :goto_4

    :sswitch_39
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    goto/16 :goto_4

    :sswitch_3a
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    goto/16 :goto_4

    :sswitch_3b
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpl-double v0, p1, p3

    if-eqz v0, :cond_1f

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    div-double/2addr p3, p1

    invoke-static {p3, p4}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v4

    goto/16 :goto_1b

    :cond_1f
    const/16 p1, 0x55fc

    invoke-virtual {p0}, Lorg/h2/expression/Function;->getSQL()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :sswitch_3c
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    goto/16 :goto_4

    :sswitch_3d
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    goto/16 :goto_4

    :cond_20
    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p2, p1, [C

    sub-int/2addr p1, v1

    :goto_1a
    if-ltz p1, :cond_21

    const/16 p3, 0x20

    aput-char p3, p2, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1a

    :cond_21
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_0

    :cond_22
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/Function;->getSoundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_23
    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/Function;->rawToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_24
    const-wide/16 p3, 0x2

    goto/16 :goto_1

    :cond_25
    if-eqz p2, :cond_26

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getRandom()Ljava/util/Random;

    move-result-object p3

    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p3, v0, v1}, Ljava/util/Random;->setSeed(J)V

    :cond_26
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getRandom()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide p1

    goto/16 :goto_4

    :cond_27
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    goto/16 :goto_4

    :cond_28
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    goto/16 :goto_4

    :cond_29
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    goto/16 :goto_4

    :cond_2a
    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    goto/16 :goto_4

    :cond_2b
    invoke-virtual {p2}, Lorg/h2/value/Value;->getSignum()I

    move-result p1

    if-ltz p1, :cond_2c

    goto/16 :goto_14

    :cond_2c
    invoke-virtual {p2}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object p2

    goto/16 :goto_14

    :cond_2d
    :goto_1b
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3d
        0x9 -> :sswitch_3c
        0xa -> :sswitch_3b
        0xb -> :sswitch_3a
        0xc -> :sswitch_39
        0xd -> :sswitch_38
        0xe -> :sswitch_37
        0xf -> :sswitch_36
        0x11 -> :sswitch_35
        0x1c -> :sswitch_34
        0x38 -> :sswitch_33
        0x3b -> :sswitch_32
        0x3d -> :sswitch_31
        0x55 -> :sswitch_30
        0x56 -> :sswitch_2f
        0x57 -> :sswitch_2e
        0x5c -> :sswitch_2d
        0x64 -> :sswitch_2c
        0x65 -> :sswitch_2b
        0x68 -> :sswitch_2a
        0x69 -> :sswitch_29
        0x6a -> :sswitch_28
        0x6b -> :sswitch_27
        0x6c -> :sswitch_26
        0x6d -> :sswitch_25
        0x6e -> :sswitch_24
        0x6f -> :sswitch_23
        0x70 -> :sswitch_22
        0x71 -> :sswitch_21
        0x72 -> :sswitch_20
        0x73 -> :sswitch_1f
        0x74 -> :sswitch_1e
        0x75 -> :sswitch_2c
        0x76 -> :sswitch_2b
        0x77 -> :sswitch_22
        0x7b -> :sswitch_1d
        0x7c -> :sswitch_1c
        0x7d -> :sswitch_1b
        0x96 -> :sswitch_1a
        0x97 -> :sswitch_19
        0x98 -> :sswitch_19
        0x99 -> :sswitch_18
        0x9a -> :sswitch_17
        0x9b -> :sswitch_16
        0x9c -> :sswitch_15
        0x9d -> :sswitch_14
        0x9e -> :sswitch_13
        0x9f -> :sswitch_12
        0xc8 -> :sswitch_11
        0xc9 -> :sswitch_10
        0xca -> :sswitch_f
        0xcb -> :sswitch_f
        0xcc -> :sswitch_e
        0xce -> :sswitch_d
        0xd1 -> :sswitch_c
        0xd4 -> :sswitch_b
        0xd5 -> :sswitch_a
        0xd6 -> :sswitch_9
        0xd7 -> :sswitch_8
        0xd8 -> :sswitch_7
        0xd9 -> :sswitch_6
        0xdb -> :sswitch_5
        0xdc -> :sswitch_5
        0xdd -> :sswitch_4
        0xe2 -> :sswitch_3
        0xe4 -> :sswitch_2
        0xe5 -> :sswitch_1
        0xe6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4a
        :pswitch_4
        :pswitch_16
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSoundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    new-array v2, v1, [C

    const/4 v3, 0x0

    const/16 v4, 0x30

    aput-char v4, v2, v3

    const/4 v5, 0x1

    aput-char v4, v2, v5

    const/4 v5, 0x2

    aput-char v4, v2, v5

    const/4 v5, 0x3

    aput-char v4, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    if-ge v6, v1, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sget-object v8, Lorg/h2/expression/Function;->SOUNDEX_INDEX:[C

    array-length v9, v8

    if-le v7, v9, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    aget-char v8, v8, v7

    :goto_1
    if-eqz v8, :cond_3

    if-nez v6, :cond_1

    add-int/lit8 v4, v6, 0x1

    aput-char v7, v2, v6

    :goto_2
    move v6, v4

    :goto_3
    move v4, v8

    goto :goto_4

    :cond_1
    const/16 v7, 0x36

    if-gt v8, v7, :cond_2

    if-eq v8, v4, :cond_3

    add-int/lit8 v4, v6, 0x1

    aput-char v8, v2, v6

    goto :goto_2

    :cond_2
    const/16 v7, 0x37

    if-ne v8, v7, :cond_3

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private getValueWithArgs(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/Value;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    array-length v4, v2

    new-array v4, v4, [Lorg/h2/value/Value;

    iget-object v5, v1, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-boolean v5, v5, Lorg/h2/expression/FunctionInfo;->nullIfParameterIsNull:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_1

    aget-object v7, v2, v5

    invoke-virtual {v7, v0}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v7

    sget-object v8, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v7, v8, :cond_0

    return-object v8

    :cond_0
    aput-object v7, v4, v5

    add-int/2addr v5, v3

    goto :goto_0

    :cond_1
    invoke-static {v0, v2, v4, v6}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-direct {v1, v0, v5, v2, v4}, Lorg/h2/expression/Function;->getSimpleValue(Lorg/h2/engine/Session;Lorg/h2/value/Value;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v7

    if-eqz v7, :cond_2

    return-object v7

    :cond_2
    invoke-static {v0, v2, v4, v3}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v0, v2, v4, v8}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v0, v2, v4, v9}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v0, v2, v4, v10}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v11

    const/4 v12, 0x5

    invoke-static {v0, v2, v4, v12}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v13

    iget-object v14, v1, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v14, v14, Lorg/h2/expression/FunctionInfo;->type:I

    if-eq v14, v10, :cond_55

    if-eq v14, v12, :cond_54

    const/4 v10, 0x6

    if-eq v14, v10, :cond_53

    const/4 v12, 0x7

    if-eq v14, v12, :cond_52

    const/16 v15, 0x39

    if-eq v14, v15, :cond_50

    const/16 v15, 0x3a

    if-eq v14, v15, :cond_4e

    const/16 v15, 0x3e

    if-eq v14, v15, :cond_4c

    const/16 v15, 0x3f

    const-string v16, " "

    if-eq v14, v15, :cond_4a

    const/16 v15, 0x48

    if-eq v14, v15, :cond_47

    const/16 v15, 0x49

    if-eq v14, v15, :cond_47

    const/16 v15, 0x4d

    if-eq v14, v15, :cond_46

    const/16 v15, 0x4e

    if-eq v14, v15, :cond_44

    const/16 v15, 0x53

    if-eq v14, v15, :cond_43

    const/16 v15, 0x54

    const/16 v17, 0x0

    if-eq v14, v15, :cond_3d

    const-wide/16 v18, 0x0

    move-object v15, v13

    const-wide/16 v21, 0x0

    const/16 v12, 0x3d

    const-string v13, ""

    const/16 v10, 0x5609

    sparse-switch v14, :sswitch_data_0

    packed-switch v14, :pswitch_data_0

    packed-switch v14, :pswitch_data_1

    packed-switch v14, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v2, v2, Lorg/h2/expression/FunctionInfo;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-nez v8, :cond_3

    :goto_1
    move-object/from16 v3, v17

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    :goto_2
    invoke-static {v0, v2, v3, v6}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_56

    :pswitch_1
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-nez v8, :cond_4

    :goto_4
    move-object/from16 v4, v17

    goto :goto_5

    :cond_4
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    :goto_5
    invoke-static {v0, v2, v4, v3}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_2
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v13

    :cond_6
    :goto_6
    invoke-static {v13}, Lorg/h2/expression/Function;->makeRegexpFlags(Ljava/lang/String;)I

    move-result v0

    :try_start_0
    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v4

    iget-boolean v4, v4, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v0, v4}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_56

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_9

    :goto_7
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :goto_8
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :goto_9
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_3
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_7

    invoke-static {v0}, Lorg/h2/util/StringUtils;->xmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v7}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lorg/h2/util/StringUtils;->xmlText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_8

    :goto_a
    move-object/from16 v2, v16

    goto :goto_b

    :cond_8
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v16

    goto :goto_a

    :goto_b
    invoke-static {v0, v6, v3, v2}, Lorg/h2/util/StringUtils;->trim(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    invoke-static {v0, v2}, Lorg/h2/expression/Function;->right(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    if-nez v8, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v13

    :goto_c
    invoke-static {v0, v2, v13}, Lorg/h2/expression/Function;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/h2/expression/Function;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_8
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    :cond_a
    move-object/from16 v0, v17

    invoke-static {}, Lorg/h2/tools/CompressTool;->getInstance()Lorg/h2/tools/CompressTool;

    move-result-object v2

    invoke-virtual {v5}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/h2/tools/CompressTool;->compress([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v7

    goto/16 :goto_56

    :pswitch_9
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->decrypt(Ljava/lang/String;[B[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v7

    goto/16 :goto_56

    :pswitch_a
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->encrypt(Ljava/lang/String;[B[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v7

    goto/16 :goto_56

    :pswitch_b
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->getHash(Ljava/lang/String;[BI)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v7

    goto/16 :goto_56

    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v6

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSchemaName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->getVariable(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_56

    :sswitch_1
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v13

    :cond_c
    :goto_d
    invoke-static {v13}, Lorg/h2/expression/Function;->makeRegexpFlags(Ljava/lang/String;)I

    move-result v0

    :try_start_1
    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v7
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_56

    :catch_3
    move-exception v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-static {v3, v0}, Lorg/h2/util/IOUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_56

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_56

    :catch_4
    move-exception v0

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    if-eqz v3, :cond_d

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_e
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_f
    invoke-static {v0, v2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :sswitch_3
    invoke-static {}, Lorg/h2/engine/Constants;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :sswitch_4
    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v2, v3, v0}, Lorg/h2/value/Value;->convertPrecision(JZ)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_56

    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    array-length v2, v2

    if-ne v2, v3, :cond_e

    goto :goto_10

    :cond_e
    const/4 v3, 0x0

    :goto_10
    :try_start_8
    invoke-static {v4}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v5

    new-instance v2, Lorg/h2/util/AutoCloseInputStream;

    invoke-static {v4}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/h2/util/AutoCloseInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz v3, :cond_f

    iget-object v3, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v3

    invoke-interface {v3, v2, v5, v6}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object v2

    :goto_11
    move-object v7, v2

    goto :goto_13

    :catch_5
    move-exception v0

    goto :goto_14

    :cond_f
    sget-object v3, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v7, v3, :cond_10

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_12

    :cond_10
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_12
    iget-object v2, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v2

    invoke-interface {v2, v3, v5, v6}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object v2

    goto :goto_11

    :goto_13
    invoke-virtual {v0, v7}, Lorg/h2/engine/Session;->addTemporaryLob(Lorg/h2/value/Value;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_56

    :goto_14
    invoke-static {v0, v4}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :sswitch_6
    aget-object v2, v2, v6

    check-cast v2, Lorg/h2/expression/Variable;

    invoke-virtual {v2}, Lorg/h2/expression/Variable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lorg/h2/engine/Session;->setVariable(Ljava/lang/String;Lorg/h2/value/Value;)V

    goto/16 :goto_56

    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {v0, v6}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v16

    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v11}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v15}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v16 .. v22}, Lorg/h2/table/LinkSchema;->linkSchema(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object v7

    goto/16 :goto_56

    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {v0, v6}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v3

    new-instance v6, Lorg/h2/tools/Csv;

    invoke-direct {v6}, Lorg/h2/tools/Csv;-><init>()V

    if-nez v8, :cond_11

    move-object/from16 v8, v17

    goto :goto_15

    :cond_11
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v8

    :goto_15
    if-eqz v8, :cond_12

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_12

    invoke-virtual {v6, v8}, Lorg/h2/tools/Csv;->setOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1e

    :cond_12
    if-nez v9, :cond_13

    move-object/from16 v9, v17

    goto :goto_16

    :cond_13
    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v9

    :goto_16
    if-nez v11, :cond_14

    move-object/from16 v10, v17

    goto :goto_17

    :cond_14
    invoke-virtual {v11}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v10

    :goto_17
    if-nez v15, :cond_15

    move-object/from16 v11, v17

    :goto_18
    const/4 v12, 0x6

    goto :goto_19

    :cond_15
    invoke-virtual {v15}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v11

    goto :goto_18

    :goto_19
    invoke-static {v0, v2, v4, v12}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v12

    if-nez v12, :cond_16

    move-object/from16 v12, v17

    :goto_1a
    const/4 v13, 0x7

    goto :goto_1b

    :cond_16
    invoke-virtual {v12}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1a

    :goto_1b
    invoke-static {v0, v2, v4, v13}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v0

    if-nez v0, :cond_17

    :goto_1c
    move-object/from16 v0, v17

    goto :goto_1d

    :cond_17
    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_1c

    :goto_1d
    invoke-static {v6, v9, v10, v11}, Lorg/h2/expression/Function;->setCsvDelimiterEscape(Lorg/h2/tools/Csv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Lorg/h2/tools/Csv;->setNullString(Ljava/lang/String;)V

    if-eqz v0, :cond_18

    invoke-virtual {v6, v0}, Lorg/h2/tools/Csv;->setLineSeparator(Ljava/lang/String;)V

    :cond_18
    :goto_1e
    :try_start_9
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v3, v0, v2, v8}, Lorg/h2/tools/Csv;->write(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_56

    :catch_6
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :sswitch_9
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v5

    if-nez v7, :cond_19

    move-object/from16 v6, v17

    goto :goto_1f

    :cond_19
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v6

    :goto_1f
    new-instance v7, Lorg/h2/tools/Csv;

    invoke-direct {v7}, Lorg/h2/tools/Csv;-><init>()V

    if-nez v8, :cond_1a

    move-object/from16 v8, v17

    goto :goto_20

    :cond_1a
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v8

    :goto_20
    if-eqz v8, :cond_1b

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_1b

    invoke-virtual {v7, v8}, Lorg/h2/tools/Csv;->setOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_27

    :cond_1b
    if-nez v9, :cond_1c

    move-object/from16 v9, v17

    goto :goto_21

    :cond_1c
    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v9

    :goto_21
    if-nez v11, :cond_1d

    move-object/from16 v10, v17

    goto :goto_22

    :cond_1d
    invoke-virtual {v11}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v10

    :goto_22
    if-nez v15, :cond_1e

    move-object/from16 v11, v17

    :goto_23
    const/4 v12, 0x6

    goto :goto_24

    :cond_1e
    invoke-virtual {v15}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v11

    goto :goto_23

    :goto_24
    invoke-static {v0, v2, v4, v12}, Lorg/h2/expression/Function;->getNullOrValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;[Lorg/h2/value/Value;I)Lorg/h2/value/Value;

    move-result-object v0

    if-nez v0, :cond_1f

    :goto_25
    move-object/from16 v0, v17

    goto :goto_26

    :cond_1f
    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_25

    :goto_26
    invoke-static {v7, v9, v10, v11}, Lorg/h2/expression/Function;->setCsvDelimiterEscape(Lorg/h2/tools/Csv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/h2/tools/Csv;->setNullString(Ljava/lang/String;)V

    :goto_27
    invoke-virtual {v7}, Lorg/h2/tools/Csv;->getFieldSeparatorRead()C

    move-result v0

    invoke-static {v6, v0, v3}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    :try_start_a
    invoke-virtual {v7, v5, v0, v8}, Lorg/h2/tools/Csv;->read(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object v7
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_56

    :catch_7
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :sswitch_a
    invoke-direct {v1, v0, v5, v7}, Lorg/h2/expression/Function;->getSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;Lorg/h2/value/Value;)Lorg/h2/schema/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/schema/Sequence;->getCurrentValue()J

    move-result-wide v2

    :goto_28
    invoke-static {v2, v3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v7

    goto/16 :goto_56

    :sswitch_b
    invoke-direct {v1, v0, v5, v7}, Lorg/h2/expression/Function;->getSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;Lorg/h2/value/Value;)Lorg/h2/schema/Sequence;

    move-result-object v2

    new-instance v3, Lorg/h2/expression/SequenceValue;

    invoke-direct {v3, v2}, Lorg/h2/expression/SequenceValue;-><init>(Lorg/h2/schema/Sequence;)V

    invoke-virtual {v3, v0}, Lorg/h2/expression/SequenceValue;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v7

    goto/16 :goto_56

    :sswitch_c
    iget-object v0, v1, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v5, v7}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v5, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :cond_20
    move-object v7, v5

    goto/16 :goto_56

    :sswitch_d
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v5, v0, :cond_26

    if-ne v7, v0, :cond_21

    goto :goto_2e

    :cond_21
    if-nez v8, :cond_22

    :goto_29
    move-object/from16 v2, v17

    goto :goto_2a

    :cond_22
    if-ne v8, v0, :cond_23

    goto :goto_29

    :cond_23
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    if-nez v9, :cond_24

    :goto_2b
    move-object/from16 v0, v17

    goto :goto_2c

    :cond_24
    if-ne v9, v0, :cond_25

    goto :goto_2b

    :cond_25
    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_2b

    :goto_2c
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v0}, Lorg/h2/util/DateTimeUtils;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_2d
    invoke-static {v2, v3}, Lorg/h2/value/ValueTimestamp;->fromMillis(J)Lorg/h2/value/ValueTimestamp;

    move-result-object v7

    goto/16 :goto_56

    :cond_26
    :goto_2e
    move-object v7, v0

    goto/16 :goto_56

    :sswitch_e
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v5, v0, :cond_26

    if-ne v7, v0, :cond_27

    goto :goto_2e

    :cond_27
    if-nez v8, :cond_28

    :goto_2f
    move-object/from16 v2, v17

    goto :goto_30

    :cond_28
    if-ne v8, v0, :cond_29

    goto :goto_2f

    :cond_29
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_30
    if-nez v9, :cond_2a

    :goto_31
    move-object/from16 v0, v17

    goto :goto_32

    :cond_2a
    if-ne v9, v0, :cond_2b

    goto :goto_31

    :cond_2b
    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_31

    :goto_32
    invoke-virtual {v5}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v3

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v0}, Lorg/h2/util/DateTimeUtils;->formatDateTime(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :sswitch_f
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/Function;->getDatePart(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/h2/util/DateTimeUtils;->getDatePart(Ljava/util/Date;I)I

    move-result v0

    :goto_33
    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7

    goto/16 :goto_56

    :sswitch_10
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->datediff(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/sql/Timestamp;)J

    move-result-wide v2

    goto/16 :goto_28

    :sswitch_11
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lorg/h2/expression/Function;->dateadd(Ljava/lang/String;JLjava/sql/Timestamp;)Ljava/sql/Timestamp;

    move-result-object v0

    :goto_34
    invoke-static {v0}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object v7

    goto/16 :goto_56

    :sswitch_12
    invoke-virtual {v5}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    invoke-static {v0, v2}, Lorg/h2/util/DateTimeUtils;->addMonths(Ljava/sql/Timestamp;I)Ljava/sql/Timestamp;

    move-result-object v0

    goto :goto_34

    :sswitch_13
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_2c

    :goto_35
    move-object/from16 v2, v17

    goto :goto_36

    :cond_2c
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_35

    :goto_36
    invoke-static {v0, v2}, Lorg/h2/util/ToDateParser;->toTimestamp(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    goto :goto_34

    :sswitch_14
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_2d

    :goto_37
    move-object/from16 v2, v17

    goto :goto_38

    :cond_2d
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_37

    :goto_38
    invoke-static {v0, v2}, Lorg/h2/util/ToDateParser;->toDate(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    goto :goto_34

    :sswitch_15
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_2e

    move-object/from16 v2, v17

    goto :goto_39

    :cond_2e
    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_39
    if-nez v8, :cond_2f

    :goto_3a
    move-object/from16 v3, v17

    goto :goto_3b

    :cond_2f
    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_3a

    :goto_3b
    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->oraHash(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    goto/16 :goto_28

    :sswitch_16
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lorg/h2/expression/Function;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :sswitch_17
    invoke-virtual {v5}, Lorg/h2/value/Value;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v5}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    if-nez v7, :cond_30

    move-object/from16 v2, v17

    goto :goto_3c

    :cond_30
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_3c
    if-nez v8, :cond_31

    :goto_3d
    move-object/from16 v3, v17

    goto :goto_3e

    :cond_31
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3d

    :goto_3e
    invoke-static {v0, v2, v3}, Lorg/h2/util/ToChar;->toChar(Ljava/sql/Timestamp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v5}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v7, :cond_32

    move-object/from16 v2, v17

    goto :goto_3f

    :cond_32
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_3f
    if-nez v8, :cond_33

    :goto_40
    move-object/from16 v3, v17

    goto :goto_41

    :cond_33
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_40

    :goto_41
    invoke-static {v0, v2, v3}, Lorg/h2/util/ToChar;->toChar(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :sswitch_18
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    invoke-static {v0, v2}, Lorg/h2/expression/Function;->left(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :sswitch_19
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/h2/expression/Function;->getDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_33

    :sswitch_1a
    invoke-virtual {v5}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v4

    const-wide/16 v8, 0x1

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    shl-long v7, v8, v0

    and-long/2addr v4, v7

    cmp-long v0, v4, v21

    if-eqz v0, :cond_34

    goto :goto_42

    :cond_34
    const/4 v3, 0x0

    :goto_42
    invoke-static {v3}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v7

    goto/16 :goto_56

    :sswitch_1b
    invoke-virtual {v5}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v2, 0xe

    const/16 v3, 0xc

    const/16 v4, 0xd

    const/16 v8, 0xb

    if-ne v0, v8, :cond_35

    invoke-virtual {v5}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5, v3, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5, v4, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5, v2, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto/16 :goto_2d

    :cond_35
    invoke-virtual {v5}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v9, 0xa

    if-ne v0, v9, :cond_36

    check-cast v5, Lorg/h2/value/ValueDate;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v5}, Lorg/h2/value/ValueDate;->getDate()Ljava/sql/Date;

    move-result-object v5

    :goto_43
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto/16 :goto_2d

    :cond_36
    invoke-virtual {v5}, Lorg/h2/value/Value;->getType()I

    move-result v0

    if-ne v0, v4, :cond_37

    check-cast v5, Lorg/h2/value/ValueString;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v5}, Lorg/h2/value/ValueString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/value/ValueTimestamp;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object v5

    goto :goto_43

    :cond_37
    invoke-virtual {v5}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    if-nez v7, :cond_38

    goto :goto_44

    :cond_38
    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v6

    :goto_44
    int-to-double v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v6, v2, v4

    cmpg-double v0, v2, v18

    if-gez v0, :cond_39

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_45

    :cond_39
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    :goto_45
    div-double/2addr v2, v4

    :goto_46
    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v7

    goto/16 :goto_56

    :sswitch_1c
    if-nez v7, :cond_3a

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_47

    :cond_3a
    invoke-virtual {v7}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    :goto_47
    invoke-virtual {v5}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v4

    mul-double v4, v4, v6

    cmpl-double v0, v4, v18

    if-lez v0, :cond_3b

    goto :goto_48

    :cond_3b
    const/4 v3, -0x1

    :goto_48
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    int-to-double v2, v3

    mul-double v4, v4, v2

    invoke-static {v4, v5}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object v7

    goto/16 :goto_56

    :sswitch_1d
    invoke-virtual {v5}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    invoke-virtual {v7}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_46

    :sswitch_1e
    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    cmp-long v0, v2, v21

    if-eqz v0, :cond_3c

    invoke-virtual {v5}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v4

    rem-long/2addr v4, v2

    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v7

    goto/16 :goto_56

    :cond_3c
    const/16 v0, 0x55fc

    invoke-virtual/range {p0 .. p0}, Lorg/h2/expression/Function;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3d
    if-nez v7, :cond_3e

    :goto_49
    move-object/from16 v0, v17

    goto :goto_4a

    :cond_3e
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v7, v0, :cond_3f

    goto :goto_49

    :cond_3f
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_4a
    if-nez v8, :cond_40

    :goto_4b
    move-object/from16 v2, v17

    goto :goto_4c

    :cond_40
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v8, v2, :cond_41

    goto :goto_4b

    :cond_41
    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_4b

    :goto_4c
    if-nez v9, :cond_42

    goto :goto_4d

    :cond_42
    invoke-virtual {v9}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_4d
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v2, v3}, Lorg/h2/util/StringUtils;->xmlNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_43
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/h2/util/StringUtils;->xmlAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_44
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_45

    :goto_4e
    move-object/from16 v2, v16

    goto :goto_4f

    :cond_45
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v16

    goto :goto_4e

    :goto_4f
    invoke-static {v0, v3, v3, v2}, Lorg/h2/util/StringUtils;->trim(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_46
    :goto_50
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_51
    invoke-static {v0, v2, v6}, Lorg/h2/expression/Function;->locate(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_33

    :cond_47
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-gez v2, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v2, v4, 0x1

    :cond_48
    if-nez v8, :cond_49

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_52

    :cond_49
    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v3

    :goto_52
    invoke-static {v0, v2, v3}, Lorg/h2/expression/Function;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_4a
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_4b

    :goto_53
    move-object/from16 v2, v16

    goto :goto_54

    :cond_4b
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v16

    goto :goto_53

    :goto_54
    invoke-static {v0, v3, v6, v2}, Lorg/h2/util/StringUtils;->trim(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_4c
    if-nez v8, :cond_4d

    goto :goto_50

    :cond_4d
    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v6

    goto :goto_50

    :cond_4e
    if-nez v8, :cond_4f

    goto :goto_55

    :cond_4f
    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v6

    :goto_55
    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_51

    :cond_50
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v7, v0, :cond_56

    if-ne v8, v0, :cond_51

    goto :goto_56

    :cond_51
    invoke-virtual {v5}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    invoke-virtual {v8}, Lorg/h2/value/Value;->getInt()I

    move-result v3

    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lorg/h2/expression/Function;->insert(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_52
    invoke-virtual {v5}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v4

    xor-long/2addr v2, v4

    goto/16 :goto_28

    :cond_53
    invoke-virtual {v5}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v4

    or-long/2addr v2, v4

    goto/16 :goto_28

    :cond_54
    invoke-virtual {v5}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v2

    invoke-virtual {v7}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v4

    and-long/2addr v2, v4

    goto/16 :goto_28

    :cond_55
    invoke-virtual {v5}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v2

    invoke-virtual {v7}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    goto/16 :goto_46

    :cond_56
    :goto_56
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1e
        0x12 -> :sswitch_1d
        0x15 -> :sswitch_1c
        0x1b -> :sswitch_1b
        0x28 -> :sswitch_1a
        0x37 -> :sswitch_19
        0x3c -> :sswitch_18
        0x5d -> :sswitch_17
        0x5e -> :sswitch_16
        0x5f -> :sswitch_15
        0x60 -> :sswitch_14
        0x61 -> :sswitch_13
        0x62 -> :sswitch_12
        0x66 -> :sswitch_11
        0x67 -> :sswitch_10
        0x78 -> :sswitch_f
        0x79 -> :sswitch_e
        0x7a -> :sswitch_d
        0xcd -> :sswitch_c
        0xcf -> :sswitch_b
        0xd0 -> :sswitch_a
        0xd2 -> :sswitch_9
        0xd3 -> :sswitch_8
        0xda -> :sswitch_7
        0xde -> :sswitch_6
        0xe1 -> :sswitch_5
        0xe3 -> :sswitch_4
        0xe7 -> :sswitch_3
        0xe8 -> :sswitch_2
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x58
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private static hexToRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v1, v0, 0x4

    const/16 v2, 0x5602

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v3, v0, 0x4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x4

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    invoke-static {v2, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v2, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static insert(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p3

    .line 4
    :cond_0
    if-nez p3, :cond_1

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    if-ltz p1, :cond_4

    .line 18
    .line 19
    if-lez p2, :cond_4

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    if-le p1, v0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    add-int v1, p1, p2

    .line 27
    .line 28
    if-le v1, v0, :cond_3

    .line 29
    .line 30
    sub-int p2, v0, p1

    .line 31
    .line 32
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    add-int/2addr p1, p2

    .line 49
    invoke-static {p0, p1, v0}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_4
    :goto_0
    return-object p0
.end method

.method public static isDatePart(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/h2/expression/Function;->DATE_PART:Ljava/util/HashMap;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static length(Lorg/h2/value/Value;)J
    .locals 2

    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method private static locate(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    if-gez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    :goto_1
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0
.end method

.method private static strictfp log10(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/h2/expression/Function;->roundMagic(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static makeRegexpFlags(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x40

    if-eqz p0, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_3

    const/16 v3, 0x69

    if-eq v2, v3, :cond_2

    const/16 v3, 0x6d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_0

    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    :cond_0
    const v0, 0x15f98

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_2
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    and-int/lit8 v0, v0, -0x3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private static oraHash(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0x11

    mul-int p0, p0, p2

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/2addr p0, p1

    :cond_2
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static rawToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int v1, v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, -0x1

    .line 34
    if-ne v3, v4, :cond_2

    .line 35
    .line 36
    invoke-static {p0, v2, v0}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    add-int v2, v3, v1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method private static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static roundMagic(D)D
    .locals 4

    const-wide v0, 0x3d3c25c268497682L    # 1.0E-13

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-wide v0, -0x42c3da3d97b6897eL    # -1.0E-13

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const-wide v0, 0x426d1a94a2000000L    # 1.0E12

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_7

    const-wide v0, -0x3d92e56b5e000000L    # -1.0E12

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    return-wide p0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    return-wide p0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v3, v1, -0x3

    if-le v2, v3, :cond_4

    return-wide p0

    :cond_4
    add-int/lit8 p0, v1, -0x2

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v1, -0x4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    add-int/lit8 p1, v1, -0x5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    add-int/lit8 v2, v1, -0x6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne p0, v3, :cond_5

    if-ne p1, v3, :cond_5

    if-ne v2, v3, :cond_5

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0

    :cond_5
    const/16 v3, 0x39

    if-ne p0, v3, :cond_6

    if-ne p1, v3, :cond_6

    if-ne v2, v3, :cond_6

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    :cond_7
    :goto_1
    return-wide p0
.end method

.method private static setCsvDelimiterEscape(Lorg/h2/tools/Csv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/tools/Csv;->setFieldSeparatorWrite(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/Csv;->setFieldSeparatorRead(C)V

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/h2/tools/Csv;->setFieldDelimiter(C)V

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/tools/Csv;->setEscapeCharacter(C)V

    :cond_4
    return-void
.end method

.method private static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    add-int v1, p1, p2

    if-le v1, v0, :cond_3

    sub-int p2, v0, p1

    :cond_3
    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-lez v4, :cond_2

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-ge v6, v1, :cond_3

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    :goto_2
    return-object p0
.end method


# virtual methods
.method public checkParameterCount(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    .line 2
    .line 3
    iget v0, v0, Lorg/h2/expression/FunctionInfo;->type:I

    .line 4
    .line 5
    const/16 v1, 0x14

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v0, v1, :cond_5

    .line 10
    .line 11
    const/16 v1, 0x15

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x3e

    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x3f

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x48

    .line 26
    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    const/16 v1, 0x49

    .line 30
    .line 31
    if-eq v0, v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x79

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    if-eq v0, v1, :cond_4

    .line 37
    .line 38
    const/16 v1, 0x7a

    .line 39
    .line 40
    if-eq v0, v1, :cond_4

    .line 41
    .line 42
    const/16 v1, 0xd2

    .line 43
    .line 44
    const v7, 0x7fffffff

    .line 45
    .line 46
    .line 47
    if-eq v0, v1, :cond_0

    .line 48
    .line 49
    const/16 v1, 0xd3

    .line 50
    .line 51
    if-eq v0, v1, :cond_3

    .line 52
    .line 53
    const/16 v1, 0xdb

    .line 54
    .line 55
    if-eq v0, v1, :cond_0

    .line 56
    .line 57
    const/16 v1, 0xdc

    .line 58
    .line 59
    if-eq v0, v1, :cond_0

    .line 60
    .line 61
    sparse-switch v0, :sswitch_data_0

    .line 62
    .line 63
    .line 64
    packed-switch v0, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    packed-switch v0, :pswitch_data_1

    .line 68
    .line 69
    .line 70
    packed-switch v0, :pswitch_data_2

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, "type="

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    .line 81
    .line 82
    iget v1, v1, Lorg/h2/expression/FunctionInfo;->type:I

    .line 83
    .line 84
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    :cond_0
    :goto_0
    :sswitch_0
    const v5, 0x7fffffff

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    :pswitch_0
    :sswitch_1
    const/4 v5, 0x2

    .line 93
    goto :goto_2

    .line 94
    :pswitch_1
    const/4 v2, 0x3

    .line 95
    :goto_1
    :sswitch_2
    const/4 v5, 0x4

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    :pswitch_2
    :sswitch_3
    const/4 v2, 0x2

    .line 98
    goto :goto_2

    .line 99
    :pswitch_3
    :sswitch_4
    const/4 v2, 0x3

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    :pswitch_4
    :sswitch_5
    const/4 v2, 0x2

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    const/4 v2, 0x2

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    :sswitch_6
    const/4 v2, 0x0

    .line 106
    const/4 v5, 0x1

    .line 107
    :goto_2
    :pswitch_5
    if-lt p1, v2, :cond_6

    .line 108
    .line 109
    if-gt p1, v5, :cond_6

    .line 110
    .line 111
    return-void

    .line 112
    :cond_6
    iget-object p1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    .line 113
    .line 114
    iget-object p1, p1, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ".."

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const/16 v0, 0x1b59

    .line 141
    .line 142
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    throw p1

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_1
        0x20 -> :sswitch_1
        0x36 -> :sswitch_5
        0x3a -> :sswitch_3
        0x43 -> :sswitch_3
        0x45 -> :sswitch_1
        0x4e -> :sswitch_1
        0x54 -> :sswitch_2
        0x70 -> :sswitch_6
        0x77 -> :sswitch_6
        0xcc -> :sswitch_0
        0xe1 -> :sswitch_1
        0xe5 -> :sswitch_4
        0xf0 -> :sswitch_3
    .end sparse-switch

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :pswitch_data_1
    .packed-switch 0x5f
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :pswitch_data_2
    .packed-switch 0xce
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public doneWithParameters()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    .line 2
    .line 3
    iget v1, v0, Lorg/h2/expression/FunctionInfo;->parameterCount:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/h2/expression/Function;->varArgs:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lorg/h2/expression/Function;->checkParameterCount(I)V

    .line 15
    .line 16
    .line 17
    new-array v0, v0, [Lorg/h2/expression/Expression;

    .line 18
    .line 19
    iput-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/h2/expression/Function;->varArgs:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lorg/h2/expression/Function;->varArgs:Ljava/util/ArrayList;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    .line 31
    .line 32
    array-length v2, v1

    .line 33
    if-lez v2, :cond_2

    .line 34
    .line 35
    add-int/lit8 v3, v2, -0x1

    .line 36
    .line 37
    aget-object v1, v1, v3

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, v0, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, ""

    .line 45
    .line 46
    invoke-static {v2, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/16 v1, 0x1b59

    .line 55
    .line 56
    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    throw v0

    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method public getArgs()[Lorg/h2/expression/Expression;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getCost()I
    .locals 5

    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getCost()I

    move-result v4

    add-int/2addr v4, v2

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getDisplaySize()I
    .locals 5

    iget-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lorg/h2/expression/Function;->calculatePrecisionAndDisplaySize()V

    :cond_0
    iget v0, p0, Lorg/h2/expression/Function;->displaySize:I

    return v0
.end method

.method public getFunctionType()I
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v0, v0, Lorg/h2/expression/FunctionInfo;->type:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-object v0, v0, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision()J
    .locals 5

    iget-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lorg/h2/expression/Function;->calculatePrecisionAndDisplaySize()V

    :cond_0
    iget-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 12

    new-instance v0, Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-object v1, v1, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v1, v1, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v2, 0xce

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v1

    sub-int/2addr v1, v3

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    const-string v4, " WHEN "

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const-string v4, " THEN "

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const-string v1, " ELSE "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v4, v2

    sub-int/2addr v4, v3

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_2
    const-string v1, " END"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v1, v1, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v2, 0x78

    if-eq v1, v2, :cond_7

    const/16 v2, 0xca

    if-eq v1, v2, :cond_5

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v2, v1

    :goto_2
    if-ge v4, v2, :cond_8

    aget-object v3, v1, v4

    const-string v5, ", "

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    new-instance v9, Lorg/h2/table/Column;

    iget v4, p0, Lorg/h2/expression/Function;->dataType:I

    iget-wide v5, p0, Lorg/h2/expression/Function;->precision:J

    iget v7, p0, Lorg/h2/expression/Function;->scale:I

    iget v8, p0, Lorg/h2/expression/Function;->displaySize:I

    const/4 v3, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    :goto_3
    invoke-virtual {v9}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_6

    :cond_5
    iget-object v1, p0, Lorg/h2/expression/Function;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/Mode;->swapConvertFunctionParameters:Z

    const/16 v2, 0x2c

    if-eqz v1, :cond_6

    new-instance v1, Lorg/h2/table/Column;

    iget v7, p0, Lorg/h2/expression/Function;->dataType:I

    iget-wide v8, p0, Lorg/h2/expression/Function;->precision:J

    iget v10, p0, Lorg/h2/expression/Function;->scale:I

    iget v11, p0, Lorg/h2/expression/Function;->displaySize:I

    const/4 v6, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    invoke-virtual {v1}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v2, v2, v4

    :goto_5
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    new-instance v9, Lorg/h2/table/Column;

    iget v4, p0, Lorg/h2/expression/Function;->dataType:I

    iget-wide v5, p0, Lorg/h2/expression/Function;->precision:J

    iget v7, p0, Lorg/h2/expression/Function;->scale:I

    iget v8, p0, Lorg/h2/expression/Function;->displaySize:I

    const/4 v3, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v1, v1, v4

    check-cast v1, Lorg/h2/expression/ValueExpression;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/expression/ValueExpression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    check-cast v1, Lorg/h2/value/ValueString;

    invoke-virtual {v1}, Lorg/h2/value/ValueString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v2, v2, v3

    goto :goto_5

    :cond_8
    :goto_6
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public getScale()I
    .locals 1

    iget v0, p0, Lorg/h2/expression/Function;->scale:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/expression/Function;->dataType:I

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    invoke-direct {p0, p1, v0}, Lorg/h2/expression/Function;->getValueWithArgs(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public getValueForColumnList(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/ValueResultSet;
    .locals 12

    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v0, v0, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/h2/expression/Function;->getValueWithArgs(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueResultSet;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1

    move-object v2, v5

    goto :goto_0

    :cond_1
    aget-object v2, p2, v3

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v6, Lorg/h2/tools/Csv;

    invoke-direct {v6}, Lorg/h2/tools/Csv;-><init>()V

    array-length v7, p2

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    move-object v4, v5

    goto :goto_1

    :cond_2
    aget-object v4, p2, v4

    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    invoke-virtual {v6, v4}, Lorg/h2/tools/Csv;->setOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_3
    array-length v7, p2

    const/4 v9, 0x4

    if-ge v7, v9, :cond_4

    move-object v7, v5

    goto :goto_2

    :cond_4
    aget-object v7, p2, v8

    invoke-virtual {v7, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    array-length v8, p2

    const/4 v10, 0x5

    if-ge v8, v10, :cond_5

    move-object v8, v5

    goto :goto_3

    :cond_5
    aget-object v8, p2, v9

    invoke-virtual {v8, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    array-length v9, p2

    const/4 v11, 0x6

    if-ge v9, v11, :cond_6

    move-object p1, v5

    goto :goto_4

    :cond_6
    aget-object p2, p2, v10

    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-static {v6, v7, v8, p1}, Lorg/h2/expression/Function;->setCsvDelimiterEscape(Lorg/h2/tools/Csv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v6}, Lorg/h2/tools/Csv;->getFieldSeparatorRead()C

    move-result p1

    invoke-static {v2, p1, v3}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {v6, v1, p1, v4}, Lorg/h2/tools/Csv;->read(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/h2/value/ValueResultSet;->getCopy(Ljava/sql/ResultSet;I)Lorg/h2/value/ValueResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Lorg/h2/tools/Csv;->close()V

    invoke-static {v5}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    invoke-virtual {v6}, Lorg/h2/tools/Csv;->close()V

    invoke-static {v5}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    throw p1

    :cond_7
    const p1, 0x15f9c

    const-string p2, "fileName"

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public isBufferResultSetToLocalTemp()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-boolean v0, v0, Lorg/h2/expression/FunctionInfo;->bufferResultSetToLocalTemp:Z

    return v0
.end method

.method public isDeterministic()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-boolean v0, v0, Lorg/h2/expression/FunctionInfo;->deterministic:Z

    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 5

    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    iget-object p1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-boolean p1, p1, Lorg/h2/expression/FunctionInfo;->deterministic:Z

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 4

    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-boolean v2, v2, Lorg/h2/expression/FunctionInfo;->deterministic:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    aget-object v5, v5, v4

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v5

    iget-object v6, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aput-object v5, v6, v4

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    array-length v4, v5

    const/4 v6, 0x1

    if-ge v4, v6, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    aget-object v4, v5, v3

    :goto_2
    iget-object v7, v0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v8, v7, Lorg/h2/expression/FunctionInfo;->type:I

    const-wide/16 v9, 0xa

    const/4 v11, 0x4

    const/16 v12, 0xb

    if-eqz v8, :cond_17

    const/16 v13, 0xd

    if-eq v8, v13, :cond_17

    const/16 v14, 0x15

    if-eq v8, v14, :cond_17

    const/16 v15, 0x1b

    if-eq v8, v15, :cond_14

    const/16 v9, 0xde

    if-eq v8, v9, :cond_12

    const/16 v4, 0xe1

    const/16 v9, 0x10

    if-eq v8, v4, :cond_10

    const/16 v4, 0x48

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    if-eq v8, v4, :cond_d

    const/16 v4, 0x49

    if-eq v8, v4, :cond_d

    const/16 v4, 0xdb

    const/4 v15, -0x1

    if-eq v8, v4, :cond_9

    const/16 v4, 0xdc

    if-eq v8, v4, :cond_9

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    iget v11, v7, Lorg/h2/expression/FunctionInfo;->returnDataType:I

    invoke-static {v11}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v4

    iget v4, v4, Lorg/h2/value/DataType;->defaultScale:I

    const-wide/16 v9, -0x1

    move v3, v4

    const/4 v4, 0x0

    goto/16 :goto_d

    :pswitch_0
    aget-object v3, v5, v6

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    if-eq v3, v13, :cond_4

    const/16 v4, 0xe

    if-eq v3, v4, :cond_4

    if-eq v3, v9, :cond_4

    if-eq v3, v14, :cond_4

    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    iget-object v4, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getType()I

    move-result v4

    invoke-static {v3, v4}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v3

    :goto_3
    move v11, v3

    goto :goto_4

    :cond_4
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    goto :goto_3

    :goto_4
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v3

    iget-object v5, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v5, v5, v12

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v3

    iget-object v4, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getScale()I

    move-result v4

    iget-object v5, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v5, v5, v12

    :goto_5
    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getScale()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    goto/16 :goto_d

    :pswitch_1
    array-length v4, v5

    const/4 v5, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    if-ge v5, v4, :cond_6

    iget-object v14, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v14, v14, v5

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v13

    if-eq v14, v13, :cond_5

    invoke-virtual {v14}, Lorg/h2/expression/Expression;->getType()I

    move-result v13

    if-eq v13, v15, :cond_5

    if-eqz v13, :cond_5

    invoke-static {v7, v13}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v7

    invoke-virtual {v14}, Lorg/h2/expression/Expression;->getScale()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v16, v4

    invoke-virtual {v14}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v3

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v14}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-wide v10, v3

    goto :goto_7

    :cond_5
    move/from16 v16, v4

    :goto_7
    add-int/lit8 v5, v5, 0x2

    move/from16 v4, v16

    const/4 v3, 0x0

    const/16 v13, 0xd

    goto :goto_6

    :cond_6
    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v4, v3

    rem-int/2addr v4, v12

    if-nez v4, :cond_7

    array-length v4, v3

    sub-int/2addr v4, v6

    aget-object v3, v3, v4

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v4

    if-eq v3, v4, :cond_7

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v4

    if-eq v4, v15, :cond_7

    if-eqz v4, :cond_7

    invoke-static {v7, v4}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v4

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getScale()I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v5

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v11, v4

    goto :goto_8

    :cond_7
    move-wide v5, v10

    move v11, v7

    :goto_8
    if-ne v11, v15, :cond_8

    :goto_9
    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/32 v9, 0x7fffffff

    const/16 v11, 0xd

    goto/16 :goto_d

    :cond_8
    move v3, v8

    move v4, v9

    move-wide v9, v5

    goto/16 :goto_d

    :pswitch_2
    iget v11, v0, Lorg/h2/expression/Function;->dataType:I

    iget-wide v9, v0, Lorg/h2/expression/Function;->precision:J

    iget v3, v0, Lorg/h2/expression/Function;->scale:I

    iget v4, v0, Lorg/h2/expression/Function;->displaySize:I

    goto/16 :goto_d

    :pswitch_3
    aget-object v3, v5, v6

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    iget-object v4, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getType()I

    move-result v4

    invoke-static {v3, v4}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v11

    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v3

    iget-object v5, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v5, v5, v12

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v3, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v3

    iget-object v4, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getScale()I

    move-result v4

    iget-object v5, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v5, v5, v12

    goto/16 :goto_5

    :cond_9
    :pswitch_4
    array-length v3, v5

    move-wide v9, v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, -0x1

    :goto_a
    if-ge v4, v3, :cond_b

    aget-object v8, v5, v4

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v12

    if-eq v8, v12, :cond_a

    invoke-virtual {v8}, Lorg/h2/expression/Expression;->getType()I

    move-result v12

    if-eq v12, v15, :cond_a

    if-eqz v12, :cond_a

    invoke-static {v11, v12}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v11

    invoke-virtual {v8}, Lorg/h2/expression/Expression;->getScale()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v8}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v13

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v8}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    if-ne v11, v15, :cond_c

    goto/16 :goto_9

    :cond_c
    move v3, v6

    move v4, v7

    goto/16 :goto_d

    :cond_d
    iget v3, v7, Lorg/h2/expression/FunctionInfo;->returnDataType:I

    const/4 v7, 0x0

    aget-object v4, v5, v7

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v4

    iget-object v8, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v6, v8, v6

    invoke-virtual {v6, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v8

    const-wide/16 v13, 0x1

    sub-long/2addr v8, v13

    sub-long/2addr v4, v8

    :cond_e
    iget-object v6, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v8, v6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_f

    aget-object v6, v6, v12

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    aget-object v6, v6, v12

    invoke-virtual {v6, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_f
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v4

    move v11, v3

    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_10
    const/4 v7, 0x0

    array-length v3, v5

    if-ne v3, v6, :cond_11

    const/16 v3, 0xf

    const/16 v11, 0xf

    goto :goto_b

    :cond_11
    const/16 v11, 0x10

    :goto_b
    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/32 v9, 0x7fffffff

    goto :goto_d

    :cond_12
    aget-object v3, v5, v6

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v11

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v9

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getScale()I

    move-result v5

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v3

    instance-of v6, v4, Lorg/h2/expression/Variable;

    if-eqz v6, :cond_13

    move v4, v3

    move v3, v5

    goto :goto_d

    :cond_13
    const v1, 0x16019

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v7, 0x0

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getScale()I

    move-result v5

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v13

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v4

    if-nez v3, :cond_15

    :goto_c
    const/4 v3, 0x0

    const/16 v4, 0xb

    goto :goto_d

    :cond_15
    if-ne v3, v12, :cond_16

    const/16 v11, 0xa

    const-wide/16 v9, 0x8

    const/4 v3, 0x0

    const/16 v4, 0xa

    goto :goto_d

    :cond_16
    move v11, v3

    move v3, v5

    move-wide v9, v13

    goto :goto_d

    :cond_17
    const/4 v7, 0x0

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getScale()I

    move-result v5

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v13

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v4

    if-nez v3, :cond_16

    goto :goto_c

    :goto_d
    iput v11, v0, Lorg/h2/expression/Function;->dataType:I

    iput-wide v9, v0, Lorg/h2/expression/Function;->precision:J

    iput v3, v0, Lorg/h2/expression/Function;->scale:I

    iput v4, v0, Lorg/h2/expression/Function;->displaySize:I

    if-eqz v2, :cond_1a

    invoke-virtual/range {p0 .. p1}, Lorg/h2/expression/Function;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, v2, :cond_19

    iget-object v2, v0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget v2, v2, Lorg/h2/expression/FunctionInfo;->type:I

    const/16 v3, 0xcb

    if-eq v2, v3, :cond_18

    const/16 v3, 0xca

    if-ne v2, v3, :cond_19

    :cond_18
    return-object v0

    :cond_19
    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    return-object v1

    :cond_1a
    return-object v0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDataType(Lorg/h2/table/Column;)V
    .locals 2

    invoke-virtual {p1}, Lorg/h2/table/Column;->getType()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Function;->dataType:I

    invoke-virtual {p1}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/expression/Function;->precision:J

    invoke-virtual {p1}, Lorg/h2/table/Column;->getDisplaySize()I

    move-result v0

    iput v0, p0, Lorg/h2/expression/Function;->displaySize:I

    invoke-virtual {p1}, Lorg/h2/table/Column;->getScale()I

    move-result p1

    iput p1, p0, Lorg/h2/expression/Function;->scale:I

    return-void
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 4

    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setParameter(ILorg/h2/expression/Expression;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/Function;->varArgs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aput-object p2, v0, p1

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lorg/h2/expression/Function;->info:Lorg/h2/expression/FunctionInfo;

    iget-object p1, p1, Lorg/h2/expression/FunctionInfo;->name:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1b59

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/expression/Function;->args:[Lorg/h2/expression/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
