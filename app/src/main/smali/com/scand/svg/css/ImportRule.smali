.class public Lcom/scand/svg/css/ImportRule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mediaList:Ljava/util/Set;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/ImportRule;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/scand/svg/css/ImportRule;->mediaList:Ljava/util/Set;

    return-void
.end method
