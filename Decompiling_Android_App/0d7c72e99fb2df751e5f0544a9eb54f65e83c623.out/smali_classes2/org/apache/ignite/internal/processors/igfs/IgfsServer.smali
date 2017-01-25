.class public Lorg/apache/ignite/internal/processors/igfs/IgfsServer;
.super Ljava/lang/Object;
.source "IgfsServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/igfs/IgfsServer$1;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private acceptWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;

.field private clientWorkers:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final endpointCfg:Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

.field private hnd:Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;

.field private final igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final marsh:Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;

.field private final mgmt:Z

.field private srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Z)V
    .locals 2
    .param p1, "igfsCtx"    # Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .param p2, "endpointCfg"    # Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    .param p3, "mgmt"    # Z

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->clientWorkers:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 76
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->endpointCfg:Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    .line 80
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .line 81
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->mgmt:Z

    .line 83
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->log:Lorg/apache/ignite/IgniteLogger;

    .line 85
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->marsh:Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->marsh:Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->hnd:Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/jsr166/ConcurrentLinkedDeque8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->clientWorkers:Lorg/jsr166/ConcurrentLinkedDeque8;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    return-object v0
.end method

.method private static createEndpoint(Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Z)Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
    .locals 5
    .param p0, "endpointCfg"    # Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    .param p1, "mgmt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 147
    const-string v2, "endpointCfg"

    invoke-static {p0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->getType()Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    move-result-object v1

    .line 151
    .local v1, "typ":Lorg/apache/ignite/igfs/IgfsIpcEndpointType;
    if-nez v1, :cond_0

    .line 152
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failed to create server endpoint (type is not specified)"

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_0
    sget-object v2, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$1;->$SwitchMap$org$apache$ignite$igfs$IgfsIpcEndpointType:[I

    invoke-virtual {v1}, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 174
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create server endpoint (type is unknown): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :pswitch_0
    new-instance v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;-><init>()V

    .line 158
    .local v0, "endpoint":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;
    invoke-virtual {p0}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->setPort(I)V

    .line 159
    invoke-virtual {p0}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->getMemorySize()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->setSize(I)V

    .line 160
    invoke-virtual {p0}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->getTokenDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->setTokenDirectoryPath(Ljava/lang/String;)V

    .line 171
    .end local v0    # "endpoint":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;
    :goto_0
    return-object v0

    .line 165
    :pswitch_1
    new-instance v0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;-><init>()V

    .line 167
    .local v0, "endpoint":Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;
    invoke-virtual {p0}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->setHost(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->setPort(I)V

    .line 169
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->setManagement(Z)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getIpcServerEndpoint()Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    return-object v0
.end method

.method public onKernalStart()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->acceptWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;

    invoke-direct {v0, v1}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    invoke-virtual {v0}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 185
    :cond_0
    return-void
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->endpointCfg:Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->mgmt:Z

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->createEndpoint(Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;Z)Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    .line 96
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isWindows()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    instance-of v3, v3, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    if-eqz v3, :cond_0

    .line 97
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " should not be configured on Windows (configure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    instance-of v3, v3, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;

    if-eqz v3, :cond_1

    .line 102
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    check-cast v2, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;

    .line 104
    .local v2, "srvEndpoint0":Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->mgmt:Z

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->setManagement(Z)V

    .line 106
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 107
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->mgmt:Z

    if-eqz v3, :cond_3

    .line 108
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLocalHost()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "locHostName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->setHost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1    # "locHostName":Ljava/lang/String;
    .end local v2    # "srvEndpoint0":Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectGeneric(Ljava/lang/Object;)V

    .line 125
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    invoke-interface {v3}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->start()V

    .line 128
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    invoke-interface {v3}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->getPort()I

    move-result v3

    if-ltz v3, :cond_2

    .line 129
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    invoke-interface {v4}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->getPort()I

    move-result v4

    sget-object v5, Lorg/apache/ignite/spi/IgnitePortProtocol;->TCP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V

    .line 131
    :cond_2
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsIpcHandler;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;)V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->hnd:Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;

    .line 134
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->acceptWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;

    .line 135
    return-void

    .line 113
    .restart local v1    # "locHostName":Ljava/lang/String;
    .restart local v2    # "srvEndpoint0":Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve local host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "locHostName":Ljava/lang/String;
    :cond_3
    const-string v3, "127.0.0.1"

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->setHost(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 7
    .param p1, "cancel"    # Z

    .prologue
    .line 194
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    if-nez v3, :cond_0

    .line 226
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->acceptWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cancel(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 200
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->acceptWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    .line 204
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->hnd:Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;->stop()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->clientWorkers:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v3}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;

    .line 212
    .local v2, "worker":Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cancel(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    goto :goto_2

    .line 206
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "worker":Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Failed to stop IGFS server handler (will close client connections anyway)."

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 214
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->clientWorkers:Lorg/jsr166/ConcurrentLinkedDeque8;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z

    .line 217
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    invoke-interface {v3}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->getPort()I

    move-result v3

    if-ltz v3, :cond_2

    .line 218
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    invoke-interface {v4}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->getPort()I

    move-result v4

    sget-object v5, Lorg/apache/ignite/spi/IgnitePortProtocol;->TCP:Lorg/apache/ignite/spi/IgnitePortProtocol;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->deregisterPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V

    .line 221
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->cleanupGeneric(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Failed to cleanup server endpoint."

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
