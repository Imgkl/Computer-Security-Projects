.class final Lorg/apache/ignite/internal/util/IgniteUtils$16;
.super Ljava/lang/Object;
.source "IgniteUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/IgniteUtils;->resetLocalHost()Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/net/NetworkInterface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1642
    check-cast p1, Ljava/net/NetworkInterface;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/net/NetworkInterface;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/IgniteUtils$16;->compare(Ljava/net/NetworkInterface;Ljava/net/NetworkInterface;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/net/NetworkInterface;Ljava/net/NetworkInterface;)I
    .locals 2
    .param p1, "itf1"    # Ljava/net/NetworkInterface;
    .param p2, "itf2"    # Ljava/net/NetworkInterface;

    .prologue
    .line 1645
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
