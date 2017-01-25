.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;
.super Ljava/lang/Object;
.source "GridDhtCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI3",
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

.field final synthetic val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

.field final synthetic val$plc:Ljavax/cache/expiry/ExpiryPolicy;

.field final synthetic val$replicate:Z

.field final synthetic val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field final synthetic val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 408
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjavax/cache/expiry/ExpiryPolicy;)V
    .locals 0

    .prologue
    .line 408
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->val$replicate:Z

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->val$plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 408
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.4;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p3, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 8
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 410
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.4;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 412
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->val$replicate:Z

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;->val$plc:Ljavax/cache/expiry/ExpiryPolicy;

    move-object v1, p1

    move-object v2, p2

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->loadEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjavax/cache/expiry/ExpiryPolicy;)V
    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjavax/cache/expiry/ExpiryPolicy;)V

    .line 413
    return-void
.end method
