.class public Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
.super Ljava/lang/Object;
.source "GridCacheProjectionImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
        "<TK;TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

.field private filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private keepPortable:Z

.field private qry:Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueries",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private subjId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V
    .locals 2
    .param p3, "entryFilter"    # Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "keepPortable"    # Z
    .param p7, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;",
            "Ljava/util/UUID;",
            "Z",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "parent":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<TK;TV;>;"
    .local p2, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p4, "flags":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 104
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 107
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->checkTxFlags(Ljava/util/Collection;)V

    .line 109
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 111
    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p4}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    .line 115
    .local v0, "f":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    .line 117
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 119
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->subjId:Ljava/util/UUID;

    .line 121
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 123
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;

    invoke-direct {v1, p2, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->qry:Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    .line 125
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keepPortable:Z

    .line 127
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 128
    return-void

    .line 111
    .end local v0    # "f":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    :cond_2
    const-class v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    goto :goto_0
.end method

.method private and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 2
    .param p1, "f1"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 175
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 177
    .local v0, "entryFilter":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    .end local v0    # "entryFilter":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :goto_0
    return-object v0

    .restart local v0    # "entryFilter":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_0
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/F0;->and0(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method and(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 3
    .param p1, "filter"    # Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    .line 160
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 162
    .local v0, "entryFilter":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    if-nez p1, :cond_0

    .line 165
    .end local v0    # "entryFilter":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :goto_0
    return-object v0

    .restart local v0    # "entryFilter":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/F0;->and0(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    goto :goto_0
.end method

.method public cache()Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 884
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clear()V

    .line 885
    return-void
.end method

.method public clear(J)V
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 914
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clear(J)V

    .line 915
    return-void
.end method

.method public clear(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 889
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clear(Ljava/lang/Object;)V

    .line 890
    return-void
.end method

.method public clearAll(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 894
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearAll(Ljava/util/Set;)V

    .line 895
    return-void
.end method

.method public clearAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 909
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public clearAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 899
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public clearAsync(Ljava/util/Set;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearAsync(Ljava/util/Set;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public clearLocally()V
    .locals 1

    .prologue
    .line 874
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocally()V

    .line 875
    return-void
.end method

.method public clearLocally(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 919
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocally0(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public clearLocallyAll(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 879
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocallyAll(Ljava/util/Set;)V

    .line 880
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKeyAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->containsKeyAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public containsKeys(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->containsKeys(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public containsKeysAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->containsKeysAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method public deserializePortables()Z
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keepPortable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entry(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 843
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 845
    .local v0, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isAll(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 846
    const/4 v1, 0x0

    .line 848
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entry(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;

    move-result-object v1

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 760
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entrySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet(I)Ljava/util/Set;
    .locals 1
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 776
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entrySet(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs entrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 5
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 765
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    new-array v1, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/F0;->and0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public evict(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 853
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->predicate()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->evict(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    .line 856
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->evict(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public evictAll()V
    .locals 2

    .prologue
    .line 869
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->evictAll(Ljava/util/Collection;)V

    .line 870
    return-void
.end method

.method public evictAll(Ljava/util/Collection;)V
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->predicate()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->evictAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 865
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->evictAll(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public expiry()Ljavax/cache/expiry/ExpiryPolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1141
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    return-object v0
.end method

.method public flags()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags()[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v0

    .line 788
    .local v0, "forced":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    .line 797
    :goto_0
    return-object v2

    .line 792
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 794
    .local v1, "ret":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 795
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 797
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0
.end method

.method public flagsOff([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 8
    .param p1, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, p0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 383
    :goto_0
    return-object v1

    .line 368
    :cond_0
    const-class v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 370
    .local v4, "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 373
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 375
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->subjId:Ljava/util/UUID;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keepPortable:Z

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 383
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto :goto_0
.end method

.method public flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 8
    .param p1, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, p0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 360
    :goto_0
    return-object v1

    .line 345
    :cond_0
    const-class v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 347
    .local v4, "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 350
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 352
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->subjId:Ljava/util/UUID;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keepPortable:Z

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 360
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto :goto_0
.end method

.method public forSubjectId(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 8
    .param p1, "subjId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    const-string v1, "subjId"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keepPortable:Z

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 269
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->deserializePortables()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->get(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs get(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 4
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "deserializePortable"    # Z
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Z[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 489
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->get(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->deserializePortables()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAll(Ljava/util/Collection;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->deserializePortables()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public getAllOutTx(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllOutTx(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllOutTxAsync(Ljava/util/List;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TK;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllOutTxAsync(Ljava/util/List;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->deserializePortables()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAsync(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public getForcePrimary(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getForcePrimary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getForcePrimaryAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getForcePrimaryAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public globalPrimarySize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->globalPrimarySize()I

    move-result v0

    return v0
.end method

.method public globalSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->globalSize()I

    move-result v0

    return v0
.end method

.method public gridProjection()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 812
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->gridProjection()Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v0

    return-object v0
.end method

.method public igfsDataSpaceMax()J
    .locals 2

    .prologue
    .line 529
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataSpaceMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public igfsDataSpaceUsed()J
    .locals 2

    .prologue
    .line 524
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->igfsDataSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public varargs invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;
    .locals 1
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 608
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 636
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invokeAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 615
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method isAll(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/Map",
            "<+TK;+TV;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 243
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 216
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    :cond_1
    const/4 v2, 0x0

    .line 219
    .local v2, "failed":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 220
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 221
    .local v4, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 223
    .local v5, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isAll(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 224
    const/4 v2, 0x1

    .line 230
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_3
    if-eqz v2, :cond_0

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v7}, Ljava/util/HashMap;-><init>(IF)V

    .line 235
    .local v0, "cp":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 237
    .restart local v4    # "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 239
    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isAll(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 240
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_5
    move-object p1, v0

    .line 243
    goto :goto_0
.end method

.method isAll(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 189
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v8

    .line 192
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v1, :cond_2

    .line 193
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V

    .line 201
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v1, v0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/local/GridLocalCacheEntry;
    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 443
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgfsDataCache()Z
    .locals 1

    .prologue
    .line 519
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isIgfsDataCache()Z

    move-result v0

    return v0
.end method

.method public isKeepPortable()Z
    .locals 1

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keepPortable:Z

    return v0
.end method

.method public isLocked(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 1085
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isLocked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLockedByThread(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 1090
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isLockedByThread(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMongoDataCache()Z
    .locals 1

    .prologue
    .line 534
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isMongoDataCache()Z

    move-result v0

    return v0
.end method

.method public isMongoMetaCache()Z
    .locals 1

    .prologue
    .line 539
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isMongoMetaCache()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1136
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entrySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keepPortable()Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->subjId:Ljava/util/UUID;

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 397
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK1;TV1;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 1
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public localEntries([Lorg/apache/ignite/cache/CachePeekMode;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/cache/CachePeekMode;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 831
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localEntries([Lorg/apache/ignite/cache/CachePeekMode;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public varargs localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1147
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V

    .line 1148
    return-void
.end method

.method public varargs localLoadCacheAsync(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1152
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoadCacheAsync(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public localPeek(Ljava/lang/Object;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Ljava/lang/Object;
    .locals 1
    .param p2, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .param p3, "plc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/cache/CachePeekMode;",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 826
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localPeek(Ljava/lang/Object;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public localRemoveAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1045
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->predicate()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localRemoveAll(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 1046
    return-void
.end method

.method public localSize([Lorg/apache/ignite/cache/CachePeekMode;)I
    .locals 1
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localSize([Lorg/apache/ignite/cache/CachePeekMode;)I

    move-result v0

    return v0
.end method

.method public varargs lock(Ljava/lang/Object;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1051
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lock(Ljava/lang/Object;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public lockAll(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1063
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lockAll(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public lockAllAsync(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lockAllAsync(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public lockAsync(Ljava/lang/Object;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1057
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->lockAsync(Ljava/lang/Object;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nearSize()I
    .locals 2

    .prologue
    .line 432
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->nearKeySet(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 817
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peek(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peek(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
            ">;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 836
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "modes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peek(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    .line 838
    .local v0, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isAll(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "val":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v0

    .restart local v0    # "val":Ljava/lang/Object;, "TV;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public predicate()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1

    .prologue
    .line 802
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    return-object v0
.end method

.method public primaryEntrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primaryEntrySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs primaryEntrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;
    .locals 5
    .param p1, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 770
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    new-array v1, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/F0;->and0([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primaryEntrySetx([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public primaryKeySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 745
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primaryKeySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public primarySize()I
    .locals 1

    .prologue
    .line 438
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->primaryKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public primaryValues()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 755
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primaryValues([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public projection(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TK1;>;",
            "Ljava/lang/Class",
            "<-TV1;>;)",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<-TK1;>;"
    .local p2, "valType":Ljava/lang/Class;, "Ljava/lang/Class<-TV1;>;"
    const-string v1, "keyType"

    const-string/jumbo v2, "valType"

    invoke-static {p1, v1, p2, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClasses([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->typeFilter0(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->subjId:Ljava/util/UUID;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keepPortable:Z

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 307
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK1;TV1;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return-object v1

    .line 293
    .end local v0    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK1;TV1;>;"
    :catch_0
    move-exception v8

    .line 294
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v8}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public projection(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 9
    .param p1, "filter"    # Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-nez p1, :cond_0

    .line 314
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, p0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 336
    :goto_0
    return-object v1

    .line 316
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v1, :cond_1

    .line 317
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object p1

    .line 319
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClasses([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->subjId:Ljava/util/UUID;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keepPortable:Z

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 336
    .local v0, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto :goto_0

    .line 323
    .end local v0    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_0
    move-exception v8

    .line 324
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v8}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public promote(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1095
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->deserializePortables()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->promote(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public promoteAll(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1100
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->promoteAll(Ljava/util/Collection;)V

    .line 1101
    return-void
.end method

.method public varargs put(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 8
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 1
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 719
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 720
    return-void
.end method

.method public putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isAll(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 727
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 730
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public putAllConflict(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putAllConflict(Ljava/util/Map;)V

    .line 597
    return-void
.end method

.method public putAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isAll(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 579
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v6, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v1, 0x0

    invoke-direct {p0, p6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    aput-object v2, v6, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->putIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 671
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->noValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs putx(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 8
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 585
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putx(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 1
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 655
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isAll(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 661
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v6, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-direct {p0, p6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v1

    aput-object v1, v6, v2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->putxIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public putxIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->noValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->qry:Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1181
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 1183
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 1185
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readSet(Ljava/io/ObjectInput;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    .line 1187
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 1189
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v0, v1, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->qry:Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    .line 1191
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keepPortable:Z

    .line 1192
    return-void
.end method

.method public reload(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->reload(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reloadAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->reloadAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs remove(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 1
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 931
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 925
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->removeAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1009
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1033
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 1034
    return-void
.end method

.method public varargs removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1021
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 1022
    return-void
.end method

.method public removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1038
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->predicate()Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1040
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1027
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAllConflict(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 953
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAllConflict(Ljava/util/Map;)V

    .line 954
    return-void
.end method

.method public removeAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 959
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isAll(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 942
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 936
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removex(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 998
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->removexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public varargs removex(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 1
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 965
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 948
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->removexAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public removexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isAll(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(ZZ)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 977
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removexAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 971
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->replaceAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 691
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    .line 713
    .local v0, "fltr":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, p3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    return-object v1

    .line 711
    .end local v0    # "fltr":Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValue(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    goto :goto_0
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 993
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->replacexAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 696
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 982
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    const-string v1, "key"

    const-string v3, "oldVal"

    const-string v5, "newVal"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0, p1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->isAll(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(Z)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 988
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->replacexAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 402
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public size([Lorg/apache/ignite/cache/CachePeekMode;)I
    .locals 1
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size([Lorg/apache/ignite/cache/CachePeekMode;)I

    move-result v0

    return v0
.end method

.method public sizeAsync([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "peekModes"    # [Lorg/apache/ignite/cache/CachePeekMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/cache/CachePeekMode;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->sizeAsync([Lorg/apache/ignite/cache/CachePeekMode;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public toMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1131
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1196
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tx()Lorg/apache/ignite/transactions/Transaction;
    .locals 1

    .prologue
    .line 1126
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->tx()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public txStart()Lorg/apache/ignite/transactions/Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txStart()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/transactions/Transaction;
    .locals 1
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;

    .prologue
    .line 1115
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/transactions/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JI)Lorg/apache/ignite/transactions/Transaction;
    .locals 7
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p3, "timeout"    # J
    .param p5, "txSize"    # I

    .prologue
    .line 1121
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JI)Lorg/apache/ignite/transactions/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 1
    .param p1, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p2, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;

    .prologue
    .line 1110
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    return-object v0
.end method

.method public unlock(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 4
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1074
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->unlock(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 1075
    return-void
.end method

.method public unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1080
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->and([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 1081
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->values([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 8
    .param p1, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1157
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->subjId:Ljava/util/UUID;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/Set;Ljava/util/UUID;ZLjavax/cache/expiry/ExpiryPolicy;)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1169
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1171
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->filter:Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1173
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->flags:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 1175
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->keepPortable:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 1176
    return-void
.end method
