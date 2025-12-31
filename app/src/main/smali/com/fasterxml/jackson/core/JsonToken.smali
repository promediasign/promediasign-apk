.class public final enum Lcom/fasterxml/jackson/core/JsonToken;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;


# instance fields
.field final _id:I

.field final _isBoolean:Z

.field final _isNumber:Z

.field final _isScalar:Z

.field final _isStructEnd:Z

.field final _isStructStart:Z

.field final _serialized:Ljava/lang/String;

.field final _serializedBytes:[B

.field final _serializedChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, -0x1

    const-string v2, "NOT_AVAILABLE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v1, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    const-string v5, "{"

    const-string v6, "START_OBJECT"

    invoke-direct {v1, v6, v2, v5, v2}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v5, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v6, 0x2

    const-string v7, "}"

    const-string v8, "END_OBJECT"

    invoke-direct {v5, v8, v6, v7, v6}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v7, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v8, 0x3

    const-string v9, "["

    const-string v10, "START_ARRAY"

    invoke-direct {v7, v10, v8, v9, v8}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v9, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v10, 0x4

    const-string v11, "]"

    const-string v12, "END_ARRAY"

    invoke-direct {v9, v12, v10, v11, v10}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v11, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v12, "FIELD_NAME"

    const/4 v13, 0x5

    invoke-direct {v11, v12, v13, v4, v13}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v12, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v14, "VALUE_EMBEDDED_OBJECT"

    const/4 v15, 0x6

    const/16 v13, 0xc

    invoke-direct {v12, v14, v15, v4, v13}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v14, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v10, "VALUE_STRING"

    const/4 v8, 0x7

    invoke-direct {v14, v10, v8, v4, v15}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v10, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v15, "VALUE_NUMBER_INT"

    const/16 v6, 0x8

    invoke-direct {v10, v15, v6, v4, v8}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v15, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v8, "VALUE_NUMBER_FLOAT"

    const/16 v2, 0x9

    invoke-direct {v15, v8, v2, v4, v6}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v15, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v4, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v8, "true"

    const-string v6, "VALUE_TRUE"

    const/16 v3, 0xa

    invoke-direct {v4, v6, v3, v8, v2}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v6, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v8, "false"

    const-string v2, "VALUE_FALSE"

    const/16 v13, 0xb

    invoke-direct {v6, v2, v13, v8, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v2, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v8, "VALUE_NULL"

    const-string v3, "null"

    move-object/from16 v16, v6

    const/16 v6, 0xc

    invoke-direct {v2, v8, v6, v3, v13}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v3, 0xd

    new-array v3, v3, [Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    const/4 v0, 0x4

    aput-object v9, v3, v0

    const/4 v0, 0x5

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v10, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v4, v3, v0

    aput-object v16, v3, v13

    const/16 v0, 0xc

    aput-object v2, v3, v0

    sput-object v3, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    goto :goto_1

    :cond_0
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    array-length p2, p2

    new-array p3, p2, [B

    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    aget-char v1, v1, p3

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput p4, p0, Lcom/fasterxml/jackson/core/JsonToken;->_id:I

    const/16 p2, 0xa

    const/4 p3, 0x1

    if-eq p4, p2, :cond_3

    const/16 p2, 0x9

    if-ne p4, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    :goto_3
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isBoolean:Z

    const/4 p2, 0x7

    if-eq p4, p2, :cond_5

    const/16 p2, 0x8

    if-ne p4, p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p2, 0x1

    :goto_5
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isNumber:Z

    if-eq p4, p3, :cond_7

    const/4 p2, 0x3

    if-ne p4, p2, :cond_6

    goto :goto_6

    :cond_6
    const/4 p2, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 p2, 0x1

    :goto_7
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    const/4 v0, 0x2

    if-eq p4, v0, :cond_9

    const/4 v0, 0x4

    if-ne p4, v0, :cond_8

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    if-nez p2, :cond_a

    if-nez v0, :cond_a

    const/4 p2, 0x5

    if-eq p4, p2, :cond_a

    const/4 p2, -0x1

    if-eq p4, p2, :cond_a

    const/4 p1, 0x1

    :cond_a
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isScalar:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    return-object v0
.end method

.method public final id()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_id:I

    return v0
.end method

.method public final isScalarValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isScalar:Z

    return v0
.end method

.method public final isStructEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    return v0
.end method

.method public final isStructStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    return v0
.end method
