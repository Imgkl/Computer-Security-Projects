.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;
.super Lorg/apache/ignite/internal/util/typedef/CIX3;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalStoreLoadClosure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CIX3",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final col:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;",
            ">;"
        }
    .end annotation
.end field

.field final ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final p:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final plc:Ljavax/cache/expiry/ExpiryPolicy;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6083
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Ljavax/cache/expiry/ExpiryPolicy;)V
    .locals 2
    .param p1    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl",
            "<TK;TV;>;",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6103
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.LocalStoreLoadClosure;"
    .local p2, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    .local p3, "ldr":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CIX3;-><init>()V

    .line 6104
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 6105
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .line 6106
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 6108
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->perNodeBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->col:Ljava/util/Collection;

    .line 6109
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteBiPredicate;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    .param p4, "x3"    # Ljavax/cache/expiry/ExpiryPolicy;
    .param p5, "x4"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;

    .prologue
    .line 6083
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.LocalStoreLoadClosure;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Ljavax/cache/expiry/ExpiryPolicy;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 6083
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.LocalStoreLoadClosure;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p3, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->applyx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    return-void
.end method

.method public applyx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 9
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 6115
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.LocalStoreLoadClosure;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6117
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6146
    :cond_1
    :goto_0
    return-void

    .line 6120
    :cond_2
    const-wide/16 v4, 0x0

    .line 6122
    .local v4, "ttl":J
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    if-eqz v0, :cond_3

    .line 6123
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-interface {v0}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForCreation()Ljavax/cache/expiry/Duration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v4

    .line 6125
    const-wide/16 v2, -0x2

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 6127
    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    .line 6128
    const-wide/16 v4, 0x0

    .line 6131
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    const-wide/16 v6, 0x0

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 6137
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->prepareDirectMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 6139
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->col:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6141
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->col:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->perNodeBufferSize()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 6142
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->col:Ljava/util/Collection;

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->addDataInternal(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;

    .line 6144
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->col:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0
.end method

.method onDone()V
    .locals 2

    .prologue
    .line 6152
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>.LocalStoreLoadClosure;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->col:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6153
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->ldr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LocalStoreLoadClosure;->col:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->addDataInternal(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;

    .line 6154
    :cond_0
    return-void
.end method
