.class Lcom/jcraft/jsch/KeyPair$ASN1Exception;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/KeyPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ASN1Exception"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jcraft/jsch/KeyPair;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/KeyPair;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair$ASN1Exception;->this$0:Lcom/jcraft/jsch/KeyPair;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
