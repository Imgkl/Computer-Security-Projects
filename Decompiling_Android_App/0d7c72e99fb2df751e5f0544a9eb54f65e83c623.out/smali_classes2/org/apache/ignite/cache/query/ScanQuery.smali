.class public Lorg/apache/ignite/cache/query/ScanQuery;
.super Lorg/apache/ignite/cache/query/Query;
.source "ScanQuery.java"


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
.field private filter:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/apache/ignite/cache/query/ScanQuery;, "Lorg/apache/ignite/cache/query/ScanQuery<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/query/ScanQuery;-><init>(Lorg/apache/ignite/lang/IgniteBiPredicate;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 0
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/ignite/cache/query/ScanQuery;, "Lorg/apache/ignite/cache/query/ScanQuery<TK;TV;>;"
    .local p1, "filter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/cache/query/Query;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/ScanQuery;->setFilter(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/cache/query/ScanQuery;

    .line 53
    return-void
.end method


# virtual methods
.method public getFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/cache/query/ScanQuery;, "Lorg/apache/ignite/cache/query/ScanQuery<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/query/ScanQuery;->filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    return-object v0
.end method

.method public setFilter(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/cache/query/ScanQuery;
    .locals 0
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/cache/query/ScanQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/cache/query/ScanQuery;, "Lorg/apache/ignite/cache/query/ScanQuery<TK;TV;>;"
    .local p1, "filter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/query/ScanQuery;->filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 73
    return-object p0
.end method

.method public bridge synthetic setLocal(Z)Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/cache/query/ScanQuery;, "Lorg/apache/ignite/cache/query/ScanQuery<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/ScanQuery;->setLocal(Z)Lorg/apache/ignite/cache/query/ScanQuery;

    move-result-object v0

    return-object v0
.end method

.method public setLocal(Z)Lorg/apache/ignite/cache/query/ScanQuery;
    .locals 1
    .param p1, "loc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/cache/query/ScanQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/cache/query/ScanQuery;, "Lorg/apache/ignite/cache/query/ScanQuery<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/cache/query/Query;->setLocal(Z)Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/query/ScanQuery;

    return-object v0
.end method

.method public bridge synthetic setPageSize(I)Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/cache/query/ScanQuery;, "Lorg/apache/ignite/cache/query/ScanQuery<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/ScanQuery;->setPageSize(I)Lorg/apache/ignite/cache/query/ScanQuery;

    move-result-object v0

    return-object v0
.end method

.method public setPageSize(I)Lorg/apache/ignite/cache/query/ScanQuery;
    .locals 1
    .param p1, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/cache/query/ScanQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/cache/query/ScanQuery;, "Lorg/apache/ignite/cache/query/ScanQuery<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/cache/query/Query;->setPageSize(I)Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/query/ScanQuery;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lorg/apache/ignite/cache/query/ScanQuery;, "Lorg/apache/ignite/cache/query/ScanQuery<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/cache/query/ScanQuery;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
