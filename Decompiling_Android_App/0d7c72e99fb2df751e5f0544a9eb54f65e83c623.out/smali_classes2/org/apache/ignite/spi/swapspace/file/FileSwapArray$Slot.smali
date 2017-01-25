.class final Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;
.super Ljava/lang/Object;
.source "FileSwapArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Slot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final arr:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TX;>;"
        }
    .end annotation
.end field

.field private final arrIdx:I

.field private final idx:I


# direct methods
.method private constructor <init>(ILjava/util/concurrent/atomic/AtomicReferenceArray;I)V
    .locals 0
    .param p1, "arrIdx"    # I
    .param p3, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TX;>;I)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot<TX;>;"
    .local p2, "arr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TX;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->arrIdx:I

    .line 162
    iput-object p2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->arr:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 163
    iput p3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->idx:I

    .line 164
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/concurrent/atomic/AtomicReferenceArray;ILorg/apache/ignite/spi/swapspace/file/FileSwapArray$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$1;

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot<TX;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;-><init>(ILjava/util/concurrent/atomic/AtomicReferenceArray;I)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->arr:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;

    .prologue
    .line 145
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->idx:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;

    .prologue
    .line 145
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->arrIdx:I

    return v0
.end method

.method private set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot<TX;>;"
    .local p1, "x":Ljava/lang/Object;, "TX;"
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->arr:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->idx:I

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 187
    return-void
.end method


# virtual methods
.method public cas(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TX;)Z"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot<TX;>;"
    .local p1, "exp":Ljava/lang/Object;, "TX;"
    .local p2, "x":Ljava/lang/Object;, "TX;"
    if-eq p1, p2, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->arr:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->idx:I

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot<TX;>;"
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->arr:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->idx:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
