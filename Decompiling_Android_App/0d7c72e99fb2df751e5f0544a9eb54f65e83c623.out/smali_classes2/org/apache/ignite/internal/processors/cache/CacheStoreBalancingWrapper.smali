.class public Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;
.super Ljava/lang/Object;
.source "CacheStoreBalancingWrapper.java"

# interfaces
.implements Lorg/apache/ignite/cache/store/CacheStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/store/CacheStore",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_LOAD_ALL_THRESHOLD:I = 0x5


# instance fields
.field private delegate:Lorg/apache/ignite/cache/store/CacheStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private loadAllThreshold:I

.field private pendingLoads:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;",
            "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper",
            "<TK;TV;>.",
            "LoadFuture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/cache/store/CacheStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    .local p1, "delegate":Lorg/apache/ignite/cache/store/CacheStore;, "Lorg/apache/ignite/cache/store/CacheStore<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->pendingLoads:Ljava/util/concurrent/ConcurrentMap;

    .line 47
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->loadAllThreshold:I

    .line 53
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->delegate:Lorg/apache/ignite/cache/store/CacheStore;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/cache/store/CacheStore;I)V
    .locals 1
    .param p2, "loadAllThreshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    .local p1, "delegate":Lorg/apache/ignite/cache/store/CacheStore;, "Lorg/apache/ignite/cache/store/CacheStore<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->pendingLoads:Ljava/util/concurrent/ConcurrentMap;

    .line 47
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->loadAllThreshold:I

    .line 61
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->delegate:Lorg/apache/ignite/cache/store/CacheStore;

    .line 62
    iput p2, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->loadAllThreshold:I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->pendingLoads:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheWriterException;
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->delegate:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v0, p1}, Lorg/apache/ignite/cache/store/CacheStore;->delete(Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public deleteAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheWriterException;
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->delegate:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v0, p1}, Lorg/apache/ignite/cache/store/CacheStore;->deleteAll(Ljava/util/Collection;)V

    .line 212
    return-void
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->pendingLoads:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;

    .line 77
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 96
    :goto_0
    return-object v4

    .line 80
    :cond_0
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .local v2, "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->pendingLoads:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;

    .line 84
    .local v3, "old":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    move-object v1, v2

    .end local v2    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .restart local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    goto :goto_0

    .line 87
    .end local v3    # "old":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    new-instance v5, Ljavax/cache/integration/CacheLoaderException;

    invoke-direct {v5, v0}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 92
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .restart local v2    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .restart local v3    # "old":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    :cond_1
    :try_start_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->delegate:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v5, p1}, Lorg/apache/ignite/cache/store/CacheStore;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 94
    .local v4, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {v2, p1, v4}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->onComplete(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 96
    .end local v2    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .restart local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    goto :goto_0

    .line 98
    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .end local v4    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v2, p1, v0}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->onError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 101
    throw v0

    .line 87
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "old":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .restart local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    goto :goto_1
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheLoaderException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->delegate:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v0, p1}, Lorg/apache/ignite/cache/store/CacheStore;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    .local p2, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    sget-boolean v11, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v11

    iget v12, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->loadAllThreshold:I

    if-le v11, v12, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    iget v12, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->loadAllThreshold:I

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(I)V

    throw v11

    .line 124
    :cond_0
    const/4 v7, 0x0

    .line 125
    .local v7, "needLoad":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    const/4 v9, 0x0

    .line 126
    .local v9, "pending":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;>;"
    const/4 v10, 0x0

    .line 128
    .local v10, "span":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 129
    .local v5, "key":Ljava/lang/Object;, "TK;"
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->pendingLoads:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v11, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;

    .line 131
    .local v3, "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    if-eqz v3, :cond_2

    .line 132
    if-nez v9, :cond_1

    .line 133
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "pending":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 135
    .restart local v9    # "pending":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;>;"
    :cond_1
    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    :cond_2
    if-nez v10, :cond_3

    .line 140
    new-instance v10, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;

    .end local v10    # "span":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    invoke-direct {v10, p0}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;)V

    .line 142
    .restart local v10    # "span":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    :cond_3
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->pendingLoads:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v11, v5, v10}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;

    .line 144
    .local v8, "old":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    if-eqz v8, :cond_5

    .line 145
    if-nez v9, :cond_4

    .line 146
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "pending":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 148
    .restart local v9    # "pending":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;>;"
    :cond_4
    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_5
    if-nez v7, :cond_6

    .line 152
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "needLoad":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .restart local v7    # "needLoad":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    :cond_6
    invoke-interface {v7, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v3    # "fut":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "old":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    :cond_7
    if-eqz v7, :cond_b

    .line 160
    sget-boolean v11, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->$assertionsDisabled:Z

    if-nez v11, :cond_8

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 161
    :cond_8
    sget-boolean v11, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->$assertionsDisabled:Z

    if-nez v11, :cond_9

    if-nez v10, :cond_9

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 164
    :cond_9
    :try_start_0
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->delegate:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v11, v7}, Lorg/apache/ignite/cache/store/CacheStore;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v6

    .line 166
    .local v6, "loaded":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v6, :cond_a

    .line 167
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 168
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {p2, v11, v12}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 173
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v6    # "loaded":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v10, v7, v0}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->onError(Ljava/util/Collection;Ljava/lang/Throwable;)V

    .line 176
    throw v0

    .line 171
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "loaded":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_a
    :try_start_1
    invoke-virtual {v10, v7, v6}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->onComplete(Ljava/util/Collection;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    .end local v6    # "loaded":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_b
    if-eqz v9, :cond_c

    .line 182
    :try_start_2
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 183
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 185
    .restart local v5    # "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;

    invoke-virtual {v11, v5}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {p2, v5, v11}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 188
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v11, Ljavax/cache/integration/CacheLoaderException;

    invoke-direct {v11, v0}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 192
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_c
    return-void
.end method

.method public loadAllThreshold()I
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->loadAllThreshold:I

    return v0
.end method

.method public varargs loadCache(Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;)V
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    .local p1, "clo":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->delegate:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/cache/store/CacheStore;->loadCache(Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public sessionEnd(Z)V
    .locals 1
    .param p1, "commit"    # Z

    .prologue
    .line 216
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->delegate:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v0, p1}, Lorg/apache/ignite/cache/store/CacheStore;->sessionEnd(Z)V

    .line 217
    return-void
.end method

.method public write(Ljavax/cache/Cache$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    .local p1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->delegate:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v0, p1}, Lorg/apache/ignite/cache/store/CacheStore;->write(Ljavax/cache/Cache$Entry;)V

    .line 197
    return-void
.end method

.method public writeAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->delegate:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v0, p1}, Lorg/apache/ignite/cache/store/CacheStore;->writeAll(Ljava/util/Collection;)V

    .line 202
    return-void
.end method
