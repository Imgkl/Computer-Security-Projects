.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
.super Ljava/lang/Object;
.source "FileSwapSpaceSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwapFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIN_TRUNK_SIZE:J = 0xa00000L


# instance fields
.field private final arr:Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray",
            "<",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
            ">;"
        }
    .end annotation
.end field

.field private final file:Ljava/io/File;

.field private volatile len:J

.field private final raf:Ljava/io/RandomAccessFile;

.field volatile readCh:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;

.field private final writeCh:Ljava/nio/channels/FileChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 957
    const-class v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "readerStripes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    new-instance v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;

    invoke-direct {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->arr:Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;

    .line 985
    sget-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 987
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 989
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 990
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->file:Ljava/io/File;

    .line 994
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->raf:Ljava/io/RandomAccessFile;

    .line 996
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->writeCh:Ljava/nio/channels/FileChannel;

    .line 998
    new-instance v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;

    invoke-direct {v0, p1, p2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->readCh:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;

    .line 999
    return-void
.end method

.method static synthetic access$1100(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Ljava/nio/channels/FileChannel;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    .prologue
    .line 957
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->writeCh:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    .prologue
    .line 957
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->arr:Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    .prologue
    .line 957
    iget-wide v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->len:J

    return-wide v0
.end method

.method static synthetic access$1402(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;J)J
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    .param p1, "x1"    # J

    .prologue
    .line 957
    iput-wide p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->len:J

    return-wide p1
.end method


# virtual methods
.method public compact(Ljava/util/ArrayDeque;I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p2, "bufSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
            ">;I)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1170
    .local p1, "vals":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    sget-boolean v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1172
    :cond_0
    new-instance v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;-><init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;Ljava/util/ArrayDeque;ILorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;)V

    .line 1174
    .local v0, "c":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;
    # invokes: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->doCompact()V
    invoke-static {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->access$1000(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;)V

    .line 1176
    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->result()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public delete()Z
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->raf:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1141
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->readCh:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->close()V

    .line 1143
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->delete(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 1130
    iget-wide v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->len:J

    return-wide v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method reopenReadChannel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1007
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->readCh:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->close()V

    .line 1009
    new-instance v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;

    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->file:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->readCh:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->chs:[Ljava/nio/channels/FileChannel;
    invoke-static {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->access$500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;)[Ljava/nio/channels/FileChannel;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->readCh:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;

    .line 1010
    return-void
.end method

.method public tryRemove(ILorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)Z
    .locals 2
    .param p1, "idx"    # I
    .param p2, "exp"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .prologue
    .line 1152
    sget-boolean v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gtz p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 1154
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->arr:Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->slot(I)Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;

    move-result-object v0

    .line 1156
    .local v0, "s":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot<Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->cas(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public write(Ljava/lang/Iterable;Ljava/nio/ByteBuffer;I)V
    .locals 12
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "sign"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "vals":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    const/high16 v10, -0x80000000

    .line 1019
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 1020
    .local v8, "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idx:I
    invoke-static {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$600(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v2

    .line 1022
    .local v2, "oldIdx":I
    if-eq v2, v10, :cond_0

    .line 1025
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->arr:Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;

    invoke-virtual {v9, v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->add(Ljava/lang/Object;)I

    move-result v1

    .line 1027
    .local v1, "idx":I
    mul-int v9, p3, v1

    invoke-virtual {v8, v2, v9}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->casIdx(II)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1028
    sget-boolean v9, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idx:I
    invoke-static {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$600(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v9

    if-eq v9, v10, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1030
    :cond_1
    invoke-virtual {p0, v1, v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->tryRemove(ILorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)Z

    move-result v6

    .line 1032
    .local v6, "res":Z
    sget-boolean v9, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez v6, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1036
    .end local v1    # "idx":I
    .end local v2    # "oldIdx":I
    .end local v6    # "res":Z
    .end local v8    # "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 1038
    .local v3, "size":I
    if-nez v3, :cond_4

    .line 1056
    :cond_3
    return-void

    .line 1041
    :cond_4
    iget-wide v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->len:J

    .line 1043
    .local v4, "pos":J
    int-to-long v10, v3

    add-long/2addr v10, v4

    iput-wide v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->len:J

    .line 1045
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->writeCh:Ljava/nio/channels/FileChannel;

    invoke-virtual {v9, p2, v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v9

    int-to-long v6, v9

    .line 1047
    .local v6, "res":J
    int-to-long v10, v3

    cmp-long v9, v6, v10

    if-eqz v9, :cond_5

    .line 1048
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " != "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1051
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 1052
    .restart local v8    # "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    const/4 v9, 0x0

    invoke-virtual {v8, v4, v5, v9}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->set(J[B)V

    .line 1054
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v9

    int-to-long v10, v9

    add-long/2addr v4, v10

    .line 1055
    goto :goto_0
.end method

.method public write(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;I)V
    .locals 20
    .param p1, "vals"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;
    .param p2, "sign"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1064
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->size:I
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->access$700(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1066
    .local v5, "buf":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->vals:[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->access$800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;)[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v9, v0

    .local v9, "len":I
    :goto_0
    if-ge v6, v9, :cond_3

    .line 1067
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->vals:[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->access$800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;)[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    move-result-object v17

    aget-object v16, v17, v6

    .line 1069
    .local v16, "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idx:I
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$600(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v17

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1070
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->vals:[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->access$800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;)[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v18, v17, v6

    .line 1066
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1075
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->arr:Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->add(Ljava/lang/Object;)I

    move-result v8

    .line 1077
    .local v8, "idx":I
    const/16 v17, 0x0

    mul-int v18, p2, v8

    invoke-virtual/range {v16 .. v18}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->casIdx(II)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1078
    sget-boolean v17, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->$assertionsDisabled:Z

    if-nez v17, :cond_1

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idx:I
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$600(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v17

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1080
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->tryRemove(ILorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)Z

    .line 1082
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->vals:[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->access$800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;)[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v18, v17, v6

    goto :goto_1

    .line 1085
    :cond_2
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->value(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1088
    .end local v8    # "idx":I
    .end local v16    # "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    :cond_3
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1090
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    .line 1092
    .local v11, "size":I
    if-nez v11, :cond_5

    .line 1113
    :cond_4
    return-void

    .line 1095
    :cond_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->len:J

    .line 1097
    .local v12, "pos":J
    int-to-long v0, v11

    move-wide/from16 v18, v0

    add-long v18, v18, v12

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->len:J

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->writeCh:Ljava/nio/channels/FileChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v12, v13}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v17

    move/from16 v0, v17

    int-to-long v14, v0

    .line 1101
    .local v14, "res":J
    int-to-long v0, v11

    move-wide/from16 v18, v0

    cmp-long v17, v14, v18

    if-eqz v17, :cond_6

    .line 1102
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " != "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1105
    :cond_6
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->vals:[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;->access$800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;)[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    move-result-object v4

    .local v4, "arr$":[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v10, :cond_4

    aget-object v16, v4, v7

    .line 1106
    .restart local v16    # "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    if-nez v16, :cond_7

    .line 1105
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1109
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v13, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->set(J[B)V

    .line 1111
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v12, v18

    goto :goto_3
.end method
