.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;
.super Ljava/lang/Object;
.source "GridDeploymentPerVersionStore.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 10
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 88
    sget-boolean v6, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    instance-of v6, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 90
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_1
    move-object v2, p1

    .line 92
    check-cast v2, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 94
    .local v2, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 96
    .local v5, "undeployed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v6, v6, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v6, v6, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing node departure event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 99
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 100
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->cache:Ljava/util/Map;
    invoke-static {v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;>;"
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 101
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 103
    .local v1, "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 104
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .line 106
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    invoke-virtual {v2}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->removeParticipant(Ljava/util/UUID;)V

    .line 108
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->hasParticipants()Z

    move-result v6

    if-nez v6, :cond_7

    .line 109
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v6

    sget-object v8, Lorg/apache/ignite/configuration/DeploymentMode;->SHARED:Lorg/apache/ignite/configuration/DeploymentMode;

    if-ne v6, v8, :cond_6

    .line 110
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeployed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 111
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->undeploy()V

    .line 114
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 116
    sget-boolean v6, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 137
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .end local v1    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v3    # "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;>;"
    .end local v4    # "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 118
    .restart local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    .restart local v1    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .restart local v3    # "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;>;"
    .restart local v4    # "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->onRemoved()V

    .line 120
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v6, v6, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 123
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v6, v6, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Undeployed class loader as there are no participating nodes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_6
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v6, v6, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 128
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v6, v6, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preserving deployment without node participants: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 130
    :cond_7
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v6, v6, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 131
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v6, v6, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Keeping deployment as it still has participants: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 137
    .end local v1    # "deps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    .end local v4    # "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;>;"
    :cond_9
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$1;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    invoke-virtual {v2}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    # invokes: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->recordUndeployed(Ljava/util/UUID;Ljava/util/Collection;)V
    invoke-static {v6, v7, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$200(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;Ljava/util/UUID;Ljava/util/Collection;)V

    .line 140
    return-void
.end method
