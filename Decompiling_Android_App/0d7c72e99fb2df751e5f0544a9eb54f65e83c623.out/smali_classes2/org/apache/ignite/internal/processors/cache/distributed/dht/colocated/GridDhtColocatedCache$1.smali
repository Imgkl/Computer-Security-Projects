.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$1;
.super Ljava/lang/Object;
.source "GridDhtColocatedCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;)V
    .locals 0

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 11
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p4, "hash"    # I
    .param p5, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p6, "next"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .param p7, "ttl"    # J
    .param p9, "hdrId"    # I

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.1;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCacheEntry;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCacheEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V

    return-object v1
.end method
