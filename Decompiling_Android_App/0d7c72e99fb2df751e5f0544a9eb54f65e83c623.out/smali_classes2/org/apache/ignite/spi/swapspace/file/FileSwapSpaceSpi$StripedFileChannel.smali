.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;
.super Ljava/lang/Object;
.source "FileSwapSpaceSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StripedFileChannel"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final chs:[Ljava/nio/channels/FileChannel;

.field private final enter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final rafs:[Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 902
    const-class v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/File;I)V
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .param p2, "stripes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->enter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 918
    sget-boolean v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-lez p2, :cond_0

    add-int/lit8 v2, p2, -0x1

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "stripes must be positive and power of two."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 920
    :cond_1
    new-array v2, p2, [Ljava/io/RandomAccessFile;

    iput-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->rafs:[Ljava/io/RandomAccessFile;

    .line 921
    new-array v2, p2, [Ljava/nio/channels/FileChannel;

    iput-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->chs:[Ljava/nio/channels/FileChannel;

    .line 923
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 924
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 926
    .local v1, "raf":Ljava/io/RandomAccessFile;
    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->rafs:[Ljava/io/RandomAccessFile;

    aput-object v1, v2, v0

    .line 927
    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->chs:[Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    aput-object v3, v2, v0

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 929
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    return-void
.end method

.method static synthetic access$500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;)[Ljava/nio/channels/FileChannel;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;

    .prologue
    .line 902
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->chs:[Ljava/nio/channels/FileChannel;

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 4

    .prologue
    .line 949
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->rafs:[Ljava/io/RandomAccessFile;

    .local v0, "arr$":[Ljava/io/RandomAccessFile;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 950
    .local v3, "raf":Ljava/io/RandomAccessFile;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 949
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 951
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    return-void
.end method

.method read(Ljava/nio/ByteBuffer;J)I
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 940
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->enter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->chs:[Ljava/nio/channels/FileChannel;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int v0, v1, v2

    .line 942
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;->chs:[Ljava/nio/channels/FileChannel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v1

    return v1
.end method
