.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$1;
.super Ljava/lang/Object;
.source "GridNearCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;)V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 9
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p4, "hash"    # I
    .param p5, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p6, "next"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .param p7, "ttl"    # J
    .param p9, "hdrId"    # I

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter.1;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-wide/from16 v6, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V

    return-object v0
.end method
