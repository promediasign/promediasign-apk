.class public Lcom/hivemq/client/internal/util/collections/HandleList$Handle;
.super Lcom/hivemq/client/internal/util/collections/NodeList$Node;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/HandleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/util/collections/NodeList$Node<",
        "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->element:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->element:Ljava/lang/Object;

    return-object v0
.end method
