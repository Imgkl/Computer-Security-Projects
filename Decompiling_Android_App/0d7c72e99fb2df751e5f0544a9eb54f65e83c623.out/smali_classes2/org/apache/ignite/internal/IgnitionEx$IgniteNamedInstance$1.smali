.class Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$1;
.super Lorg/apache/ignite/internal/util/typedef/CA;
.source "IgnitionEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->start0(Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;)V
    .locals 0

    .prologue
    .line 1446
    iput-object p1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$1;->this$0:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CA;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$1;->this$0:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    # getter for: Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->startLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->access$100(Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1449
    return-void
.end method
