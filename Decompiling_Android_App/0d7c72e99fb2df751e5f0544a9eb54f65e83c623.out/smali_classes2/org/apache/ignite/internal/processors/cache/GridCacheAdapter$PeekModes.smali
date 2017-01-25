.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekModes"
.end annotation


# instance fields
.field private backup:Z

.field private heap:Z

.field private near:Z

.field private offheap:Z

.field private primary:Z

.field private swap:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;

    .prologue
    .line 5316
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    .prologue
    .line 5316
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->primary:Z

    return v0
.end method

.method static synthetic access$002(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    .param p1, "x1"    # Z

    .prologue
    .line 5316
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->primary:Z

    return p1
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    .prologue
    .line 5316
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->backup:Z

    return v0
.end method

.method static synthetic access$102(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    .param p1, "x1"    # Z

    .prologue
    .line 5316
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->backup:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    .prologue
    .line 5316
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->heap:Z

    return v0
.end method

.method static synthetic access$202(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    .param p1, "x1"    # Z

    .prologue
    .line 5316
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->heap:Z

    return p1
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    .prologue
    .line 5316
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->near:Z

    return v0
.end method

.method static synthetic access$302(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    .param p1, "x1"    # Z

    .prologue
    .line 5316
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->near:Z

    return p1
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    .prologue
    .line 5316
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->swap:Z

    return v0
.end method

.method static synthetic access$402(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    .param p1, "x1"    # Z

    .prologue
    .line 5316
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->swap:Z

    return p1
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    .prologue
    .line 5316
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->offheap:Z

    return v0
.end method

.method static synthetic access$502(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;
    .param p1, "x1"    # Z

    .prologue
    .line 5316
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;->offheap:Z

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5337
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$PeekModes;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
