.class Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;
.super Ljava/lang/Object;
.source "IgfsPerBlockLruEvictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetaEntry"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 341
    const-class v0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/jsr166/ConcurrentLinkedDeque8$Node;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;>;I)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/cache/eviction/EvictableEntry<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    sget-boolean v0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 356
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 358
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 359
    iput p2, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->size:I

    .line 360
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsr166/ConcurrentLinkedDeque8$Node;ILorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$1;

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;-><init>(Lorg/jsr166/ConcurrentLinkedDeque8$Node;I)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;

    .prologue
    .line 341
    invoke-direct {p0}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->node()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;

    .prologue
    .line 341
    invoke-direct {p0}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->size()I

    move-result v0

    return v0
.end method

.method private node()Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;>;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    return-object v0
.end method

.method private size()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy$MetaEntry;->size:I

    return v0
.end method
