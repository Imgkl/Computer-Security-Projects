.class final Lorg/apache/ignite/internal/util/lang/GridFunc$133;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->limit(I)Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private cnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$n:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 6140
    iput p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$133;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$133;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 2

    .prologue
    .line 6144
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$133;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$133;->val$n:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
