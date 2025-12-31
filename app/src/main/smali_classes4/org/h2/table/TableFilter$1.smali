.class Lorg/h2/table/TableFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/table/TableFilter$TableFilterVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/table/TableFilter;->setNullRow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/table/TableFilter;


# direct methods
.method public constructor <init>(Lorg/h2/table/TableFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/TableFilter$1;->this$0:Lorg/h2/table/TableFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/h2/table/TableFilter;)V
    .locals 0

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->setNullRow()V

    return-void
.end method
