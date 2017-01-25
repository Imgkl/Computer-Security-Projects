.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;
.super Ljava/lang/Object;
.source "GridDhtCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->localLoad(Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI2",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

.field final synthetic val$plc0:Ljavax/cache/expiry/ExpiryPolicy;

.field final synthetic val$replicate:Z

.field final synthetic val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field final synthetic val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjavax/cache/expiry/ExpiryPolicy;)V
    .locals 0

    .prologue
    .line 380
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;->val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;->val$replicate:Z

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;->val$plc0:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 380
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.3;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;->apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V
    .locals 8
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 382
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;->val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;->val$replicate:Z

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;->val$plc0:Ljavax/cache/expiry/ExpiryPolicy;

    move-object v1, p1

    move-object v2, p2

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->loadEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjavax/cache/expiry/ExpiryPolicy;)V
    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 383
    return-void
.end method
