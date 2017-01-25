.class public Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;
.super Ljava/lang/Object;
.source "IpcToNioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final endp:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

.field private final formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

.field private final latchRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

.field private final ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

.field private final writeBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;Lorg/apache/ignite/internal/util/nio/GridNioServerListener;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;[Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V
    .locals 4
    .param p1, "metricsLsnr"    # Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p3, "endp"    # Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    .param p5, "formatter"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    .param p6, "filters"    # [Lorg/apache/ignite/internal/util/nio/GridNioFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;",
            "Lorg/apache/ignite/IgniteLogger;",
            "Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;",
            "Lorg/apache/ignite/internal/util/nio/GridNioServerListener",
            "<TT;>;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;",
            "[",
            "Lorg/apache/ignite/internal/util/nio/GridNioFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>;"
    .local p4, "lsnr":Lorg/apache/ignite/internal/util/nio/GridNioServerListener;, "Lorg/apache/ignite/internal/util/nio/GridNioServerListener<TT;>;"
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->latchRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    .line 72
    iput-object p3, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->endp:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    .line 73
    iput-object p5, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .line 75
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    new-instance v1, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter$HeadFilter;-><init>(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;)V

    invoke-direct {v0, p2, p4, v1, p6}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;-><init>(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/util/nio/GridNioServerListener;Lorg/apache/ignite/internal/util/nio/GridNioFilter;[Lorg/apache/ignite/internal/util/nio/GridNioFilter;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    .line 76
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    .line 78
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->writeBuf:Ljava/nio/ByteBuffer;

    .line 80
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->writeBuf:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;)Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;Lorg/apache/ignite/plugin/extensions/communication/Message;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/plugin/extensions/communication/Message;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->send(Lorg/apache/ignite/plugin/extensions/communication/Message;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->latchRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;)Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->endp:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    return-object v0
.end method

.method private send(Lorg/apache/ignite/plugin/extensions/communication/Message;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 5
    .param p1, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->writeBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 155
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->endp:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;->outputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->writeBuf:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    invoke-interface {v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;->writer()Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    move-result-object v4

    invoke-static {p1, v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMessageFully(Lorg/apache/ignite/plugin/extensions/communication/Message;Ljava/io/OutputStream;Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)I

    move-result v0

    .line 157
    .local v0, "cnt":I
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;->onBytesSent(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    new-instance v3, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Object;

    invoke-direct {v3, v2}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .end local v0    # "cnt":I
    :goto_0
    return-object v2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public serve()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;, "Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter<TT;>;"
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 92
    iget-object v6, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->endp:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    invoke-interface {v6}, Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;->inputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 94
    .local v1, "in":Ljava/io/InputStream;
    const/16 v6, 0x2000

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 96
    .local v5, "readBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 98
    sget-boolean v6, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v5    # "readBuf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    const-string v9, "Failed to read from IPC endpoint."

    invoke-direct {v8, v9, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 100
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v5    # "readBuf":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_3

    .line 101
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 103
    .local v3, "pos":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v1, v6, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 105
    .local v4, "read":I
    if-lez v4, :cond_2

    .line 106
    iget-object v6, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    invoke-interface {v6, v4}, Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;->onBytesReceived(I)V

    .line 108
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    add-int v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 111
    iget-object v6, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    invoke-virtual {v6, v7, v5}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 118
    :goto_2
    iget-object v6, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->latchRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 120
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 134
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "pos":I
    .end local v4    # "read":I
    .end local v5    # "readBuf":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v6

    .line 136
    :try_start_4
    iget-object v7, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    iget-object v8, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 141
    :goto_3
    throw v6

    .line 116
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "pos":I
    .restart local v4    # "read":I
    .restart local v5    # "readBuf":Ljava/nio/ByteBuffer;
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2

    .line 123
    :cond_2
    if-gez v4, :cond_0

    .line 124
    iget-object v6, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->endp:Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    invoke-interface {v6}, Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    .end local v3    # "pos":I
    .end local v4    # "read":I
    :cond_3
    :try_start_6
    iget-object v6, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    const-string v9, "Failed to process session close event for IPC endpoint."

    invoke-direct {v8, v9, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    goto :goto_0

    .line 138
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v5    # "readBuf":Ljava/nio/ByteBuffer;
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 139
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    const-string v9, "Failed to process session close event for IPC endpoint."

    invoke-direct {v8, v9, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7, v8}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_3
    move-exception v0

    .line 139
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v7, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->chain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    iget-object v8, p0, Lorg/apache/ignite/internal/util/ipc/IpcToNioAdapter;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    const-string v10, "Failed to process session close event for IPC endpoint."

    invoke-direct {v9, v10, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    goto :goto_3
.end method
