.class Lcom/zaxxer/hikari/AbstractHikariConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zaxxer/hikari/IConnectionCustomizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaxxer/hikari/AbstractHikariConfig;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaxxer/hikari/AbstractHikariConfig;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/AbstractHikariConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig$1;->this$0:Lcom/zaxxer/hikari/AbstractHikariConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customize(Ljava/sql/Connection;)V
    .locals 0

    return-void
.end method
