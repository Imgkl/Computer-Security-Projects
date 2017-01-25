.class Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode$1;
.super Ljava/lang/Object;
.source "TcpDiscoveryNode.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attributes()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode$1;->this$0:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 168
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode$1;->apply(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v0, "org.apache.ignite.security.cred"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
