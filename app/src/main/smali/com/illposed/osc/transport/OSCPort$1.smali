.class abstract synthetic Lcom/illposed/osc/transport/OSCPort$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/illposed/osc/transport/OSCPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$illposed$osc$transport$NetworkProtocol:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/illposed/osc/transport/NetworkProtocol;->values()[Lcom/illposed/osc/transport/NetworkProtocol;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/illposed/osc/transport/OSCPort$1;->$SwitchMap$com$illposed$osc$transport$NetworkProtocol:[I

    :try_start_0
    sget-object v1, Lcom/illposed/osc/transport/NetworkProtocol;->UDP:Lcom/illposed/osc/transport/NetworkProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/illposed/osc/transport/OSCPort$1;->$SwitchMap$com$illposed$osc$transport$NetworkProtocol:[I

    sget-object v1, Lcom/illposed/osc/transport/NetworkProtocol;->TCP:Lcom/illposed/osc/transport/NetworkProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
