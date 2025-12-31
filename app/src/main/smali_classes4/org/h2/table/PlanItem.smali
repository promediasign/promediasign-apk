.class public Lorg/h2/table/PlanItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cost:D

.field private index:Lorg/h2/index/Index;

.field private joinPlan:Lorg/h2/table/PlanItem;

.field private masks:[I

.field private nestedJoinPlan:Lorg/h2/table/PlanItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()Lorg/h2/index/Index;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/PlanItem;->index:Lorg/h2/index/Index;

    return-object v0
.end method

.method public getJoinPlan()Lorg/h2/table/PlanItem;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/PlanItem;->joinPlan:Lorg/h2/table/PlanItem;

    return-object v0
.end method

.method public getMasks()[I
    .locals 1

    iget-object v0, p0, Lorg/h2/table/PlanItem;->masks:[I

    return-object v0
.end method

.method public getNestedJoinPlan()Lorg/h2/table/PlanItem;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/PlanItem;->nestedJoinPlan:Lorg/h2/table/PlanItem;

    return-object v0
.end method

.method public setIndex(Lorg/h2/index/Index;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/PlanItem;->index:Lorg/h2/index/Index;

    return-void
.end method

.method public setJoinPlan(Lorg/h2/table/PlanItem;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/PlanItem;->joinPlan:Lorg/h2/table/PlanItem;

    return-void
.end method

.method public setMasks([I)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/PlanItem;->masks:[I

    return-void
.end method

.method public setNestedJoinPlan(Lorg/h2/table/PlanItem;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/PlanItem;->nestedJoinPlan:Lorg/h2/table/PlanItem;

    return-void
.end method
