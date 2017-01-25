.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatisticsPrinter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5151
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V
    .locals 4

    .prologue
    .line 5155
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .line 5156
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp-disco-stats-printer"

    iget-object v2, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 5158
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5160
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5162
    :cond_1
    iget v0, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadPri:I

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;->setPriority(I)V

    .line 5163
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 5168
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5169
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Statistics printer has been started."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5171
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5172
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 5174
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$StatisticsPrinter;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V

    goto :goto_0

    .line 5176
    :cond_1
    return-void
.end method
