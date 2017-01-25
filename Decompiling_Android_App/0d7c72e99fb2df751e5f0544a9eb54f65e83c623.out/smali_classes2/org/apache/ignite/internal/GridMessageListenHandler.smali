.class public Lorg/apache/ignite/internal/GridMessageListenHandler;
.super Ljava/lang/Object;
.source "GridMessageListenHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private clsName:Ljava/lang/String;

.field private depEnabled:Z

.field private depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

.field private pred:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private predBytes:[B

.field private topic:Ljava/lang/Object;

.field private topicBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/GridMessageListenHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridMessageListenHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "pred":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/util/UUID;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-boolean v0, Lorg/apache/ignite/internal/GridMessageListenHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topic:Ljava/lang/Object;

    .line 74
    iput-object p2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->pred:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 75
    return-void
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridMessageListenHandler;->clone()Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .locals 2

    .prologue
    .line 172
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isForEvents()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isForMessaging()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public isForQuery()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "routineId"    # Ljava/util/UUID;
    .param p4, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<*>;",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p3, "objs":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lorg/apache/ignite/internal/GridMessageListenHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_0
    return-void
.end method

.method public onListenerRegistered(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "routineId"    # Ljava/util/UUID;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 107
    return-void
.end method

.method public orderedTopic()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pMarshal(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 121
    sget-boolean v2, Lorg/apache/ignite/internal/GridMessageListenHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 122
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/GridMessageListenHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 124
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topic:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 125
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topic:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topicBytes:[B

    .line 127
    :cond_2
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->pred:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-interface {v2, v3}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->predBytes:[B

    .line 130
    iget-object v2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->pred:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v1

    .line 132
    .local v1, "pda":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->clsName:Ljava/lang/String;

    .line 134
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    .line 136
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v0, :cond_3

    .line 137
    new-instance v2, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    const-string v3, "Failed to deploy message listener."

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_3
    new-instance v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    .line 141
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depEnabled:Z

    .line 142
    return-void
.end method

.method public p2pUnmarshal(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 11
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 146
    sget-boolean v0, Lorg/apache/ignite/internal/GridMessageListenHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 147
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/GridMessageListenHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/GridMessageListenHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 150
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->clsName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->clsName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->userVersion()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    iget-object v5, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->participants()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getGlobalDeployment(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v9

    .line 153
    .local v9, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v9, :cond_3

    .line 154
    new-instance v0, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to obtain deployment for class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->clsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_3
    invoke-virtual {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 158
    .local v10, "ldr":Ljava/lang/ClassLoader;
    iget-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topicBytes:[B

    if-eqz v0, :cond_4

    .line 159
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topicBytes:[B

    invoke-interface {v0, v1, v10}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topic:Ljava/lang/Object;

    .line 161
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->predBytes:[B

    invoke-interface {v0, v1, v10}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiPredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->pred:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 162
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depEnabled:Z

    .line 199
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depEnabled:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topicBytes:[B

    .line 201
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->predBytes:[B

    .line 202
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->clsName:Ljava/lang/String;

    .line 203
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topic:Ljava/lang/Object;

    .line 207
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiPredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->pred:Lorg/apache/ignite/lang/IgniteBiPredicate;

    goto :goto_0
.end method

.method public register(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "routineId"    # Ljava/util/UUID;
    .param p3, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-interface {p3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topic:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->pred:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addUserMessageListener(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V

    .line 101
    sget-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const-class v0, Lorg/apache/ignite/internal/GridMessageListenHandler;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 3
    .param p1, "routineId"    # Ljava/util/UUID;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 111
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topic:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->pred:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeUserMessageListener(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V

    .line 112
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depEnabled:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 183
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depEnabled:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topicBytes:[B

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 185
    iget-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->predBytes:[B

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 186
    iget-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->clsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->topic:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lorg/apache/ignite/internal/GridMessageListenHandler;->pred:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
