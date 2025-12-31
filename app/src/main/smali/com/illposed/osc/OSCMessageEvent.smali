.class public Lcom/illposed/osc/OSCMessageEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final message:Lcom/illposed/osc/OSCMessage;

.field private final time:Lcom/illposed/osc/argument/OSCTimeTag64;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/illposed/osc/argument/OSCTimeTag64;Lcom/illposed/osc/OSCMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/illposed/osc/OSCMessageEvent;->time:Lcom/illposed/osc/argument/OSCTimeTag64;

    iput-object p3, p0, Lcom/illposed/osc/OSCMessageEvent;->message:Lcom/illposed/osc/OSCMessage;

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/illposed/osc/OSCMessage;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/OSCMessageEvent;->message:Lcom/illposed/osc/OSCMessage;

    return-object v0
.end method
