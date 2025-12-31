.class public final Lorg/mozilla/javascript/Interpreter;
.super Lorg/mozilla/javascript/Icode;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Evaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Interpreter$GeneratorState;,
        Lorg/mozilla/javascript/Interpreter$ContinuationJump;,
        Lorg/mozilla/javascript/Interpreter$CallFrame;
    }
.end annotation


# static fields
.field static final EXCEPTION_HANDLER_SLOT:I = 0x2

.field static final EXCEPTION_LOCAL_SLOT:I = 0x4

.field static final EXCEPTION_SCOPE_SLOT:I = 0x5

.field static final EXCEPTION_SLOT_SIZE:I = 0x6

.field static final EXCEPTION_TRY_END_SLOT:I = 0x1

.field static final EXCEPTION_TRY_START_SLOT:I = 0x0

.field static final EXCEPTION_TYPE_SLOT:I = 0x3


# instance fields
.field itsData:Lorg/mozilla/javascript/InterpreterData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    return-void
.end method

.method public static synthetic access$000([Ljava/lang/Object;[DII)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    return-void
.end method

.method public static synthetic access$200(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/Interpreter;->compareIdata(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z

    move-result p0

    return p0
.end method

.method private static addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    sub-int/2addr v1, p1

    add-int/2addr v1, p2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget p1, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    if-le v1, p1, :cond_0

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Context;->observeInstructionCount(I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    :cond_0
    return-void
.end method

.method private static bytecodeSpan(I)I
    .locals 4

    const/16 v0, -0x42

    const/4 v1, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, -0x41

    if-eq p0, v0, :cond_3

    const/16 v0, -0x36

    if-eq p0, v0, :cond_3

    const/16 v0, -0x17

    if-eq p0, v0, :cond_3

    const/16 v0, -0x15

    const/4 v2, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x32

    if-eq p0, v0, :cond_3

    const/16 v0, 0x39

    const/4 v3, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x49

    if-eq p0, v0, :cond_3

    if-eq p0, v2, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    invoke-static {p0}, Lorg/mozilla/javascript/Icode;->validBytecode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    return v3

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :pswitch_3
    return v3

    :pswitch_4
    return v1

    :pswitch_5
    return v2

    :pswitch_6
    return v3

    :pswitch_7
    return v1

    :pswitch_8
    return v2

    :cond_1
    :pswitch_9
    return v3

    :cond_2
    return v2

    :cond_3
    :pswitch_a
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x3f
        :pswitch_a
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x31
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x28
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x1c
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public static captureContinuation(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/NativeContinuation;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Interpreter frames not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;
    .locals 6

    .line 2
    new-instance v0, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeContinuation;-><init>()V

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    move-object p0, p1

    move-object v1, p0

    :goto_0
    if-eqz p0, :cond_3

    iget-boolean v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v2, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    add-int/2addr v2, v1

    :goto_1
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    aput-object v4, v1, v2

    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    const/4 v3, 0x0

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object v4, v1, v2

    goto :goto_2

    :cond_1
    const/16 v1, 0x1e

    if-eq v2, v1, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    :goto_3
    iget-object p0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p0, :cond_4

    move-object v1, p0

    goto :goto_3

    :cond_4
    iget-boolean p0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot capture continuation from JavaScript code not called directly by executeScriptWithContinuations or callFunctionWithContinuations"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeContinuation;->initImplementation(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    const/4 p0, 0x0

    iput-object p0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iput v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    return-object v0
.end method

.method private static compareIdata(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    invoke-static {p0}, Lorg/mozilla/javascript/Interpreter;->getEncodedSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/Interpreter;->getEncodedSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V
    .locals 7

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p0, v0

    aget-object v2, p0, p2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_1

    aget-wide v0, p1, v0

    if-ne v2, v3, :cond_0

    aget-wide v2, p1, p2

    add-double/2addr v2, v0

    aput-wide v2, p1, p2

    return-void

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_7

    aget-wide v4, p1, p2

    const/4 v0, 0x0

    move-object v2, v1

    move-wide v0, v4

    const/4 v4, 0x0

    :goto_0
    instance-of v5, v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v5, :cond_3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    if-nez v4, :cond_2

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    :cond_2
    invoke-static {v2, p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p2

    goto :goto_2

    :cond_3
    instance-of p3, v2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_5

    const/16 p1, 0xa

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lorg/mozilla/javascript/ConsString;

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    invoke-direct {p3, v2, p1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p3, p0, p2

    goto :goto_2

    :cond_4
    invoke-direct {p3, p1, v2}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p3, p0, p2

    goto :goto_2

    :cond_5
    instance-of p3, v2, Ljava/lang/Number;

    if-eqz p3, :cond_6

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    :goto_1
    aput-object v3, p0, p2

    add-double/2addr v4, v0

    aput-wide v4, p1, p2

    :goto_2
    return-void

    :cond_7
    instance-of v0, v2, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_e

    instance-of v0, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    instance-of p3, v2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_a

    instance-of p1, v1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    new-instance p1, Lorg/mozilla/javascript/ConsString;

    check-cast v2, Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p1, v2, v1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p1, p0, p2

    goto :goto_6

    :cond_9
    new-instance p1, Lorg/mozilla/javascript/ConsString;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p1, v2, p3}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p1, p0, p2

    goto :goto_6

    :cond_a
    instance-of p3, v1, Ljava/lang/CharSequence;

    if-eqz p3, :cond_b

    new-instance p1, Lorg/mozilla/javascript/ConsString;

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p1, p3, v1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p1, p0, p2

    goto :goto_6

    :cond_b
    instance-of p3, v2, Ljava/lang/Number;

    if-eqz p3, :cond_c

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    goto :goto_3

    :cond_c
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    :goto_3
    instance-of p3, v1, Ljava/lang/Number;

    if-eqz p3, :cond_d

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_4

    :cond_d
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    :goto_4
    aput-object v3, p0, p2

    add-double/2addr v4, v0

    aput-wide v4, p1, p2

    goto :goto_6

    :cond_e
    :goto_5
    invoke-static {v2, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p2

    :goto_6
    return-void
.end method

.method private static doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 4

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v0

    add-int/lit8 p4, p4, -0x1

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v2

    sget-object p0, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object p0, p2, p4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    rem-double/2addr v2, v0

    goto :goto_0

    :pswitch_1
    div-double/2addr v2, v0

    goto :goto_0

    :pswitch_2
    mul-double v2, v2, v0

    goto :goto_0

    :pswitch_3
    sub-double/2addr v2, v0

    :goto_0
    aput-wide v2, p3, p4

    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 2

    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v0

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result p0

    add-int/lit8 p4, p4, -0x1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object v1, p2, p4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_1

    const/16 p2, 0x13

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    and-int/2addr v0, p0

    goto :goto_0

    :pswitch_1
    xor-int/2addr v0, p0

    goto :goto_0

    :pswitch_2
    or-int/2addr v0, p0

    goto :goto_0

    :cond_0
    shr-int/2addr v0, p0

    goto :goto_0

    :cond_1
    shl-int/2addr v0, p0

    :goto_0
    int-to-double p0, v0

    aput-wide p0, p3, p4

    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BI)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    iget v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v6, v3, v5

    and-int/lit16 v13, v6, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v3, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    add-int/lit8 v5, v5, 0x2

    invoke-static {v3, v5}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v15

    if-eqz v6, :cond_2

    sub-int v3, p4, v4

    aget-object v5, v1, v3

    sget-object v6, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v5, v6, :cond_1

    aget-wide v5, v2, v3

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    :cond_1
    add-int/lit8 v6, v3, 0x1

    invoke-static {v1, v2, v6, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v6, p0

    invoke-static {v6, v5, v2, v4, v13}, Lorg/mozilla/javascript/ScriptRuntime;->newSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    add-int/lit8 v3, v4, 0x1

    sub-int v3, p4, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v1, v5

    move-object v9, v5

    check-cast v9, Lorg/mozilla/javascript/Scriptable;

    aget-object v5, v1, v3

    move-object v8, v5

    check-cast v8, Lorg/mozilla/javascript/Callable;

    add-int/lit8 v5, v3, 0x2

    invoke-static {v1, v2, v5, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v12, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v14, v2, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v15}, Lorg/mozilla/javascript/ScriptRuntime;->callSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    :goto_1
    iget v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return v3
.end method

.method private static doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 5

    add-int/lit8 v0, p4, -0x1

    aget-object v1, p2, p4

    aget-object v2, p2, v0

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_0

    aget-wide v1, p3, p4

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide p3

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    aget-wide v3, p3, v0

    move-wide p3, v3

    :goto_0
    const/4 p0, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    cmpl-double p1, p3, v1

    if-ltz p1, :cond_2

    :goto_1
    const/4 p0, 0x1

    goto :goto_2

    :pswitch_1
    cmpl-double p1, p3, v1

    if-lez p1, :cond_2

    goto :goto_1

    :pswitch_2
    cmpg-double p1, p3, v1

    if-gtz p1, :cond_2

    goto :goto_1

    :pswitch_3
    cmpg-double p1, p3, v1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_1
    packed-switch p1, :pswitch_data_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_4
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    :pswitch_5
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    :pswitch_6
    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    :pswitch_7
    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :cond_2
    :goto_2
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p2, v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static doDelName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 4

    aget-object v0, p3, p5

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p4, p5

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p5, p5, -0x1

    aget-object v2, p3, p5

    if-ne v2, v1, :cond_1

    aget-wide v1, p4, p5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {v2, v0, p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p3, p5

    return p5
.end method

.method private static doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I
    .locals 4

    aget-object v0, p3, p5

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p4, p5

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p5, p5, -0x1

    aget-object v2, p3, p5

    if-ne v2, v1, :cond_1

    aget-wide v1, p4, p5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    iget-object p4, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte p2, p2, v1

    invoke-static {v2, v0, p0, p4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p3, p5

    iget p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return p5
.end method

.method private static doEquals([Ljava/lang/Object;[DI)Z
    .locals 3

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p0, v0

    aget-object p0, p0, p2

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_2

    if-ne p0, v2, :cond_1

    aget-wide v1, p1, p2

    aget-wide p0, p1, v0

    cmpl-double p2, v1, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    aget-wide v0, p1, v0

    invoke-static {v0, v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    if-ne p0, v2, :cond_3

    aget-wide p0, p1, p2

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 5

    add-int/lit8 v0, p4, -0x1

    aget-object v1, p2, v0

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_0

    aget-wide v3, p3, v0

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_0
    aget-object v3, p2, p4

    if-eq v3, v2, :cond_1

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    aget-wide v2, p3, p4

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2, v3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    aput-object p0, p2, v0

    return v0
.end method

.method private static doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I
    .locals 1

    add-int/lit8 p3, p3, 0x1

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_0

    aget-object p0, p4, p6

    aput-object p0, p1, p3

    aget-wide p0, p5, p6

    aput-wide p0, p2, p3

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p6

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p2, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, p3

    :goto_0
    return p3
.end method

.method private static doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I
    .locals 4

    aget-object v0, p2, p4

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p3, p4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p4, p4, -0x1

    aget-object v2, p2, p4

    if-ne v2, v1, :cond_1

    aget-wide v1, p3, p4

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    const/16 p3, 0x34

    if-ne p1, p3, :cond_2

    invoke-static {v2, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->in(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {v2, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    :goto_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p2, p4

    return p4
.end method

.method private static doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .locals 4

    aget-object v0, p1, p3

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p2, p3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    aget-object v2, p1, p3

    if-ne v2, v1, :cond_1

    aget-wide v1, p2, p3

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    invoke-static {v2, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p1, p3

    return p3
.end method

.method private static doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .locals 4

    aget-object v0, p1, p3

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p2, p3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, p3, -0x1

    aget-object v3, p1, v2

    if-ne v3, v1, :cond_1

    aget-wide v2, p2, v2

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_1
    add-int/lit8 p3, p3, -0x2

    aget-object v2, p1, p3

    if-ne v2, v1, :cond_2

    aget-wide v1, p2, p3

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_2
    invoke-static {v2, v3, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p1, p3

    return p3
.end method

.method private static doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I
    .locals 4

    aget-object v0, p2, p4

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p3, p4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p4, p4, -0x1

    aget-object v2, p2, p4

    if-ne v2, v1, :cond_1

    aget-wide v1, p3, p4

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v0, p0, p1, p5}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p2, p4

    return p4
.end method

.method private static doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_1

    aget v0, p6, p7

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 p0, v0, 0x8

    if-eqz p0, :cond_3

    aget-object p0, p1, p3

    aput-object p0, p4, p7

    and-int/lit8 p0, v0, -0x9

    aput p0, p6, p7

    aget-wide p0, p2, p3

    aput-wide p0, p5, p7

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p0, p0, p7

    const-string p1, "msg.var.redecl"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_1
    aget-object p1, p1, p3

    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, p4, :cond_2

    aget-wide p1, p2, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    :cond_2
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p7

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    instance-of p4, p0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz p4, :cond_4

    move-object p4, p0

    check-cast p4, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {p4, p2, p0, p1}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return p3

    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static doSetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 9

    add-int/lit8 v0, p4, -0x2

    aget-object v1, p2, p4

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_0

    aget-wide v3, p3, p4

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_0
    move-object v6, v1

    aget-object v1, p2, v0

    if-ne v1, v2, :cond_1

    aget-wide v3, p3, v0

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1
    move-object v3, v1

    add-int/lit8 p4, p4, -0x1

    aget-object v1, p2, p4

    if-eq v1, v2, :cond_2

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v1, v6, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    aget-wide v4, p3, p4

    iget-object v8, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v7, p0

    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    aput-object p0, p2, v0

    return v0
.end method

.method private static doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_0

    aget p0, p6, p7

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_2

    aget-object p0, p1, p3

    aput-object p0, p4, p7

    aget-wide p0, p2, p3

    aput-wide p0, p5, p7

    goto :goto_0

    :cond_0
    aget-object p1, p1, p3

    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, p4, :cond_1

    aget-wide p1, p2, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    :cond_1
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p7

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p2, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return p3
.end method

.method private static doShallowEquals([Ljava/lang/Object;[DI)Z
    .locals 4

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p0, v0

    aget-object p0, p0, p2

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    aget-wide v0, p1, v0

    if-ne p0, v2, :cond_0

    aget-wide p0, p1, p2

    goto :goto_0

    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    if-ne p0, v2, :cond_4

    aget-wide p0, p1, p2

    instance-of p2, v1, Ljava/lang/Number;

    if-eqz p2, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    cmpl-double p2, p0, v0

    if-nez p2, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    :cond_4
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 11

    move-object v0, p1

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    iget-object v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v3, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v4, v4, v5

    iget-boolean v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v5, :cond_8

    aget-object v3, p5, p8

    sget-object v5, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v3, v5, :cond_0

    aget-wide v6, p6, p8

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v6

    :goto_0
    and-int/lit8 v8, v4, 0x1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-nez v8, :cond_1

    add-double/2addr v9, v6

    goto :goto_1

    :cond_1
    sub-double v9, v6, v9

    :goto_1
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    aget v8, p7, p8

    and-int/2addr v8, v1

    if-nez v8, :cond_5

    if-eq v3, v5, :cond_3

    aput-object v5, p5, p8

    :cond_3
    aput-wide v9, p6, p8

    aput-object v5, p2, v2

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move-wide v6, v9

    :goto_3
    aput-wide v6, p3, v2

    goto :goto_5

    :cond_5
    if-eqz v4, :cond_6

    if-eq v3, v5, :cond_6

    aput-object v3, p2, v2

    goto :goto_5

    :cond_6
    aput-object v5, p2, v2

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-wide v6, v9

    :goto_4
    aput-wide v6, p3, v2

    goto :goto_5

    :cond_8
    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object v3, v3, p8

    iget-object v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v6, p0

    invoke-static {v5, v3, p0, v4}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    :goto_5
    iget v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v3, v1

    iput v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return v2
.end method

.method public static dumpICode(Lorg/mozilla/javascript/InterpreterData;)V
    .locals 0

    return-void
.end method

.method private static enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V
    .locals 3

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_7

    :cond_1
    iget-object v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_5

    :cond_3
    instance-of p3, v2, Lorg/mozilla/javascript/NativeWith;

    if-eqz p3, :cond_5

    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p3, :cond_3

    iget-object p3, p3, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-ne p3, v2, :cond_3

    :cond_4
    :goto_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    if-eqz v1, :cond_6

    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p3, p0, v2, p1, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onEnter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {p0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :cond_7
    return-void
.end method

.method private static exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    :cond_0
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v0, :cond_5

    :try_start_0
    instance-of v1, p2, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    invoke-interface {v0, p0, p1, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    check-cast p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-nez p2, :cond_2

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    :goto_0
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_4

    if-nez p2, :cond_3

    iget-wide v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    goto :goto_1

    :cond_3
    iget-wide v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    :goto_1
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_4
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2, v0}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "RHINO USAGE WARNING: onExit terminated with exception"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private static freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;Z)Ljava/lang/Object;
    .locals 3

    iget p3, p3, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 p3, 0x1

    iput-boolean p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p2

    iput-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v1, v0, p2

    iput-wide v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iget p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    sub-int/2addr p2, p3

    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    sget-object p2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    :goto_0
    if-eqz p4, :cond_1

    new-instance p1, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    return-object p0

    :cond_2
    const-string p0, "msg.yield.closing"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;
    .locals 4

    if-nez p3, :cond_0

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    return-object p0

    :cond_0
    new-array v0, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p3, :cond_2

    aget-object v2, p0, p2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v3, :cond_1

    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getEncodedSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSource:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSourceStart:I

    iget p0, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSourceEnd:I

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I
    .locals 9

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-eq v3, v6, :cond_7

    aget v6, v0, v3

    add-int/lit8 v7, v3, 0x1

    aget v7, v0, v7

    if-gt v6, p0, :cond_6

    if-lt p0, v7, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    add-int/lit8 v8, v3, 0x3

    aget v8, v0, v8

    if-eq v8, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_5

    if-ge v4, v7, :cond_3

    goto :goto_1

    :cond_3
    if-le v5, v6, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_4
    if-ne v4, v7, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    move v1, v3

    move v5, v6

    move v4, v7

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x6

    goto :goto_0

    :cond_7
    return v1
.end method

.method private static getIndex([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static getInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static getLineNumbers(Lorg/mozilla/javascript/InterpreterData;)[I
    .locals 7

    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_2

    aget-byte v4, p0, v3

    invoke-static {v4}, Lorg/mozilla/javascript/Interpreter;->bytecodeSpan(I)I

    move-result v5

    const/16 v6, -0x1a

    if-ne v4, v6, :cond_1

    const/4 v4, 0x3

    if-eq v5, v4, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    add-int/lit8 v4, v3, 0x1

    invoke-static {p0, v4}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    :cond_1
    add-int/2addr v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/UintMap;->getKeys()[I

    move-result-object p0

    return-object p0
.end method

.method private static getShort([BI)I
    .locals 1

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 9

    move-object v7, p0

    new-instance v8, Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v0, p2

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct {v8, p0, p2, v1, v2}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/Interpreter$CallFrame;->initializeArgs(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DII)V

    const/4 v0, 0x0

    move-object v1, p3

    invoke-static {p0, v8, p3, v0}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    return-object v8
.end method

.method private static initFrameForApplyOrCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    add-int/lit8 v6, v3, 0x2

    aget-object v7, p3, v6

    sget-object v8, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v7, v8, :cond_0

    aget-wide v6, p4, v6

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    :cond_0
    iget-object v6, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, v7, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    if-nez v6, :cond_2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    :cond_2
    const/16 v7, -0x37

    if-ne v4, v7, :cond_3

    invoke-static {p0, p1, v5}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    iget-object v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    :goto_1
    move-object v8, v1

    goto :goto_2

    :cond_3
    iput v3, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput v4, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    goto :goto_1

    :goto_2
    invoke-static/range {p8 .. p8}, Lorg/mozilla/javascript/BaseFunction;->isApply(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    if-ge v2, v4, :cond_4

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    :goto_3
    move-object v3, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v3, 0x3

    aget-object v1, p3, v1

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getApplyArguments(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :goto_4
    array-length v7, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, v6

    move v6, v7

    move-object/from16 v7, p9

    invoke-static/range {v0 .. v8}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    goto :goto_7

    :cond_5
    const/4 v1, 0x1

    const/4 v5, 0x1

    :goto_5
    if-ge v5, v2, :cond_6

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v7, v5

    add-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v5

    aget-object v10, p3, v9

    aput-object v10, p3, v7

    aget-wide v9, p4, v9

    aput-wide v9, p4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    if-ge v2, v4, :cond_7

    const/4 v1, 0x0

    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v2, -0x1

    move v7, v1

    :goto_6
    add-int/lit8 v5, v3, 0x2

    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, v6

    move-object v3, p3

    move-object v4, p4

    move v6, v7

    move-object/from16 v7, p9

    invoke-static/range {v0 .. v8}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    :goto_7
    return-object v0
.end method

.method private static initFrameForNoSuchMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 14

    move-object v0, p0

    move-object v9, p1

    move/from16 v1, p2

    move/from16 v10, p5

    move/from16 v11, p6

    const/4 v2, 0x1

    const/4 v3, 0x2

    add-int/lit8 v4, v10, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    aget-object v8, p3, v4

    sget-object v12, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v8, v12, :cond_0

    aget-wide v12, p4, v4

    invoke-static {v12, v13}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v8

    :cond_0
    aput-object v8, v5, v7

    add-int/2addr v7, v2

    add-int/2addr v4, v2

    goto :goto_0

    :cond_1
    move-object/from16 v4, p9

    iget-object v1, v4, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->methodName:Ljava/lang/String;

    move-object/from16 v4, p8

    invoke-virtual {p0, v4, v5}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v5, v3, v2

    const/16 v12, -0x37

    if-ne v11, v12, :cond_2

    iget-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, v9

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move-object v4, v7

    move-object/from16 v7, p10

    invoke-static/range {v0 .. v8}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    if-eq v11, v12, :cond_3

    iput v10, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput v11, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    :cond_3
    return-object v0
.end method

.method private static initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p3

    iget-object v0, p3, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    iget-object p2, p2, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p2, p2, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    invoke-static {p0, p1, p3, v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;IZ)V

    return-void
.end method

.method public static interpret(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-eq v0, v2, :cond_1

    iput-object v2, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityController:Lorg/mozilla/javascript/SecurityController;

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/mozilla/javascript/SecurityController;->callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    return-object p0

    :catchall_0
    move-exception p0

    iput-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    throw p0

    :cond_1
    array-length v7, p4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p0

    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p0

    iget-boolean p2, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    iput-boolean p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 47

    move-object/from16 v12, p0

    move-object/from16 v1, p2

    sget-object v13, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    sget-object v14, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iget v2, v12, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    const/4 v11, 0x1

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iget-object v2, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    if-nez v2, :cond_1

    new-instance v2, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v2}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v2, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    :cond_1
    iget-object v2, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    iget-object v3, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    :cond_2
    const/4 v9, 0x0

    if-eqz v1, :cond_4

    instance-of v2, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    move-object/from16 v3, p1

    invoke-static {v12, v3, v2, v11}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    move-object v8, v1

    move-object v1, v9

    goto :goto_2

    :cond_3
    move-object/from16 v3, p1

    instance-of v2, v1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-nez v2, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_1

    :cond_4
    move-object/from16 v3, p1

    :cond_5
    :goto_1
    move-object v8, v9

    :goto_2
    const-wide/16 v16, 0x0

    const/16 v18, -0x1

    move-object v4, v9

    move-object/from16 v19, v4

    move-wide/from16 v20, v16

    :goto_3
    const/4 v2, -0x1

    :goto_4
    if-eqz v1, :cond_7

    :try_start_0
    invoke-static {v12, v1, v3, v2, v10}, Lorg/mozilla/javascript/Interpreter;->processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    iget-object v1, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    iput-object v9, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    :cond_6
    :goto_5
    move-object/from16 v22, v1

    move-object v5, v3

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v22, v1

    move-object v1, v8

    move-object v7, v9

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v33, v14

    :goto_6
    const/4 v5, 0x2

    :goto_7
    const/16 v31, 0x0

    goto/16 :goto_7a

    :cond_7
    if-nez v8, :cond_6

    iget-boolean v5, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v5, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_8
    :try_start_1
    iget-object v3, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget-object v6, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v15, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_35

    :try_start_2
    iget-object v9, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget-object v6, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v11, v7, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    move-object/from16 v25, v1

    iget v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput-object v5, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_34

    move/from16 v26, v1

    move-object/from16 v46, v4

    move v4, v2

    move-object/from16 v2, v46

    :goto_9
    :try_start_3
    iget v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_33

    move-object/from16 v27, v2

    add-int/lit8 v2, v1, 0x1

    :try_start_4
    iput v2, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_32

    move-object/from16 v33, v14

    :try_start_5
    aget-byte v14, v11, v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_31

    move-object/from16 v28, v3

    const/16 v3, 0x9d

    if-eq v14, v3, :cond_53

    packed-switch v14, :pswitch_data_0

    const/4 v3, 0x4

    packed-switch v14, :pswitch_data_1

    packed-switch v14, :pswitch_data_2

    :try_start_6
    iget-object v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {v1}, Lorg/mozilla/javascript/Interpreter;->dumpICode(Lorg/mozilla/javascript/InterpreterData;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown icode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " @ pc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v5

    move-object v1, v8

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v4, v27

    :goto_a
    const/4 v5, 0x2

    :goto_b
    const/4 v7, 0x0

    goto :goto_7

    :pswitch_0
    move-object/from16 v3, v25

    move/from16 v14, v26

    move-object/from16 v1, p0

    move-object/from16 v34, v15

    move-object/from16 v15, v27

    move-object v2, v5

    move-object/from16 v36, v3

    move-object/from16 v35, v28

    move-object/from16 v3, v35

    move/from16 v25, v4

    move-object/from16 v4, v36

    move-object/from16 v26, v9

    move-object v9, v5

    move v5, v14

    move-object/from16 v38, v6

    const/16 v14, 0x64

    move/from16 v6, v25

    :try_start_7
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I

    move-result v1

    move-object v5, v9

    move-object v2, v15

    move/from16 v4, v25

    move-object/from16 v9, v26

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v3, v35

    move-object/from16 v25, v36

    move-object/from16 v6, v38

    :goto_c
    move/from16 v26, v1

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v1, v8

    move-object v3, v9

    move/from16 v36, v10

    move-object v8, v13

    move-object v4, v15

    goto :goto_a

    :pswitch_1
    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v36, v25

    move/from16 v14, v26

    move-object/from16 v15, v27

    const/16 v6, 0x64

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v1, v5, v14

    if-ne v1, v13, :cond_8

    move-object/from16 v4, v36

    aget-wide v1, v4, v14

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    goto :goto_d

    :cond_8
    move-object/from16 v4, v36

    :goto_d
    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move/from16 v3, v25

    invoke-static {v1, v12, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object v1

    aput-object v1, v5, v14

    :cond_9
    :goto_e
    move/from16 v25, v3

    move-object/from16 v35, v7

    move-object v1, v8

    move/from16 v36, v10

    move-object v8, v13

    move v6, v14

    move-object/from16 v39, v26

    const/4 v7, 0x0

    const/16 v31, 0x0

    move-object v10, v4

    move-object v14, v9

    move-object v9, v15

    :goto_f
    move-object v15, v5

    :goto_10
    const/4 v5, 0x2

    goto/16 :goto_76

    :pswitch_2
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v14, v26

    move-object/from16 v15, v27

    const/16 v6, 0x64

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    invoke-static {v12, v5, v4, v14, v3}, Lorg/mozilla/javascript/Interpreter;->doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v1

    :goto_11
    move-object/from16 v25, v4

    move-object v2, v15

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v6, v38

    move v4, v3

    move-object v3, v5

    move-object v5, v9

    move-object/from16 v9, v26

    goto :goto_c

    :pswitch_3
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v14, v26

    move-object/from16 v15, v27

    const/16 v6, 0x64

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    invoke-static {v12, v5, v4, v14, v3}, Lorg/mozilla/javascript/Interpreter;->doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v1

    goto :goto_11

    :pswitch_4
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v14, v26

    move-object/from16 v15, v27

    const/16 v6, 0x64

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v1, v5, v14

    if-eq v1, v13, :cond_9

    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->escapeTextValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v14

    goto :goto_e

    :pswitch_5
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v14, v26

    move-object/from16 v15, v27

    const/16 v6, 0x64

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v1, v5, v14

    if-eq v1, v13, :cond_9

    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->escapeAttributeValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v14

    goto/16 :goto_e

    :pswitch_6
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v14, v26

    move-object/from16 v15, v27

    const/16 v6, 0x64

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v1, v5, v14

    if-ne v1, v13, :cond_a

    aget-wide v1, v4, v14

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_a
    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->setDefaultNamespace(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v14

    goto/16 :goto_e

    :pswitch_7
    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move/from16 v1, v26

    move-object/from16 v26, v9

    move-object v9, v5

    move v6, v1

    move-object/from16 v35, v7

    move-object v1, v8

    move/from16 v36, v10

    move-object v8, v13

    move v13, v14

    move-object/from16 v10, v25

    move-object/from16 v39, v26

    move-object/from16 v15, v28

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    move/from16 v25, v4

    move-object v14, v9

    move-object/from16 v9, v27

    goto/16 :goto_74

    :pswitch_8
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v6, 0x64

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v2, v5, v1

    if-ne v2, v13, :cond_b

    aget-wide v27, v4, v1

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_b
    iget-object v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v15, v12, v14}, Lorg/mozilla/javascript/ScriptRuntime;->specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;

    move-result-object v2

    aput-object v2, v5, v1

    :goto_12
    move v6, v1

    move/from16 v25, v3

    move-object/from16 v35, v7

    move-object v1, v8

    move-object v14, v9

    move/from16 v36, v10

    move-object v8, v13

    move-object v9, v15

    move-object/from16 v39, v26

    const/4 v7, 0x0

    :goto_13
    const/16 v31, 0x0

    move-object v10, v4

    goto/16 :goto_f

    :pswitch_9
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v6, 0x64

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v2, v5, v1

    check-cast v2, Lorg/mozilla/javascript/Ref;

    invoke-static {v2, v12}, Lorg/mozilla/javascript/ScriptRuntime;->refDel(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v1

    goto :goto_12

    :pswitch_a
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v6, 0x64

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v2, v5, v1

    if-ne v2, v13, :cond_c

    aget-wide v27, v4, v1

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_c
    add-int/lit8 v1, v1, -0x1

    aget-object v14, v5, v1

    check-cast v14, Lorg/mozilla/javascript/Ref;

    iget-object v6, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v14, v2, v12, v6}, Lorg/mozilla/javascript/ScriptRuntime;->refSet(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v1

    goto/16 :goto_11

    :pswitch_b
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v2, v5, v1

    check-cast v2, Lorg/mozilla/javascript/Ref;

    invoke-static {v2, v12}, Lorg/mozilla/javascript/ScriptRuntime;->refGet(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v1

    goto :goto_12

    :pswitch_c
    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move/from16 v1, v26

    move-object/from16 v26, v9

    move-object v9, v5

    move v6, v1

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v10, v25

    move-object/from16 v39, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    move v8, v4

    move v4, v14

    move-object v14, v9

    const/16 v9, 0x64

    goto/16 :goto_4a

    :pswitch_d
    move/from16 v25, v4

    move-object v14, v5

    move-object v1, v8

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v9, v27

    :goto_14
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    goto/16 :goto_71

    :pswitch_e
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    aput-object v2, v5, v1

    goto/16 :goto_11

    :pswitch_f
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    iget v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v2, v3

    aget-object v3, v5, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x3e

    if-ne v14, v6, :cond_d

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->enumNext(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_15

    :cond_d
    invoke-static {v3, v12}, Lorg/mozilla/javascript/ScriptRuntime;->enumId(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    :goto_15
    aput-object v3, v5, v1

    :goto_16
    move-object/from16 v25, v4

    move-object v3, v5

    move-object v5, v9

    move-object/from16 v9, v26

    move-object/from16 v14, v33

    move-object/from16 v6, v38

    move/from16 v26, v1

    move v4, v2

    move-object v2, v15

    move-object/from16 v15, v34

    goto/16 :goto_9

    :pswitch_10
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v2, v5, v1

    if-ne v2, v13, :cond_e

    aget-wide v27, v4, v1

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_e
    add-int/lit8 v1, v1, -0x1

    iget v6, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v3, v6

    const/16 v6, 0x3a

    if-ne v14, v6, :cond_f

    const/4 v6, 0x0

    goto :goto_17

    :cond_f
    const/16 v6, 0x3b

    if-ne v14, v6, :cond_10

    const/4 v6, 0x1

    goto :goto_17

    :cond_10
    const/16 v6, 0x3d

    if-ne v14, v6, :cond_11

    const/4 v6, 0x6

    goto :goto_17

    :cond_11
    const/4 v6, 0x2

    :goto_17
    iget-object v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v12, v14, v6}, Lorg/mozilla/javascript/ScriptRuntime;->enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v3

    goto/16 :goto_11

    :pswitch_11
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v6, v1, -0x1

    iget v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v3, v14

    iget-object v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v14, v14, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    aget-byte v2, v14, v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_18

    :cond_12
    const/4 v2, 0x0

    :goto_18
    aget-object v1, v5, v1

    check-cast v1, Ljava/lang/Throwable;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_19

    :cond_13
    aget-object v2, v5, v3

    check-cast v2, Lorg/mozilla/javascript/Scriptable;

    :goto_19
    iget-object v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2, v15, v12, v14}, Lorg/mozilla/javascript/ScriptRuntime;->newCatchScope(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v5, v3

    iget v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move-object/from16 v25, v4

    move-object v2, v15

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move v4, v3

    move-object v3, v5

    move-object v5, v9

    move-object/from16 v9, v26

    move/from16 v26, v6

    move-object/from16 v6, v38

    goto/16 :goto_9

    :pswitch_12
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move/from16 v1, v26

    move-object/from16 v26, v9

    move-object v9, v5

    move v6, v1

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object v14, v9

    move/from16 v36, v10

    move-object/from16 v10, v25

    move-object/from16 v39, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    goto/16 :goto_50

    :pswitch_13
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move/from16 v1, v26

    move-object/from16 v26, v9

    move-object v9, v5

    move v6, v1

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object v14, v9

    move/from16 v36, v10

    move-object/from16 v10, v25

    move-object/from16 v39, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    goto/16 :goto_4f

    :pswitch_14
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v1, v1, 0x1

    iget v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v2, v3

    aget-object v3, v5, v2

    aput-object v3, v5, v1

    aget-wide v27, v4, v2

    aput-wide v27, v4, v1

    goto/16 :goto_16

    :pswitch_15
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    invoke-static {v12, v14, v5, v4, v1}, Lorg/mozilla/javascript/Interpreter;->doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I

    move-result v1

    goto/16 :goto_11

    :pswitch_16
    move v3, v4

    move-object v9, v5

    move-object/from16 v15, v27

    move-object/from16 v5, v28

    iget v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v4, v3, v1

    aget-object v1, v5, v4

    move-object v2, v1

    :goto_1a
    move-object v1, v8

    move-object v14, v9

    move/from16 v36, v10

    move-object v8, v13

    move-object v4, v15

    :goto_1b
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    goto/16 :goto_7b

    :pswitch_17
    move-object v9, v5

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v5, v28

    aget-object v2, v5, v1

    if-ne v2, v13, :cond_14

    aget-wide v1, v4, v1

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_14
    iget v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v11, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    new-instance v3, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v4, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v3, v2, v4, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    move-object v2, v3

    goto :goto_1a

    :pswitch_18
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v12, v2, v15}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    aput-object v2, v5, v1

    goto/16 :goto_11

    :pswitch_19
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    aget-object v2, v2, v3

    add-int/lit8 v1, v1, 0x1

    iget-object v6, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v12, v6, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    aput-object v2, v5, v1

    goto/16 :goto_11

    :pswitch_1a
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v1, v1, -0x1

    invoke-static {v5, v4, v1}, Lorg/mozilla/javascript/Interpreter;->doShallowEquals([Ljava/lang/Object;[DI)Z

    move-result v2

    const/16 v6, 0x2f

    if-ne v14, v6, :cond_15

    const/4 v6, 0x1

    goto :goto_1c

    :cond_15
    const/4 v6, 0x0

    :goto_1c
    xor-int/2addr v2, v6

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    goto/16 :goto_11

    :pswitch_1b
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v5, v1

    goto/16 :goto_11

    :pswitch_1c
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v5, v1

    goto/16 :goto_11

    :pswitch_1d
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    aput-object v2, v5, v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_11

    :pswitch_1e
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v1, v1, 0x1

    const/16 v23, 0x0

    :try_start_8
    aput-object v23, v5, v1

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    :goto_1d
    move-object v2, v0

    move-object v1, v8

    move-object v3, v9

    move/from16 v36, v10

    move-object v8, v13

    move-object v4, v15

    move-object/from16 v7, v23

    goto/16 :goto_6

    :pswitch_1f
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v1, v1, 0x1

    aput-object v15, v5, v1

    goto/16 :goto_11

    :pswitch_20
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v1, v1, 0x1

    aput-object v13, v5, v1

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aget-wide v27, v2, v3

    aput-wide v27, v4, v1

    goto/16 :goto_11

    :pswitch_21
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v12, v2, v15}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v1

    goto/16 :goto_11

    :pswitch_22
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move/from16 v1, v26

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move v6, v1

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move/from16 v36, v10

    move v4, v14

    move-object/from16 v10, v25

    move-object/from16 v39, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v32, 0x1

    move v8, v3

    move-object v14, v9

    const/16 v9, 0x64

    goto/16 :goto_53

    :pswitch_23
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    invoke-static {v12, v9, v5, v4, v1}, Lorg/mozilla/javascript/Interpreter;->doSetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v1

    goto/16 :goto_11

    :pswitch_24
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    invoke-static {v12, v9, v5, v4, v1}, Lorg/mozilla/javascript/Interpreter;->doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v1

    goto/16 :goto_11

    :pswitch_25
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v2, v5, v1

    if-ne v2, v13, :cond_16

    aget-wide v27, v4, v1

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_16
    add-int/lit8 v1, v1, -0x1

    aget-object v6, v5, v1

    if-ne v6, v13, :cond_17

    aget-wide v27, v4, v1

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v6

    :cond_17
    iget-object v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v6, v15, v2, v12, v14}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v1

    goto/16 :goto_11

    :pswitch_26
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v2, v5, v1

    if-ne v2, v13, :cond_18

    aget-wide v27, v4, v1

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_18
    iget-object v6, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v15, v12, v6}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v1

    :goto_1e
    move v6, v1

    move/from16 v25, v3

    move-object/from16 v35, v7

    move-object v1, v8

    move-object v14, v9

    move/from16 v36, v10

    move-object v8, v13

    move-object v9, v15

    move-object/from16 v7, v23

    move-object/from16 v39, v26

    goto/16 :goto_13

    :pswitch_27
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v2, v5, v1

    if-ne v2, v13, :cond_19

    aget-wide v27, v4, v1

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_19
    iget-object v6, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v15, v12, v6}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v1

    goto :goto_1e

    :pswitch_28
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    aget-object v2, v5, v1

    if-ne v2, v13, :cond_1a

    aget-wide v27, v4, v1

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_1a
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1e

    :pswitch_29
    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move/from16 v1, v26

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move v3, v1

    move v6, v4

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v8, v25

    move-object/from16 v5, v27

    move-object/from16 v15, v28

    const/4 v4, 0x2

    const/16 v10, 0xd

    goto/16 :goto_2f

    :pswitch_2a
    move v3, v4

    move-object/from16 v38, v6

    move-object/from16 v34, v15

    move-object/from16 v4, v25

    move/from16 v1, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v28

    if-eqz v10, :cond_1b

    :try_start_9
    iget v2, v12, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/16 v6, 0x64

    add-int/2addr v2, v6

    :try_start_a
    iput v2, v12, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_1f

    :catchall_4
    move-exception v0

    const/16 v6, 0x64

    goto/16 :goto_1d

    :cond_1b
    const/16 v6, 0x64

    :goto_1f
    sub-int v2, v1, v3

    :try_start_b
    aget-object v1, v5, v2

    instance-of v6, v1, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v6, :cond_1d

    move-object v6, v1

    check-cast v6, Lorg/mozilla/javascript/InterpretedFunction;

    move/from16 v25, v3

    iget-object v3, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 v36, v4

    iget-object v4, v6, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-ne v3, v4, :cond_1c

    iget-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v6, v12, v1}, Lorg/mozilla/javascript/BaseFunction;->createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v11

    iget-object v3, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    add-int/lit8 v7, v2, 0x1

    move-object/from16 v1, p0

    move v4, v2

    move-object v2, v3

    move/from16 p1, v25

    move-object v3, v11

    move-object/from16 v35, v36

    move/from16 v36, v10

    move v10, v4

    move-object v4, v5

    move-object/from16 v39, v15

    move-object v15, v5

    move-object/from16 v5, v35

    move-object/from16 v25, v6

    move v6, v7

    move/from16 v7, p1

    move-object/from16 v40, v8

    move-object/from16 v8, v25

    move-object/from16 p2, v9

    :try_start_c
    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    aput-object v11, v15, v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object/from16 v9, p2

    :try_start_d
    iput v10, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    move/from16 v2, p1

    move-object/from16 v1, v22

    move-object/from16 v14, v33

    move/from16 v10, v36

    move-object/from16 v4, v39

    move-object/from16 v8, v40

    :goto_20
    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_4

    :catchall_5
    move-exception v0

    :goto_21
    move-object v2, v0

    move-object v3, v9

    move-object v8, v13

    move-object/from16 v4, v39

    :goto_22
    move-object/from16 v1, v40

    goto/16 :goto_a

    :catchall_6
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_21

    :catchall_7
    move-exception v0

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v39, v15

    goto :goto_21

    :cond_1c
    move-object/from16 v40, v8

    move-object/from16 v39, v15

    move/from16 p1, v25

    move-object/from16 v35, v36

    move-object v15, v5

    move/from16 v36, v10

    move v10, v2

    goto :goto_23

    :cond_1d
    move/from16 p1, v3

    move-object/from16 v35, v4

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v39, v15

    move v10, v2

    move-object v15, v5

    :goto_23
    instance-of v2, v1, Lorg/mozilla/javascript/Function;

    if-nez v2, :cond_1f

    if-ne v1, v13, :cond_1e

    move-object/from16 v8, v35

    aget-wide v1, v8, v10

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1e
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1f
    move-object/from16 v8, v35

    check-cast v1, Lorg/mozilla/javascript/Function;

    instance-of v2, v1, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v2, :cond_20

    move-object v2, v1

    check-cast v2, Lorg/mozilla/javascript/IdFunctionObject;

    invoke-static {v2}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v2

    aput-object v2, v1, v10

    move/from16 v6, p1

    goto :goto_24

    :cond_20
    add-int/lit8 v2, v10, 0x1

    move/from16 v6, p1

    invoke-static {v15, v8, v2, v6}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, v12, v3, v2}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v15, v10

    :goto_24
    move v4, v6

    move-object/from16 v25, v8

    move-object v5, v9

    move-object v3, v15

    move-object/from16 v9, v26

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    move-object/from16 v8, v40

    move/from16 v26, v10

    :goto_25
    move/from16 v10, v36

    goto/16 :goto_9

    :pswitch_2b
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v39, v27

    move-object/from16 v15, v28

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v1}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v2

    aput-object v13, v15, v1

    const/16 v4, 0x1d

    if-ne v14, v4, :cond_21

    neg-double v2, v2

    :cond_21
    aput-wide v2, v8, v1

    :goto_26
    move/from16 v25, v6

    move-object/from16 v35, v7

    move-object v10, v8

    move-object v14, v9

    move-object v8, v13

    move-object/from16 v9, v39

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    move v6, v1

    move-object/from16 v39, v26

    move-object/from16 v1, v40

    goto/16 :goto_76

    :pswitch_2c
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v39, v27

    move-object/from16 v15, v28

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v1}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v2

    aput-object v13, v15, v1

    not-int v2, v2

    int-to-double v2, v2

    aput-wide v2, v8, v1

    goto :goto_26

    :pswitch_2d
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v39, v27

    move-object/from16 v15, v28

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v1}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v15, v1

    goto :goto_26

    :pswitch_2e
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v39, v27

    move-object/from16 v15, v28

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v14, v15, v8, v1}, Lorg/mozilla/javascript/Interpreter;->doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v1

    :goto_27
    move v4, v6

    move-object/from16 v25, v8

    move-object v5, v9

    move-object v3, v15

    move-object/from16 v9, v26

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move/from16 v10, v36

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    :goto_28
    move-object/from16 v8, v40

    goto/16 :goto_c

    :pswitch_2f
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v39, v27

    move-object/from16 v15, v28

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    add-int/lit8 v1, v1, -0x1

    invoke-static {v15, v8, v1, v12}, Lorg/mozilla/javascript/Interpreter;->doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V

    goto :goto_27

    :pswitch_30
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v39, v27

    move-object/from16 v15, v28

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    add-int/lit8 v2, v1, -0x1

    invoke-static {v9, v2}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v2

    invoke-static {v9, v1}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v4

    and-int/lit8 v4, v4, 0x1f

    add-int/lit8 v1, v1, -0x1

    aput-object v13, v15, v1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v2

    ushr-long/2addr v2, v4

    long-to-double v2, v2

    aput-wide v2, v8, v1

    goto :goto_27

    :pswitch_31
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v39, v27

    move-object/from16 v15, v28

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v14, v15, v8, v1}, Lorg/mozilla/javascript/Interpreter;->doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_27

    :pswitch_32
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v39, v27

    move-object/from16 v15, v28

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    add-int/lit8 v1, v1, -0x1

    :try_start_e
    invoke-static {v15, v8, v1}, Lorg/mozilla/javascript/Interpreter;->doEquals([Ljava/lang/Object;[DI)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    const/16 v10, 0xd

    if-ne v14, v10, :cond_22

    const/4 v3, 0x1

    goto :goto_29

    :cond_22
    const/4 v3, 0x0

    :goto_29
    xor-int/2addr v2, v3

    :try_start_f
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v15, v1

    goto/16 :goto_27

    :catchall_8
    move-exception v0

    const/16 v10, 0xd

    goto/16 :goto_21

    :pswitch_33
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v39, v27

    move-object/from16 v15, v28

    const/16 v10, 0xd

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v14, v15, v8, v1}, Lorg/mozilla/javascript/Interpreter;->doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto/16 :goto_27

    :pswitch_34
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v39, v27

    move-object/from16 v15, v28

    const/16 v10, 0xd

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    :try_start_10
    aget-object v2, v15, v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    if-ne v2, v13, :cond_23

    :try_start_11
    aget-wide v2, v8, v1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :cond_23
    add-int/lit8 v1, v1, -0x1

    :try_start_12
    aget-object v3, v15, v1

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    const/16 v4, 0x8

    if-ne v14, v4, :cond_24

    iget-object v4, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move-object/from16 v5, v39

    :try_start_13
    invoke-static {v3, v2, v12, v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2b

    :catchall_9
    move-exception v0

    :goto_2a
    move-object v2, v0

    move-object v4, v5

    move-object v3, v9

    move-object v8, v13

    goto/16 :goto_22

    :catchall_a
    move-exception v0

    move-object/from16 v5, v39

    goto :goto_2a

    :cond_24
    move-object/from16 v5, v39

    iget-object v4, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v2, v12, v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->strictSetName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_2b
    aput-object v2, v15, v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :goto_2c
    move-object v2, v5

    move v4, v6

    move-object/from16 v25, v8

    move-object v5, v9

    move-object v3, v15

    move-object/from16 v9, v26

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move/from16 v10, v36

    move-object/from16 v6, v38

    goto/16 :goto_28

    :pswitch_35
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v15, v28

    const/16 v10, 0xd

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v27

    add-int/lit8 v2, v1, -0x1

    :try_start_14
    invoke-static {v9, v1}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    const/4 v4, 0x2

    :goto_2d
    add-int/2addr v1, v4

    :try_start_15
    iput v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v4, v6

    move-object/from16 v25, v8

    move-object v3, v15

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move/from16 v10, v36

    move-object/from16 v6, v38

    move-object/from16 v8, v40

    move-object/from16 v46, v26

    move/from16 v26, v2

    move-object v2, v5

    move-object v5, v9

    move-object/from16 v9, v46

    goto/16 :goto_9

    :catchall_b
    move-exception v0

    const/4 v4, 0x2

    goto :goto_2a

    :cond_25
    move-object/from16 v41, v5

    move-object/from16 v35, v7

    move-object v10, v8

    move-object v14, v9

    move-object/from16 v39, v26

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move/from16 v26, v2

    move v8, v6

    goto/16 :goto_51

    :pswitch_36
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v15, v28

    const/16 v10, 0xd

    move v6, v4

    move-object/from16 v26, v9

    const/4 v4, 0x2

    move-object v9, v5

    move-object/from16 v5, v27

    add-int/lit8 v2, v1, -0x1

    invoke-static {v9, v1}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    if-nez v1, :cond_25

    iget v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_2d

    :pswitch_37
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move/from16 v1, v26

    move-object/from16 v15, v28

    move-object/from16 v26, v9

    move-object v9, v5

    move v8, v4

    move-object/from16 v35, v7

    move-object v14, v9

    move-object/from16 v10, v25

    move-object/from16 v39, v26

    move-object/from16 v41, v27

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    :goto_2e
    move/from16 v26, v1

    goto/16 :goto_51

    :pswitch_38
    move v6, v4

    move-object v9, v5

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v5, v27

    move-object/from16 v15, v28

    const/4 v4, 0x2

    const/16 v10, 0xd

    aget-object v2, v15, v1

    iput-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    aget-wide v1, v8, v1

    iput-wide v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    move/from16 v25, v6

    move-object v14, v9

    move-object v8, v13

    move-object/from16 v1, v40

    const/4 v7, 0x0

    const/16 v31, 0x0

    move-object v9, v5

    const/4 v5, 0x2

    goto/16 :goto_71

    :pswitch_39
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v15, v28

    const/16 v10, 0xd

    move v6, v4

    move-object/from16 v26, v9

    const/4 v4, 0x2

    move-object v9, v5

    move-object/from16 v5, v27

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->leaveWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    iput-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move/from16 v25, v6

    move-object/from16 v35, v7

    move-object v10, v8

    move-object v14, v9

    move-object v8, v13

    move-object/from16 v39, v26

    const/4 v7, 0x0

    const/16 v31, 0x0

    move v6, v1

    move-object v9, v5

    move-object/from16 v1, v40

    goto/16 :goto_10

    :pswitch_3a
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v15, v28

    const/16 v10, 0xd

    move v6, v4

    move-object/from16 v26, v9

    const/4 v4, 0x2

    move-object v9, v5

    move-object/from16 v5, v27

    aget-object v2, v15, v1

    if-ne v2, v13, :cond_26

    aget-wide v2, v8, v1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_26
    add-int/lit8 v1, v1, -0x1

    iget-object v3, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v12, v3}, Lorg/mozilla/javascript/ScriptRuntime;->enterWith(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    iput-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    goto/16 :goto_2c

    :pswitch_3b
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v1, v26

    move-object/from16 v15, v28

    const/16 v10, 0xd

    move v6, v4

    move-object/from16 v26, v9

    const/4 v4, 0x2

    move-object v9, v5

    move-object/from16 v5, v27

    move v3, v1

    :goto_2f
    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 p1, v3

    move v3, v14

    const/4 v14, 0x2

    move-object v4, v15

    move-object/from16 v41, v5

    move-object v5, v8

    move/from16 v25, v6

    move/from16 v6, p1

    :try_start_16
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doDelName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v1

    :goto_30
    move-object v5, v9

    move-object v3, v15

    move/from16 v4, v25

    move-object/from16 v9, v26

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move/from16 v10, v36

    move-object/from16 v6, v38

    move-object/from16 v2, v41

    move/from16 v26, v1

    move-object/from16 v25, v8

    :goto_31
    move-object/from16 v8, v40

    goto/16 :goto_9

    :catchall_c
    move-exception v0

    move-object v2, v0

    move-object v3, v9

    move-object v8, v13

    :goto_32
    move-object/from16 v1, v40

    move-object/from16 v4, v41

    goto/16 :goto_a

    :pswitch_3c
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 p1, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    const/16 v10, 0xd

    const/4 v14, 0x2

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    move/from16 v6, p1

    add-int/lit8 v1, v6, 0x1

    aget-object v2, v15, v6

    aput-object v2, v15, v1

    aget-wide v2, v8, v6

    aput-wide v2, v8, v1

    goto :goto_30

    :pswitch_3d
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    const/16 v10, 0xd

    const/4 v14, 0x2

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v2, v6, -0x1

    aget-object v3, v15, v2

    aput-object v3, v15, v1

    aget-wide v2, v8, v2

    aput-wide v2, v8, v1

    add-int/lit8 v1, v6, 0x2

    aget-object v2, v15, v6

    aput-object v2, v15, v1

    aget-wide v2, v8, v6

    aput-wide v2, v8, v1

    goto :goto_30

    :pswitch_3e
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    const/16 v10, 0xd

    const/4 v14, 0x2

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    aget-object v1, v15, v6

    add-int/lit8 v2, v6, -0x1

    aget-object v3, v15, v2

    aput-object v3, v15, v6

    aput-object v1, v15, v2

    aget-wide v3, v8, v6

    aget-wide v23, v8, v2

    aput-wide v23, v8, v6

    aput-wide v3, v8, v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    move-object/from16 v35, v7

    move-object v10, v8

    move-object v14, v9

    move-object v8, v13

    move-object/from16 v39, v26

    :goto_33
    move-object/from16 v1, v40

    move-object/from16 v9, v41

    :goto_34
    const/4 v5, 0x2

    :goto_35
    const/4 v7, 0x0

    const/16 v31, 0x0

    goto/16 :goto_76

    :pswitch_3f
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    const/16 v10, 0xd

    const/4 v14, 0x2

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    const/4 v5, 0x0

    :try_start_17
    aput-object v5, v15, v6

    :goto_36
    add-int/lit8 v1, v6, -0x1

    goto/16 :goto_30

    :catchall_d
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    move-object v3, v9

    move-object v8, v13

    :goto_37
    move-object/from16 v1, v40

    move-object/from16 v4, v41

    goto/16 :goto_6

    :pswitch_40
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    const/16 v10, 0xd

    const/4 v14, 0x2

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    const/4 v5, 0x0

    aget-object v1, v15, v6

    iput-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    aget-wide v1, v8, v6

    iput-wide v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    aput-object v5, v15, v6

    goto :goto_36

    :pswitch_41
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    const/16 v10, 0xd

    const/4 v14, 0x2

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    const/4 v5, 0x0

    add-int/lit8 v1, v6, -0x1

    invoke-static {v9, v6}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v2

    if-nez v2, :cond_27

    iget v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v2, v14

    iput v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_30

    :cond_27
    add-int/lit8 v2, v6, -0x2

    aput-object v5, v15, v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    move-object/from16 v35, v7

    move-object v10, v8

    move-object v14, v9

    move/from16 v8, v25

    move-object/from16 v39, v26

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move/from16 v26, v2

    goto/16 :goto_51

    :pswitch_42
    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    const/16 v10, 0xd

    const/4 v14, 0x2

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v15

    move-object v4, v8

    move v5, v6

    move-object/from16 v6, v34

    move-object/from16 v35, v7

    move-object/from16 v7, v26

    move-object v10, v8

    move-object/from16 v8, v38

    move-object v14, v9

    move-object/from16 v39, v26

    move/from16 v9, v25

    :try_start_18
    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/Interpreter;->doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v26
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    move-object v5, v14

    move-object v3, v15

    move/from16 v4, v25

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v38

    move-object/from16 v9, v39

    move-object/from16 v8, v40

    move-object/from16 v2, v41

    :goto_38
    move-object/from16 v25, v10

    goto/16 :goto_25

    :catchall_e
    move-exception v0

    move-object v2, v0

    :goto_39
    move-object v8, v13

    move-object v3, v14

    goto/16 :goto_32

    :pswitch_43
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move/from16 v25, v4

    add-int/lit8 v26, v6, 0x1

    :try_start_19
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aget-byte v2, v11, v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    move-object/from16 v9, v41

    :try_start_1a
    invoke-static {v1, v9, v12, v2}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v26

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_3a
    move-object v2, v9

    move-object v5, v14

    move-object v3, v15

    move/from16 v4, v25

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v38

    move-object/from16 v9, v39

    move-object/from16 v8, v40

    goto :goto_38

    :catchall_f
    move-exception v0

    :goto_3b
    move-object v2, v0

    move-object v4, v9

    move-object v8, v13

    move-object v3, v14

    goto/16 :goto_22

    :catchall_10
    move-exception v0

    move-object/from16 v9, v41

    goto :goto_3b

    :pswitch_44
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move/from16 v25, v4

    aget-object v1, v15, v6

    if-ne v1, v13, :cond_28

    aget-wide v1, v10, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_28
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v3, v11, v3

    invoke-static {v1, v9, v12, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->propIncrDecr(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v6

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    :goto_3c
    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_3d
    move-object v8, v13

    move-object/from16 v1, v40

    goto/16 :goto_34

    :pswitch_45
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move/from16 v25, v4

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v11

    move-object v4, v15

    move-object v5, v10

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I

    move-result v26

    goto :goto_3a

    :pswitch_46
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move/from16 v25, v4

    aget-object v1, v15, v6

    check-cast v1, Lorg/mozilla/javascript/Ref;

    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aget-byte v2, v11, v2

    invoke-static {v1, v12, v3, v2}, Lorg/mozilla/javascript/ScriptRuntime;->refIncrDecr(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v6

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    goto :goto_3c

    :pswitch_47
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move/from16 v25, v4

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 v8, v25

    add-int v4, v8, v1

    aget-object v1, v15, v4

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    :goto_3e
    move/from16 v26, v6

    :goto_3f
    move-object v2, v9

    move-object/from16 v25, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v7, v35

    move/from16 v10, v36

    move-object/from16 v6, v38

    move-object/from16 v9, v39

    goto/16 :goto_31

    :pswitch_48
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move v8, v4

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v4, v8, v1

    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aput-object v1, v15, v4

    goto :goto_3e

    :pswitch_49
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move v8, v4

    add-int/lit8 v26, v6, 0x1

    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v9}, Lorg/mozilla/javascript/ScriptRuntime;->typeofName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v26

    :goto_40
    move v4, v8

    goto :goto_3f

    :pswitch_4a
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move v8, v4

    add-int/lit8 v26, v6, 0x1

    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v9, v12, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getNameFunctionAndThis(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v15, v26

    add-int/lit8 v26, v6, 0x2

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v15, v26

    goto :goto_40

    :pswitch_4b
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move v8, v4

    aget-object v1, v15, v6

    if-ne v1, v13, :cond_29

    aget-wide v1, v10, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_29
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v9, v12, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v15, v6

    add-int/lit8 v26, v6, 0x1

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v15, v26

    goto :goto_40

    :pswitch_4c
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move v8, v4

    add-int/lit8 v26, v6, -0x1

    aget-object v1, v15, v26

    if-ne v1, v13, :cond_2a

    aget-wide v1, v10, v26

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_2a
    aget-object v2, v15, v6

    if-ne v2, v13, :cond_2b

    aget-wide v2, v10, v6

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_2b
    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2, v12, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v15, v26

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v15, v6

    :goto_41
    move/from16 v25, v8

    goto/16 :goto_3d

    :pswitch_4d
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move v8, v4

    aget-object v1, v15, v6

    if-ne v1, v13, :cond_2c

    aget-wide v1, v10, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_2c
    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v15, v6

    add-int/lit8 v26, v6, 0x1

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v15, v26

    goto/16 :goto_40

    :pswitch_4e
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move v8, v4

    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {v12, v1, v2, v8}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v1

    iget-object v2, v1, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    add-int/lit8 v26, v6, 0x1

    if-ne v2, v3, :cond_2d

    new-instance v2, Lorg/mozilla/javascript/ArrowFunction;

    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-direct {v2, v12, v3, v1, v4}, Lorg/mozilla/javascript/ArrowFunction;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;)V

    aput-object v2, v15, v26

    goto/16 :goto_40

    :cond_2d
    aput-object v1, v15, v26

    goto/16 :goto_40

    :pswitch_4f
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move v8, v4

    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {v12, v1, v2, v8}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    goto/16 :goto_41

    :pswitch_50
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    move v8, v4

    if-eqz v36, :cond_2e

    :try_start_1b
    iget v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    const/16 v7, 0x64

    add-int/2addr v1, v7

    :try_start_1c
    iput v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    goto :goto_42

    :catchall_11
    move-exception v0

    const/16 v7, 0x64

    goto/16 :goto_3b

    :cond_2e
    const/16 v7, 0x64

    :goto_42
    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object v4, v10

    move v5, v6

    move-object v6, v11

    move-object/from16 v41, v9

    const/16 v9, 0x64

    move v7, v8

    :try_start_1d
    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/Interpreter;->doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BI)I

    move-result v26
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    move v4, v8

    move-object/from16 v25, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v7, v35

    move/from16 v10, v36

    move-object/from16 v6, v38

    move-object/from16 v9, v39

    move-object/from16 v8, v40

    move-object/from16 v2, v41

    goto/16 :goto_9

    :pswitch_51
    move-object v14, v5

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v41, v27

    move-object/from16 v7, v33

    const/16 v9, 0x64

    move v8, v4

    :try_start_1e
    iput-object v7, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    move-object/from16 v33, v7

    move/from16 v25, v8

    move-object v8, v13

    move-object/from16 v1, v40

    move-object/from16 v9, v41

    goto/16 :goto_14

    :catchall_12
    move-exception v0

    :goto_43
    move-object v2, v0

    move-object/from16 v33, v7

    goto/16 :goto_39

    :pswitch_52
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/16 v9, 0x64

    move v8, v4

    add-int/lit8 v2, v6, 0x1

    aput-object v13, v15, v2

    add-int/lit8 v1, v1, 0x3

    int-to-double v3, v1

    aput-wide v3, v10, v2

    move/from16 v26, v2

    const/4 v5, 0x2

    const/16 v32, 0x1

    goto/16 :goto_51

    :pswitch_53
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/16 v9, 0x64

    move v8, v4

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    add-int/lit8 v2, v1, 0x1

    if-ne v6, v2, :cond_2f

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v4, v8, v1

    aget-object v1, v15, v6

    aput-object v1, v15, v4

    aget-wide v1, v10, v6

    aput-wide v1, v10, v4

    add-int/lit8 v26, v6, -0x1

    :goto_44
    move-object/from16 v25, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v15, v34

    move/from16 v10, v36

    move-object/from16 v6, v38

    move-object/from16 v9, v39

    move-object/from16 v8, v40

    :goto_45
    move-object/from16 v2, v41

    :goto_46
    move-object v14, v7

    move-object/from16 v7, v35

    goto/16 :goto_9

    :cond_2f
    if-eq v6, v1, :cond_30

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_30
    :goto_47
    move-object/from16 v33, v7

    move/from16 v25, v8

    move-object v8, v13

    goto/16 :goto_33

    :pswitch_54
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/16 v9, 0x64

    move v8, v4

    if-eqz v36, :cond_31

    const/4 v1, 0x0

    invoke-static {v12, v14, v1}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    :cond_31
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v4, v8, v1

    aget-object v1, v15, v4

    if-eq v1, v13, :cond_32

    move-object v2, v1

    move-object/from16 v33, v7

    move-object v8, v13

    move-object/from16 v1, v40

    move-object/from16 v4, v41

    goto/16 :goto_1b

    :cond_32
    aget-wide v1, v10, v4

    double-to-int v1, v1

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-eqz v36, :cond_33

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    :cond_33
    :goto_48
    move/from16 v26, v6

    goto :goto_44

    :pswitch_55
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/16 v9, 0x64

    move v8, v4

    iput v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v1, :cond_34

    invoke-static {v11, v2}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    invoke-interface {v2, v12, v1}, Lorg/mozilla/javascript/debug/DebugFrame;->onLineChange(Lorg/mozilla/javascript/Context;I)V

    :cond_34
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    goto :goto_47

    :pswitch_56
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/16 v9, 0x64

    move v8, v4

    add-int/lit8 v26, v6, 0x1

    :try_start_1f
    aput-object v13, v15, v26

    invoke-static {v11, v2}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v1

    int-to-double v1, v1

    aput-wide v1, v10, v26

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    const/4 v4, 0x2

    add-int/2addr v1, v4

    :try_start_20
    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :cond_35
    :goto_49
    move v4, v8

    goto/16 :goto_44

    :catchall_13
    move-exception v0

    const/4 v4, 0x2

    goto/16 :goto_43

    :pswitch_57
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/16 v9, 0x64

    move v8, v4

    const/4 v4, 0x2

    add-int/lit8 v26, v6, 0x1

    aput-object v13, v15, v26

    invoke-static {v11, v2}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v1

    int-to-double v1, v1

    aput-wide v1, v10, v26

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v3

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_49

    :pswitch_58
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/16 v9, 0x64

    move v8, v4

    const/4 v4, 0x2

    add-int/lit8 v26, v6, 0x1

    new-array v1, v8, [I

    aput-object v1, v15, v26

    add-int/lit8 v26, v6, 0x2

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v1, v15, v26

    aput-wide v16, v10, v26

    goto :goto_49

    :pswitch_59
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/16 v9, 0x64

    move v8, v4

    const/4 v4, 0x2

    aget-object v1, v15, v6

    if-ne v1, v13, :cond_36

    aget-wide v1, v10, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_36
    add-int/lit8 v26, v6, -0x1

    aget-wide v2, v10, v26

    double-to-int v2, v2

    aget-object v3, v15, v26

    check-cast v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-double v1, v2

    aput-wide v1, v10, v26
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    goto/16 :goto_49

    :pswitch_5a
    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/16 v9, 0x64

    move v8, v4

    move v4, v14

    move-object v14, v5

    const/4 v5, 0x2

    :goto_4a
    :try_start_21
    aget-object v1, v15, v6

    check-cast v1, [Ljava/lang/Object;

    add-int/lit8 v26, v6, -0x1

    aget-object v2, v15, v26

    check-cast v2, [I

    const/16 v3, 0x43

    if-ne v4, v3, :cond_37

    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v3, v3, v8

    check-cast v3, [Ljava/lang/Object;

    iget-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v1, v2, v12, v4}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    goto :goto_4c

    :catchall_14
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v7

    move-object v8, v13

    move-object v3, v14

    move-object/from16 v1, v40

    move-object/from16 v4, v41

    goto/16 :goto_b

    :cond_37
    const/16 v2, -0x1f

    if-ne v4, v2, :cond_38

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v2, v2, v8

    check-cast v2, [I

    goto :goto_4b

    :cond_38
    const/4 v2, 0x0

    :goto_4b
    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2, v12, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    :goto_4c
    aput-object v1, v15, v26

    goto/16 :goto_49

    :pswitch_5b
    move-object/from16 v38, v6

    move/from16 v36, v10

    move-object/from16 v34, v15

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v3, v28

    move-object/from16 v14, v33

    move-object/from16 v6, v38

    move-object/from16 v2, v41

    const/4 v4, 0x0

    goto/16 :goto_9

    :pswitch_5c
    move-object/from16 v38, v6

    move/from16 v36, v10

    move-object/from16 v34, v15

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v3, v28

    move-object/from16 v14, v33

    move-object/from16 v6, v38

    move-object/from16 v2, v41

    const/4 v4, 0x1

    goto/16 :goto_9

    :pswitch_5d
    move-object v14, v5

    move-object/from16 v38, v6

    move/from16 v36, v10

    move-object/from16 v34, v15

    move/from16 v6, v26

    move-object/from16 v41, v27

    const/4 v5, 0x2

    move-object v5, v14

    move-object/from16 v3, v28

    move-object/from16 v14, v33

    move-object/from16 v6, v38

    move-object/from16 v2, v41

    const/4 v4, 0x2

    goto/16 :goto_9

    :pswitch_5e
    move-object/from16 v38, v6

    move/from16 v36, v10

    move-object/from16 v34, v15

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v3, v28

    move-object/from16 v14, v33

    move-object/from16 v6, v38

    move-object/from16 v2, v41

    const/4 v4, 0x3

    goto/16 :goto_9

    :pswitch_5f
    move-object/from16 v38, v6

    move/from16 v36, v10

    move-object/from16 v34, v15

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v3, v28

    move-object/from16 v14, v33

    move-object/from16 v6, v38

    move-object/from16 v2, v41

    const/4 v4, 0x4

    goto/16 :goto_9

    :pswitch_60
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/4 v4, 0x5

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v15, v34

    move/from16 v10, v36

    move-object/from16 v6, v38

    move-object/from16 v9, v39

    goto/16 :goto_45

    :pswitch_61
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    aget-byte v2, v11, v2

    and-int/lit16 v4, v2, 0xff

    add-int/lit8 v1, v1, 0x2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_48

    :pswitch_62
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    invoke-static {v11, v2}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v4

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v5

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_48

    :pswitch_63
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    invoke-static {v11, v2}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v4

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v3

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_48

    :pswitch_64
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/16 v9, 0x64

    move v8, v4

    aget-object v2, v35, v1

    :goto_4d
    move/from16 v26, v6

    move v4, v8

    move-object/from16 v25, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v15, v34

    move/from16 v10, v36

    move-object/from16 v6, v38

    move-object/from16 v9, v39

    move-object/from16 v8, v40

    goto/16 :goto_46

    :pswitch_65
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    aget-object v2, v35, v32

    goto :goto_4d

    :pswitch_66
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    aget-object v2, v35, v5

    goto :goto_4d

    :pswitch_67
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    aget-object v2, v35, v1

    goto :goto_4d

    :pswitch_68
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    aget-object v2, v35, v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_14

    add-int/lit8 v1, v1, 0x2

    :try_start_22
    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_15

    goto/16 :goto_4d

    :catchall_15
    move-exception v0

    move-object v4, v2

    move-object/from16 v33, v7

    move-object v8, v13

    move-object v3, v14

    move-object/from16 v1, v40

    const/4 v7, 0x0

    const/16 v31, 0x0

    :goto_4e
    move-object v2, v0

    goto/16 :goto_7a

    :pswitch_69
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    :try_start_23
    invoke-static {v11, v2}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    aget-object v2, v35, v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    :try_start_24
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v5

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    goto/16 :goto_4d

    :pswitch_6a
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    :try_start_25
    invoke-static {v11, v2}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v1

    aget-object v2, v35, v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    :try_start_26
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v3

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_15

    goto/16 :goto_4d

    :pswitch_6b
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    add-int/lit8 v1, v1, 0x2

    :try_start_27
    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, v11, v2

    move v4, v1

    :goto_4f
    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v25, v10

    move/from16 v26, v6

    move-object/from16 v27, v34

    move-object/from16 v28, v39

    move/from16 v29, v4

    invoke-static/range {v23 .. v29}, Lorg/mozilla/javascript/Interpreter;->doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I

    move-result v26

    goto/16 :goto_44

    :pswitch_6c
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    add-int/lit8 v1, v1, 0x2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, v11, v2

    move v4, v1

    :goto_50
    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v25, v10

    move/from16 v26, v6

    move-object/from16 v27, v34

    move-object/from16 v28, v39

    move-object/from16 v29, v38

    move/from16 v30, v4

    invoke-static/range {v23 .. v30}, Lorg/mozilla/javascript/Interpreter;->doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v26

    goto/16 :goto_44

    :pswitch_6d
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    add-int/lit8 v26, v6, 0x1

    aput-object v7, v15, v26

    goto/16 :goto_49

    :pswitch_6e
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    add-int/lit8 v26, v6, 0x1

    aput-object v13, v15, v26

    aput-wide v16, v10, v26

    goto/16 :goto_49

    :pswitch_6f
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    add-int/lit8 v26, v6, 0x1

    aput-object v13, v15, v26

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v10, v26

    goto/16 :goto_49

    :pswitch_70
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    aget-object v1, v15, v6

    if-ne v1, v13, :cond_39

    aget-wide v1, v10, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_39
    add-int/lit8 v26, v6, -0x1

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enterDotQuery(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto/16 :goto_49

    :pswitch_71
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/4 v5, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    invoke-static {v14, v6}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->updateDotQuery(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3a

    aput-object v1, v15, v6

    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->leaveDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v5

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move-object/from16 v33, v7

    move/from16 v25, v8

    move-object v8, v13

    move-object/from16 v1, v40

    move-object/from16 v9, v41

    goto/16 :goto_35

    :cond_3a
    add-int/lit8 v1, v6, -0x1

    goto/16 :goto_2e

    :goto_51
    if-eqz v36, :cond_3b

    invoke-static {v12, v14, v5}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    :cond_3b
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v11, v1}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v1

    if-eqz v1, :cond_3c

    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_52

    :cond_3c
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/UintMap;->getExistingInt(I)I

    move-result v1

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_52
    if-eqz v36, :cond_35

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    goto/16 :goto_49

    :pswitch_72
    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v41, v27

    move-object/from16 v15, v28

    move-object/from16 v7, v33

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v4

    move v4, v14

    move-object v14, v5

    const/4 v5, 0x2

    :goto_53
    if-eqz v36, :cond_3d

    iget v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/2addr v1, v9

    iput v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    :cond_3d
    add-int/lit8 v1, v8, 0x1

    sub-int/2addr v6, v1

    :try_start_28
    aget-object v1, v15, v6

    check-cast v1, Lorg/mozilla/javascript/Callable;

    add-int/lit8 v2, v6, 0x1

    aget-object v2, v15, v2

    move-object v3, v2

    check-cast v3, Lorg/mozilla/javascript/Scriptable;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_25

    const/16 v2, 0x47

    if-ne v4, v2, :cond_3e

    add-int/lit8 v2, v6, 0x2

    :try_start_29
    invoke-static {v15, v10, v2, v8}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2, v12}, Lorg/mozilla/javascript/ScriptRuntime;->callRef(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;

    move-result-object v1

    aput-object v1, v15, v6
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    move-object/from16 v33, v7

    move v4, v8

    move-object/from16 v37, v13

    move-object/from16 v44, v41

    const/4 v3, 0x1

    :goto_54
    const/16 v31, 0x0

    goto/16 :goto_65

    :cond_3e
    :try_start_2a
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_25

    :try_start_2b
    iget-boolean v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_24

    if-eqz v5, :cond_3f

    :try_start_2c
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    :cond_3f
    move-object v5, v2

    :try_start_2d
    instance-of v2, v1, Lorg/mozilla/javascript/InterpretedFunction;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_24

    if-eqz v2, :cond_43

    :try_start_2e
    move-object v2, v1

    check-cast v2, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v9, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v9, v9, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1a

    move-object/from16 v33, v7

    :try_start_2f
    iget-object v7, v2, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_19

    if-ne v9, v7, :cond_42

    const/16 v11, -0x37

    if-ne v4, v11, :cond_40

    :try_start_30
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_17

    const/4 v9, 0x0

    :try_start_31
    invoke-static {v12, v14, v9}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_16

    move-object/from16 v23, v1

    goto :goto_56

    :catchall_16
    move-exception v0

    :goto_55
    move-object v2, v0

    move-object v7, v9

    move-object v8, v13

    move-object v3, v14

    goto/16 :goto_37

    :catchall_17
    move-exception v0

    const/4 v9, 0x0

    goto :goto_55

    :cond_40
    const/4 v9, 0x0

    move-object/from16 v23, v14

    :goto_56
    add-int/lit8 v7, v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v24, v2

    move-object v2, v5

    move v5, v4

    move-object v4, v15

    move-object/from16 v37, v13

    const/4 v15, 0x2

    move v13, v5

    move-object v5, v10

    move v10, v6

    move v6, v7

    move-object/from16 v42, v33

    move v7, v8

    move/from16 v43, v8

    move-object/from16 v8, v24

    move-object/from16 v44, v41

    move-object/from16 v9, v23

    :try_start_32
    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    if-eq v13, v11, :cond_41

    iput v10, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput v13, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_18

    goto :goto_59

    :catchall_18
    move-exception v0

    :goto_57
    move-object v2, v0

    move-object v3, v14

    move-object/from16 v8, v37

    move-object/from16 v1, v40

    move-object/from16 v33, v42

    :goto_58
    move-object/from16 v4, v44

    goto/16 :goto_a

    :cond_41
    :goto_59
    move-object/from16 v1, v22

    move/from16 v10, v36

    move-object/from16 v13, v37

    move-object/from16 v8, v40

    move-object/from16 v14, v42

    move/from16 v2, v43

    :goto_5a
    move-object/from16 v4, v44

    goto/16 :goto_20

    :cond_42
    move/from16 v43, v8

    move-object/from16 v37, v13

    move-object/from16 v42, v33

    :goto_5b
    move-object/from16 v44, v41

    const/4 v9, 0x2

    move v13, v4

    goto :goto_5d

    :catchall_19
    move-exception v0

    move-object/from16 v37, v13

    move-object/from16 v42, v33

    move-object/from16 v44, v41

    const/4 v9, 0x2

    move-object v2, v0

    :goto_5c
    move-object v3, v14

    move-object/from16 v8, v37

    move-object/from16 v1, v40

    goto :goto_58

    :catchall_1a
    move-exception v0

    move-object/from16 v42, v7

    move-object/from16 v37, v13

    move-object/from16 v44, v41

    const/4 v9, 0x2

    goto :goto_57

    :cond_43
    move-object/from16 v42, v7

    move/from16 v43, v8

    move-object/from16 v37, v13

    goto :goto_5b

    :goto_5d
    :try_start_33
    instance-of v2, v1, Lorg/mozilla/javascript/NativeContinuation;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_23

    if-eqz v2, :cond_45

    :try_start_34
    new-instance v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    check-cast v1, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v2, v1, v14}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1c

    move/from16 v8, v43

    move-object/from16 v7, v42

    if-nez v8, :cond_44

    :try_start_35
    iput-object v7, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    goto :goto_5f

    :catchall_1b
    move-exception v0

    :goto_5e
    move-object v2, v0

    move-object/from16 v33, v7

    goto :goto_5c

    :cond_44
    add-int/lit8 v6, v6, 0x2

    aget-object v1, v15, v6

    iput-object v1, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    aget-wide v3, v10, v6

    iput-wide v3, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1b

    :goto_5f
    move-object/from16 v33, v7

    move-object/from16 v8, v37

    move-object/from16 v1, v40

    move-object/from16 v4, v44

    goto/16 :goto_1b

    :catchall_1c
    move-exception v0

    move-object/from16 v7, v42

    goto :goto_5e

    :cond_45
    move-object/from16 v7, v42

    move/from16 v8, v43

    :try_start_36
    instance-of v2, v1, Lorg/mozilla/javascript/IdFunctionObject;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_22

    if-eqz v2, :cond_47

    :try_start_37
    move-object/from16 v23, v1

    check-cast v23, Lorg/mozilla/javascript/IdFunctionObject;

    invoke-static/range {v23 .. v23}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1f

    if-eqz v2, :cond_46

    :try_start_38
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    const/4 v4, 0x0

    :try_start_39
    invoke-static {v12, v2, v4}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v2

    aput-object v2, v1, v6
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1b

    move-object/from16 v33, v7

    move v4, v8

    const/4 v3, 0x1

    const/4 v5, 0x2

    goto/16 :goto_54

    :catchall_1d
    move-exception v0

    const/4 v4, 0x0

    goto :goto_5e

    :cond_46
    const/4 v4, 0x0

    :try_start_3a
    invoke-static/range {v23 .. v23}, Lorg/mozilla/javascript/BaseFunction;->isApplyOrCall(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->getCallable(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    instance-of v4, v2, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v4, :cond_47

    move-object v4, v2

    check-cast v4, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    iget-object v9, v4, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1f

    if-ne v2, v9, :cond_47

    move-object/from16 v1, p0

    move-object v2, v14

    move v3, v8

    move-object v11, v4

    const/16 v31, 0x0

    move-object v4, v15

    move-object v9, v5

    move-object v5, v10

    move-object/from16 v33, v7

    move v7, v13

    move v13, v8

    move-object v8, v9

    const/4 v15, 0x2

    move-object/from16 v9, v23

    move-object v10, v11

    :try_start_3b
    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrameForApplyOrCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1e

    move v2, v13

    move-object/from16 v1, v22

    move-object/from16 v14, v33

    move/from16 v10, v36

    move-object/from16 v13, v37

    move-object/from16 v8, v40

    goto/16 :goto_5a

    :catchall_1e
    move-exception v0

    :goto_60
    move-object v2, v0

    move-object v3, v14

    move-object/from16 v8, v37

    move-object/from16 v1, v40

    move-object/from16 v4, v44

    const/4 v5, 0x2

    :goto_61
    const/4 v7, 0x0

    goto/16 :goto_7a

    :cond_47
    move-object v9, v5

    move-object/from16 v33, v7

    move v7, v8

    const/4 v8, 0x2

    const/16 v31, 0x0

    goto :goto_62

    :catchall_1f
    move-exception v0

    move-object/from16 v33, v7

    const/4 v8, 0x2

    const/16 v31, 0x0

    goto :goto_60

    :goto_62
    :try_start_3c
    instance-of v2, v1, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    if-eqz v2, :cond_48

    move-object v5, v1

    check-cast v5, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    iget-object v2, v5, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->noSuchMethodMethod:Lorg/mozilla/javascript/Callable;

    instance-of v4, v2, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v4, :cond_48

    move-object v4, v2

    check-cast v4, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    iget-object v8, v4, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_20

    if-ne v2, v8, :cond_48

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v8, v3

    move v3, v7

    move-object v11, v4

    move-object v4, v15

    move-object v15, v5

    move-object v5, v10

    move v10, v7

    move v7, v13

    const/4 v13, 0x2

    move/from16 v45, v10

    move-object v10, v15

    const/4 v15, 0x1

    :try_start_3d
    invoke-static/range {v1 .. v11}, Lorg/mozilla/javascript/Interpreter;->initFrameForNoSuchMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1e

    move-object/from16 v1, v22

    move-object/from16 v14, v33

    move/from16 v10, v36

    move-object/from16 v13, v37

    move-object/from16 v8, v40

    move-object/from16 v4, v44

    move/from16 v2, v45

    goto/16 :goto_20

    :cond_48
    move-object v8, v3

    move/from16 v45, v7

    const/4 v3, 0x1

    const/4 v5, 0x2

    goto :goto_64

    :catchall_20
    move-exception v0

    const/4 v3, 0x1

    const/4 v5, 0x2

    :goto_63
    move-object v2, v0

    move-object v3, v14

    move-object/from16 v8, v37

    move-object/from16 v1, v40

    move-object/from16 v4, v44

    goto :goto_61

    :goto_64
    :try_start_3e
    iput-object v14, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    iput v13, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    iput v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    add-int/lit8 v2, v6, 0x2

    move/from16 v4, v45

    invoke-static {v15, v10, v2, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v12, v9, v8, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v6
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_21

    :goto_65
    move/from16 v26, v6

    :goto_66
    move-object/from16 v25, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v7, v35

    move/from16 v10, v36

    move-object/from16 v13, v37

    move-object/from16 v6, v38

    move-object/from16 v9, v39

    move-object/from16 v8, v40

    move-object/from16 v2, v44

    goto/16 :goto_9

    :catchall_21
    move-exception v0

    goto :goto_63

    :catchall_22
    move-exception v0

    move-object/from16 v33, v7

    :goto_67
    const/4 v3, 0x1

    const/4 v5, 0x2

    :goto_68
    const/16 v31, 0x0

    goto :goto_63

    :catchall_23
    move-exception v0

    move-object/from16 v33, v42

    goto :goto_67

    :catchall_24
    move-exception v0

    move-object/from16 v33, v7

    move-object/from16 v37, v13

    move-object/from16 v44, v41

    goto :goto_67

    :catchall_25
    move-exception v0

    move-object/from16 v33, v7

    move-object/from16 v37, v13

    move-object/from16 v44, v41

    const/4 v3, 0x1

    goto :goto_68

    :pswitch_73
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v37, v13

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v44, v27

    move-object/from16 v15, v28

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/16 v31, 0x0

    :try_start_3f
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_27

    add-int/2addr v4, v1

    const/4 v7, 0x0

    :try_start_40
    aput-object v7, v15, v4

    goto :goto_65

    :catchall_26
    move-exception v0

    :goto_69
    move-object v2, v0

    move-object v3, v14

    move-object/from16 v8, v37

    :goto_6a
    move-object/from16 v1, v40

    move-object/from16 v4, v44

    goto/16 :goto_7a

    :catchall_27
    move-exception v0

    const/4 v7, 0x0

    goto :goto_69

    :pswitch_74
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v37, v13

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v44, v27

    move-object/from16 v15, v28

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    aget-object v1, v15, v6

    add-int/lit8 v26, v6, -0x1

    aget-wide v8, v10, v26

    double-to-int v2, v8

    aget-object v8, v15, v26

    check-cast v8, [Ljava/lang/Object;

    aput-object v1, v8, v2

    add-int/lit8 v1, v6, -0x2

    aget-object v1, v15, v1

    check-cast v1, [I

    aput v18, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-double v1, v2

    aput-wide v1, v10, v26

    goto/16 :goto_66

    :pswitch_75
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v37, v13

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v44, v27

    move-object/from16 v15, v28

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    aget-object v1, v15, v6

    add-int/lit8 v26, v6, -0x1

    aget-wide v8, v10, v26

    double-to-int v2, v8

    aget-object v8, v15, v26

    check-cast v8, [Ljava/lang/Object;

    aput-object v1, v8, v2

    add-int/lit8 v1, v6, -0x2

    aget-object v1, v15, v1

    check-cast v1, [I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-double v1, v2

    aput-wide v1, v10, v26
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_26

    goto/16 :goto_66

    :pswitch_76
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object/from16 v37, v13

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v44, v27

    move-object/from16 v15, v28

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    :try_start_41
    aget-object v1, v15, v6
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_2b

    move-object/from16 v8, v37

    if-ne v1, v8, :cond_49

    :try_start_42
    aget-wide v1, v10, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_28

    goto :goto_6b

    :catchall_28
    move-exception v0

    move-object v2, v0

    move-object v3, v14

    goto/16 :goto_6a

    :cond_49
    :goto_6b
    add-int/lit8 v26, v6, -0x1

    :try_start_43
    aget-object v2, v15, v26

    check-cast v2, Lorg/mozilla/javascript/Scriptable;
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_2a

    move-object/from16 v9, v44

    :try_start_44
    invoke-static {v2, v1, v12, v9}, Lorg/mozilla/javascript/ScriptRuntime;->setConst(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v26

    move-object v13, v8

    goto/16 :goto_3f

    :catchall_29
    move-exception v0

    :goto_6c
    move-object v2, v0

    move-object v4, v9

    move-object v3, v14

    move-object/from16 v1, v40

    goto/16 :goto_7a

    :catchall_2a
    move-exception v0

    :goto_6d
    move-object/from16 v9, v44

    goto :goto_6c

    :catchall_2b
    move-exception v0

    move-object/from16 v8, v37

    goto :goto_6d

    :pswitch_77
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    add-int/lit8 v1, v1, 0x2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, v11, v2

    move v4, v1

    move-object/from16 v1, v40

    goto/16 :goto_77

    :pswitch_78
    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object v8, v13

    move v13, v14

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/16 v31, 0x0

    move-object v14, v5

    const/4 v5, 0x2

    iget-boolean v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v2, :cond_4b

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v14}, Lorg/mozilla/javascript/Interpreter;->captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v1

    iput-boolean v3, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v2

    const/16 v6, 0xc8

    if-lt v2, v6, :cond_4a

    new-instance v2, Lorg/mozilla/javascript/ES6Generator;

    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v10, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v2, v6, v10, v1}, Lorg/mozilla/javascript/ES6Generator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V

    :goto_6e
    iput-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    move/from16 v25, v4

    move-object/from16 v1, v40

    goto/16 :goto_71

    :cond_4a
    new-instance v2, Lorg/mozilla/javascript/NativeGenerator;

    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v10, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v2, v6, v10, v1}, Lorg/mozilla/javascript/NativeGenerator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_29

    goto :goto_6e

    :cond_4b
    move/from16 v25, v4

    move-object/from16 v1, v40

    goto/16 :goto_74

    :pswitch_79
    move-object v14, v5

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v9, v27

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    :try_start_45
    iput-boolean v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    invoke-static {v11, v2}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    new-instance v2, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v6}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    iget-object v10, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v10, v10, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v2, v6, v10, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_2d

    move-object/from16 v1, v40

    :try_start_46
    iput-object v2, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    move/from16 v25, v4

    goto/16 :goto_71

    :catchall_2c
    move-exception v0

    :goto_6f
    move-object v2, v0

    move-object v4, v9

    :goto_70
    move-object v3, v14

    goto/16 :goto_7a

    :catchall_2d
    move-exception v0

    move-object/from16 v1, v40

    goto :goto_6f

    :pswitch_7a
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object v1, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v2, :cond_4c

    invoke-interface {v2, v12}, Lorg/mozilla/javascript/debug/DebugFrame;->onDebuggerStatement(Lorg/mozilla/javascript/Context;)V

    :cond_4c
    move/from16 v25, v4

    goto/16 :goto_76

    :pswitch_7b
    move-object v14, v5

    move-object v1, v8

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    iput-boolean v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    aget-object v2, v15, v6

    iput-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    move/from16 v25, v4

    aget-wide v3, v10, v6

    iput-wide v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    new-instance v2, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    sget-object v4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v3, v4, :cond_4d

    iget-wide v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_4d
    invoke-direct {v2, v3}, Lorg/mozilla/javascript/NativeIterator$StopIteration;-><init>(Ljava/lang/Object;)V

    iget v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v11, v3}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v3

    new-instance v4, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v6, v6, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v4, v2, v6, v3}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v4, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    :goto_71
    invoke-static {v12, v14, v7}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_2c

    :try_start_47
    iget-wide v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_30

    :try_start_48
    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_2f

    if-eqz v6, :cond_4f

    :try_start_49
    iget-boolean v10, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v10, :cond_4e

    invoke-virtual {v6}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v6

    goto :goto_72

    :catchall_2e
    move-exception v0

    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    move-object v3, v6

    move-object v4, v9

    goto/16 :goto_4e

    :cond_4e
    :goto_72
    invoke-static {v6, v2, v3, v4}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_2e

    move-wide/from16 v20, v3

    move-object v3, v6

    move-object/from16 v19, v7

    move-object v13, v8

    move-object v4, v9

    move/from16 v2, v25

    move-object/from16 v14, v33

    move/from16 v10, v36

    const/4 v11, 0x1

    move-object v8, v1

    move-object/from16 v9, v19

    move-object/from16 v1, v22

    goto/16 :goto_4

    :cond_4f
    move-object/from16 v9, v22

    goto/16 :goto_86

    :catchall_2f
    move-exception v0

    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    :goto_73
    move-object v4, v9

    move-object v3, v14

    goto/16 :goto_4e

    :catchall_30
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_73

    :pswitch_7c
    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object v1, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object v8, v13

    move v13, v14

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    const/4 v7, 0x0

    const/16 v31, 0x0

    move/from16 v25, v4

    move-object v14, v5

    const/4 v5, 0x2

    :goto_74
    :try_start_4a
    iget-boolean v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v2, :cond_51

    const/16 v2, -0x42

    if-ne v13, v2, :cond_50

    const/4 v11, 0x1

    goto :goto_75

    :cond_50
    const/4 v11, 0x0

    :goto_75
    invoke-static {v12, v14, v6, v1, v11}, Lorg/mozilla/javascript/Interpreter;->freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_51
    invoke-static {v14, v6, v1, v13}, Lorg/mozilla/javascript/Interpreter;->thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_52

    move-object v4, v9

    goto/16 :goto_7b

    :cond_52
    :goto_76
    move/from16 v26, v6

    move-object v13, v8

    move-object v2, v9

    move-object v5, v14

    move-object v3, v15

    move/from16 v4, v25

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v7, v35

    move-object/from16 v6, v38

    move-object/from16 v9, v39

    move-object v8, v1

    goto/16 :goto_38

    :cond_53
    move-object v14, v5

    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object v1, v8

    move-object/from16 v39, v9

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v34, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    move/from16 v25, v4

    :goto_77
    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v25, v10

    move/from16 v26, v6

    move-object/from16 v27, v34

    move-object/from16 v28, v39

    move-object/from16 v29, v38

    move/from16 v30, v4

    invoke-static/range {v23 .. v30}, Lorg/mozilla/javascript/Interpreter;->doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v26
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2c

    move-object v13, v8

    move-object v2, v9

    move-object/from16 v25, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v7, v35

    move/from16 v10, v36

    move-object/from16 v6, v38

    move-object/from16 v9, v39

    move-object v8, v1

    goto/16 :goto_9

    :catchall_31
    move-exception v0

    move-object v14, v5

    move-object v1, v8

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v9, v27

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v31, 0x0

    goto/16 :goto_6f

    :catchall_32
    move-exception v0

    move-object v1, v8

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v33, v14

    move-object/from16 v9, v27

    :goto_78
    const/4 v7, 0x0

    const/16 v31, 0x0

    move-object v14, v5

    const/4 v5, 0x2

    goto/16 :goto_6f

    :catchall_33
    move-exception v0

    move-object v9, v2

    move-object v1, v8

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v33, v14

    goto :goto_78

    :catchall_34
    move-exception v0

    move-object v1, v8

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v33, v14

    const/4 v7, 0x0

    :goto_79
    const/16 v31, 0x0

    move-object v14, v5

    const/4 v5, 0x2

    move-object v2, v0

    goto/16 :goto_70

    :catchall_35
    move-exception v0

    move-object v1, v8

    move-object v7, v9

    move/from16 v36, v10

    move-object v8, v13

    move-object/from16 v33, v14

    goto :goto_79

    :goto_7a
    if-nez v22, :cond_6c

    move-object v14, v3

    :goto_7b
    if-nez v2, :cond_54

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_54
    if-eqz v1, :cond_55

    iget v3, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    if-ne v3, v5, :cond_55

    iget-object v3, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    if-ne v2, v3, :cond_55

    move-object v9, v7

    :goto_7c
    const/4 v11, 0x1

    goto :goto_80

    :cond_55
    instance-of v3, v2, Lorg/mozilla/javascript/JavaScriptException;

    if-eqz v3, :cond_56

    :goto_7d
    move-object v9, v7

    const/4 v11, 0x2

    goto :goto_80

    :cond_56
    instance-of v3, v2, Lorg/mozilla/javascript/EcmaError;

    if-eqz v3, :cond_57

    goto :goto_7d

    :cond_57
    instance-of v3, v2, Lorg/mozilla/javascript/EvaluatorException;

    if-eqz v3, :cond_58

    goto :goto_7d

    :cond_58
    instance-of v3, v2, Lorg/mozilla/javascript/ContinuationPending;

    if-eqz v3, :cond_59

    move-object v9, v7

    const/4 v11, 0x0

    goto :goto_80

    :cond_59
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5b

    const/16 v3, 0xd

    invoke-virtual {v12, v3}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    :goto_7e
    const/4 v11, 0x2

    goto :goto_7f

    :cond_5a
    const/4 v11, 0x1

    :goto_7f
    move-object v9, v7

    goto :goto_80

    :cond_5b
    const/16 v3, 0xd

    instance-of v6, v2, Ljava/lang/Error;

    if-eqz v6, :cond_5d

    invoke-virtual {v12, v3}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_7e

    :cond_5c
    const/4 v11, 0x0

    goto :goto_7f

    :cond_5d
    instance-of v6, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-eqz v6, :cond_5e

    move-object v9, v2

    check-cast v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    goto :goto_7c

    :cond_5e
    invoke-virtual {v12, v3}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_7e

    :goto_80
    if-eqz v36, :cond_5f

    const/16 v3, 0x64

    :try_start_4b
    invoke-static {v12, v14, v3}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_1
    .catch Ljava/lang/Error; {:try_start_4b .. :try_end_4b} :catch_0

    goto :goto_81

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v9, v7

    const/4 v11, 0x0

    goto :goto_81

    :catch_1
    move-exception v0

    move-object v2, v0

    const/4 v11, 0x1

    :cond_5f
    :goto_81
    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v3, :cond_60

    instance-of v6, v2, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_60

    move-object v6, v2

    check-cast v6, Ljava/lang/RuntimeException;

    :try_start_4c
    invoke-interface {v3, v12, v6}, Lorg/mozilla/javascript/debug/DebugFrame;->onExceptionThrown(Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_36

    goto :goto_82

    :catchall_36
    move-exception v0

    move-object v2, v0

    move-object v9, v7

    const/4 v3, 0x0

    goto :goto_83

    :cond_60
    :goto_82
    move v3, v11

    :cond_61
    :goto_83
    if-eqz v3, :cond_63

    if-eq v3, v5, :cond_62

    const/4 v11, 0x1

    goto :goto_84

    :cond_62
    const/4 v11, 0x0

    :goto_84
    invoke-static {v14, v11}, Lorg/mozilla/javascript/Interpreter;->getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I

    move-result v6

    if-ltz v6, :cond_63

    move-object v9, v7

    move-object v13, v8

    move-object v3, v14

    move-object/from16 v14, v33

    move/from16 v10, v36

    const/4 v11, 0x1

    move-object v8, v1

    move-object v1, v2

    move v2, v6

    goto/16 :goto_4

    :cond_63
    invoke-static {v12, v14, v2}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    iget-object v14, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v14, :cond_6b

    if-eqz v9, :cond_66

    iget-object v3, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v3, :cond_64

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_64
    iget-object v3, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v3, :cond_65

    :goto_85
    move-object v9, v7

    move-object v13, v8

    move-object v3, v14

    move-object/from16 v14, v33

    move/from16 v10, v36

    const/4 v11, 0x1

    move-object v8, v1

    move-object v1, v2

    goto/16 :goto_3

    :cond_65
    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    iget-wide v3, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    move-object v9, v7

    goto :goto_86

    :cond_66
    move-object v9, v2

    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    :goto_86
    iget-object v1, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->pop()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    goto :goto_87

    :cond_67
    iput-object v7, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    iput-object v7, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    :goto_87
    if-eqz v9, :cond_69

    instance-of v1, v9, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_68

    check-cast v9, Ljava/lang/RuntimeException;

    throw v9

    :cond_68
    check-cast v9, Ljava/lang/Error;

    throw v9

    :cond_69
    if-eq v2, v8, :cond_6a

    goto :goto_88

    :cond_6a
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :goto_88
    return-object v2

    :cond_6b
    if-eqz v9, :cond_61

    iget-object v6, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-ne v6, v14, :cond_61

    goto :goto_85

    :cond_6c
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :pswitch_data_0
    .packed-switch -0x42
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_33
        :pswitch_33
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_22
        :pswitch_8
        :pswitch_7
        :pswitch_34
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 5

    const/4 v0, 0x0

    if-ltz p3, :cond_2

    iget-boolean p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    :cond_0
    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    add-int/lit8 v1, p3, 0x2

    aget v1, p0, v1

    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-eqz p4, :cond_1

    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    :cond_1
    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    iput p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/lit8 v1, p3, 0x5

    aget v1, p0, v1

    add-int/2addr v1, p4

    add-int/lit8 p3, p3, 0x4

    aget p0, p0, p3

    add-int/2addr p4, p0

    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object p3, p0, v1

    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aput-object p1, p0, p4

    goto :goto_2

    :cond_2
    check-cast p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eq p3, p2, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3
    iget-object p2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez p2, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_4
    iget-object p2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v1, :cond_5

    iget v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    sub-int/2addr p3, v1

    :cond_5
    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_0
    if-eq v1, p3, :cond_9

    iget-boolean v4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v4, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_6
    iget-boolean v4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-eqz v4, :cond_8

    if-nez v3, :cond_7

    sub-int v3, p3, v1

    new-array v3, v3, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    :cond_7
    aput-object p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_8
    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    if-eqz v2, :cond_a

    add-int/lit8 v2, v2, -0x1

    aget-object p2, v3, v2

    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-static {p0, p2, p3, p4}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_a
    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    iget-wide p3, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    invoke-static {p2, p0, p3, p4}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V

    :goto_2
    iput-object v0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    return-object p2
.end method

.method public static restartContinuation(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v6, p1, Lorg/mozilla/javascript/Context;->isTopLevelStrict:Z

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    array-length p2, p3

    if-nez p2, :cond_1

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    aget-object p2, p3, p2

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeContinuation;->getImplementation()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez p3, :cond_2

    return-object p2

    :cond_2
    new-instance p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    iput-object p2, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    invoke-static {p1, v0, p3}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p3, Lorg/mozilla/javascript/Interpreter$CallFrame;

    new-instance p1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    invoke-direct {p1, p2, p4}, Lorg/mozilla/javascript/Interpreter$GeneratorState;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :try_start_0
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    if-ne p0, p4, :cond_0

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_0
    throw p0

    :cond_1
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    throw p1
.end method

.method private static setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aput-wide p2, p1, v1

    goto :goto_0

    :cond_0
    const/16 p2, 0x1e

    if-ne v0, p2, :cond_1

    instance-of p2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget p3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, p2, p3

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    return-void
.end method

.method private static stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z
    .locals 6

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_2

    cmpl-double p0, v0, v4

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_3
    if-eqz v0, :cond_7

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, p0, :cond_4

    goto :goto_2

    :cond_4
    instance-of p0, v0, Ljava/lang/Number;

    if-eqz p0, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    cmpl-double v0, p0, v4

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_6
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    :goto_2
    return v3
.end method

.method private static stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    return-wide v0
.end method

.method private static stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget v1, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {p1, p2, p0, v0}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p1

    :cond_0
    if-ne v1, v2, :cond_1

    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    return-object p0

    :cond_1
    if-nez v1, :cond_4

    const/16 v0, 0x49

    if-eq p3, v0, :cond_2

    const/16 v0, -0x42

    if-ne p3, v0, :cond_3

    :cond_2
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    aput-object p2, p0, p1

    :cond_3
    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p0

    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V
    .locals 6

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    iget-object v1, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    iget-object v3, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ObjArray;->peek()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/2addr v1, v2

    new-array v1, v1, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v3, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-array v1, v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    :goto_1
    array-length v3, v1

    sub-int/2addr v3, v2

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    aput-object v0, v1, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    array-length v4, v1

    if-eq v0, v4, :cond_4

    aget-object v4, v1, v0

    iget v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-array v0, v3, [I

    array-length v2, v1

    :cond_5
    if-eqz v2, :cond_6

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v1, v2

    :goto_3
    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    iget v5, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    aput v5, v0, v3

    iget-object v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    iput-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    return-void

    :cond_8
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    return-void
.end method

.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/CodeGenerator;

    invoke-direct {v0}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/CodeGenerator;->compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    return-object p1
.end method

.method public createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-eq p3, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object p3, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {p1, p2, p3, p4}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p1

    return-object p1
.end method

.method public createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/InterpretedFunction;->createScript(Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p1

    return-object p1
.end method

.method public getPatchedStack(Lorg/mozilla/javascript/RhinoException;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit16 v1, v1, 0x3e8

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string v1, "line.separator"

    .line 13
    .line 14
    invoke-static {v1}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    .line 23
    .line 24
    array-length v3, v2

    .line 25
    array-length v4, p1

    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_0
    if-eqz v3, :cond_7

    .line 28
    .line 29
    add-int/lit8 v3, v3, -0x1

    .line 30
    .line 31
    const-string v6, "org.mozilla.javascript.Interpreter.interpretLoop"

    .line 32
    .line 33
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-gez v6, :cond_0

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_0
    add-int/lit8 v6, v6, 0x30

    .line 42
    .line 43
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eq v6, v7, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const/16 v8, 0xa

    .line 54
    .line 55
    if-eq v7, v8, :cond_2

    .line 56
    .line 57
    const/16 v8, 0xd

    .line 58
    .line 59
    if-ne v7, v8, :cond_1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_2
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    aget-object v5, v2, v3

    .line 73
    .line 74
    :goto_3
    if-eqz v5, :cond_6

    .line 75
    .line 76
    if-nez v4, :cond_3

    .line 77
    .line 78
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 79
    .line 80
    .line 81
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 82
    .line 83
    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v8, "\tat script"

    .line 89
    .line 90
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v8, :cond_4

    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_4

    .line 102
    .line 103
    const/16 v8, 0x2e

    .line 104
    .line 105
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :cond_4
    const/16 v8, 0x28

    .line 114
    .line 115
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    aget v8, p1, v4

    .line 124
    .line 125
    if-ltz v8, :cond_5

    .line 126
    .line 127
    const/16 v9, 0x3a

    .line 128
    .line 129
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 133
    .line 134
    invoke-static {v7, v8}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    :cond_5
    const/16 v7, 0x29

    .line 142
    .line 143
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v5, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    move v5, v6

    .line 150
    goto :goto_0

    .line 151
    :cond_7
    :goto_4
    invoke-static {p2, v5, v0}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1
.end method

.method public getScriptStack(Lorg/mozilla/javascript/RhinoException;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/RhinoException;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Interpreter;->getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "line.separator"

    invoke-static {v1}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v5, v8

    invoke-virtual {v9, v6}, Lorg/mozilla/javascript/ScriptStackElement;->renderJavaStyle(Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;
    .locals 11

    iget-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    check-cast v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object p1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    array-length v3, v2

    array-length v4, p1

    :goto_0
    if-eqz v3, :cond_5

    add-int/lit8 v3, v3, -0x1

    aget-object v5, v2, v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-eqz v5, :cond_4

    if-nez v4, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    add-int/lit8 v4, v4, -0x1

    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    aget v9, p1, v4

    if-ltz v9, :cond_2

    iget-object v10, v7, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v10, v9}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v9

    goto :goto_2

    :cond_2
    const/4 v9, -0x1

    :goto_2
    iget-object v10, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    iget-object v5, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    new-instance v10, Lorg/mozilla/javascript/ScriptStackElement;

    invoke-direct {v10, v8, v7, v9}, Lorg/mozilla/javascript/ScriptStackElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lorg/mozilla/javascript/ScriptStackElement;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [[Lorg/mozilla/javascript/ScriptStackElement;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/mozilla/javascript/ScriptStackElement;

    return-object p1
.end method

.method public getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;
    .locals 3

    iget-object p1, p1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast p1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v2, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v2, p1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result p1

    aput p1, p2, v1

    goto :goto_0

    :cond_0
    aput v1, p2, v1

    :goto_0
    iget-object p1, v0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    return-object p1
.end method

.method public setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V
    .locals 1

    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object p1, p1, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    return-void
.end method
