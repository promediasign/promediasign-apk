.class public Lcom/thegrizzlylabs/sardineandroid/model/Report;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    prefix = "D"
    reference = "DAV:"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field protected any:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAny()Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Report;->any:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public setAny(Lorg/w3c/dom/Element;)V
    .locals 0

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Report;->any:Lorg/w3c/dom/Element;

    return-void
.end method
