.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;
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


# instance fields
.field final synthetic this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

.field final synthetic val$mux:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 1438
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iput-object p5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;->val$mux:Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1440
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1441
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v3, v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->que:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;
    invoke-static {v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->take()Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;

    move-result-object v2

    .line 1443
    .local v2, "vals":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;
    iget-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;->val$mux:Ljava/lang/Object;

    monitor-enter v4

    .line 1444
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v3, v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->sign:I
    invoke-static {v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v3, v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->right:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    invoke-static {v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1447
    .local v1, "f":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    :goto_1
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v3, v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->sign:I
    invoke-static {v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$2500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->write(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1452
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v1    # "f":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1444
    :cond_0
    :try_start_3
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1$1;->this$2:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    iget-object v3, v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->left:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    invoke-static {v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    move-result-object v1

    goto :goto_1

    .line 1449
    .restart local v1    # "f":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    :catch_0
    move-exception v0

    .line 1450
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/ignite/IgniteException;

    invoke-direct {v3, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1454
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    .end local v2    # "vals":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;
    :cond_1
    return-void
.end method
