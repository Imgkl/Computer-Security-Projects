.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
.super Ljava/lang/Object;
.source "FileSwapSpaceSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwapValue"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DELETED:I = -0x80000000

.field private static final NEW:I

.field private static final idxUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile idx:I

.field private final len:I

.field private pos:J

.field private val:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 643
    const-class v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->$assertionsDisabled:Z

    .line 651
    const-class v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    const-string v1, "idx"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idxUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "val"    # [B

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->pos:J

    .line 672
    sget-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 674
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->val:[B

    .line 675
    array-length v0, p1

    iput v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I

    .line 676
    return-void
.end method

.method static synthetic access$1200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .prologue
    .line 643
    iget-wide v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->pos:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .prologue
    .line 643
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I

    return v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .prologue
    .line 643
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idx:I

    return v0
.end method


# virtual methods
.method public casIdx(II)Z
    .locals 1
    .param p1, "exp"    # I
    .param p2, "idx"    # I

    .prologue
    .line 757
    sget-object v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idxUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method idx()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idx:I

    return v0
.end method

.method readValue(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;)[B
    .locals 8
    .param p1, "ch"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 714
    iget v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I

    new-array v3, v4, [B

    .line 716
    .local v3, "v":[B
    const/4 v2, 0x0

    .line 719
    .local v2, "res":I
    :try_start_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->pos:J

    invoke-virtual {p1, v4, v6, v7}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->read(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 734
    :cond_0
    iget v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I

    if-ge v2, v4, :cond_1

    .line 735
    const/4 v3, 0x0

    .line 737
    .end local v3    # "v":[B
    :cond_1
    return-object v3

    .line 721
    .restart local v3    # "v":[B
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v5, "Operation was interrupted."

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 724
    .end local v0    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :catch_1
    move-exception v1

    .line 725
    .local v1, "ignore":Ljava/nio/channels/AsynchronousCloseException;
    sget-boolean v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idx:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 727
    .end local v1    # "ignore":Ljava/nio/channels/AsynchronousCloseException;
    :catch_2
    move-exception v0

    .line 728
    .local v0, "e":Ljava/nio/channels/ClosedChannelException;
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v5, "File channel was unexpectedly closed."

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 730
    .end local v0    # "e":Ljava/nio/channels/ClosedChannelException;
    :catch_3
    move-exception v0

    .line 731
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v5, "Failed to read value."

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public declared-synchronized set(J[B)V
    .locals 3
    .param p1, "pos"    # J
    .param p3, "val"    # [B

    .prologue
    .line 745
    monitor-enter p0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 746
    :try_start_0
    iput-wide p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->pos:J

    .line 748
    :cond_0
    iput-object p3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->val:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    monitor-exit p0

    return-void

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->pos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized value(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)[B
    .locals 6
    .param p1, "space"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/high16 v5, -0x80000000

    .line 685
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->val:[B

    .line 687
    .local v3, "v":[B
    if-nez v3, :cond_3

    .line 688
    iget v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idx:I

    .line 690
    .local v1, "i":I
    sget-boolean v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    .end local v1    # "i":I
    .end local v3    # "v":[B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 692
    .restart local v1    # "i":I
    .restart local v3    # "v":[B
    :cond_0
    if-eq v1, v5, :cond_1

    .line 693
    if-gez v1, :cond_2

    :try_start_1
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->left:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    invoke-static {p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    move-result-object v4

    iget-object v0, v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->readCh:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;

    .line 695
    .local v0, "ch":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;
    :goto_0
    iget v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idx:I

    if-eq v4, v5, :cond_1

    .line 696
    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->readValue(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 705
    .end local v0    # "ch":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;
    .end local v1    # "i":I
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v3

    .line 693
    .restart local v1    # "i":I
    :cond_2
    :try_start_2
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->right:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    invoke-static {p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->access$300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    move-result-object v4

    iget-object v0, v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->readCh:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;

    goto :goto_0

    .line 699
    .end local v1    # "i":I
    :cond_3
    array-length v4, v3

    iget v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I

    if-eq v4, v5, :cond_1

    .line 700
    iget-wide v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->pos:J

    long-to-int v2, v4

    .line 702
    .local v2, "p":I
    iget v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I

    add-int/2addr v4, v2

    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1
.end method
