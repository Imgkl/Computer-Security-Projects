.class public Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;
.super Ljava/lang/Object;
.source "IpcSharedMemoryClientEndpoint.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint$1;,
        Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint$AliveChecker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private checkIn:Z

.field private checkOut:Z

.field private final checker:Ljava/lang/Thread;

.field private final in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;

.field private final inSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final out:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;

.field private final outSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IILorg/apache/ignite/IgniteLogger;)V
    .locals 23
    .param p1, "port"    # I
    .param p2, "timeout"    # I
    .param p3, "parent"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkIn:Z

    .line 47
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkOut:Z

    .line 101
    sget-boolean v4, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-gtz p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 102
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    const v4, 0xffff

    move/from16 v0, p1

    if-lt v0, v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 104
    :cond_1
    const-class v4, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    .line 106
    const/16 v18, 0x0

    .line 107
    .local v18, "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    const/16 v20, 0x0

    .line 109
    .local v20, "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    new-instance v22, Ljava/net/Socket;

    invoke-direct/range {v22 .. v22}, Ljava/net/Socket;-><init>()V

    .line 111
    .local v22, "sock":Ljava/net/Socket;
    const/16 v16, 0x0

    .line 112
    .local v16, "err":Ljava/lang/Exception;
    const/4 v14, 0x1

    .line 115
    .local v14, "clear":Z
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->load()V

    .line 117
    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v8, "127.0.0.1"

    move/from16 v0, p1

    invoke-direct {v4, v8, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 120
    new-instance v19, Ljava/io/ObjectOutputStream;

    invoke-virtual/range {v22 .. v22}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 122
    .local v19, "out":Ljava/io/ObjectOutputStream;
    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->pid()I

    move-result v5

    .line 124
    .local v5, "pid":I
    new-instance v4, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitRequest;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 126
    new-instance v17, Ljava/io/ObjectInputStream;

    invoke-virtual/range {v22 .. v22}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    .local v17, "in":Ljava/io/ObjectInputStream;
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;

    .line 130
    .local v21, "res":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->error()Ljava/lang/Exception;

    move-result-object v16

    .line 132
    if-nez v16, :cond_9

    .line 133
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inTokenFileName()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "inTokFileName":Ljava/lang/String;
    sget-boolean v4, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-nez v3, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    .end local v3    # "inTokFileName":Ljava/lang/String;
    .end local v5    # "pid":I
    .end local v17    # "in":Ljava/io/ObjectInputStream;
    .end local v19    # "out":Ljava/io/ObjectOutputStream;
    .end local v21    # "res":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;
    :catch_0
    move-exception v15

    move-object/from16 v6, v20

    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .local v6, "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v18

    .line 156
    .end local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .local v2, "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .local v15, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    :try_start_1
    invoke-static {v15}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->linkError(Ljava/lang/UnsatisfiedLinkError;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .end local v15    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v4

    :goto_1
    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 168
    if-eqz v14, :cond_3

    .line 169
    if-eqz v2, :cond_2

    .line 170
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 172
    :cond_2
    if-eqz v6, :cond_3

    .line 173
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    :cond_3
    throw v4

    .line 137
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v3    # "inTokFileName":Ljava/lang/String;
    .restart local v5    # "pid":I
    .restart local v17    # "in":Ljava/io/ObjectInputStream;
    .restart local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v19    # "out":Ljava/io/ObjectOutputStream;
    .restart local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "res":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;
    :cond_4
    :try_start_2
    new-instance v2, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->pid()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->size()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inSharedMemoryId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct/range {v2 .. v9}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;-><init>(Ljava/lang/String;IIIZILorg/apache/ignite/IgniteLogger;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    .end local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outTokenFileName()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "outTokFileName":Ljava/lang/String;
    sget-boolean v4, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    if-nez v7, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 155
    .end local v7    # "outTokFileName":Ljava/lang/String;
    :catch_1
    move-exception v15

    move-object/from16 v6, v20

    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto :goto_0

    .line 144
    .end local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v7    # "outTokFileName":Ljava/lang/String;
    .restart local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :cond_5
    new-instance v6, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->pid()I

    move-result v9

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->size()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outSharedMemoryId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    move v8, v5

    invoke-direct/range {v6 .. v13}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;-><init>(Ljava/lang/String;IIIZILorg/apache/ignite/IgniteLogger;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 148
    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    const/4 v4, 0x1

    :try_start_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 150
    invoke-virtual/range {v19 .. v19}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    const/4 v14, 0x0

    .line 166
    .end local v3    # "inTokFileName":Ljava/lang/String;
    .end local v7    # "outTokFileName":Ljava/lang/String;
    :goto_2
    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 168
    if-eqz v14, :cond_7

    .line 169
    if-eqz v2, :cond_6

    .line 170
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 172
    :cond_6
    if-eqz v6, :cond_7

    .line 173
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 177
    :cond_7
    if-eqz v16, :cond_8

    .line 178
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 158
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v5    # "pid":I
    .end local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v17    # "in":Ljava/io/ObjectInputStream;
    .end local v19    # "out":Ljava/io/ObjectOutputStream;
    .end local v21    # "res":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;
    .restart local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_2
    move-exception v15

    move-object/from16 v6, v20

    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v18

    .line 159
    .end local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .local v15, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to connect shared memory endpoint to port (is shared memory server endpoint up and running?): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v15}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 162
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_3
    move-exception v4

    move-object/from16 v6, v20

    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v18

    .end local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :goto_4
    move-object v15, v4

    .line 163
    .local v15, "e":Ljava/lang/Exception;
    :goto_5
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v4, v15}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v5    # "pid":I
    .restart local v17    # "in":Ljava/io/ObjectInputStream;
    .restart local v19    # "out":Ljava/io/ObjectOutputStream;
    .restart local v21    # "res":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;
    :cond_8
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->inSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    .line 181
    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->outSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    .line 183
    new-instance v4, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;

    invoke-direct {v4, v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;-><init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;

    .line 184
    new-instance v4, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;

    invoke-direct {v4, v6}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;-><init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->out:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;

    .line 186
    new-instance v4, Ljava/lang/Thread;

    new-instance v8, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint$AliveChecker;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint$AliveChecker;-><init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint$1;)V

    invoke-direct {v4, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checker:Ljava/lang/Thread;

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checker:Ljava/lang/Thread;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checker:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 192
    return-void

    .line 162
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v5    # "pid":I
    .end local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v17    # "in":Ljava/io/ObjectInputStream;
    .end local v19    # "out":Ljava/io/ObjectOutputStream;
    .end local v21    # "res":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;
    .restart local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_4
    move-exception v4

    move-object/from16 v6, v20

    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v18

    .end local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :goto_6
    move-object v15, v4

    goto :goto_5

    .line 166
    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catchall_1
    move-exception v4

    move-object/from16 v6, v20

    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v18

    .end local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto/16 :goto_1

    .end local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v3    # "inTokFileName":Ljava/lang/String;
    .restart local v5    # "pid":I
    .restart local v17    # "in":Ljava/io/ObjectInputStream;
    .restart local v19    # "out":Ljava/io/ObjectOutputStream;
    .restart local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v21    # "res":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;
    :catchall_2
    move-exception v4

    move-object/from16 v6, v20

    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto/16 :goto_1

    .line 162
    .end local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_5
    move-exception v4

    move-object/from16 v6, v20

    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto :goto_6

    .restart local v7    # "outTokFileName":Ljava/lang/String;
    :catch_6
    move-exception v4

    goto :goto_6

    .end local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v7    # "outTokFileName":Ljava/lang/String;
    .restart local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_7
    move-exception v4

    move-object/from16 v6, v20

    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto :goto_4

    .restart local v7    # "outTokFileName":Ljava/lang/String;
    :catch_8
    move-exception v4

    goto :goto_4

    .line 158
    .end local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v7    # "outTokFileName":Ljava/lang/String;
    .restart local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :catch_9
    move-exception v15

    move-object/from16 v6, v20

    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto/16 :goto_3

    .restart local v7    # "outTokFileName":Ljava/lang/String;
    :catch_a
    move-exception v15

    goto/16 :goto_3

    .line 155
    :catch_b
    move-exception v15

    goto/16 :goto_0

    .end local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v3    # "inTokFileName":Ljava/lang/String;
    .end local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .end local v7    # "outTokFileName":Ljava/lang/String;
    .restart local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    :cond_9
    move-object/from16 v6, v20

    .end local v20    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v6    # "outSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    move-object/from16 v2, v18

    .end local v18    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .restart local v2    # "inSpace":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    goto/16 :goto_2
.end method

.method public constructor <init>(ILorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "parent"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;-><init>(IILorg/apache/ignite/IgniteLogger;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "inSpace"    # Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .param p2, "outSpace"    # Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .param p3, "parent"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkIn:Z

    .line 47
    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkOut:Z

    .line 64
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_1
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;

    invoke-interface {p3, v0}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    .line 69
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->inSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    .line 70
    iput-object p2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->outSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;-><init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;

    .line 73
    new-instance v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;-><init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->out:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checker:Ljava/lang/Thread;

    .line 76
    return-void
.end method

.method private closeSpace(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;)V
    .locals 3
    .param p1, "space"    # Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    .prologue
    .line 293
    sget-boolean v1, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 295
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 297
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->tokenFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "tokFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->freeSystemResources(Ljava/lang/String;I)V

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 305
    return-void
.end method

.method private stopChecker()V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checker:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 232
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method checkOtherPartyAlive()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkIn:Z

    if-eqz v2, :cond_0

    .line 243
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->inSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->tokenFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "tokFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkIn:Z

    .line 249
    .end local v0    # "tokFile":Ljava/io/File;
    :cond_0
    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkOut:Z

    if-eqz v2, :cond_1

    .line 250
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->outSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->tokenFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v0    # "tokFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkOut:Z

    .line 256
    .end local v0    # "tokFile":Ljava/io/File;
    :cond_1
    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkIn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkOut:Z

    if-nez v2, :cond_2

    .line 270
    :goto_0
    return v1

    .line 259
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->inSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->otherPartyPid()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->alive(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 260
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote process is considered to be dead (shared memory space will be forcibly closed): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->inSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->otherPartyPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 263
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->inSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->closeSpace(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;)V

    .line 264
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->outSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->closeSpace(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;)V

    goto :goto_0

    .line 270
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->out:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 209
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->stopChecker()V

    .line 210
    return-void
.end method

.method public forceClose()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->forceClose()V

    .line 219
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->out:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;->forceClose()V

    .line 221
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->stopChecker()V

    .line 222
    return-void
.end method

.method inSpace()Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->inSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    return-object v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;

    return-object v0
.end method

.method outSpace()Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->outSpace:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->out:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
