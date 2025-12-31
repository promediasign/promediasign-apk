.class public abstract Lcom/scand/svg/css/ElementMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private selector:Lcom/scand/svg/css/Selector;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/Selector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/ElementMatcher;->selector:Lcom/scand/svg/css/Selector;

    return-void
.end method


# virtual methods
.method public getSelector()Lcom/scand/svg/css/Selector;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/ElementMatcher;->selector:Lcom/scand/svg/css/Selector;

    return-object v0
.end method

.method public abstract popElement()V
.end method

.method public abstract pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;
.end method
