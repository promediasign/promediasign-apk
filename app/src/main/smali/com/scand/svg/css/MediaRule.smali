.class public Lcom/scand/svg/css/MediaRule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mediaList:Ljava/util/Set;

.field statements:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/MediaRule;->statements:Ljava/util/Vector;

    iput-object p1, p0, Lcom/scand/svg/css/MediaRule;->mediaList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/MediaRule;->statements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method
