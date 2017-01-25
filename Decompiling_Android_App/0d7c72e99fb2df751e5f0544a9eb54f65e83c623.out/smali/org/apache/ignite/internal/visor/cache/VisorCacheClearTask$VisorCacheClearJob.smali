.class Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorCacheClearTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorCacheClearJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final cacheName:Ljava/lang/String;

.field private final futs:[Lorg/apache/ignite/lang/IgniteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;
    .annotation runtime Lorg/apache/ignite/resources/JobContextResource;
    .end annotation
.end field

.field private final lsnr:Lorg/apache/ignite/lang/IgniteInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "debug"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/lang/IgniteFuture;

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    .line 71
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->cacheName:Ljava/lang/String;

    .line 73
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob$1;-><init>(Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$1;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;)[Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;)Lorg/apache/ignite/compute/ComputeJobContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;

    return-object v0
.end method

.method private callAsync(Lorg/apache/ignite/lang/IgniteCallable;I)Z
    .locals 5
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteCallable",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "subJob":Lorg/apache/ignite/lang/IgniteCallable;, "Lorg/apache/ignite/lang/IgniteCallable<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    iget-object v3, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->cacheName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forCacheNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteEx;->compute(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteCompute;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteCompute;->withAsync()Lorg/apache/ignite/IgniteCompute;

    move-result-object v0

    .line 92
    .local v0, "compute":Lorg/apache/ignite/IgniteCompute;
    invoke-interface {v0, p1}, Lorg/apache/ignite/IgniteCompute;->call(Lorg/apache/ignite/lang/IgniteCallable;)Ljava/lang/Object;

    .line 94
    invoke-interface {v0}, Lorg/apache/ignite/IgniteCompute;->future()Lorg/apache/ignite/compute/ComputeTaskFuture;

    move-result-object v1

    .line 96
    .local v1, "fut":Lorg/apache/ignite/lang/IgniteFuture;, "Lorg/apache/ignite/lang/IgniteFuture<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aput-object v1, v2, p2

    .line 98
    invoke-interface {v1}, Lorg/apache/ignite/lang/IgniteFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 105
    :goto_0
    return v2

    .line 101
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->jobCtx:Lorg/apache/ignite/compute/ComputeJobContext;

    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobContext;->holdcc()Ljava/lang/Object;

    .line 103
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-interface {v1, v2}, Lorg/apache/ignite/lang/IgniteFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 105
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->run(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 6
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aget-object v2, v2, v5

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aget-object v2, v2, v4

    if-nez v2, :cond_4

    .line 111
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/IgniteEx;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 113
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    new-instance v2, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheSizeCallable;

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheSizeCallable;-><init>(Lorg/apache/ignite/IgniteCache;Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$1;)V

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->callAsync(Lorg/apache/ignite/lang/IgniteCallable;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;
    :cond_1
    :goto_0
    return-object v1

    .line 116
    .restart local v0    # "cache":Lorg/apache/ignite/IgniteCache;
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aget-object v2, v2, v5

    if-nez v2, :cond_3

    new-instance v2, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearCallable;

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearCallable;-><init>(Lorg/apache/ignite/IgniteCache;Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$1;)V

    invoke-direct {p0, v2, v5}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->callAsync(Lorg/apache/ignite/lang/IgniteCallable;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aget-object v2, v2, v4

    if-nez v2, :cond_4

    new-instance v2, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheSizeCallable;

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheSizeCallable;-><init>(Lorg/apache/ignite/IgniteCache;Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$1;)V

    invoke-direct {p0, v2, v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->callAsync(Lorg/apache/ignite/lang/IgniteCallable;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;
    :cond_4
    sget-boolean v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aget-object v1, v1, v3

    invoke-interface {v1}, Lorg/apache/ignite/lang/IgniteFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aget-object v1, v1, v5

    invoke-interface {v1}, Lorg/apache/ignite/lang/IgniteFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aget-object v1, v1, v4

    invoke-interface {v1}, Lorg/apache/ignite/lang/IgniteFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 125
    :cond_6
    new-instance v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aget-object v2, v2, v3

    invoke-interface {v2}, Lorg/apache/ignite/lang/IgniteFuture;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;->futs:[Lorg/apache/ignite/lang/IgniteFuture;

    aget-object v3, v3, v4

    invoke-interface {v3}, Lorg/apache/ignite/lang/IgniteFuture;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
