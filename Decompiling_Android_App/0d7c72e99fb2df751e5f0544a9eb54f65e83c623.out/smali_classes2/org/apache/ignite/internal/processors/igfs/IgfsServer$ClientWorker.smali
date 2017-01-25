.class Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "IgfsServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientWorker"
.end annotation


# instance fields
.field private endpoint:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

.field private node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

.field private ses:Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;I)V
    .locals 3
    .param p2, "endpoint"    # Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    .param p3, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 260
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .line 261
    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "igfs-client-worker-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 263
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->endpoint:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    .line 265
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->ses:Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;

    .line 267
    new-instance v0, Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-interface {p2}, Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;->outputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->out:Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

    .line 268
    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;)Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->out:Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->shutdown0(Ljava/lang/Throwable;)V

    return-void
.end method

.method private onFinished()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->out:Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 410
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->endpoint:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;->close()V

    .line 413
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->clientWorkers:Lorg/jsr166/ConcurrentLinkedDeque8;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/jsr166/ConcurrentLinkedDeque8;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->hnd:Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$300(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->ses:Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;->onClosed(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;)V

    .line 415
    :cond_0
    return-void
.end method

.method private shutdown0(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 393
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    if-eqz p1, :cond_0

    .line 395
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping client reader due to exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->endpoint:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->out:Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 400
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->endpoint:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;->close()V

    .line 401
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    new-instance v3, Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->endpoint:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    invoke-interface {v13}, Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;->inputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v3, v13}, Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 275
    .local v3, "dis":Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
    const/16 v13, 0x18

    new-array v7, v13, [B

    .line 277
    .local v7, "hdr":[B
    const/4 v5, 0x1

    .line 279
    .local v5, "first":Z
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v13

    if-nez v13, :cond_7

    .line 280
    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;->readFully([B)V

    .line 282
    const/4 v13, 0x0

    invoke-static {v7, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v10

    .line 284
    .local v10, "reqId":J
    const/16 v13, 0x8

    invoke-static {v7, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v9

    .line 286
    .local v9, "ordinal":I
    if-eqz v5, :cond_4

    .line 287
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-nez v13, :cond_1

    sget-object v13, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->HANDSHAKE:Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->ordinal()I

    move-result v13

    if-eq v9, v13, :cond_3

    .line 288
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IGFS IPC handshake failed [reqId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ordinal="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x5d

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->onFinished()V

    .line 373
    .end local v3    # "dis":Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
    .end local v5    # "first":Z
    .end local v7    # "hdr":[B
    .end local v9    # "ordinal":I
    .end local v10    # "reqId":J
    :goto_1
    return-void

    .line 294
    .restart local v3    # "dis":Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
    .restart local v5    # "first":Z
    .restart local v7    # "hdr":[B
    .restart local v9    # "ordinal":I
    .restart local v10    # "reqId":J
    :cond_3
    const/4 v5, 0x0

    .line 297
    :cond_4
    :try_start_1
    invoke-static {v9}, Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;->valueOf(I)Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v2

    .line 299
    .local v2, "cmd":Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->marsh:Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;
    invoke-static {v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;

    move-result-object v13

    invoke-virtual {v13, v2, v7, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->unmarshall(Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;[BLjava/io/ObjectInput;)Lorg/apache/ignite/internal/igfs/common/IgfsMessage;

    move-result-object v8

    .line 301
    .local v8, "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->hnd:Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;
    invoke-static {v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$300(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->ses:Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;

    invoke-interface {v13, v14, v8, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerHandler;->handleAsync(Lorg/apache/ignite/internal/processors/igfs/IgfsClientSession;Lorg/apache/ignite/internal/igfs/common/IgfsMessage;Ljava/io/DataInput;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v6

    .line 304
    .local v6, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    if-eqz v6, :cond_0

    .line 305
    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    if-eqz v13, :cond_6

    .line 309
    :try_start_2
    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 318
    .local v12, "res":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->out:Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

    monitor-enter v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 320
    :try_start_4
    invoke-virtual {v12}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v13

    invoke-static {v7, v10, v11, v13}, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->fillHeader([BJLorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;)[B

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->marsh:Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;
    invoke-static {v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->out:Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

    invoke-virtual {v13, v12, v7, v15}, Lorg/apache/ignite/internal/igfs/common/IgfsMarshaller;->marshall(Lorg/apache/ignite/internal/igfs/common/IgfsMessage;[BLjava/io/ObjectOutput;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->out:Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;->flush()V

    .line 325
    monitor-exit v14

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 327
    :catch_0
    move-exception v13

    move-object v4, v13

    .line 328
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->shutdown0(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 363
    .end local v2    # "cmd":Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .end local v3    # "dis":Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "first":Z
    .end local v6    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    .end local v7    # "hdr":[B
    .end local v8    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .end local v9    # "ordinal":I
    .end local v10    # "reqId":J
    .end local v12    # "res":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :catch_1
    move-exception v13

    .line 371
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->onFinished()V

    goto :goto_1

    .line 311
    .restart local v2    # "cmd":Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .restart local v3    # "dis":Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
    .restart local v5    # "first":Z
    .restart local v6    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    .restart local v7    # "hdr":[B
    .restart local v8    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .restart local v9    # "ordinal":I
    .restart local v10    # "reqId":J
    :catch_2
    move-exception v4

    .line 312
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_7
    new-instance v12, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    invoke-direct {v12}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;-><init>()V

    .line 314
    .restart local v12    # "res":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    move-object v0, v12

    check-cast v0, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;

    move-object v13, v0

    invoke-virtual {v13, v4}, Lorg/apache/ignite/internal/igfs/common/IgfsControlResponse;->error(Lorg/apache/ignite/IgniteCheckedException;)V
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 366
    .end local v2    # "cmd":Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .end local v3    # "dis":Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v5    # "first":Z
    .end local v6    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    .end local v7    # "hdr":[B
    .end local v8    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .end local v9    # "ordinal":I
    .end local v10    # "reqId":J
    .end local v12    # "res":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :catch_3
    move-exception v13

    move-object v4, v13

    .line 367
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->isCancelled()Z

    move-result v13

    if-nez v13, :cond_5

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v14, "Failed to read data from client (will close connection)"

    invoke-static {v13, v14, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 371
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->onFinished()V

    goto/16 :goto_1

    .line 332
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "cmd":Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .restart local v3    # "dis":Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
    .restart local v5    # "first":Z
    .restart local v6    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    .restart local v7    # "hdr":[B
    .restart local v8    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .restart local v9    # "ordinal":I
    .restart local v10    # "reqId":J
    :cond_6
    :try_start_9
    new-instance v13, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v10, v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;J)V

    invoke-interface {v6, v13}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 366
    .end local v2    # "cmd":Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .end local v3    # "dis":Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
    .end local v5    # "first":Z
    .end local v6    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    .end local v7    # "hdr":[B
    .end local v8    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .end local v9    # "ordinal":I
    .end local v10    # "reqId":J
    :catch_4
    move-exception v13

    move-object v4, v13

    goto :goto_4

    .line 371
    .restart local v3    # "dis":Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
    .restart local v5    # "first":Z
    .restart local v7    # "hdr":[B
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->onFinished()V

    goto/16 :goto_1

    .end local v3    # "dis":Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
    .end local v5    # "first":Z
    .end local v7    # "hdr":[B
    :catchall_1
    move-exception v13

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->onFinished()V

    throw v13

    .line 327
    .restart local v2    # "cmd":Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;
    .restart local v3    # "dis":Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
    .restart local v5    # "first":Z
    .restart local v6    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/igfs/common/IgfsMessage;>;"
    .restart local v7    # "hdr":[B
    .restart local v8    # "msg":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    .restart local v9    # "ordinal":I
    .restart local v10    # "reqId":J
    .restart local v12    # "res":Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
    :catch_5
    move-exception v13

    move-object v4, v13

    goto :goto_3
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cancel()V

    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->shutdown0(Ljava/lang/Throwable;)V

    .line 387
    return-void
.end method

.method public node(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 380
    return-void
.end method
