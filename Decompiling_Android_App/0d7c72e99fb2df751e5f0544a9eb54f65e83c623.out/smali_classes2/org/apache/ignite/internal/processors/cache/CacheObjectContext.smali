.class public Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
.super Ljava/lang/Object;
.source "CacheObjectContext.java"


# instance fields
.field private cpyOnGet:Z

.field private dfltAffMapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

.field private kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

.field private p2pEnabled:Z

.field private proc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

.field private unmarshalVals:Z


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;ZZ)V
    .locals 1
    .param p1, "kernalCtx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "dfltAffMapper"    # Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    .param p3, "cpyOnGet"    # Z
    .param p4, "unmarshalVals"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 59
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->p2pEnabled:Z

    .line 60
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->dfltAffMapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    .line 61
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->cpyOnGet:Z

    .line 62
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->unmarshalVals:Z

    .line 64
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->proc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    .line 65
    return-void
.end method


# virtual methods
.method public copyOnGet()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->cpyOnGet:Z

    return v0
.end method

.method public defaultAffMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->dfltAffMapper:Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    return-object v0
.end method

.method public kernalContext()Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method public p2pEnabled()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->p2pEnabled:Z

    return v0
.end method

.method public processor()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->proc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    return-object v0
.end method

.method public unmarshalValues()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->unmarshalVals:Z

    return v0
.end method

.method public unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "keepPortable"    # Z

    .prologue
    .line 117
    return-object p1
.end method

.method public unwrapPortablesIfNeeded(Ljava/util/Collection;Z)Ljava/util/Collection;
    .locals 0
    .param p2, "keepPortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    return-object p1
.end method
