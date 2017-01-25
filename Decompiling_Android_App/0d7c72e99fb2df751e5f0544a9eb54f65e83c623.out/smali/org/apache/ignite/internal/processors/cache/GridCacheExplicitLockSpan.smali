.class public Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "GridCacheExplicitLockSpan.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final cands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final releaseFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 1
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    .line 48
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->releaseFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 56
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 58
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->ensureDeque(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method private ensureDeque(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/Deque;
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ")",
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 259
    .local v0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 262
    .restart local v0    # "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addCandidate(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->lock()V

    .line 73
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    :goto_0
    return v2

    .line 76
    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    throw v2

    .line 78
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->ensureDeque(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/Deque;

    move-result-object v0

    .line 80
    .local v0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 82
    .local v1, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 84
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :cond_2
    const/4 v2, 0x1

    .line 90
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    goto :goto_0
.end method

.method public candidate(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 5
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->lock()V

    .line 213
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 215
    .local v0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    if-eqz v0, :cond_2

    .line 216
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v0    # "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    throw v1

    .line 218
    .restart local v0    # "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    :goto_1
    return-object v1

    .line 218
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan$1;

    invoke-direct {v4, p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->find(Ljava/lang/Iterable;Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->lock()V

    .line 174
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 177
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    throw v0
.end method

.method public markOwned(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->lock()V

    .line 190
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Deque;

    .line 192
    .local v1, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v1    # "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    throw v3

    .line 194
    .restart local v1    # "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 195
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    .line 200
    return-void
.end method

.method public releaseFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->releaseFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    return-object v0
.end method

.method public removeCandidate(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 5
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->lock()V

    .line 140
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Deque;

    .line 142
    .local v1, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    const/4 v0, 0x0

    .line 144
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v1, :cond_2

    .line 145
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    throw v3

    .line 147
    .restart local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v1    # "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    :cond_1
    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 150
    .restart local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    .line 157
    .local v2, "empty":Z
    if-eqz v2, :cond_3

    .line 158
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->releaseFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    return-object v0
.end method

.method public removeCandidate(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 4
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->lock()V

    .line 104
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 106
    .local v0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    if-eqz v0, :cond_1

    .line 107
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v0    # "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    throw v2

    .line 109
    .restart local v0    # "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 112
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->cands:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 119
    .local v1, "empty":Z
    if-eqz v1, :cond_2

    .line 120
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->releaseFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->lock()V

    .line 273
    :try_start_0
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->unlock()V

    throw v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->releaseFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    goto :goto_0
.end method
