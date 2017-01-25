.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;
.super Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
.source "GridDeploymentPerVersionStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedDeployment"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private rmv:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1045
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;Lorg/apache/ignite/configuration/DeploymentMode;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p3, "clsLdr"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;
    .param p4, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p5, "userVer"    # Ljava/lang/String;
    .param p6, "sampleClsName"    # Ljava/lang/String;

    .prologue
    .line 1059
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    .line 1060
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;-><init>(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1061
    return-void
.end method


# virtual methods
.method addParticipant(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 1074
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1075
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1077
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1079
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->deadClsLdrs:Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$300(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1080
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoader()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->register(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1082
    const/4 v0, 0x1

    .line 1085
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoader()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public classLoader()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;
    .locals 1

    .prologue
    .line 1065
    invoke-super {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    return-object v0
.end method

.method getClassLoaderId(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1124
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1126
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1128
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoader()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->registeredClassLoaderId(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method getClassLoaderIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1137
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoader()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->registeredClassLoaderIds()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getParticipantNodeIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1114
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1116
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoader()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->registeredNodeIds()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method hasParticipant(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 1158
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1159
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1161
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1163
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoader()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->hasRegisteredNode(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    return v0
.end method

.method hasParticipants()Z
    .locals 1

    .prologue
    .line 1145
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1147
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoader()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->hasRegisteredNodes()Z

    move-result v0

    return v0
.end method

.method isRemoved()Z
    .locals 1

    .prologue
    .line 1172
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1174
    :cond_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->rmv:Z

    return v0
.end method

.method public onDeployed(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1199
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1201
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->isTask(Ljava/lang/Class;)Z

    move-result v1

    .line 1203
    .local v1, "isTask":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    const-string v4, "Task"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was deployed in SHARED or CONTINUOUS mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1205
    .local v2, "msg":Ljava/lang/String;
    if-eqz v1, :cond_4

    const/16 v3, 0x21

    .line 1207
    .local v3, "type":I
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v4, v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1208
    new-instance v0, Lorg/apache/ignite/events/DeploymentEvent;

    invoke-direct {v0}, Lorg/apache/ignite/events/DeploymentEvent;-><init>()V

    .line 1210
    .local v0, "evt":Lorg/apache/ignite/events/DeploymentEvent;
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v4, v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/ignite/events/DeploymentEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1211
    invoke-virtual {v0, v2}, Lorg/apache/ignite/events/DeploymentEvent;->message(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v0, v3}, Lorg/apache/ignite/events/DeploymentEvent;->type(I)V

    .line 1213
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/ignite/events/DeploymentEvent;->alias(Ljava/lang/String;)V

    .line 1215
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v4, v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1218
    .end local v0    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v4, v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1219
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v4, v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4, v2}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 1220
    :cond_2
    return-void

    .line 1203
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_3
    const-string v4, "Class"

    goto :goto_0

    .line 1205
    .restart local v2    # "msg":Ljava/lang/String;
    :cond_4
    const/16 v3, 0x1e

    goto :goto_1
.end method

.method onRemoved()V
    .locals 6

    .prologue
    .line 1181
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1183
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->rmv:Z

    .line 1185
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoader()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->registeredClassLoaderIds()Ljava/util/Collection;

    move-result-object v1

    .line 1187
    .local v1, "deadIds":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v3, v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1188
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v3, v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registering dead class loader IDs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1190
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->deadClsLdrs:Ljava/util/Collection;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$300(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1193
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteUuid;

    .line 1194
    .local v0, "clsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->rsrcCache:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$400(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1195
    .end local v0    # "clsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_2
    return-void
.end method

.method recordUndeployed(Ljava/util/UUID;)V
    .locals 9
    .param p1, "leftNodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1228
    sget-boolean v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1230
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->deployedClassMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1231
    .local v0, "depCls":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v8, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->isTask(Ljava/lang/Class;)Z

    move-result v3

    .line 1233
    .local v3, "isTask":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_3

    const-string v7, "Task"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was undeployed in SHARED or CONTINUOUS mode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[cls="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", alias="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1236
    .local v5, "msg":Ljava/lang/String;
    if-eqz v3, :cond_4

    const/16 v6, 0x22

    .line 1238
    .local v6, "type":I
    :goto_2
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1239
    new-instance v1, Lorg/apache/ignite/events/DeploymentEvent;

    invoke-direct {v1}, Lorg/apache/ignite/events/DeploymentEvent;-><init>()V

    .line 1241
    .local v1, "evt":Lorg/apache/ignite/events/DeploymentEvent;
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/apache/ignite/events/DeploymentEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1242
    invoke-virtual {v1, v5}, Lorg/apache/ignite/events/DeploymentEvent;->message(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v1, v6}, Lorg/apache/ignite/events/DeploymentEvent;->type(I)V

    .line 1244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/apache/ignite/events/DeploymentEvent;->alias(Ljava/lang/String;)V

    .line 1246
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1249
    .end local v1    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1250
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7, v5}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1233
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_3
    const-string v7, "Class"

    goto/16 :goto_1

    .line 1236
    .restart local v5    # "msg":Ljava/lang/String;
    :cond_4
    const/16 v6, 0x1f

    goto :goto_2

    .line 1253
    .end local v0    # "depCls":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v3    # "isTask":Z
    .end local v5    # "msg":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->obsolete()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1255
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v7

    invoke-virtual {v7, p0}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->onUndeployed(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 1257
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoader()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    move-result-object v4

    .line 1259
    .local v4, "ldr":Ljava/lang/ClassLoader;
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->onUndeployed(Ljava/lang/ClassLoader;)V

    .line 1262
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v7

    instance-of v7, v7, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    if-eqz v7, :cond_6

    .line 1263
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    invoke-virtual {v7, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->onUndeploy(Ljava/lang/ClassLoader;)V

    .line 1265
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->clearSerializationCaches()V

    .line 1268
    invoke-static {v4}, Lorg/apache/ignite/internal/util/GridAnnotationsCache;->onUndeployed(Ljava/lang/ClassLoader;)V

    .line 1269
    invoke-static {v4}, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->onUndeployed(Ljava/lang/ClassLoader;)V

    .line 1271
    .end local v4    # "ldr":Ljava/lang/ClassLoader;
    :cond_7
    return-void
.end method

.method removeParticipant(Ljava/util/UUID;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1092
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1094
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->mux:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1096
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoader()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->unregister(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 1098
    .local v0, "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1099
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering dead class loader ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1101
    :cond_2
    if-nez v0, :cond_3

    .line 1108
    :goto_0
    return-void

    .line 1104
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->deadClsLdrs:Ljava/util/Collection;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$300(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1107
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->rsrcCache:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->access$400(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1275
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
