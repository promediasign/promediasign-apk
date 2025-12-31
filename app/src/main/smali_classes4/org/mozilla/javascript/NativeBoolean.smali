.class final Lorg/mozilla/javascript/NativeBoolean;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field private static final BOOLEAN_TAG:Ljava/lang/Object;

.field private static final Id_constructor:I = 0x1

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x4

.field private static final MAX_PROTOTYPE_ID:I = 0x4

.field private static final serialVersionUID:J = -0x33956cfcac6218e5L


# instance fields
.field private booleanValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Boolean"

    sput-object v0, Lorg/mozilla/javascript/NativeBoolean;->BOOLEAN_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput-boolean p1, p0, Lorg/mozilla/javascript/NativeBoolean;->booleanValue:Z

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/NativeBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeBoolean;-><init>(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/NativeBoolean;->BOOLEAN_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4

    array-length p1, p5

    const/4 p2, 0x0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    aget-object p1, p5, p2

    instance-of p3, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz p3, :cond_2

    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->avoidObjectDetection()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    aget-object p1, p5, p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    if-nez p4, :cond_3

    new-instance p1, Lorg/mozilla/javascript/NativeBoolean;

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeBoolean;-><init>(Z)V

    return-object p1

    :cond_3
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of p3, p4, Lorg/mozilla/javascript/NativeBoolean;

    if-eqz p3, :cond_a

    check-cast p4, Lorg/mozilla/javascript/NativeBoolean;

    iget-boolean p1, p4, Lorg/mozilla/javascript/NativeBoolean;->booleanValue:Z

    const/4 p3, 0x2

    if-eq p2, p3, :cond_8

    const/4 p3, 0x3

    if-eq p2, p3, :cond_6

    const/4 p3, 0x4

    if-ne p2, p3, :cond_5

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-eqz p1, :cond_7

    const-string p1, "(new Boolean(true))"

    goto :goto_1

    :cond_7
    const-string p1, "(new Boolean(false))"

    :goto_1
    return-object p1

    :cond_8
    if-eqz p1, :cond_9

    const-string p1, "true"

    goto :goto_2

    :cond_9
    const-string p1, "false"

    :goto_2
    return-object p1

    :cond_a
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "valueOf"

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_1

    const-string v0, "toSource"

    goto :goto_0

    :cond_1
    const/16 v1, 0x74

    if-ne v0, v1, :cond_3

    const-string v0, "toString"

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    const-string v0, "constructor"

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    return v2
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Boolean"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lorg/mozilla/javascript/NativeBoolean;->booleanValue:Z

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "valueOf"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "toSource"

    goto :goto_0

    :cond_2
    const-string v0, "toString"

    goto :goto_0

    :cond_3
    const-string v1, "constructor"

    move-object v0, v1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeBoolean;->BOOLEAN_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method
