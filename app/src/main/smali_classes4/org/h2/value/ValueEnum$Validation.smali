.class final enum Lorg/h2/value/ValueEnum$Validation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/value/ValueEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Validation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/h2/value/ValueEnum$Validation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/h2/value/ValueEnum$Validation;

.field public static final enum DUPLICATE:Lorg/h2/value/ValueEnum$Validation;

.field public static final enum EMPTY:Lorg/h2/value/ValueEnum$Validation;

.field public static final enum INVALID:Lorg/h2/value/ValueEnum$Validation;

.field public static final enum VALID:Lorg/h2/value/ValueEnum$Validation;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/h2/value/ValueEnum$Validation;

    const-string v1, "DUPLICATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/h2/value/ValueEnum$Validation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/h2/value/ValueEnum$Validation;->DUPLICATE:Lorg/h2/value/ValueEnum$Validation;

    new-instance v1, Lorg/h2/value/ValueEnum$Validation;

    const-string v3, "EMPTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/h2/value/ValueEnum$Validation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/h2/value/ValueEnum$Validation;->EMPTY:Lorg/h2/value/ValueEnum$Validation;

    new-instance v3, Lorg/h2/value/ValueEnum$Validation;

    const-string v5, "INVALID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/h2/value/ValueEnum$Validation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/h2/value/ValueEnum$Validation;->INVALID:Lorg/h2/value/ValueEnum$Validation;

    new-instance v5, Lorg/h2/value/ValueEnum$Validation;

    const-string v7, "VALID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/h2/value/ValueEnum$Validation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/h2/value/ValueEnum$Validation;->VALID:Lorg/h2/value/ValueEnum$Validation;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/h2/value/ValueEnum$Validation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/h2/value/ValueEnum$Validation;->$VALUES:[Lorg/h2/value/ValueEnum$Validation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/h2/value/ValueEnum$Validation;
    .locals 1

    const-class v0, Lorg/h2/value/ValueEnum$Validation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueEnum$Validation;

    return-object p0
.end method

.method public static values()[Lorg/h2/value/ValueEnum$Validation;
    .locals 1

    sget-object v0, Lorg/h2/value/ValueEnum$Validation;->$VALUES:[Lorg/h2/value/ValueEnum$Validation;

    invoke-virtual {v0}, [Lorg/h2/value/ValueEnum$Validation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/value/ValueEnum$Validation;

    return-object v0
.end method
