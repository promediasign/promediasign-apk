.class public Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/argument/ArgumentHandler;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/illposed/osc/argument/ArgumentHandler<",
        "Lcom/illposed/osc/argument/OSCSymbol;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final stringArgumentHandler:Lcom/illposed/osc/argument/handler/StringArgumentHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/illposed/osc/argument/handler/StringArgumentHandler;

    invoke-direct {v0}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;-><init>()V

    iput-object v0, p0, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;->stringArgumentHandler:Lcom/illposed/osc/argument/handler/StringArgumentHandler;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/illposed/osc/argument/ArgumentHandler;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;->clone()Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;
    .locals 1

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;->clone()Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIdentifier()C
    .locals 1

    const/16 v0, 0x53

    return v0
.end method

.method public getJavaClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/illposed/osc/argument/OSCSymbol;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/illposed/osc/argument/OSCSymbol;

    return-object v0
.end method

.method public isMarkerOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/argument/OSCSymbol;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;->stringArgumentHandler:Lcom/illposed/osc/argument/handler/StringArgumentHandler;

    invoke-virtual {v0, p1}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/illposed/osc/argument/OSCSymbol;->valueOf(Ljava/lang/String;)Lcom/illposed/osc/argument/OSCSymbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;->parse(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/argument/OSCSymbol;

    move-result-object p1

    return-object p1
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/illposed/osc/argument/handler/SymbolArgumentHandler;->stringArgumentHandler:Lcom/illposed/osc/argument/handler/StringArgumentHandler;

    invoke-virtual {v0, p1}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;->setProperties(Ljava/util/Map;)V

    return-void
.end method
