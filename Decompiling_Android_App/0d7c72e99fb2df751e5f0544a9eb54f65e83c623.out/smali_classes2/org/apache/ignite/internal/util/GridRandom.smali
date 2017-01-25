.class public Lorg/apache/ignite/internal/util/GridRandom;
.super Ljava/util/Random;
.source "GridRandom.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private rnd:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/GridRandom;-><init>(J)V

    .line 38
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridRandom;->setSeed(J)V

    .line 45
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 4
    .param p1, "bits"    # I

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridRandom;->rnd:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/GridRandom;->rnd:J

    .line 55
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridRandom;->rnd:J

    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    .line 49
    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/GridRandom;->rnd:J

    .line 50
    return-void
.end method
