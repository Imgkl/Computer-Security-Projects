.class public final Lorg/apache/ignite/cache/query/SqlQuery;
.super Lorg/apache/ignite/cache/query/Query;
.source "SqlQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/cache/query/Query",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private args:[Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private sql:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/cache/query/Query;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/SqlQuery;->setType(Ljava/lang/Class;)Lorg/apache/ignite/cache/query/SqlQuery;

    .line 65
    invoke-virtual {p0, p2}, Lorg/apache/ignite/cache/query/SqlQuery;->setSql(Ljava/lang/String;)Lorg/apache/ignite/cache/query/SqlQuery;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/cache/query/Query;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/SqlQuery;->setType(Ljava/lang/String;)Lorg/apache/ignite/cache/query/SqlQuery;

    .line 54
    invoke-virtual {p0, p2}, Lorg/apache/ignite/cache/query/SqlQuery;->setSql(Ljava/lang/String;)Lorg/apache/ignite/cache/query/SqlQuery;

    .line 55
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/query/SqlQuery;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/query/SqlQuery;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/query/SqlQuery;->type:Ljava/lang/String;

    return-object v0
.end method

.method public varargs setArgs([Ljava/lang/Object;)Lorg/apache/ignite/cache/query/SqlQuery;
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/cache/query/SqlQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/query/SqlQuery;->args:[Ljava/lang/Object;

    .line 109
    return-object p0
.end method

.method public bridge synthetic setLocal(Z)Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/SqlQuery;->setLocal(Z)Lorg/apache/ignite/cache/query/SqlQuery;

    move-result-object v0

    return-object v0
.end method

.method public setLocal(Z)Lorg/apache/ignite/cache/query/SqlQuery;
    .locals 1
    .param p1, "loc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/cache/query/SqlQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/cache/query/Query;->setLocal(Z)Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/query/SqlQuery;

    return-object v0
.end method

.method public bridge synthetic setPageSize(I)Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/SqlQuery;->setPageSize(I)Lorg/apache/ignite/cache/query/SqlQuery;

    move-result-object v0

    return-object v0
.end method

.method public setPageSize(I)Lorg/apache/ignite/cache/query/SqlQuery;
    .locals 1
    .param p1, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/cache/query/SqlQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/cache/query/Query;->setPageSize(I)Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/query/SqlQuery;

    return-object v0
.end method

.method public setSql(Ljava/lang/String;)Lorg/apache/ignite/cache/query/SqlQuery;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/cache/query/SqlQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    const-string v0, "sql"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lorg/apache/ignite/cache/query/SqlQuery;->sql:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setType(Ljava/lang/Class;)Lorg/apache/ignite/cache/query/SqlQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/cache/query/SqlQuery;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->typeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/cache/query/SqlQuery;->setType(Ljava/lang/String;)Lorg/apache/ignite/cache/query/SqlQuery;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lorg/apache/ignite/cache/query/SqlQuery;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/cache/query/SqlQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/query/SqlQuery;->type:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/ignite/cache/query/SqlQuery;, "Lorg/apache/ignite/cache/query/SqlQuery<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/cache/query/SqlQuery;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
