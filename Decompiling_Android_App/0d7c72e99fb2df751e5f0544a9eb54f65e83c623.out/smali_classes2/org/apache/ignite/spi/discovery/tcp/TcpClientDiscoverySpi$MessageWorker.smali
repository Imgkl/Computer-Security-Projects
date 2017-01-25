.class Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;
.super Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;
.source "TcpClientDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private pending:Z

.field private recon:Z

.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

.field private final topHist:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 816
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Z)V
    .locals 1
    .param p2, "recon"    # Z

    .prologue
    .line 829
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .line 830
    const-string v0, "tcp-client-disco-msg-worker"

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;Ljava/lang/String;)V

    .line 818
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    .line 832
    iput-boolean p2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->recon:Z

    .line 833
    return-void
.end method

.method private allNodes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1203
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1205
    .local v0, "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 1206
    .local v2, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1207
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1210
    .end local v2    # "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1212
    return-object v0
.end method

.method private notifyDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "topVer"    # J
    .param p4, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/16 v4, 0x5d

    .line 1222
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->lsnr:Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;

    .line 1224
    .local v0, "lsnr":Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
    if-eqz v0, :cond_2

    .line 1225
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discovery notification [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", topVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1229
    :cond_0
    new-instance v6, Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-direct {v6, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    const/4 v7, 0x0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v7}, Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;->onDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/util/Map;Ljava/io/Serializable;)V

    .line 1234
    :cond_1
    :goto_0
    return-void

    .line 1231
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1232
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped discovery notification [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", topVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processClientReconnectMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;)V
    .locals 8
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1117
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$2400(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1121
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->success()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1122
    iput-boolean v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->pending:Z

    .line 1125
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->pendingMessages()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .line 1126
    .local v1, "pendingMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->processMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1129
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pendingMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    :catchall_0
    move-exception v2

    iput-boolean v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->pending:Z

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iput-boolean v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->pending:Z

    .line 1132
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2, v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1202(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Lorg/apache/ignite/spi/IgniteSpiException;)Lorg/apache/ignite/spi/IgniteSpiException;

    .line 1133
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$2502(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Z)Z

    .line 1135
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1138
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2, v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1202(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Lorg/apache/ignite/spi/IgniteSpiException;)Lorg/apache/ignite/spi/IgniteSpiException;

    .line 1139
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$2502(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Z)Z

    .line 1141
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/events/DiscoveryEvent;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client node disconnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/ignite/events/DiscoveryEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/cluster/ClusterNode;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/spi/IgniteSpiContext;->recordEvent(Lorg/apache/ignite/events/Event;)V

    .line 1145
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 1148
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1149
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarding reconnect message for another client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processHeartbeatMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;)V
    .locals 13
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    .prologue
    const/16 v12, 0x5d

    .line 1063
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1067
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1068
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$300(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/net/Socket;

    move-result-object v5

    .line 1070
    .local v5, "sock0":Ljava/net/Socket;
    if-eqz v5, :cond_3

    .line 1071
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v7

    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->metricsProvider:Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    invoke-interface {v10}, Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v10

    invoke-virtual {p1, v7, v10}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->setMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)V

    .line 1074
    :try_start_0
    invoke-virtual {p0, v5, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 1076
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1077
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Heartbeat message sent [sock="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1081
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to send heartbeat message [sock="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1084
    :cond_2
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1086
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$302(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1088
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->interrupt()V

    goto/16 :goto_0

    .line 1091
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1092
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to send heartbeat message (node is disconnected): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1094
    .end local v5    # "sock0":Ljava/net/Socket;
    :cond_4
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1095
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received heartbeat response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1098
    :cond_5
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->hasMetrics()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1099
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    .line 1101
    .local v8, "tstamp":J
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1102
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;

    .line 1104
    .local v4, "metricsSet":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/UUID;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v10

    invoke-direct {p0, v7, v10, v8, v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->updateMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;J)V

    .line 1106
    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 1107
    .local v6, "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;>;"
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/UUID;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/cluster/ClusterMetrics;

    invoke-direct {p0, v7, v10, v8, v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->updateMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;J)V

    goto :goto_2

    .line 1079
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "metricsSet":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;
    .end local v6    # "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;>;"
    .end local v8    # "tstamp":J
    .restart local v5    # "sock0":Ljava/net/Socket;
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method private processNodeAddFinishedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;)V
    .locals 12
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0x5d

    const/16 v1, 0xa

    .line 933
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 937
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_2

    .line 938
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->topologyVersion()J

    move-result-wide v2

    .line 940
    .local v2, "topVer":J
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order(J)V

    .line 942
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v4, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->updateTopologyHistory(J)Ljava/util/Collection;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->notifyDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;)V

    .line 944
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1202(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Lorg/apache/ignite/spi/IgniteSpiException;)Lorg/apache/ignite/spi/IgniteSpiException;

    .line 946
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 948
    .end local v2    # "topVer":J
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding node add finished message (this message has already been processed) [msg="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", locNode="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 953
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 955
    .local v4, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-nez v4, :cond_4

    .line 956
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding node add finished message since node is not found [msg="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 962
    :cond_4
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->topologyVersion()J

    move-result-wide v2

    .line 964
    .restart local v2    # "topVer":J
    invoke-virtual {v4, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order(J)V

    .line 965
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible(Z)V

    .line 967
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNodeVer:Lorg/apache/ignite/lang/IgniteProductVersion;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->version()Lorg/apache/ignite/lang/IgniteProductVersion;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/ignite/lang/IgniteProductVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 968
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNodeVer:Lorg/apache/ignite/lang/IgniteProductVersion;

    invoke-virtual {v4, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->version(Lorg/apache/ignite/lang/IgniteProductVersion;)V

    .line 970
    :cond_5
    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->updateTopologyHistory(J)Ljava/util/Collection;

    move-result-object v5

    .line 972
    .local v5, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->pending:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_6

    .line 973
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding node add finished message (join process is not finished): "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, p0

    .line 979
    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->notifyDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;)V

    .line 981
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onNodeJoined()V

    goto/16 :goto_0
.end method

.method private processNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;)V
    .locals 14
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v8, 0x1

    .line 873
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->node()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v6

    .line 878
    .local v6, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v5

    .line 880
    .local v5, "newNodeId":Ljava/util/UUID;
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 881
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v10

    cmp-long v9, v10, v12

    if-lez v9, :cond_7

    .line 882
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topology()Ljava/util/Collection;

    move-result-object v7

    .line 884
    .local v7, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    if-eqz v7, :cond_6

    .line 885
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 886
    .local v4, "n":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order()J

    move-result-wide v10

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    .line 887
    invoke-virtual {v4, v8}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible(Z)V

    .line 889
    :cond_2
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v10

    invoke-interface {v9, v10, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 892
    .end local v4    # "n":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_3
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-interface {v9}, Ljava/util/NavigableMap;->clear()V

    .line 894
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topologyHistory()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 895
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topologyHistory()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/NavigableMap;->putAll(Ljava/util/Map;)V

    .line 897
    :cond_4
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoveryData()Ljava/util/Map;

    move-result-object v1

    .line 899
    .local v1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    if-eqz v1, :cond_5

    .line 900
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 901
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v11, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->exchange:Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/UUID;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v11, v5, v9, v10}, Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;->onExchange(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Map;)V

    goto :goto_2

    .line 904
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    :cond_5
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attributes()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->setAttributes(Ljava/util/Map;)V

    .line 905
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v9, v8}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible(Z)V

    goto/16 :goto_0

    .line 907
    .end local v1    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 908
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Discarding node added message with empty topology: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 910
    .end local v7    # "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :cond_7
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 911
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Discarding node added message (this message has already been processed) [msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", locNode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v11, v11, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 915
    :cond_8
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v5, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_a

    .line 917
    .local v8, "topChanged":Z
    :goto_3
    if-eqz v8, :cond_0

    .line 918
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 919
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Added new node to topology: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 921
    :cond_9
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->newNodeDiscoveryData()Ljava/util/Map;

    move-result-object v0

    .line 923
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 924
    iget-object v9, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v9, v9, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->exchange:Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;

    invoke-interface {v9, v5, v5, v0}, Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;->onExchange(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 915
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v8    # "topChanged":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_3
.end method

.method private processNodeFailedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;)V
    .locals 6
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    .prologue
    .line 1031
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$2100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->failedNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 1037
    .local v4, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-nez v4, :cond_2

    .line 1038
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding node failed message since node is not found [msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1044
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->topologyVersion()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->updateTopologyHistory(J)Ljava/util/Collection;

    move-result-object v5

    .line 1046
    .local v5, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->pending:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 1047
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding node failed message (join process is not finished): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1053
    :cond_3
    const/16 v1, 0xc

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->topologyVersion()J

    move-result-wide v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->notifyDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;)V

    .line 1055
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onNodeFailed()V

    goto/16 :goto_0
.end method

.method private processNodeLeftMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;)V
    .locals 7
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;

    .prologue
    .line 989
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 990
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received node left message for local node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 993
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v6

    .line 995
    .local v6, "leaveLatch0":Ljava/util/concurrent/CountDownLatch;
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez v6, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 997
    :cond_1
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1025
    .end local v6    # "leaveLatch0":Ljava/util/concurrent/CountDownLatch;
    :cond_2
    :goto_0
    return-void

    .line 1000
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1003
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 1005
    .local v4, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-nez v4, :cond_4

    .line 1006
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1007
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding node left message since node is not found [msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1012
    :cond_4
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->topologyVersion()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->updateTopologyHistory(J)Ljava/util/Collection;

    move-result-object v5

    .line 1014
    .local v5, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->pending:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1100(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 1015
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding node left message (join process is not finished): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1021
    :cond_5
    const/16 v1, 0xb

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->topologyVersion()J

    move-result-wide v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->notifyDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;)V

    .line 1023
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onNodeLeft()V

    goto/16 :goto_0
.end method

.method private updateMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;J)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "metrics"    # Lorg/apache/ignite/cluster/ClusterMetrics;
    .param p3, "tstamp"    # J

    .prologue
    .line 1158
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1159
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1161
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$2600(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v4, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 1163
    .local v4, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1164
    invoke-virtual {v4, p2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->setMetrics(Lorg/apache/ignite/cluster/ClusterMetrics;)V

    .line 1166
    invoke-virtual {v4, p3, p4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime(J)V

    .line 1168
    const/16 v1, 0xd

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)J

    move-result-wide v2

    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->allNodes()Ljava/util/Collection;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->notifyDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;)V

    .line 1172
    :cond_2
    :goto_1
    return-void

    .line 1161
    .end local v4    # "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$700(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object v4, v0

    goto :goto_0

    .line 1170
    .restart local v4    # "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1171
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received metrics from unknown node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateTopologyHistory(J)Ljava/util/Collection;
    .locals 7
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1179
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v1, p1, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$2702(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;J)J

    .line 1181
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->allNodes()Ljava/util/Collection;

    move-result-object v0

    .line 1183
    .local v0, "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1185
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-interface {v3}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1187
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->topHistSize:I

    if-le v1, v2, :cond_1

    .line 1190
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    .line 1192
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1193
    :cond_2
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->topHist:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->topHistSize:I

    if-le v1, v2, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1196
    :cond_3
    return-object v0
.end method


# virtual methods
.method protected processMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 3
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 837
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 838
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->verified()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 840
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageProcessingStarted(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 842
    instance-of v0, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 843
    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->processClientReconnectMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;)V

    .line 866
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageProcessingFinished(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 867
    return-void

    .line 845
    :cond_3
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->recon:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->pending:Z

    if-nez v0, :cond_4

    .line 846
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding message received during reconnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_4
    instance-of v0, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 851
    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->processNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;)V

    .line 861
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->ensured(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$1602(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;

    goto :goto_0

    .line 852
    :cond_6
    instance-of v0, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 853
    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->processNodeAddFinishedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;)V

    goto :goto_1

    .line 854
    :cond_7
    instance-of v0, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 855
    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->processNodeLeftMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;)V

    goto :goto_1

    .line 856
    :cond_8
    instance-of v0, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    if-eqz v0, :cond_9

    move-object v0, p1

    .line 857
    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->processNodeFailedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;)V

    goto :goto_1

    .line 858
    :cond_9
    instance-of v0, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 859
    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$MessageWorker;->processHeartbeatMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;)V

    goto :goto_1
.end method
