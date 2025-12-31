.class public Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/handler/chain/IoHandlerChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field private final command:Lorg/apache/mina/handler/chain/IoHandlerCommand;

.field private final name:Ljava/lang/String;

.field private final nextCommand:Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

.field private nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

.field private prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

.field final synthetic this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    if-eqz p4, :cond_0

    iput-object p2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    iput-object p3, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    iput-object p4, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->name:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->command:Lorg/apache/mina/handler/chain/IoHandlerCommand;

    new-instance p2, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry$1;

    invoke-direct {p2, p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry$1;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain;)V

    iput-object p2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextCommand:Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;Lorg/apache/mina/handler/chain/IoHandlerChain$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    return-object p1
.end method

.method public static synthetic access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    return-object p0
.end method

.method public static synthetic access$302(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    return-object p1
.end method

.method public static synthetic access$400(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->command:Lorg/apache/mina/handler/chain/IoHandlerCommand;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextCommand:Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    return-object v0
.end method
