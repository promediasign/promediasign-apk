.class public Lcom/illposed/osc/OSCBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/OSCPacket;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private packets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/illposed/osc/OSCPacket;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Lcom/illposed/osc/argument/OSCTimeTag64;


# direct methods
.method public constructor <init>(Lcom/illposed/osc/argument/OSCTimeTag64;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/illposed/osc/OSCBundle;-><init>(Ljava/util/List;Lcom/illposed/osc/argument/OSCTimeTag64;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/illposed/osc/argument/OSCTimeTag64;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/illposed/osc/OSCPacket;",
            ">;",
            "Lcom/illposed/osc/argument/OSCTimeTag64;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/illposed/osc/OSCBundle;->packets:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/illposed/osc/OSCBundle;->packets:Ljava/util/List;

    :goto_0
    invoke-static {p2}, Lcom/illposed/osc/OSCBundle;->checkNonNullTimestamp(Lcom/illposed/osc/argument/OSCTimeTag64;)V

    iput-object p2, p0, Lcom/illposed/osc/OSCBundle;->timestamp:Lcom/illposed/osc/argument/OSCTimeTag64;

    return-void
.end method

.method private static checkNonNullTimestamp(Lcom/illposed/osc/argument/OSCTimeTag64;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bundle time-stamp may not be null; you may want to use OSCTimeStamp.IMMEDIATE."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addPacket(Lcom/illposed/osc/OSCPacket;)V
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/OSCBundle;->packets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPackets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/illposed/osc/OSCPacket;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/illposed/osc/OSCBundle;->packets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Lcom/illposed/osc/argument/OSCTimeTag64;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/OSCBundle;->timestamp:Lcom/illposed/osc/argument/OSCTimeTag64;

    return-object v0
.end method
