.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "FileSwapSpaceSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

.field final synthetic val$mux:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1457
    const-class v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 1457
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iput-object p5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->val$mux:Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1459
    const/4 v4, 0x0

    .line 1460
    .local v4, "w":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    const/4 v1, 0x0

    .line 1462
    .local v1, "c":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    const/4 v3, 0x0

    .line 1464
    .local v3, "vals":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1465
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v5, v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # invokes: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->needCompact()Z
    invoke-static {v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2700(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1466
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    .line 1468
    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1514
    :cond_1
    return-void

    .line 1472
    :cond_2
    const/4 v0, 0x0

    .line 1474
    .local v0, "buf":Ljava/nio/ByteBuffer;
    if-nez v3, :cond_3

    .line 1475
    new-instance v3, Ljava/util/ArrayDeque;

    .end local v3    # "vals":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 1487
    .restart local v3    # "vals":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1488
    iget-object v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->val$mux:Ljava/lang/Object;

    monitor-enter v6

    .line 1489
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v5, v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iget-object v7, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v7, v7, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->sign:I
    invoke-static {v7}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)I

    move-result v7

    neg-int v7, v7

    # setter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->sign:I
    invoke-static {v5, v7}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2502(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;I)I

    .line 1491
    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v5, v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->sign:I
    invoke-static {v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    .line 1492
    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v5, v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->right:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    invoke-static {v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    move-result-object v4

    .line 1493
    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v5, v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->left:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    invoke-static {v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    move-result-object v1

    .line 1499
    :goto_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1477
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 1480
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v5, v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iget-object v5, v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$1500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->compact(Ljava/util/ArrayDeque;I)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1482
    :catch_0
    move-exception v2

    .line 1483
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/ignite/IgniteException;

    invoke-direct {v5, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1496
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_2
    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v5, v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->left:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    invoke-static {v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    move-result-object v4

    .line 1497
    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v5, v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->right:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    invoke-static {v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_2

    .line 1502
    :cond_5
    sget-boolean v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->$assertionsDisabled:Z

    if-nez v5, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1504
    :cond_7
    iget-object v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->val$mux:Ljava/lang/Object;

    monitor-enter v6

    .line 1506
    :try_start_3
    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$2;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v5, v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->sign:I
    invoke-static {v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)I

    move-result v5

    invoke-virtual {v4, v3, v0, v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->write(Ljava/lang/Iterable;Ljava/nio/ByteBuffer;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1511
    :try_start_4
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1508
    :catch_1
    move-exception v2

    .line 1509
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v5, Lorg/apache/ignite/IgniteException;

    invoke-direct {v5, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method
