.class public final enum Lcom/fasterxml/aalto/out/StreamWriterBase$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/aalto/out/StreamWriterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/aalto/out/StreamWriterBase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/aalto/out/StreamWriterBase$State;

.field public static final enum EPILOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

.field public static final enum PROLOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

.field public static final enum TREE:Lcom/fasterxml/aalto/out/StreamWriterBase$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    const-string v1, "PROLOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/aalto/out/StreamWriterBase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->PROLOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    new-instance v1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    const-string v3, "TREE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fasterxml/aalto/out/StreamWriterBase$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->TREE:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    new-instance v3, Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    const-string v5, "EPILOG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/fasterxml/aalto/out/StreamWriterBase$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->EPILOG:Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->$VALUES:[Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/aalto/out/StreamWriterBase$State;
    .locals 1

    const-class v0, Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/aalto/out/StreamWriterBase$State;
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/out/StreamWriterBase$State;->$VALUES:[Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    invoke-virtual {v0}, [Lcom/fasterxml/aalto/out/StreamWriterBase$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/aalto/out/StreamWriterBase$State;

    return-object v0
.end method
