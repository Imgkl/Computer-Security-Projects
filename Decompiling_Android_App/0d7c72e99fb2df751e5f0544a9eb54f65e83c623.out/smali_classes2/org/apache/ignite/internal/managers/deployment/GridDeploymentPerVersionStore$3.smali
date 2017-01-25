.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;
.super Ljava/lang/Object;
.source "GridDeploymentPerVersionStore.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->checkRedeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

.field final synthetic val$endTime:J

.field final synthetic val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 851
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;J)V
    .locals 1

    .prologue
    .line 851
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    iput-wide p3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$endTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTime()J
    .locals 4

    .prologue
    .line 857
    iget-wide v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$endTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$endTime:J

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 7

    .prologue
    .line 861
    const/4 v2, 0x0

    .line 864
    .local v2, "rmv":Z
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 865
    :try_start_0
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->pendingUndeploy()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 889
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 867
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeployed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 868
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeploy()V

    .line 870
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->onRemoved()V

    .line 872
    const/4 v2, 0x1

    .line 874
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->userVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 876
    .local v0, "deps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    if-eqz v0, :cond_3

    .line 877
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 878
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    if-ne v3, v5, :cond_1

    .line 879
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 881
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 882
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->userVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v3, v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 886
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v3, v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undeployed class loader due to deployment mode change, user version change, or hot redeployment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 889
    .end local v0    # "deps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    if-eqz v2, :cond_5

    .line 893
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->recordUndeployed(Ljava/util/UUID;)V

    .line 894
    :cond_5
    return-void
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$3;->val$undep:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method
