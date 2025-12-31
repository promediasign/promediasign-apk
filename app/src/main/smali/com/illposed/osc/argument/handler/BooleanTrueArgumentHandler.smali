.class public Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/illposed/osc/argument/ArgumentHandler<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;

    invoke-direct {v0}, Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;-><init>()V

    sput-object v0, Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/illposed/osc/argument/ArgumentHandler;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;->clone()Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;
    .locals 1

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;->clone()Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIdentifier()C
    .locals 1

    const/16 v0, 0x54

    return v0
.end method

.method public getJavaClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public isMarkerOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/illposed/osc/argument/handler/BooleanTrueArgumentHandler;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
