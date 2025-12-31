.class Lcom/scand/svg/css/CascadeEngine$MatcherRule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scand/svg/css/CascadeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatcherRule"
.end annotation


# instance fields
.field matcher:Lcom/scand/svg/css/ElementMatcher;

.field order:I

.field rule:Lcom/scand/svg/css/SelectorRule;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/ElementMatcher;Lcom/scand/svg/css/SelectorRule;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->matcher:Lcom/scand/svg/css/ElementMatcher;

    iput-object p2, p0, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->rule:Lcom/scand/svg/css/SelectorRule;

    iput p3, p0, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->order:I

    return-void
.end method
