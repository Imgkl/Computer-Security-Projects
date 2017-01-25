.class Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;
.super Ljava/lang/Object;
.source "IgfsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlushWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;Lorg/apache/ignite/internal/igfs/common/IgfsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
    .param p2, "x1"    # Lorg/apache/ignite/internal/igfs/common/IgfsLogger$1;

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;-><init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)V

    return-void
.end method

.method private flush()V
    .locals 14

    .prologue
    const/4 v0, 0x1

    const/4 v11, 0x0

    .line 725
    iget-object v12, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v12}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$600(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 728
    :try_start_0
    iget-object v12, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->entries:Ljava/util/Collection;
    invoke-static {v12}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$700(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/Collection;

    move-result-object v4

    .line 730
    .local v4, "entries0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;>;"
    iget-object v12, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    new-instance v13, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v13}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    # setter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->entries:Ljava/util/Collection;
    invoke-static {v12, v13}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$702(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    iget-object v12, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v12}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$600(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 738
    iget-object v12, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$300(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 740
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 741
    iget-object v12, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->file:Ljava/io/File;
    invoke-static {v12}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$800(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 743
    .local v0, "addHdr":Z
    :goto_0
    const/4 v6, 0x0

    .line 744
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 745
    .local v9, "osw":Ljava/io/OutputStreamWriter;
    const/4 v1, 0x0

    .line 748
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->file:Ljava/io/File;
    invoke-static {v11}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$800(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v7, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 749
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-direct {v10, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 750
    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    .local v10, "osw":Ljava/io/OutputStreamWriter;
    :try_start_3
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 752
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .local v2, "bw":Ljava/io/BufferedWriter;
    if-eqz v0, :cond_0

    .line 753
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Timestamp;ThreadID;PID;Type;Path;Mode;StreamId;BufSize;DataLen;Append;Overwrite;Replication;BlockSize;Position;ReadLen;SkipCnt;ReadLimit;UserTime;SystemTime;TotalBytes;DestPath;Recursive;List"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 755
    :cond_0
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;

    .line 756
    .local v5, "entry":Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    .line 758
    .end local v5    # "entry":Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;
    .end local v8    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v9    # "osw":Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .line 759
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    const/4 v11, 0x0

    :try_start_5
    const-string v12, "Failed to flush logged entries to a disk due to an IO exception."

    invoke-static {v11, v12, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 762
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 763
    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 764
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 767
    .end local v0    # "addHdr":Z
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    :cond_1
    :goto_3
    return-void

    .line 733
    .end local v4    # "entries0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;>;"
    :catchall_0
    move-exception v11

    iget-object v12, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v12}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$600(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v11

    .restart local v4    # "entries0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;>;"
    :cond_2
    move v0, v11

    .line 741
    goto/16 :goto_0

    .line 762
    .restart local v0    # "addHdr":Z
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "osw":Ljava/io/OutputStreamWriter;
    :cond_3
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 763
    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 764
    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 762
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v11

    :goto_4
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 763
    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 764
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v11

    .line 762
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_3
    move-exception v11

    move-object v9, v10

    .end local v10    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v9    # "osw":Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_4
    move-exception v11

    move-object v1, v2

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v9    # "osw":Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 758
    :catch_1
    move-exception v3

    goto :goto_2

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "osw":Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v3

    move-object v9, v10

    .end local v10    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v9    # "osw":Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 688
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 691
    .local v1, "t":Ljava/lang/Thread;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 692
    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$200(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 695
    :goto_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$300(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->batchSize:I
    invoke-static {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$400(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 697
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushCond:Ljava/util/concurrent/locks/Condition;
    invoke-static {v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$500(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v4, v5, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/locks/Condition;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "ignore":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 707
    .end local v0    # "ignore":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$200(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 710
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    invoke-direct {p0}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->flush()V

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->flushLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$200(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 715
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$FlushWorker;->flush()V

    .line 716
    return-void
.end method
