.class Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;
.super Ljava/lang/Object;
.source "GridStringBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridStringBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedBuilder"
.end annotation


# instance fields
.field private builder:Lorg/apache/ignite/internal/util/typedef/internal/SB;

.field private used:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;->builder:Lorg/apache/ignite/internal/util/typedef/internal/SB;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/GridStringBuilderFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/GridStringBuilderFactory$1;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public acquire()Lorg/apache/ignite/internal/util/typedef/internal/SB;
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;->used:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 81
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;->used:Z

    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;->builder:Lorg/apache/ignite/internal/util/typedef/internal/SB;

    goto :goto_0
.end method

.method public release(Lorg/apache/ignite/internal/util/typedef/internal/SB;)V
    .locals 2
    .param p1, "builder"    # Lorg/apache/ignite/internal/util/typedef/internal/SB;

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;->builder:Lorg/apache/ignite/internal/util/typedef/internal/SB;

    if-ne v0, p1, :cond_0

    .line 92
    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->setLength(I)V

    .line 94
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;->used:Z

    .line 96
    :cond_0
    return-void
.end method
