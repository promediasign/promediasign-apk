.class public Lcom/sun/jna/FromNativeContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/jna/FromNativeContext;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getTargetType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/jna/FromNativeContext;->type:Ljava/lang/Class;

    return-object v0
.end method
