.class Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$2;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridNioAsyncNotifyFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;

.field final synthetic val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$2;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;

    iput-object p5, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$2;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$2;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$2;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->proceedSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$2;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$2;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    # invokes: Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->handleException(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->access$000(Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    goto :goto_0
.end method
