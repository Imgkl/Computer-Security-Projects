.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;
.super Lorg/apache/ignite/internal/util/typedef/CIX3;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

.field final synthetic val$plc:Ljavax/cache/expiry/ExpiryPolicy;

.field final synthetic val$replicate:Z

.field final synthetic val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field final synthetic val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3859
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)V
    .locals 0

    .prologue
    .line 3859
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.63;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->val$plc:Ljavax/cache/expiry/ExpiryPolicy;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->val$replicate:Z

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CIX3;-><init>()V

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
    .line 3859
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.63;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p3, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->applyx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    return-void
.end method

.method public applyx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 10
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 3862
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.63;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3864
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->val$plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->ttlForLoad(Ljavax/cache/expiry/ExpiryPolicy;)J

    move-result-wide v8

    .line 3866
    .local v8, "ttl":J
    const-wide/16 v0, -0x2

    cmp-long v0, v8, v0

    if-nez v0, :cond_1

    .line 3870
    :goto_0
    return-void

    .line 3869
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->val$ver0:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$63;->val$replicate:Z

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZJ)V

    goto :goto_0
.end method
