.class Lcom/illposed/osc/OSCPacketDispatcher$NullOSCSerializerBuilder;
.super Lcom/illposed/osc/OSCSerializerAndParserBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/illposed/osc/OSCPacketDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullOSCSerializerBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/illposed/osc/OSCSerializerAndParserBuilder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/illposed/osc/OSCPacketDispatcher$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/illposed/osc/OSCPacketDispatcher$NullOSCSerializerBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public buildSerializer(Lcom/illposed/osc/BytesReceiver;)Lcom/illposed/osc/OSCSerializer;
    .locals 0

    new-instance p1, Lcom/illposed/osc/OSCPacketDispatcher$NullOSCSerializer;

    invoke-direct {p1}, Lcom/illposed/osc/OSCPacketDispatcher$NullOSCSerializer;-><init>()V

    return-object p1
.end method
