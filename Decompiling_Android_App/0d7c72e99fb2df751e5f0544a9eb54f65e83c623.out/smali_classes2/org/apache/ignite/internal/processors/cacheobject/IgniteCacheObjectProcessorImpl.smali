.class public Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "IgniteCacheObjectProcessorImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$IgniteCacheObjectImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final IMMUTABLE_CLS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final reflectionCache:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->$assertionsDisabled:Z

    .line 44
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->UNSAFE:Lsun/misc/Unsafe;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    .line 57
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 69
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    const/16 v1, 0x400

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 50
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    invoke-direct {v0, v1, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(II)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->reflectionCache:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    .line 76
    return-void
.end method


# virtual methods
.method public contextForCache(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .locals 8
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 233
    if-eqz p3, :cond_3

    .line 234
    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v0

    .line 236
    .local v0, "memMode":Lorg/apache/ignite/cache/CacheMemoryMode;
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;

    invoke-direct {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;-><init>()V

    invoke-virtual {p3}, Lorg/apache/ignite/configuration/CacheConfiguration;->isCopyOnRead()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->ONHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-ne v0, v1, :cond_2

    move v1, v2

    :goto_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    invoke-direct {v4, v5, v6, v1, v3}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;ZZ)V

    move-object v1, v4

    .line 242
    .end local v0    # "memMode":Lorg/apache/ignite/cache/CacheMemoryMode;
    :goto_1
    return-object v1

    .restart local v0    # "memMode":Lorg/apache/ignite/cache/CacheMemoryMode;
    :cond_2
    move v1, v3

    .line 236
    goto :goto_0

    .line 242
    .end local v0    # "memMode":Lorg/apache/ignite/cache/CacheMemoryMode;
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;

    invoke-direct {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;-><init>()V

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v5

    invoke-direct {v1, v2, v4, v3, v5}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;ZZ)V

    goto :goto_1
.end method

.method public field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasField(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public immutable(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 251
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 253
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 255
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->IMMUTABLE_CLS:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    const/4 v2, 0x1

    .line 267
    :goto_0
    return v2

    .line 258
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->reflectionCache:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 260
    .local v1, "immutable":Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    .line 261
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 263
    :cond_2
    const-class v2, Lorg/apache/ignite/lang/IgniteImmutable;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 265
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->reflectionCache:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    invoke-virtual {v2, v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public isPortableObject(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public keepPortableInStore(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public marshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;)[B
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public onCacheProcessorStarted()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .param p1, "obj"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    goto :goto_0
.end method

.method public toCacheKeyObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "userObj"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 100
    instance-of v0, p2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-eqz v0, :cond_0

    .line 101
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 103
    .end local p2    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p2

    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->toCacheKeyObject0(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object p2

    goto :goto_0
.end method

.method protected toCacheKeyObject0(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "userObj"    # Z

    .prologue
    const/4 v1, 0x0

    .line 114
    if-nez p2, :cond_0

    .line 115
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;-><init>(Ljava/lang/Object;[B)V

    .line 117
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;-><init>(Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;Ljava/lang/Object;[B)V

    goto :goto_0
.end method

.method public toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;B[B)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2, "type"    # B
    .param p3, "bytes"    # [B

    .prologue
    .line 175
    packed-switch p2, :pswitch_data_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheObjectByteArrayImpl;

    invoke-direct {v0, p3}, Lorg/apache/ignite/internal/processors/cache/CacheObjectByteArrayImpl;-><init>([B)V

    .line 180
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3}, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;-><init>(Ljava/lang/Object;[B)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "userObj"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 191
    if-eqz p2, :cond_0

    instance-of v0, p2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 194
    .end local p2    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p2

    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p2, p3}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->toCacheObject0(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object p2

    goto :goto_0
.end method

.method public toCacheObject(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;JZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 10
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "valPtr"    # J
    .param p4, "tmp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x5

    .line 151
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 153
    :cond_0
    sget-object v5, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p2, p3}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v2

    .line 155
    .local v2, "size":I
    sget-object v5, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x4

    add-long/2addr v6, p2

    invoke-virtual {v5, v6, v7}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v3

    .line 157
    .local v3, "type":B
    add-long v6, p2, v8

    invoke-static {v6, v7, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->copyMemory(JI)[B

    move-result-object v0

    .line 159
    .local v0, "bytes":[B
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheapTiered()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    .line 162
    add-long v6, p2, v8

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(J)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    .line 164
    .local v4, "valClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->getClassLoader(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 167
    .local v1, "ldr":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    invoke-virtual {p0, v6, v0, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    .line 170
    .end local v1    # "ldr":Ljava/lang/ClassLoader;
    .end local v4    # "valClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    :goto_1
    return-object v5

    .line 164
    .restart local v4    # "valClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->localLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    .line 170
    .end local v4    # "valClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v0}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;B[B)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    goto :goto_1
.end method

.method protected toCacheObject0(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "userObj"    # Z

    .prologue
    const/4 v1, 0x0

    .line 205
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_2

    .line 208
    if-nez p2, :cond_1

    .line 209
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheObjectByteArrayImpl;

    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectByteArrayImpl;-><init>([B)V

    .line 227
    :goto_0
    return-object v0

    .line 211
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$2;

    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$2;-><init>(Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;[B)V

    goto :goto_0

    .line 224
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    if-nez p2, :cond_3

    .line 225
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;-><init>(Ljava/lang/Object;[B)V

    goto :goto_0

    .line 227
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$IgniteCacheObjectImpl;

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$IgniteCacheObjectImpl;-><init>(Ljava/lang/Object;[B)V

    goto :goto_0
.end method

.method public typeId(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public typeId(Ljava/lang/String;)I
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2, "bytes"    # [B
    .param p3, "clsLdr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unwrapTemporary(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 288
    return-object p2
.end method
