.class final Lorg/mozilla/javascript/NativeNumber;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field private static final ConstructorId_isFinite:I = -0x1

.field private static final ConstructorId_isInteger:I = -0x3

.field private static final ConstructorId_isNaN:I = -0x2

.field private static final ConstructorId_isSafeInteger:I = -0x4

.field private static final ConstructorId_parseFloat:I = -0x5

.field private static final ConstructorId_parseInt:I = -0x6

.field private static final Id_constructor:I = 0x1

.field private static final Id_toExponential:I = 0x7

.field private static final Id_toFixed:I = 0x6

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toPrecision:I = 0x8

.field private static final Id_toSource:I = 0x4

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x5

.field private static final MAX_PRECISION:I = 0x64

.field private static final MAX_PROTOTYPE_ID:I = 0x8

.field public static final MAX_SAFE_INTEGER:D = 9.007199254740991E15

.field private static final MIN_SAFE_INTEGER:D = -9.007199254740991E15

.field private static final NUMBER_TAG:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x30a28b6f31d79da5L


# instance fields
.field private doubleValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Number"

    sput-object v0, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput-wide p1, p0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    return-void
.end method

.method private static execConstructorCall(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    array-length p0, p1

    if-eqz p0, :cond_2

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object p1, p1, v0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/mozilla/javascript/NativeNumber;->isFinite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1
    array-length p0, p1

    if-eqz p0, :cond_5

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object p1, p1, v0

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_4

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lorg/mozilla/javascript/NativeNumber;->isNaN(Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_2
    array-length p0, p1

    if-eqz p0, :cond_8

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object p1, p1, v0

    if-ne p0, p1, :cond_6

    goto :goto_2

    :cond_6
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_7

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lorg/mozilla/javascript/NativeNumber;->isInteger(Ljava/lang/Number;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_8
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_3
    array-length p0, p1

    if-eqz p0, :cond_b

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object p1, p1, v0

    if-ne p0, p1, :cond_9

    goto :goto_3

    :cond_9
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_a

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lorg/mozilla/javascript/NativeNumber;->isSafeInteger(Ljava/lang/Number;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_b
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4
    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->js_parseFloat([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->js_parseInt([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativeNumber;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeNumber;-><init>(D)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static isDoubleInteger(D)Z
    .locals 3

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDoubleInteger(Ljava/lang/Double;)Z
    .locals 4

    .line 2
    invoke-virtual {p0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDoubleSafeInteger(D)Z
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const-wide v0, -0x3cc0000000000001L    # -9.007199254740991E15

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDoubleSafeInteger(Ljava/lang/Double;)Z
    .locals 5

    .line 2
    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3cc0000000000001L    # -9.007199254740991E15

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFinite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static isInteger(Ljava/lang/Number;)Z
    .locals 2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(Ljava/lang/Double;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(D)Z

    move-result p0

    return p0
.end method

.method private static isNaN(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    goto :goto_0
.end method

.method private static isSafeInteger(Ljava/lang/Number;)Z
    .locals 2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleSafeInteger(Ljava/lang/Double;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeNumber;->isDoubleSafeInteger(D)Z

    move-result p0

    return p0
.end method

.method private static num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p3, p2, v1

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    int-to-double v4, p5

    cmpg-double p3, v2, v4

    if-ltz p3, :cond_1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double p3, v2, v4

    if-gtz p3, :cond_1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v1

    move p3, p4

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v1, p6

    invoke-static {p2, p3, v1, p0, p1}, Lorg/mozilla/javascript/DToA;->JS_dtostr(Ljava/lang/StringBuilder;IID)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    aget-object p0, p2, v1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.bad.precision"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v0, p4

    move-object/from16 v2, p5

    sget-object v1, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    move-object v3, p1

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v6, :cond_3

    array-length v1, v2

    if-lt v1, v6, :cond_1

    aget-object v1, v2, v7

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lorg/mozilla/javascript/NativeNumber;

    invoke-direct {v0, v4, v5}, Lorg/mozilla/javascript/NativeNumber;-><init>(D)V

    return-object v0

    :cond_2
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_3
    if-ge v1, v6, :cond_4

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeNumber;->execConstructorCall(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    instance-of v6, v0, Lorg/mozilla/javascript/NativeNumber;

    if-eqz v6, :cond_10

    check-cast v0, Lorg/mozilla/javascript/NativeNumber;

    iget-wide v8, v0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    const/16 v0, 0xa

    const-string v3, "-Infinity"

    const-string v6, "Infinity"

    const-string v10, "NaN"

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    array-length v1, v2

    if-eqz v1, :cond_9

    aget-object v1, v2, v7

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v1, v7, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v10

    :cond_6
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_8

    cmpl-double v0, v8, v4

    if-ltz v0, :cond_7

    return-object v6

    :cond_7
    return-object v3

    :cond_8
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-wide v0, v8

    move-object/from16 v2, p5

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_0
    invoke-static {v8, v9, v0}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object v10

    :cond_a
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_c

    cmpl-double v0, v8, v4

    if-ltz v0, :cond_b

    return-object v6

    :cond_b
    return-object v3

    :cond_c
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x3

    move-wide v0, v8

    move-object/from16 v2, p5

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object v0, p2

    iget v0, v0, Lorg/mozilla/javascript/Context;->version:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_d

    const/16 v0, -0x14

    const/16 v5, -0x14

    goto :goto_1

    :cond_d
    const/4 v5, 0x0

    :goto_1
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x2

    move-wide v0, v8

    move-object/from16 v2, p5

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {v8, v9}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(new Number("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    array-length v1, v2

    if-eqz v1, :cond_f

    aget-object v1, v2, v7

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v1, v2, :cond_e

    goto :goto_2

    :cond_e
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    :cond_f
    :goto_2
    invoke-static {v8, v9, v0}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 9

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    const-string v1, "NaN"

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "POSITIVE_INFINITY"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "NEGATIVE_INFINITY"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MAX_VALUE"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MIN_VALUE"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, 0x433fffffffffffffL    # 9.007199254740991E15

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MAX_SAFE_INTEGER"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide v0, -0x3cc0000000000001L    # -9.007199254740991E15

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "MIN_SAFE_INTEGER"

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object v0, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    const-string v7, "isFinite"

    const/4 v8, 0x1

    const/4 v6, -0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v7, "isNaN"

    const/4 v6, -0x2

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v7, "isInteger"

    const/4 v6, -0x3

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v7, "isSafeInteger"

    const/4 v6, -0x4

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v7, "parseFloat"

    const/4 v6, -0x5

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v7, "parseInt"

    const/4 v6, -0x6

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    const/16 v2, 0x74

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/4 v4, 0x3

    const/16 v5, 0x8

    if-eq v0, v5, :cond_4

    const/16 v6, 0xb

    if-eq v0, v6, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "toLocaleString"

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const-string v0, "toExponential"

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_3

    const-string v0, "constructor"

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_8

    const-string v0, "toPrecision"

    const/16 v1, 0x8

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_5

    const-string v0, "toSource"

    const/4 v1, 0x4

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_8

    const-string v0, "toString"

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_7

    const-string v0, "toFixed"

    const/4 v1, 0x6

    goto :goto_1

    :cond_7
    const/16 v1, 0x76

    if-ne v0, v1, :cond_8

    const-string v0, "valueOf"

    const/4 v1, 0x5

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_9

    if-eq v0, p1, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move v3, v1

    :goto_2
    return v3
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Number"

    return-object v0
.end method

.method public initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "toPrecision"

    goto :goto_1

    :pswitch_1
    const-string v0, "toExponential"

    goto :goto_1

    :pswitch_2
    const-string v0, "toFixed"

    goto :goto_1

    :pswitch_3
    const-string v1, "valueOf"

    :goto_0
    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_4
    const-string v1, "toSource"

    goto :goto_0

    :pswitch_5
    const-string v0, "toLocaleString"

    goto :goto_1

    :pswitch_6
    const-string v0, "toString"

    goto :goto_1

    :pswitch_7
    const-string v0, "constructor"

    :goto_1
    sget-object v2, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
