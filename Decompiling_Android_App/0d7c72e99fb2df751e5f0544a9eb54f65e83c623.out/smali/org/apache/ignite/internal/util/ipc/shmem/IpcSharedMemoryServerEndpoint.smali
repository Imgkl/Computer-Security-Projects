.class public Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;
.super Ljava/lang/Object;
.source "IpcSharedMemoryServerEndpoint.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_IPC_PORT:I = 0x2904

.field public static final DFLT_SPACE_SIZE:I = 0x40000

.field public static final DFLT_TOKEN_DIR_PATH:Ljava/lang/String; = "ipc/shmem"

.field private static final GC_FREQ:J = 0x2710L

.field private static final LOCK_FILE_NAME:Ljava/lang/String; = "lock.file"

.field public static final OUT_OF_RESOURCES_MSG:Ljava/lang/String; = "Failed to allocate shared memory segment"

.field public static final TOKEN_FILE_NAME:Ljava/lang/String; = "gg-shmem-space-"

.field private static final tokIdxGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile closed:Z

.field private final endpoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private gcWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

.field private gridName:Ljava/lang/String;

.field private locNodeId:Ljava/util/UUID;

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private omitOutOfResourcesWarn:Z

.field private pid:I

.field private port:I

.field private size:I

.field private srvSock:Ljava/net/ServerSocket;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private tokDir:Ljava/io/File;

.field private tokDirPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->$assertionsDisabled:Z

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokIdxGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x2904

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->port:I

    .line 83
    const-string v0, "ipc/shmem"

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokDirPath:Ljava/lang/String;

    .line 86
    const/high16 v0, 0x40000

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->size:I

    .line 118
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->endpoints:Ljava/util/Collection;

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/IgniteLogger;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p2, "locNodeId"    # Ljava/util/UUID;
    .param p3, "gridName"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x2904

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->port:I

    .line 83
    const-string v0, "ipc/shmem"

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokDirPath:Ljava/lang/String;

    .line 86
    const/high16 v0, 0x40000

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->size:I

    .line 118
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->endpoints:Ljava/util/Collection;

    .line 137
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    .line 138
    iput-object p2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->locNodeId:Ljava/util/UUID;

    .line 139
    iput-object p3, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->gridName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->endpoints:Ljava/util/Collection;

    return-object v0
.end method

.method private inOutToken(II)Lorg/apache/ignite/internal/util/lang/IgnitePair;
    .locals 8
    .param p1, "pid"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/ignite/internal/util/lang/IgnitePair",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    :cond_0
    sget-object v2, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokIdxGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 365
    .local v0, "idx":J
    sget-object v2, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokIdxGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x2

    add-long/2addr v4, v0

    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gg-shmem-space-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gg-shmem-space-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->pair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/IgnitePair;

    move-result-object v2

    return-object v2
.end method

.method private injectResources(Lorg/apache/ignite/Ignite;)V
    .locals 1
    .param p1, "ignite"    # Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 331
    if-eqz p1, :cond_0

    .line 333
    invoke-interface {p1}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->gridName:Ljava/lang/String;

    .line 334
    invoke-interface {p1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->locNodeId:Ljava/util/UUID;

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->gridName:Ljava/lang/String;

    .line 339
    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->locNodeId:Ljava/util/UUID;

    goto :goto_0
.end method

.method private sendErrorResponse(Ljava/io/ObjectOutput;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .param p2, "err"    # Ljava/lang/Exception;

    .prologue
    .line 349
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;

    invoke-direct {v1, p2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;-><init>(Ljava/lang/Exception;)V

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Failed to send error response to client."

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public accept()Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 197
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_13

    .line 198
    const/16 v25, 0x0

    .line 200
    .local v25, "sock":Ljava/net/Socket;
    const/4 v12, 0x0

    .line 203
    .local v12, "accepted":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->srvSock:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v25

    .line 205
    const/4 v12, 0x1

    .line 207
    invoke-virtual/range {v25 .. v25}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    .line 208
    .local v18, "inputStream":Ljava/io/InputStream;
    new-instance v16, Ljava/io/ObjectInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    .local v16, "in":Ljava/io/ObjectInputStream;
    new-instance v20, Ljava/io/ObjectOutputStream;

    invoke-virtual/range {v25 .. v25}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    .local v20, "out":Ljava/io/ObjectOutputStream;
    const/16 v17, 0x0

    .line 214
    .local v17, "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    const/16 v21, 0x0

    .line 216
    .local v21, "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    const/4 v14, 0x1

    .line 219
    .local v14, "err":Z
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;

    .line 221
    .local v23, "req":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 224
    :cond_0
    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;->pid()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->size:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->inOutToken(II)Lorg/apache/ignite/internal/util/lang/IgnitePair;

    move-result-object v22

    .line 226
    .local v22, "p":Lorg/apache/ignite/internal/util/lang/IgnitePair;, "Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/String;>;"
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/util/lang/IgnitePair;->get1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 227
    .local v3, "file1":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/util/lang/IgnitePair;->get2()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 229
    .local v15, "file2":Ljava/lang/String;
    sget-boolean v5, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/ignite/internal/util/ipc/shmem/IpcOutOfSystemResourcesException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 267
    .end local v3    # "file1":Ljava/lang/String;
    .end local v15    # "file2":Ljava/lang/String;
    .end local v22    # "p":Lorg/apache/ignite/internal/util/lang/IgnitePair;, "Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/String;>;"
    .end local v23    # "req":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;
    :catch_0
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .local v4, "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v17

    .line 268
    .end local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .local v2, "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .local v13, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_1
    :try_start_2
    invoke-static {v13}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->linkError(Ljava/lang/UnsatisfiedLinkError;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v5

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    .end local v13    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v14, :cond_2

    .line 300
    if-eqz v2, :cond_1

    .line 301
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 304
    :cond_1
    if-eqz v4, :cond_2

    .line 305
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    :cond_2
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v14    # "err":Z
    .end local v16    # "in":Ljava/io/ObjectInputStream;
    .end local v18    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v13

    .line 310
    .local v13, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_11

    if-nez v12, :cond_11

    .line 311
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to accept incoming connection."

    invoke-direct {v5, v6, v13}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 317
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 230
    .restart local v3    # "file1":Ljava/lang/String;
    .restart local v14    # "err":Z
    .restart local v15    # "file2":Ljava/lang/String;
    .restart local v16    # "in":Ljava/io/ObjectInputStream;
    .restart local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    .restart local v20    # "out":Ljava/io/ObjectOutputStream;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v22    # "p":Lorg/apache/ignite/internal/util/lang/IgnitePair;, "Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/String;>;"
    .restart local v23    # "req":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;
    :cond_3
    :try_start_5
    sget-boolean v5, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->$assertionsDisabled:Z

    if-nez v5, :cond_7

    if-nez v15, :cond_7

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/ignite/internal/util/ipc/shmem/IpcOutOfSystemResourcesException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 270
    .end local v3    # "file1":Ljava/lang/String;
    .end local v15    # "file2":Ljava/lang/String;
    .end local v22    # "p":Lorg/apache/ignite/internal/util/lang/IgnitePair;, "Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/String;>;"
    .end local v23    # "req":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;
    :catch_2
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v17

    .line 271
    .end local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v13    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 272
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to process incoming connection (was connection closed by another party):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 299
    :cond_4
    if-eqz v14, :cond_6

    .line 300
    if-eqz v2, :cond_5

    .line 301
    :try_start_7
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 304
    :cond_5
    if-eqz v4, :cond_6

    .line 305
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 317
    .end local v13    # "e":Ljava/io/IOException;
    :cond_6
    :goto_4
    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 233
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v3    # "file1":Ljava/lang/String;
    .restart local v15    # "file2":Ljava/lang/String;
    .restart local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v22    # "p":Lorg/apache/ignite/internal/util/lang/IgnitePair;, "Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/String;>;"
    .restart local v23    # "req":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;
    :cond_7
    :try_start_8
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 234
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 236
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 237
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Created token files: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 239
    :cond_8
    new-instance v2, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;->pid()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->pid:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->size:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;-><init>(Ljava/lang/String;IIIZLorg/apache/ignite/IgniteLogger;)V
    :try_end_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/ignite/internal/util/ipc/shmem/IpcOutOfSystemResourcesException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 247
    .end local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :try_start_9
    new-instance v4, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->pid:I

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;->pid()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->size:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    move-object v5, v15

    invoke-direct/range {v4 .. v10}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;-><init>(Ljava/lang/String;IIIZLorg/apache/ignite/IgniteLogger;)V
    :try_end_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Lorg/apache/ignite/internal/util/ipc/shmem/IpcOutOfSystemResourcesException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 255
    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :try_start_a
    new-instance v24, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;-><init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;Lorg/apache/ignite/IgniteLogger;)V

    .line 258
    .local v24, "ret":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;
    new-instance v5, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->sharedMemoryId()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->sharedMemoryId()I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->pid:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->size:I

    move-object v6, v15

    move-object v8, v3

    invoke-direct/range {v5 .. v11}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 261
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v14, 0x1

    .line 263
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->endpoints:Ljava/util/Collection;

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_c
    .catch Lorg/apache/ignite/internal/util/ipc/shmem/IpcOutOfSystemResourcesException; {:try_start_a .. :try_end_a} :catch_a
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 299
    if-eqz v14, :cond_a

    .line 300
    if-eqz v2, :cond_9

    .line 301
    :try_start_b
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 304
    :cond_9
    if-eqz v4, :cond_a

    .line 305
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 317
    :cond_a
    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    return-object v24

    .line 261
    :cond_b
    const/4 v14, 0x0

    goto :goto_5

    .line 275
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v3    # "file1":Ljava/lang/String;
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v15    # "file2":Ljava/lang/String;
    .end local v22    # "p":Lorg/apache/ignite/internal/util/lang/IgnitePair;, "Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/String;>;"
    .end local v23    # "req":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;
    .end local v24    # "ret":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;
    .restart local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_3
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v17

    .line 276
    .end local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .local v13, "e":Ljava/lang/ClassNotFoundException;
    :goto_6
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to process incoming connection."

    invoke-static {v5, v6, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 299
    if-eqz v14, :cond_6

    .line 300
    if-eqz v2, :cond_c

    .line 301
    :try_start_d
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 304
    :cond_c
    if-eqz v4, :cond_6

    .line 305
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_4

    .line 278
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v13    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_4
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v17

    .line 279
    .end local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .local v13, "e":Ljava/lang/ClassCastException;
    :goto_7
    :try_start_e
    const-string v19, "Failed to process incoming connection (most probably, shared memory rest endpoint has been configured by mistake)."

    .line 282
    .local v19, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->sendErrorResponse(Ljava/io/ObjectOutput;Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 299
    if-eqz v14, :cond_6

    .line 300
    if-eqz v2, :cond_d

    .line 301
    :try_start_f
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 304
    :cond_d
    if-eqz v4, :cond_6

    .line 305
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_4

    .line 286
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v13    # "e":Ljava/lang/ClassCastException;
    .end local v19    # "msg":Ljava/lang/String;
    .restart local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_5
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v17

    .line 287
    .end local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .local v13, "e":Lorg/apache/ignite/internal/util/ipc/shmem/IpcOutOfSystemResourcesException;
    :goto_8
    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->omitOutOfResourcesWarn:Z

    if-nez v5, :cond_e

    .line 288
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    const-string v7, "Failed to allocate shared memory segment"

    invoke-static {v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 290
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->sendErrorResponse(Ljava/io/ObjectOutput;Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 299
    if-eqz v14, :cond_6

    .line 300
    if-eqz v2, :cond_f

    .line 301
    :try_start_11
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 304
    :cond_f
    if-eqz v4, :cond_6

    .line 305
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_4

    .line 292
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v13    # "e":Lorg/apache/ignite/internal/util/ipc/shmem/IpcOutOfSystemResourcesException;
    .restart local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_6
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v17

    .line 293
    .end local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .local v13, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_9
    :try_start_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to process incoming shared memory connection."

    invoke-static {v5, v13, v6}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->sendErrorResponse(Ljava/io/ObjectOutput;Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 299
    if-eqz v14, :cond_6

    .line 300
    if-eqz v2, :cond_10

    .line 301
    :try_start_13
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 304
    :cond_10
    if-eqz v4, :cond_6

    .line 305
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_4

    .line 313
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v14    # "err":Z
    .end local v16    # "in":Ljava/io/ObjectInputStream;
    .end local v18    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "out":Ljava/io/ObjectOutputStream;
    .local v13, "e":Ljava/io/IOException;
    :cond_11
    :try_start_14
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->closed:Z

    if-nez v5, :cond_12

    .line 314
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to process incoming shared memory connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 317
    :cond_12
    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 321
    .end local v12    # "accepted":Z
    .end local v13    # "e":Ljava/io/IOException;
    .end local v25    # "sock":Ljava/net/Socket;
    :cond_13
    new-instance v5, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    const-string v6, "Socket accept was interrupted."

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 299
    .restart local v12    # "accepted":Z
    .restart local v14    # "err":Z
    .restart local v16    # "in":Ljava/io/ObjectInputStream;
    .restart local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    .restart local v20    # "out":Ljava/io/ObjectOutputStream;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v25    # "sock":Ljava/net/Socket;
    :catchall_2
    move-exception v5

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v17

    .end local v17    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto/16 :goto_2

    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v3    # "file1":Ljava/lang/String;
    .restart local v15    # "file2":Ljava/lang/String;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v22    # "p":Lorg/apache/ignite/internal/util/lang/IgnitePair;, "Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/String;>;"
    .restart local v23    # "req":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;
    :catchall_3
    move-exception v5

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto/16 :goto_2

    .line 292
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_7
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto :goto_9

    :catch_8
    move-exception v13

    goto :goto_9

    .line 286
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_9
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto/16 :goto_8

    :catch_a
    move-exception v13

    goto/16 :goto_8

    .line 278
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_b
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto/16 :goto_7

    :catch_c
    move-exception v13

    goto/16 :goto_7

    .line 275
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_d
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto/16 :goto_6

    :catch_e
    move-exception v13

    goto/16 :goto_6

    .line 270
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_f
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto/16 :goto_3

    :catch_10
    move-exception v13

    goto/16 :goto_3

    .line 267
    .end local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_11
    move-exception v13

    move-object/from16 v4, v21

    .end local v21    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v4    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto/16 :goto_1

    :catch_12
    move-exception v13

    goto/16 :goto_1
.end method

.method public close()V
    .locals 4

    .prologue
    .line 437
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->closed:Z

    .line 439
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->srvSock:Ljava/net/ServerSocket;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 441
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->gcWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->gcWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cancel(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 446
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    .line 449
    .local v1, "interrupted":Z
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->gcWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    if-eqz v1, :cond_0

    .line 456
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 459
    .end local v1    # "interrupted":Z
    :cond_0
    :goto_0
    return-void

    .line 451
    .restart local v1    # "interrupted":Z
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Interrupted when stopping GC worker."

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    if-eqz v1, :cond_0

    .line 456
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 455
    .end local v0    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 456
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v2
.end method

.method public getHost()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->port:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->size:I

    return v0
.end method

.method public getTokenDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public isManagement()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public omitOutOfResourcesWarning(Z)V
    .locals 0
    .param p1, "omitOutOfResourcesWarn"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->omitOutOfResourcesWarn:Z

    .line 145
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 396
    iput p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->port:I

    .line 397
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 432
    iput p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->size:I

    .line 433
    return-void
.end method

.method public setTokenDirectoryPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokDirPath"    # Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokDirPath:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public setupConfiguration(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "endpointCfg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 475
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 495
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid property \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :catch_0
    move-exception v2

    .line 499
    .local v2, "t":Ljava/lang/Throwable;
    instance-of v3, v2, Lorg/apache/ignite/IgniteCheckedException;

    if-eqz v3, :cond_1

    .line 500
    throw v2

    .line 475
    .end local v2    # "t":Ljava/lang/Throwable;
    :sswitch_0
    :try_start_1
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "host"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "management"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "port"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "size"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v5, "tokenDirectoryPath"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    .line 483
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->setPort(I)V

    goto/16 :goto_0

    .line 487
    :pswitch_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->setSize(I)V

    goto/16 :goto_0

    .line 491
    :pswitch_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->setTokenDirectoryPath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 502
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' of the property \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 506
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void

    .line 475
    :sswitch_data_0
    .sparse-switch
        -0x6b4987bd -> :sswitch_2
        0x30f5a8 -> :sswitch_1
        0x349881 -> :sswitch_3
        0x35e001 -> :sswitch_4
        0x368f3a -> :sswitch_0
        0x27bd2ab9 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->load()V

    .line 151
    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->pid()I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->pid:I

    .line 153
    iget v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->pid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 154
    new-instance v2, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;

    const-string v3, "Failed to get PID of the current process."

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_0
    iget v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->size:I

    if-gtz v2, :cond_1

    .line 157
    new-instance v2, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Space size should be positive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokDirPath:Ljava/lang/String;

    .line 161
    .local v1, "tokDirPath":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    new-instance v2, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;

    const-string v3, "Token directory path is empty."

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->locNodeId:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->pid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveWorkDirectory(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokDir:Ljava/io/File;

    .line 168
    iget v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->port:I

    if-lez v2, :cond_3

    iget v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->port:I

    const v3, 0xffff

    if-lt v2, v3, :cond_4

    .line 169
    :cond_3
    new-instance v2, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Port value is illegal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_4
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->srvSock:Ljava/net/ServerSocket;

    .line 175
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->srvSock:Ljava/net/ServerSocket;

    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v4, "127.0.0.1"

    iget v5, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->port:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    new-instance v2, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->gridName:Ljava/lang/String;

    const-string v4, "ipc-shmem-gc"

    iget-object v5, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v2, p0, v3, v4, v5}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;-><init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->gcWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    .line 187
    new-instance v2, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->gcWorker:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-direct {v2, v3}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    invoke-virtual {v2}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 189
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IPC shared memory server endpoint started [port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tokDir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->tokDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 192
    :cond_5
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->srvSock:Ljava/net/ServerSocket;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 181
    new-instance v2, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind shared memory IPC endpoint (is port already in use?): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
