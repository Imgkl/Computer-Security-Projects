.class public Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;
.super Ljava/lang/Object;
.source "GridCacheDefaultAffinityKeyMapper.java"

# interfaces
.implements Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected transient ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field protected transient log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private reflectCache:Lorg/apache/ignite/internal/util/GridReflectionCache;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/apache/ignite/internal/util/GridReflectionCache;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;)V

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper$2;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridReflectionCache;-><init>(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgnitePredicate;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;->reflectCache:Lorg/apache/ignite/internal/util/GridReflectionCache;

    return-void
.end method


# virtual methods
.method public affinityKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0x5d

    .line 89
    const-string v2, "key"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;->reflectCache:Lorg/apache/ignite/internal/util/GridReflectionCache;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/util/GridReflectionCache;->firstFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 113
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to access affinity field for key [field="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;->reflectCache:Lorg/apache/ignite/internal/util/GridReflectionCache;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/GridReflectionCache;->firstField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;->reflectCache:Lorg/apache/ignite/internal/util/GridReflectionCache;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/util/GridReflectionCache;->firstMethodValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 105
    .restart local v1    # "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .end local v1    # "o":Ljava/lang/Object;
    :goto_1
    move-object v1, p1

    .line 113
    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke affinity method for key [mtd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;->reflectCache:Lorg/apache/ignite/internal/util/GridReflectionCache;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/GridReflectionCache;->firstMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
