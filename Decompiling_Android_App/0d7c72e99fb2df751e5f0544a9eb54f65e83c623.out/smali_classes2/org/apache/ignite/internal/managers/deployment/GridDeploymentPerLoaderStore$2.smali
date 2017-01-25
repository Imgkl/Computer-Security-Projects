.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$2;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "GridDeploymentPerLoaderStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->scheduleUndeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

.field final synthetic val$dep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;Lorg/apache/ignite/lang/IgniteUuid;JLorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;)V
    .locals 1
    .param p2, "x0"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "x1"    # J

    .prologue
    .line 337
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$2;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iput-object p5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$2;->val$dep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(Lorg/apache/ignite/lang/IgniteUuid;J)V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 4

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 342
    .local v0, "rmv":Z
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$2;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 343
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$2;->val$dep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->undeployed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$2;->val$dep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->undeploy()V

    .line 346
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$2;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$2;->val$dep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const/4 v0, 0x1

    .line 350
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    if-eqz v0, :cond_1

    .line 353
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$2;->val$dep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->recordUndeployed()V

    .line 354
    :cond_1
    return-void

    .line 350
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
