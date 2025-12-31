.class public abstract enum Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

.field public static final enum AND:Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

.field public static final enum OR:Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

.field public static final enum XOR:Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator$1;

    const-string v1, "AND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;->AND:Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

    new-instance v1, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator$2;

    const-string v3, "OR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;->OR:Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

    new-instance v3, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator$3;

    const-string v5, "XOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;->XOR:Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;->$VALUES:[Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/illposed/osc/messageselector/CombinedMessageSelector$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;
    .locals 1

    const-class v0, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

    return-object p0
.end method

.method public static values()[Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;
    .locals 1

    sget-object v0, Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;->$VALUES:[Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

    invoke-virtual {v0}, [Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/illposed/osc/messageselector/CombinedMessageSelector$LogicOperator;

    return-object v0
.end method
