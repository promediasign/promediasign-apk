.class Lcom/jcraft/jsch/RequestSignal;
.super Lcom/jcraft/jsch/Request;
.source "SourceFile"


# instance fields
.field private signal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const-string v0, "KILL"

    iput-object v0, p0, Lcom/jcraft/jsch/RequestSignal;->signal:Ljava/lang/String;

    return-void
.end method
