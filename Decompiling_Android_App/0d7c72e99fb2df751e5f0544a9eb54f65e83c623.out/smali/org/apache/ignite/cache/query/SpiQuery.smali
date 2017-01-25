.class public final Lorg/apache/ignite/cache/query/SpiQuery;
.super Lorg/apache/ignite/cache/query/Query;
.source "SpiQuery.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/cache/query/SpiQuery;, "Lorg/apache/ignite/cache/query/SpiQuery<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/cache/query/Query;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/cache/query/SpiQuery;, "Lorg/apache/ignite/cache/query/SpiQuery<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/query/SpiQuery;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public varargs setArgs([Ljava/lang/Object;)Lorg/apache/ignite/cache/query/SpiQuery;
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/cache/query/SpiQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/ignite/cache/query/SpiQuery;, "Lorg/apache/ignite/cache/query/SpiQuery<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/query/SpiQuery;->args:[Ljava/lang/Object;

    .line 58
    return-object p0
.end method

.method public bridge synthetic setLocal(Z)Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/cache/query/SpiQuery;, "Lorg/apache/ignite/cache/query/SpiQuery<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/SpiQuery;->setLocal(Z)Lorg/apache/ignite/cache/query/SqlQuery;

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
    .line 68
    .local p0, "this":Lorg/apache/ignite/cache/query/SpiQuery;, "Lorg/apache/ignite/cache/query/SpiQuery<TK;TV;>;"
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
    .local p0, "this":Lorg/apache/ignite/cache/query/SpiQuery;, "Lorg/apache/ignite/cache/query/SpiQuery<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/SpiQuery;->setPageSize(I)Lorg/apache/ignite/cache/query/SqlQuery;

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
    .line 63
    .local p0, "this":Lorg/apache/ignite/cache/query/SpiQuery;, "Lorg/apache/ignite/cache/query/SpiQuery<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/cache/query/Query;->setPageSize(I)Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/query/SqlQuery;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/cache/query/SpiQuery;, "Lorg/apache/ignite/cache/query/SpiQuery<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/cache/query/SpiQuery;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
