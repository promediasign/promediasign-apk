.class Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureParts()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;)V

    return-object v0
.end method
