.class public abstract Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpDiscoverySpiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "MessageWorkerAdapter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bout:Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;

.field private volatile interrupted:Z

.field private final queue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 924
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 937
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    .line 938
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->access$100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 926
    new-instance v0, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;

    const v1, 0x19000

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->bout:Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;

    .line 929
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->queue:Ljava/util/concurrent/BlockingDeque;

    .line 940
    iget v0, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->threadPri:I

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->setPriority(I)V

    .line 941
    return-void
.end method


# virtual methods
.method addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 3
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 983
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 985
    :cond_0
    instance-of v0, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    if-eqz v0, :cond_2

    .line 986
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 990
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message has been added to queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 992
    :cond_1
    return-void

    .line 988
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected body()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 945
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message worker started [locNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->access$200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;)Lorg/apache/ignite/Ignite;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 948
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 949
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->queue:Ljava/util/concurrent/BlockingDeque;

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .line 951
    .local v0, "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->processMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_0

    .line 956
    .end local v0    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    :cond_1
    return-void
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->interrupted:Z

    .line 962
    invoke-super {p0}, Lorg/apache/ignite/spi/IgniteSpiThread;->interrupt()V

    .line 963
    return-void
.end method

.method public isInterrupted()Z
    .locals 1

    .prologue
    .line 967
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->interrupted:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/ignite/spi/IgniteSpiThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract processMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
.end method

.method queueSize()I
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v0

    return v0
.end method

.method protected final writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1007
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->bout:Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;->reset()V

    .line 1009
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->bout:Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Lorg/apache/ignite/internal/util/io/GridByteArrayOutputStream;)V

    .line 1010
    return-void
.end method
