.class Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$5;
.super Ljava/lang/Object;
.source "TcpDiscoveryStatistics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageSent(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$5;->this$0:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 333
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics$5;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
