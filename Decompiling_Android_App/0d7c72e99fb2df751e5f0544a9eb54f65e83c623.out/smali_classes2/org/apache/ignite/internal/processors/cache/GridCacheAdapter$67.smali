.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoad(Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;)V
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$plc0:Ljavax/cache/expiry/ExpiryPolicy;

.field final synthetic val$replicate:Z

.field final synthetic val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field final synthetic val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)V
    .locals 0

    .prologue
    .line 4053
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.67;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;->val$plc0:Ljavax/cache/expiry/ExpiryPolicy;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;->val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;->val$replicate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4053
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.67;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;->apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V
    .locals 10
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 4055
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.67;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;->val$plc0:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->ttlForLoad(Ljavax/cache/expiry/ExpiryPolicy;)J

    move-result-wide v8

    .line 4057
    .local v8, "ttl":J
    const-wide/16 v0, -0x2

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    .line 4061
    :goto_0
    return-void

    .line 4060
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;->val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$67;->val$replicate:Z

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZJ)V

    goto :goto_0
.end method
