.class Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntryImpl"
.end annotation


# instance fields
.field private filter:Lorg/apache/mina/core/filterchain/IoFilter;

.field private final name:Ljava/lang/String;

.field private nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

.field private final nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

.field private prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

.field final synthetic this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    if-eqz p4, :cond_0

    iput-object p2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iput-object p3, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iput-object p4, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->name:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    new-instance p2, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;

    invoke-direct {p2, p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;)V

    iput-object p2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "filter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    return-void
.end method

.method public static synthetic access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    return-object p0
.end method

.method public static synthetic access$302(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    return-object p1
.end method

.method public static synthetic access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    return-object p0
.end method

.method public static synthetic access$402(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    return-object p1
.end method

.method public static synthetic access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->setFilter(Lorg/apache/mina/core/filterchain/IoFilter;)V

    return-void
.end method

.method public static synthetic access$600(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method private setFilter(Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAfter(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    return-void
.end method

.method public addBefore(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    return-void
.end method

.method public getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;

    return-void
.end method

.method public replace(Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', prev: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    const-string v2, "null"

    const/16 v3, 0x3a

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "\', next: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
