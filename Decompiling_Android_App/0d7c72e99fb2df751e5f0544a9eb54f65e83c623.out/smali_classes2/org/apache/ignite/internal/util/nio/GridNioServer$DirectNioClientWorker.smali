.class Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;
.super Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;
.source "GridNioServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/nio/GridNioServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectNioClientWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/nio/GridNioServer",
        "<TT;>.AbstractNioClientWorker;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 755
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 0
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
    .line 764
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.DirectNioClientWorker;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    .line 765
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$AbstractNioClientWorker;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 766
    return-void
.end method

.method private processWrite0(Ljava/nio/channels/SelectionKey;)V
    .locals 14
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.DirectNioClientWorker;"
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v9

    check-cast v9, Ljava/nio/channels/WritableByteChannel;

    .line 1019
    .local v9, "sockCh":Ljava/nio/channels/WritableByteChannel;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 1020
    .local v8, "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->writeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1021
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v11, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->NIO_OPERATION:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v11

    invoke-virtual {v8, v11}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->removeMeta(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .line 1023
    .local v7, "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    sget-object v11, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MSG_WRITER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v11

    invoke-virtual {v8, v11}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->meta(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .line 1025
    .local v10, "writer":Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;
    if-nez v10, :cond_0

    .line 1026
    sget-object v11, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MSG_WRITER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v11

    iget-object v12, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v12}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1100(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;->writer()Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    move-result-object v10

    invoke-virtual {v8, v11, v10}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1028
    :cond_0
    if-nez v7, :cond_1

    .line 1029
    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->pollFuture()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v7

    .end local v7    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    check-cast v7, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .line 1031
    .restart local v7    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    if-nez v11, :cond_1

    .line 1032
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v11

    and-int/lit8 v11, v11, -0x5

    invoke-virtual {p1, v11}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 1115
    :goto_0
    return-void

    .line 1039
    :cond_1
    const/4 v4, 0x0

    .line 1041
    .local v4, "finished":Z
    if-eqz v7, :cond_3

    .line 1042
    invoke-static {v7}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$1200(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v6

    .line 1044
    .local v6, "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    sget-boolean v11, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->$assertionsDisabled:Z

    if-nez v11, :cond_2

    if-nez v6, :cond_2

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1046
    :cond_2
    invoke-interface {v6, v0, v10}, Lorg/apache/ignite/plugin/extensions/communication/Message;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v4

    .line 1048
    if-eqz v4, :cond_3

    .line 1049
    invoke-interface {v10}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->reset()V

    .line 1053
    .end local v6    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    :cond_3
    const/4 v2, 0x0

    .line 1055
    .local v2, "doneFuts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;>;"
    :cond_4
    :goto_1
    if-eqz v4, :cond_6

    .line 1056
    if-nez v2, :cond_5

    .line 1057
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "doneFuts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    .restart local v2    # "doneFuts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;>;"
    :cond_5
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->pollFuture()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v7

    .end local v7    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    check-cast v7, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .line 1063
    .restart local v7    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    if-nez v7, :cond_7

    .line 1076
    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1078
    sget-boolean v11, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->$assertionsDisabled:Z

    if-nez v11, :cond_9

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-nez v11, :cond_9

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1066
    :cond_7
    invoke-static {v7}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$1200(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v6

    .line 1068
    .restart local v6    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    sget-boolean v11, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->$assertionsDisabled:Z

    if-nez v11, :cond_8

    if-nez v6, :cond_8

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1070
    :cond_8
    invoke-interface {v6, v0, v10}, Lorg/apache/ignite/plugin/extensions/communication/Message;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v4

    .line 1072
    if-eqz v4, :cond_4

    .line 1073
    invoke-interface {v10}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->reset()V

    goto :goto_1

    .line 1080
    .end local v6    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    :cond_9
    iget-object v11, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v11}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$900(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 1081
    invoke-interface {v9, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1083
    .local v1, "cnt":I
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1084
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_a

    .line 1085
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone()Z

    .line 1084
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1087
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1090
    .end local v5    # "i":I
    :cond_b
    iget-object v11, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isTraceEnabled()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1091
    iget-object v11, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bytes sent [sockCh="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", cnt="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 1093
    :cond_c
    iget-object v11, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v11}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 1094
    iget-object v11, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v11}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v11

    invoke-interface {v11, v1}, Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;->onBytesSent(I)V

    .line 1096
    :cond_d
    invoke-virtual {v8, v1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->bytesSent(I)V

    .line 1108
    .end local v1    # "cnt":I
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-nez v11, :cond_e

    if-nez v4, :cond_10

    .line 1109
    :cond_e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 1111
    sget-object v11, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->NIO_OPERATION:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v11

    invoke-virtual {v8, v11, v7}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1101
    :cond_f
    const-wide/16 v12, 0x32

    :try_start_0
    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1103
    :catch_0
    move-exception v3

    .line 1104
    .local v3, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Thread has been interrupted."

    invoke-direct {v11, v12, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1114
    .end local v3    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :cond_10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_0
.end method

.method private processWriteSsl(Ljava/nio/channels/SelectionKey;)V
    .locals 19
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.DirectNioClientWorker;"
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v13

    check-cast v13, Ljava/nio/channels/WritableByteChannel;

    .line 845
    .local v13, "sockCh":Ljava/nio/channels/WritableByteChannel;
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 847
    .local v11, "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    sget-object v16, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MSG_WRITER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->meta(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .line 849
    .local v15, "writer":Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;
    if-nez v15, :cond_0

    .line 850
    sget-object v16, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MSG_WRITER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1100(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;->writer()Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    move-result-object v15

    move/from16 v0, v16

    invoke-virtual {v11, v0, v15}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1000(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->lock(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Z

    move-result v7

    .line 855
    .local v7, "handshakeFinished":Z
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->writeSslSystem(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    if-nez v7, :cond_1

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1000(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->unlock(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 981
    :goto_0
    return-void

    .line 860
    :cond_1
    :try_start_1
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$700()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->removeMeta(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 862
    .local v14, "sslNetBuf":Ljava/nio/ByteBuffer;
    if-eqz v14, :cond_3

    .line 863
    invoke-interface {v13, v14}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 865
    .local v3, "cnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;->onBytesSent(I)V

    .line 868
    :cond_2
    invoke-virtual {v11, v3}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->bytesSent(I)V

    .line 870
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 871
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$700()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0, v14}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1000(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->unlock(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    goto :goto_0

    .line 877
    .end local v3    # "cnt":I
    :cond_3
    :try_start_2
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->writeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 878
    .local v2, "buf":Ljava/nio/ByteBuffer;
    sget-object v16, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->NIO_OPERATION:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->removeMeta(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .line 880
    .local v10, "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    const/4 v4, 0x0

    .line 883
    .local v4, "doneFuts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;>;"
    :goto_1
    if-nez v10, :cond_4

    .line 884
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->pollFuture()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v10

    .end local v10    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    check-cast v10, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .line 886
    .restart local v10    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    if-nez v10, :cond_4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    if-nez v16, :cond_4

    .line 887
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v16

    and-int/lit8 v16, v16, -0x5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 979
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1000(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->unlock(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    goto/16 :goto_0

    .line 894
    :cond_4
    const/4 v6, 0x0

    .line 896
    .local v6, "finished":Z
    if-eqz v10, :cond_6

    .line 897
    :try_start_3
    invoke-static {v10}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$1200(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v9

    .line 899
    .local v9, "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    sget-boolean v16, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->$assertionsDisabled:Z

    if-nez v16, :cond_5

    if-nez v9, :cond_5

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 979
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "doneFuts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;>;"
    .end local v6    # "finished":Z
    .end local v9    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    .end local v10    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    .end local v14    # "sslNetBuf":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1000(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->unlock(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    throw v16

    .line 901
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v4    # "doneFuts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;>;"
    .restart local v6    # "finished":Z
    .restart local v9    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    .restart local v10    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    .restart local v14    # "sslNetBuf":Ljava/nio/ByteBuffer;
    :cond_5
    :try_start_4
    invoke-interface {v9, v2, v15}, Lorg/apache/ignite/plugin/extensions/communication/Message;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v6

    .line 903
    if-eqz v6, :cond_6

    .line 904
    invoke-interface {v15}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->reset()V

    .line 908
    .end local v9    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    :cond_6
    :goto_3
    if-eqz v6, :cond_8

    .line 909
    if-nez v4, :cond_7

    .line 910
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "doneFuts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 912
    .restart local v4    # "doneFuts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;>;"
    :cond_7
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->pollFuture()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v10

    .end local v10    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    check-cast v10, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    .line 916
    .restart local v10    # "req":Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture<*>;"
    if-nez v10, :cond_9

    .line 929
    :cond_8
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 931
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->writeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 933
    .local v12, "sesBuf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1000(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;->encrypt(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 935
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 937
    sget-boolean v16, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->$assertionsDisabled:Z

    if-nez v16, :cond_b

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16

    if-nez v16, :cond_b

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 919
    .end local v12    # "sesBuf":Ljava/nio/ByteBuffer;
    :cond_9
    invoke-static {v10}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->access$1200(Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v9

    .line 921
    .restart local v9    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    sget-boolean v16, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->$assertionsDisabled:Z

    if-nez v16, :cond_a

    if-nez v9, :cond_a

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 923
    :cond_a
    invoke-interface {v9, v2, v15}, Lorg/apache/ignite/plugin/extensions/communication/Message;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v6

    .line 925
    if-eqz v6, :cond_6

    .line 926
    invoke-interface {v15}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->reset()V

    goto :goto_3

    .line 939
    .end local v9    # "msg":Lorg/apache/ignite/plugin/extensions/communication/Message;
    .restart local v12    # "sesBuf":Ljava/nio/ByteBuffer;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$900(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Z

    move-result v16

    if-nez v16, :cond_10

    .line 940
    invoke-interface {v13, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 942
    .restart local v3    # "cnt":I
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 943
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_c

    .line 944
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioServer$NioOperationFuture;->onDone()Z

    .line 943
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 946
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 949
    .end local v8    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/IgniteLogger;->isTraceEnabled()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bytes sent [sockCh="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", cnt="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 952
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v16

    if-eqz v16, :cond_f

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;->onBytesSent(I)V

    .line 955
    :cond_f
    invoke-virtual {v11, v3}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->bytesSent(I)V

    .line 967
    .end local v3    # "cnt":I
    :goto_5
    sget-object v16, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->NIO_OPERATION:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0, v10}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 969
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 970
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$700()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0, v2}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 960
    :cond_10
    const-wide/16 v16, 0x32

    :try_start_5
    invoke-static/range {v16 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_5
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 962
    :catch_0
    move-exception v5

    .line 963
    .local v5, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :try_start_6
    new-instance v16, Ljava/io/IOException;

    const-string v17, "Thread has been interrupted."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 975
    .end local v5    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :cond_11
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->writeBuffer()Ljava/nio/ByteBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    .line 976
    goto/16 :goto_1
.end method

.method private writeSslSystem(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Ljava/nio/channels/WritableByteChannel;)V
    .locals 4
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    .param p2, "sockCh"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 990
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.DirectNioClientWorker;"
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1300()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->meta(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 994
    .local v2, "queue":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Ljava/nio/ByteBuffer;>;"
    :goto_0
    invoke-virtual {v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .local v0, "buf":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1

    .line 995
    invoke-interface {p2, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 997
    .local v1, "cnt":I
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 998
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;->onBytesSent(I)V

    .line 1000
    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->bytesSent(I)V

    .line 1002
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1003
    invoke-virtual {v2, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1007
    .end local v1    # "cnt":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected processRead(Ljava/nio/channels/SelectionKey;)V
    .locals 8
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.DirectNioClientWorker;"
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/ReadableByteChannel;

    .line 777
    .local v4, "sockCh":Ljava/nio/channels/ReadableByteChannel;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    .line 779
    .local v3, "ses":Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->readBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 782
    .local v2, "readBuf":Ljava/nio/ByteBuffer;
    invoke-interface {v4, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 784
    .local v0, "cnt":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 785
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 786
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote client closed connection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 788
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z

    .line 820
    :cond_1
    :goto_0
    return-void

    .line 792
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 795
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 796
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bytes received [sockCh="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cnt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 798
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 799
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$500(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;->onBytesReceived(I)V

    .line 801
    :cond_5
    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->bytesReceived(I)V

    .line 805
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 808
    :try_start_0
    sget-boolean v5, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->$assertionsDisabled:Z

    if-nez v5, :cond_6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :catch_0
    move-exception v1

    .line 818
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0, v3, v1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->close(Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;Lorg/apache/ignite/IgniteCheckedException;)Z

    goto :goto_0

    .line 810
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_6
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$600(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    .line 812
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 813
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 815
    :cond_7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected processWrite(Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;, "Lorg/apache/ignite/internal/util/nio/GridNioServer<TT;>.DirectNioClientWorker;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioServer;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->access$1000(Lorg/apache/ignite/internal/util/nio/GridNioServer;)Lorg/apache/ignite/internal/util/nio/ssl/GridNioSslFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 830
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->processWriteSsl(Ljava/nio/channels/SelectionKey;)V

    .line 833
    :goto_0
    return-void

    .line 832
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioServer$DirectNioClientWorker;->processWrite0(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0
.end method
