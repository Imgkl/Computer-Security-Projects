.class Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$3;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridNioAsyncNotifyFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;

.field final synthetic val$msg:Ljava/lang/Object;

.field final synthetic val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$3;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;

    iput-object p5, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$3;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    iput-object p6, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$3;->val$msg:Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 4

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$3;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$3;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$3;->val$msg:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->proceedMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$3;->this$0:Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$3;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    # invokes: Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->handleException(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->access$000(Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    goto :goto_0
.end method
