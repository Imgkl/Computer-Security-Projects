.class final Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "IgniteTxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AtomicInt"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "initVal"    # I

    .prologue
    .line 2156
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2157
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;

    .prologue
    .line 2148
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2162
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2167
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
