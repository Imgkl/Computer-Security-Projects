.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
.super Ljava/lang/Object;
.source "FileSwapSpaceSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Space"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cnt:Ljava/util/concurrent/atomic/AtomicLong;

.field private compactor:Ljava/lang/Thread;

.field private final initializer:Lorg/apache/ignite/internal/util/GridAtomicInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridAtomicInitializer",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private left:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

.field private final name:Ljava/lang/String;

.field private final parts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private final que:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;

.field private right:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

.field private sign:I

.field private final size:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

.field private writer:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1369
    const-class v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;Ljava/lang/String;)V
    .locals 4
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1409
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1374
    new-instance v0, Lorg/apache/ignite/internal/util/GridAtomicInitializer;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridAtomicInitializer;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->initializer:Lorg/apache/ignite/internal/util/GridAtomicInitializer;

    .line 1385
    new-instance v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;

    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$1500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$1600(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;-><init>(IILorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->que:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;

    .line 1388
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->parts:Ljava/util/concurrent/ConcurrentMap;

    .line 1392
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->size:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1395
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->cnt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1398
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->sign:I

    .line 1410
    sget-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1412
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->name:Ljava/lang/String;

    .line 1413
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;

    .prologue
    .line 1369
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;-><init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .prologue
    .line 1369
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .prologue
    .line 1369
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->left:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    return-object v0
.end method

.method static synthetic access$202(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    .param p1, "x1"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    .prologue
    .line 1369
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->left:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .prologue
    .line 1369
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->writer:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1369
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->writer:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .prologue
    .line 1369
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->que:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .prologue
    .line 1369
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->sign:I

    return v0
.end method

.method static synthetic access$2502(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    .param p1, "x1"    # I

    .prologue
    .line 1369
    iput p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->sign:I

    return p1
.end method

.method static synthetic access$2600(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .prologue
    .line 1369
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->compactor:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2602(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1369
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->compactor:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .prologue
    .line 1369
    invoke-direct {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->needCompact()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .prologue
    .line 1369
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->right:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    return-object v0
.end method

.method static synthetic access$302(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    .param p1, "x1"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    .prologue
    .line 1369
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->right:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    return-object p1
.end method

.method private needCompact()Z
    .locals 4

    .prologue
    .line 1725
    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->size()J

    move-result-wide v0

    .line 1727
    .local v0, "fileLen":J
    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$1500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->size:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    long-to-float v3, v0

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$2800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private partition(IZ)Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .param p1, "part"    # I
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1747
    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->parts:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 1749
    .local v0, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1750
    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->parts:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0    # "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .restart local v0    # "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    .line 1753
    .local v1, "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    if-eqz v1, :cond_0

    .line 1754
    move-object v0, v1

    .line 1757
    .end local v1    # "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    :cond_0
    return-object v0
.end method

.method private removeFromFile(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)V
    .locals 4
    .param p1, "val"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .prologue
    const/high16 v3, -0x80000000

    .line 1702
    :cond_0
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->idx:I
    invoke-static {p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$600(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v1

    .line 1704
    .local v1, "idx":I
    sget-boolean v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v1, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1706
    :cond_1
    invoke-virtual {p1, v1, v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->casIdx(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1707
    if-eqz v1, :cond_2

    .line 1708
    if-lez v1, :cond_4

    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->right:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    .line 1710
    .local v0, "f":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->tryRemove(ILorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)Z

    .line 1717
    .end local v0    # "f":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->needCompact()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1718
    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->compactor:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1719
    :cond_3
    return-void

    .line 1708
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->left:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    goto :goto_0
.end method

.method private transform(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
            ">;>;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;>;"
        }
    .end annotation

    .prologue
    .line 1802
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;>;"
    new-instance v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;-><init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 1570
    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->entriesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1572
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapKey;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->remove(Lorg/apache/ignite/spi/swapspace/SwapKey;Z)[B

    goto :goto_0

    .line 1574
    :cond_0
    return-void
.end method

.method public count()J
    .locals 2

    .prologue
    .line 1544
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->cnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public count(Ljava/util/Set;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1552
    .local p1, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    .line 1554
    .local v0, "cnt":J
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1555
    .local v4, "part":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->partition(IZ)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    .line 1557
    .local v3, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    if-eqz v3, :cond_0

    .line 1558
    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    goto :goto_0

    .line 1561
    .end local v3    # "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    .end local v4    # "part":Ljava/lang/Integer;
    :cond_1
    return-wide v0
.end method

.method public entriesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;>;"
        }
    .end annotation

    .prologue
    .line 1777
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->parts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1779
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;>;"
    new-instance v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$2;-><init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Ljava/util/Iterator;)V

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->transform(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public entriesIterator(I)Ljava/util/Iterator;
    .locals 2
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;>;"
        }
    .end annotation

    .prologue
    .line 1765
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->partition(IZ)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 1767
    .local v0, "partMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    if-nez v0, :cond_0

    .line 1768
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1770
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->transform(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 1421
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->initializer:Lorg/apache/ignite/internal/util/GridAtomicInitializer;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->succeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1527
    :goto_0
    return-void

    .line 1424
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$1800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1425
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$1800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1428
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->initializer:Lorg/apache/ignite/internal/util/GridAtomicInitializer;

    new-instance v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$1;-><init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridAtomicInitializer;->init(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partitions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1736
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->parts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/apache/ignite/spi/swapspace/SwapKey;)[B
    .locals 5
    .param p1, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1644
    sget-boolean v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1646
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/spi/swapspace/SwapKey;->partition()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->partition(IZ)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 1648
    .local v0, "part":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    if-nez v0, :cond_2

    .line 1656
    :cond_1
    :goto_0
    return-object v2

    .line 1651
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 1653
    .local v1, "swapVal":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    if-eqz v1, :cond_1

    .line 1656
    invoke-virtual {v1, p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->value(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)[B

    move-result-object v2

    goto :goto_0
.end method

.method public remove(Lorg/apache/ignite/spi/swapspace/SwapKey;Z)[B
    .locals 6
    .param p1, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p2, "read"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1668
    sget-boolean v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1670
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/spi/swapspace/SwapKey;->partition()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->partition(IZ)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    .line 1672
    .local v1, "part":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    if-nez v1, :cond_2

    .line 1694
    :cond_1
    :goto_0
    return-object v0

    .line 1675
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 1677
    .local v2, "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    if-eqz v2, :cond_1

    .line 1680
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->size:Ljava/util/concurrent/atomic/AtomicLong;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v4

    neg-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1682
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->cnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 1684
    const/4 v0, 0x0

    .line 1686
    .local v0, "bytes":[B
    if-eqz p2, :cond_3

    .line 1687
    invoke-virtual {v2, p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->value(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)[B

    move-result-object v0

    .line 1689
    sget-boolean v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1692
    :cond_3
    invoke-direct {p0, v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->removeFromFile(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)V

    goto :goto_0
.end method

.method public size()J
    .locals 4

    .prologue
    .line 1535
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->left:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->length()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->right:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 1582
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->writer:Ljava/lang/Thread;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 1583
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->compactor:Ljava/lang/Thread;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 1585
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->writer:Ljava/lang/Thread;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;)V

    .line 1586
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->compactor:Ljava/lang/Thread;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;)V

    .line 1588
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->left:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->delete()Z

    .line 1589
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->right:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;->delete()Z

    .line 1590
    return-void
.end method

.method public store(Lorg/apache/ignite/spi/swapspace/SwapKey;[B)V
    .locals 6
    .param p1, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p2, "val"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 1600
    sget-boolean v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1602
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/spi/swapspace/SwapKey;->partition()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->partition(IZ)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    .line 1604
    .local v1, "part":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    sget-boolean v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1606
    :cond_1
    if-nez p2, :cond_3

    .line 1607
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 1609
    .local v2, "swapVal":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    if-eqz v2, :cond_2

    .line 1610
    invoke-direct {p0, v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->removeFromFile(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)V

    .line 1612
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->size:Ljava/util/concurrent/atomic/AtomicLong;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v4

    neg-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1613
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->cnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 1634
    :cond_2
    :goto_0
    return-void

    .line 1619
    .end local v2    # "swapVal":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    :cond_3
    new-instance v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    invoke-direct {v2, p2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;-><init>([B)V

    .line 1621
    .restart local v2    # "swapVal":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 1623
    .local v0, "old":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    if-eqz v0, :cond_4

    .line 1624
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->size:Ljava/util/concurrent/atomic/AtomicLong;

    array-length v4, p2

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1626
    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->removeFromFile(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)V

    .line 1633
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->que:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;

    invoke-virtual {v3, v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->add(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)V

    goto :goto_0

    .line 1629
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->size:Ljava/util/concurrent/atomic/AtomicLong;

    array-length v4, p2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1630
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->cnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_1
.end method
