.class public final Lorg/apache/ignite/cache/query/SqlFieldsQuery;
.super Lorg/apache/ignite/cache/query/Query;
.source "SqlFieldsQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/cache/query/Query",
        "<",
        "Ljava/util/List",
        "<*>;>;"
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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/ignite/cache/query/Query;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->setSql(Ljava/lang/String;)Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    .line 49
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public varargs setArgs([Ljava/lang/Object;)Lorg/apache/ignite/cache/query/SqlFieldsQuery;
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->args:[Ljava/lang/Object;

    .line 92
    return-object p0
.end method

.method public bridge synthetic setLocal(Z)Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->setLocal(Z)Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    move-result-object v0

    return-object v0
.end method

.method public setLocal(Z)Lorg/apache/ignite/cache/query/SqlFieldsQuery;
    .locals 1
    .param p1, "loc"    # Z

    .prologue
    .line 102
    invoke-super {p0, p1}, Lorg/apache/ignite/cache/query/Query;->setLocal(Z)Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    return-object v0
.end method

.method public bridge synthetic setPageSize(I)Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->setPageSize(I)Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    move-result-object v0

    return-object v0
.end method

.method public setPageSize(I)Lorg/apache/ignite/cache/query/SqlFieldsQuery;
    .locals 1
    .param p1, "pageSize"    # I

    .prologue
    .line 97
    invoke-super {p0, p1}, Lorg/apache/ignite/cache/query/Query;->setPageSize(I)Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    return-object v0
.end method

.method public setSql(Ljava/lang/String;)Lorg/apache/ignite/cache/query/SqlFieldsQuery;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "sql"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lorg/apache/ignite/cache/query/SqlFieldsQuery;->sql:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-class v0, Lorg/apache/ignite/cache/query/SqlFieldsQuery;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
