.class Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$3;
.super Lorg/apache/ignite/internal/util/typedef/CA;
.source "GridCacheDeploymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->onUndeploy(Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

.field final synthetic val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$ldr:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0

    .prologue
    .line 213
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$3;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$3;->val$ldr:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$3;->val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CA;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .prologue
    .line 216
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$3;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$3;->val$ldr:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$3;->val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->onUndeploy0(Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 217
    return-void
.end method
