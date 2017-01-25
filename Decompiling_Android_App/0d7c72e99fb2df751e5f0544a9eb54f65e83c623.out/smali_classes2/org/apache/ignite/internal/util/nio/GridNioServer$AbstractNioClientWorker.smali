.class abstract Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridNioServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/nio/GridNioServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractNioClientWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final changeReqs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final idx:I

.field private selector:Ljava/nio/channels/Selector;

.field final synthetic this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1121
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p2, "idx"    # I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "gridName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1139
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.AbstractNioClientWorker;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .line 1140
    invoke-direct {p0, p3, p4, p5}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 1123
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->changeReqs:Ljava/util/Queue;

    .line 1142
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1400(Lorg/apache/ignite/internal/util/nio/GridNioServer;Ljava/net/SocketAddress;)Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    .line 1144
    iput p2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->idx:I

    .line 1145
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .prologue
    .line 1121
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->offer(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V

    return-void
.end method

.method private bodyInternal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.AbstractNioClientWorker;"
    const/4 v8, 0x0

    .line 1194
    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1197
    :cond_0
    :goto_1
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->changeReqs:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .local v3, "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;
    if-eqz v3, :cond_7

    .line 1198
    sget-object v5, Lorg/apache/ignite/internal/util/nio/GridNioServer$1;->$SwitchMap$org$apache$ignite$internal$util$nio$GridNioServer$NioOperation:[I

    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$1600(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 1200
    :pswitch_0
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->register(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1275
    .end local v3    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;
    :catch_0
    move-exception v0

    .line 1276
    .local v0, "e":Ljava/nio/channels/ClosedByInterruptException;
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1277
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Closing selector due to thread interruption: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/channels/ClosedByInterruptException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1286
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1287
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1288
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Closing all connected client sockets."

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1291
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 1292
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    invoke-virtual {p0, v5, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z

    goto :goto_2

    .line 1207
    .end local v0    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v3    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;
    :pswitch_1
    :try_start_2
    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$1700(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->key()Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 1209
    .restart local v2    # "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1210
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v5

    or-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 1213
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->bytesSent(I)V
    :try_end_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1279
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    .end local v3    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;
    :catch_1
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/nio/channels/ClosedSelectorException;
    :try_start_3
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Selector got closed while active."

    invoke-direct {v5, v6, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1286
    .end local v0    # "e":Ljava/nio/channels/ClosedSelectorException;
    :catchall_0
    move-exception v5

    move-object v6, v5

    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1287
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1288
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v7, "Closing all connected client sockets."

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1291
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 1292
    .restart local v2    # "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    invoke-virtual {p0, v5, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z

    goto :goto_3

    .line 1220
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v3    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;
    :pswitch_2
    :try_start_4
    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$1700(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1221
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1282
    .end local v3    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;
    :catch_2
    move-exception v0

    .line 1283
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to select events on selector."

    invoke-direct {v5, v6, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1223
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;
    :cond_4
    const/4 v5, 0x0

    :try_start_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1229
    :pswitch_3
    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$1700(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->key()Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 1231
    .restart local v2    # "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1232
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v5

    and-int/lit8 v5, v5, -0x2

    invoke-virtual {v2, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 1234
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 1236
    .local v4, "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->readsPaused(Z)V

    .line 1238
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1241
    .end local v4    # "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    :cond_5
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1247
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    :pswitch_4
    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$1700(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->key()Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 1249
    .restart local v2    # "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1250
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v5

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 1252
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 1254
    .restart local v4    # "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->readsPaused(Z)V

    .line 1256
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1259
    .end local v4    # "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    :cond_6
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1267
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    :cond_7
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    move-result v5

    if-lez v5, :cond_8

    .line 1269
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->processSelectedKeys(Ljava/util/Set;)V

    .line 1271
    :cond_8
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->checkIdle(Ljava/lang/Iterable;)V
    :try_end_6
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1286
    .end local v3    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;
    :cond_9
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1287
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1288
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Closing all connected client sockets."

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1291
    :cond_a
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 1292
    .restart local v2    # "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    invoke-virtual {p0, v5, v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z

    goto :goto_4

    .line 1294
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    :cond_b
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1295
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Closing NIO selector."

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1297
    :cond_c
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/nio/channels/Selector;Lorg/apache/ignite/IgniteLogger;)V

    .line 1300
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_5
    return-void

    .line 1294
    .local v0, "e":Ljava/nio/channels/ClosedByInterruptException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_e
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1295
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Closing NIO selector."

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1297
    :cond_f
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/nio/channels/Selector;Lorg/apache/ignite/IgniteLogger;)V

    goto :goto_5

    .line 1294
    .end local v0    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :cond_10
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1295
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v7, "Closing NIO selector."

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1297
    :cond_11
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v5, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/nio/channels/Selector;Lorg/apache/ignite/IgniteLogger;)V

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_12
    throw v6

    .line 1198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkIdle(Ljava/lang/Iterable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1351
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.AbstractNioClientWorker;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/nio/channels/SelectionKey;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    .line 1353
    .local v6, "now":J
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 1354
    .local v4, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 1357
    .local v5, "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    :try_start_0
    iget-object v10, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v10}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1800(Lorg/apache/ignite/internal/util/nio/GridNioServer;)J

    move-result-wide v8

    .line 1360
    .local v8, "writeTimeout0":J
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v10

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_1

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->lastSendTime()J

    move-result-wide v10

    sub-long v10, v6, v10

    cmp-long v10, v10, v8

    if-lez v10, :cond_1

    .line 1362
    iget-object v10, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v10}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 1365
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->bytesSent(I)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1380
    .end local v8    # "writeTimeout0":J
    :catch_0
    move-exception v0

    .line 1381
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0, v5, v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z

    goto :goto_0

    .line 1370
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v8    # "writeTimeout0":J
    :cond_1
    :try_start_1
    iget-object v10, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v10}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1900(Lorg/apache/ignite/internal/util/nio/GridNioServer;)J

    move-result-wide v2

    .line 1372
    .local v2, "idleTimeout0":J
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->lastReceiveTime()J

    move-result-wide v10

    sub-long v10, v6, v10

    cmp-long v10, v10, v2

    if-lez v10, :cond_0

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->lastSendScheduleTime()J

    move-result-wide v10

    sub-long v10, v6, v10

    cmp-long v10, v10, v2

    if-lez v10, :cond_0

    .line 1373
    iget-object v10, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v10}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 1376
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->resetSendScheduleTime()V

    .line 1377
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->bytesReceived(I)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1384
    .end local v2    # "idleTimeout0":J
    .end local v4    # "key":Ljava/nio/channels/SelectionKey;
    .end local v5    # "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .end local v8    # "writeTimeout0":J
    :cond_2
    return-void
.end method

.method private offer(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V
    .locals 1
    .param p1, "req"    # Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .prologue
    .line 1181
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.AbstractNioClientWorker;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->changeReqs:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1183
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 1184
    return-void
.end method

.method private processSelectedKeys(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedByInterruptException;
        }
    .end annotation

    .prologue
    .line 1309
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.AbstractNioClientWorker;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1310
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing keys in client worker: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 1312
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1313
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 1315
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1318
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1321
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 1323
    .local v3, "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    sget-boolean v4, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1326
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1327
    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->processRead(Ljava/nio/channels/SelectionKey;)V

    .line 1329
    :cond_3
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1330
    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->processWrite(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1332
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Ljava/nio/channels/ClosedByInterruptException;
    throw v0

    .line 1336
    .end local v0    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :catch_1
    move-exception v0

    .line 1337
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1338
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to process selector key (will close): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1340
    :cond_4
    new-instance v4, Lorg/apache/ignite/internal/util/nio/GridNioException;

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/util/nio/GridNioException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z

    goto :goto_0

    .line 1343
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    .end local v3    # "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    :cond_5
    return-void
.end method

.method private register(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1392
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.AbstractNioClientWorker;"
    .local p1, "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<Lorg/apache/ignite/internal/util/nio/GridNioSession;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1394
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$2000(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Ljava/nio/channels/SocketChannel;

    move-result-object v17

    .line 1396
    .local v17, "sockCh":Ljava/nio/channels/SocketChannel;
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v17, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1398
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v16

    .line 1401
    .local v16, "sock":Ljava/net/Socket;
    const/4 v9, 0x0

    .line 1402
    .local v9, "writeBuf":Ljava/nio/ByteBuffer;
    const/4 v10, 0x0

    .line 1404
    .local v10, "readBuf":Ljava/nio/ByteBuffer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2100(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$300(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 1407
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$300(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 1410
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$400(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$400(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1414
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->idx:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/SocketChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/SocketChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->accepted()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v8}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2200(Lorg/apache/ignite/internal/util/nio/GridNioServer;)I

    move-result v8

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;-><init>(Lorg/apache/ignite/IgniteLogger;ILorg/apache/ignite/internal/util/nio/GridNioFilterChain;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ZILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 1425
    .local v1, "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->meta()Ljava/util/Map;

    move-result-object v15

    .line 1427
    .local v15, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;*>;"
    if-eqz v15, :cond_5

    .line 1428
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1429
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;*>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 1452
    .end local v1    # "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;*>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;*>;"
    :catch_0
    move-exception v11

    .line 1453
    .local v11, "e":Ljava/nio/channels/ClosedChannelException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register accepted socket channel to selector (channel was closed): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1459
    .end local v11    # "e":Ljava/nio/channels/ClosedChannelException;
    :goto_3
    return-void

    .line 1405
    :cond_3
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    goto/16 :goto_0

    .line 1407
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    goto/16 :goto_1

    .line 1432
    .restart local v1    # "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .restart local v15    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;*>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v14

    .line 1434
    .local v14, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1, v14}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->key(Ljava/nio/channels/SelectionKey;)V

    .line 1436
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->accepted()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->resend(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 1439
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2300(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1442
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 1444
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1446
    :catch_1
    move-exception v11

    .line 1447
    .local v11, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z

    .line 1449
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 1456
    .end local v1    # "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .end local v11    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v14    # "key":Ljava/nio/channels/SelectionKey;
    .end local v15    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;*>;"
    :catch_2
    move-exception v11

    .line 1457
    .local v11, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to get socket addresses."

    invoke-static {v2, v3, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method protected body()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 1150
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.AbstractNioClientWorker;"
    const/4 v1, 0x0

    .line 1151
    .local v1, "reset":Z
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_2

    .line 1153
    if-eqz v1, :cond_1

    .line 1154
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1400(Lorg/apache/ignite/internal/util/nio/GridNioServer;Ljava/net/SocketAddress;)Ljava/nio/channels/Selector;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->selector:Ljava/nio/channels/Selector;

    .line 1156
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->bodyInternal()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1160
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to read data from remote connection (will wait for 2000ms)."

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1163
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1165
    const/4 v1, 0x1

    goto :goto_0

    .line 1170
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Caught unhandled exception in NIO worker thread (restart the node)."

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1173
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method protected close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z
    .locals 11
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .param p2, "e"    # Lorg/apache/ignite/IgniteCheckedException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.AbstractNioClientWorker;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1469
    if-eqz p2, :cond_0

    .line 1471
    new-array v6, v7, [Ljava/lang/Class;

    const-class v9, Ljava/io/IOException;

    aput-object v9, v6, v8

    invoke-virtual {p2, v6}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1472
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Closing NIO session because of unhandled exception [cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", msg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1478
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$2300(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->remove(Ljava/lang/Object;)Z

    .line 1480
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->key()Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 1483
    .local v3, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    .line 1485
    .local v5, "sock":Ljava/net/Socket;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->setClosed()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1486
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$300(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1487
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->writeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1488
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->writeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    check-cast v6, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v6}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v6

    invoke-virtual {v6}, Lsun/misc/Cleaner;->clean()V

    .line 1490
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->readBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1491
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->readBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    check-cast v6, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v6}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v6

    invoke-virtual {v6}, Lsun/misc/Cleaner;->clean()V

    .line 1496
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1503
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1510
    :goto_2
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/nio/channels/SelectionKey;Lorg/apache/ignite/IgniteLogger;)V

    .line 1511
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 1514
    if-eqz p2, :cond_3

    .line 1515
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    .line 1518
    :cond_3
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1524
    :goto_3
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$700()I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->removeMeta(I)Ljava/lang/Object;

    .line 1527
    sget-object v6, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->NIO_OPERATION:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->removeMeta(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .line 1529
    .local v2, "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->recoveryDescriptor()Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    move-result-object v4

    .line 1531
    .local v4, "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    if-eqz v4, :cond_8

    .line 1534
    :cond_4
    :goto_4
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->pollFuture()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    move-object v2, v0

    if-eqz v2, :cond_6

    .line 1535
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->skipRecovery()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1536
    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$100(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1540
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->release()V

    throw v6

    .line 1475
    .end local v2    # "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .end local v4    # "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .end local v5    # "sock":Ljava/net/Socket;
    :cond_5
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v9, "Closing NIO session because of unhandled exception."

    invoke-static {v6, v9, p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1510
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v5    # "sock":Ljava/net/Socket;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/nio/channels/SelectionKey;Lorg/apache/ignite/IgniteLogger;)V

    .line 1511
    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v5, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v6

    .line 1520
    :catch_0
    move-exception v1

    .line 1521
    .local v1, "e1":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v6

    invoke-virtual {v6, p1, v1}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    goto :goto_3

    .line 1540
    .end local v1    # "e1":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    .restart local v4    # "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    :cond_6
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->release()V

    :cond_7
    move v6, v7

    .line 1554
    .end local v2    # "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    .end local v4    # "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    :goto_5
    return v6

    .line 1544
    .restart local v2    # "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    .restart local v4    # "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    :cond_8
    if-eqz v2, :cond_9

    .line 1545
    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$100(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V

    .line 1547
    :cond_9
    :goto_6
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->pollFuture()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v2

    .end local v2    # "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    check-cast v2, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .restart local v2    # "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    if-eqz v2, :cond_7

    .line 1548
    invoke-static {v2}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$100(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)V

    goto :goto_6

    .end local v2    # "fut":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    .end local v4    # "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    :cond_a
    move v6, v8

    .line 1554
    goto :goto_5

    .line 1498
    :catch_1
    move-exception v6

    goto/16 :goto_1

    .line 1505
    :catch_2
    move-exception v6

    goto/16 :goto_2
.end method

.method protected abstract processRead(Ljava/nio/channels/SelectionKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract processWrite(Ljava/nio/channels/SelectionKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
