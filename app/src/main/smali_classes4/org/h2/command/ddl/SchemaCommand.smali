.class public abstract Lorg/h2/command/ddl/SchemaCommand;
.super Lorg/h2/command/ddl/DefineCommand;
.source "SourceFile"


# instance fields
.field private final schema:Lorg/h2/schema/Schema;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    iput-object p2, p0, Lorg/h2/command/ddl/SchemaCommand;->schema:Lorg/h2/schema/Schema;

    return-void
.end method


# virtual methods
.method public getSchema()Lorg/h2/schema/Schema;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/SchemaCommand;->schema:Lorg/h2/schema/Schema;

    return-object v0
.end method
