.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;
.super Ljava/lang/Object;
.source "FileSwapSpaceSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Compact"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private beg:J

.field private buf:Ljava/nio/ByteBuffer;

.field private final bufSize:I

.field private bytes:[B

.field private compacted:I

.field private end:J

.field final synthetic this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

.field private final vals:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1182
    const-class v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;Ljava/util/ArrayDeque;I)V
    .locals 2
    .param p3, "bufSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "vals":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    const-wide/16 v0, -0x1

    .line 1208
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1196
    iput-wide v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->beg:J

    .line 1199
    iput-wide v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->end:J

    .line 1209
    sget-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1211
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->vals:Ljava/util/ArrayDeque;

    .line 1212
    iput p3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->bufSize:I

    .line 1213
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;Ljava/util/ArrayDeque;ILorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    .param p2, "x1"    # Ljava/util/ArrayDeque;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;

    .prologue
    .line 1182
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;-><init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;Ljava/util/ArrayDeque;I)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1182
    invoke-direct {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->doCompact()V

    return-void
.end method

.method private doCompact()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 1277
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->arr:Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;
    invoke-static {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->access$1300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->size()I

    move-result v1

    .line 1279
    .local v1, "idx":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_8

    .line 1280
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->arr:Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;
    invoke-static {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->access$1300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->slot(I)Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;

    move-result-object v3

    .line 1282
    .local v3, "s":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot<Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    sget-boolean v8, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    if-nez v3, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1284
    :cond_1
    invoke-virtual {v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 1286
    .local v6, "v":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    if-eqz v6, :cond_0

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idx:I
    invoke-static {v6}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$600(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v8

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_0

    .line 1289
    iget-wide v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->end:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 1290
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->pos:J
    invoke-static {v6}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$1200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)J

    move-result-wide v8

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static {v6}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->end:J

    .line 1292
    :cond_2
    iget-wide v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->end:J

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->pos:J
    invoke-static {v6}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$1200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 1294
    .local v4, "size":J
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    if-nez v8, :cond_4

    iget v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->bufSize:I

    :goto_1
    int-to-long v8, v8

    cmp-long v8, v8, v4

    if-gez v8, :cond_6

    .line 1295
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->vals:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1296
    sget-boolean v8, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->bytes:[B

    if-nez v8, :cond_3

    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_5

    :cond_3
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1294
    :cond_4
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    goto :goto_1

    .line 1298
    :cond_5
    long-to-int v8, v4

    new-array v8, v8, [B

    iput-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->bytes:[B

    .line 1300
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->bytes:[B

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    .line 1314
    :cond_6
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->pos:J
    invoke-static {v6}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$1200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->beg:J

    .line 1316
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->vals:Ljava/util/ArrayDeque;

    invoke-virtual {v8, v6}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1318
    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->cas(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1302
    :cond_7
    iget v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->compacted:I

    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->vals:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    if-ne v8, v9, :cond_a

    .line 1321
    .end local v3    # "s":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot<Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    .end local v4    # "size":J
    .end local v6    # "v":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    :cond_8
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->vals:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1322
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->arr:Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;
    invoke-static {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->access$1300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->truncate(I)V

    .line 1324
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->writeCh:Ljava/nio/channels/FileChannel;
    invoke-static {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->access$1100(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1326
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    # setter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->len:J
    invoke-static {v8, v12, v13}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->access$1402(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;J)J

    .line 1328
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    invoke-virtual {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->reopenReadChannel()V

    .line 1355
    :cond_9
    :goto_2
    return-void

    .line 1305
    .restart local v3    # "s":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot<Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    .restart local v4    # "size":J
    .restart local v6    # "v":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    :cond_a
    invoke-direct {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->readAndCompact()V

    .line 1308
    add-int/lit8 v1, v1, 0x1

    .line 1310
    goto/16 :goto_0

    .line 1333
    .end local v3    # "s":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot<Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    .end local v4    # "size":J
    .end local v6    # "v":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    :cond_b
    iget v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->compacted:I

    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->vals:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    if-eq v8, v9, :cond_c

    .line 1334
    invoke-direct {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->readAndCompact()V

    .line 1336
    :cond_c
    const/4 v2, 0x0

    .line 1338
    .local v2, "pos":I
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->vals:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 1339
    .local v7, "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    int-to-long v8, v2

    iget-object v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->bytes:[B

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->set(J[B)V

    .line 1341
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static {v7}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v8

    add-int/2addr v2, v8

    .line 1342
    goto :goto_3

    .line 1344
    .end local v7    # "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    :cond_d
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1346
    sget-boolean v8, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    if-nez v8, :cond_e

    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    if-eq v8, v2, :cond_e

    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1348
    :cond_e
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->arr:Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;
    invoke-static {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->access$1300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->truncate(I)V

    .line 1350
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->len:J
    invoke-static {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->access$1400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)J

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->beg:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xa00000

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    .line 1351
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->writeCh:Ljava/nio/channels/FileChannel;
    invoke-static {v8}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->access$1100(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Ljava/nio/channels/FileChannel;

    move-result-object v8

    iget-wide v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->beg:J

    invoke-virtual {v8, v10, v11}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1353
    iget-object v8, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    iget-wide v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->beg:J

    # setter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->len:J
    invoke-static {v8, v10, v11}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->access$1402(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;J)J

    goto/16 :goto_2
.end method

.method private readAndCompact()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1221
    sget-boolean v9, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    iget-wide v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->beg:J

    const-wide/16 v12, -0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1223
    :cond_0
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    if-nez v9, :cond_1

    .line 1224
    iget v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->bufSize:I

    new-array v9, v9, [B

    iput-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->bytes:[B

    .line 1226
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->bytes:[B

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    .line 1229
    :cond_1
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 1231
    .local v4, "pos":I
    iget-wide v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->end:J

    iget-wide v12, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->beg:J

    sub-long/2addr v10, v12

    int-to-long v12, v4

    add-long/2addr v10, v12

    long-to-int v3, v10

    .line 1233
    .local v3, "lim":I
    sget-boolean v9, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    if-gez v4, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1234
    :cond_2
    sget-boolean v9, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    if-nez v9, :cond_3

    if-lt v4, v3, :cond_3

    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 1235
    :cond_3
    sget-boolean v9, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    if-le v3, v9, :cond_4

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1237
    :cond_4
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1239
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->writeCh:Ljava/nio/channels/FileChannel;
    invoke-static {v9}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->access$1100(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Ljava/nio/channels/FileChannel;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    iget-wide v12, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->beg:J

    invoke-virtual {v9, v10, v12, v13}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v6

    .line 1241
    .local v6, "res":I
    sget-boolean v9, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    if-nez v9, :cond_5

    sub-int v9, v3, v4

    if-eq v6, v9, :cond_5

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1243
    :cond_5
    move v5, v4

    .line 1244
    .local v5, "prevEnd":I
    iget-wide v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->beg:J

    int-to-long v12, v4

    sub-long v0, v10, v12

    .line 1246
    .local v0, "delta":J
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->vals:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    .local v2, "j":I
    :goto_0
    iget v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->compacted:I

    if-le v2, v9, :cond_8

    .line 1247
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->vals:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 1249
    .local v7, "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->pos:J
    invoke-static {v7}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$1200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)J

    move-result-wide v10

    sub-long/2addr v10, v0

    long-to-int v8, v10

    .line 1251
    .local v8, "valPos":I
    if-eq v5, v8, :cond_7

    .line 1252
    sget-boolean v9, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    if-nez v9, :cond_6

    if-lt v5, v8, :cond_6

    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 1254
    :cond_6
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->bytes:[B

    iget-object v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->bytes:[B

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static {v7}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v11

    invoke-static {v9, v8, v10, v5, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 1257
    :cond_7
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static {v7}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v9

    add-int/2addr v5, v9

    .line 1259
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->vals:Ljava/util/ArrayDeque;

    invoke-virtual {v9, v7}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1246
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1262
    .end local v7    # "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    .end local v8    # "valPos":I
    :cond_8
    sget-boolean v9, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->$assertionsDisabled:Z

    if-nez v9, :cond_9

    if-gtz v5, :cond_9

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v5}, Ljava/lang/AssertionError;-><init>(I)V

    throw v9

    .line 1264
    :cond_9
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1266
    const-wide/16 v10, -0x1

    iput-wide v10, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->end:J

    .line 1268
    iget-object v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->vals:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    iput v9, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->compacted:I

    .line 1269
    return-void
.end method


# virtual methods
.method public result()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile$Compact;->buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method
