.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;
.super Ljava/lang/Object;
.source "GridIoManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayListener"
.end annotation


# instance fields
.field private volatile arr:[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# direct methods
.method varargs constructor <init>([Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    .locals 0
    .param p1, "arr"    # [Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .prologue
    .line 1537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1538
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->arr:[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 1539
    return-void
.end method


# virtual methods
.method declared-synchronized add(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z
    .locals 3
    .param p1, "l"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .prologue
    .line 1613
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->arr:[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    .local v0, "arr0":[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    if-nez v0, :cond_0

    .line 1616
    const/4 v2, 0x0

    .line 1626
    :goto_0
    monitor-exit p0

    return v2

    .line 1618
    :cond_0
    :try_start_1
    array-length v1, v0

    .line 1620
    .local v1, "oldLen":I
    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "arr0":[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    check-cast v0, [Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 1622
    .restart local v0    # "arr0":[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    aput-object p1, v0, v1

    .line 1624
    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->arr:[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1626
    const/4 v2, 0x1

    goto :goto_0

    .line 1613
    .end local v0    # "arr0":[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .end local v1    # "oldLen":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->arr:[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 1548
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->arr:[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 1550
    .local v1, "arr0":[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    if-nez v1, :cond_1

    .line 1555
    :cond_0
    return-void

    .line 1553
    :cond_1
    move-object v0, v1

    .local v0, "arr$":[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 1554
    .local v3, "l":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    invoke-interface {v3, p1, p2}, Lorg/apache/ignite/internal/managers/communication/GridMessageListener;->onMessage(Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1553
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method declared-synchronized remove(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z
    .locals 7
    .param p1, "l"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1569
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->arr:[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1571
    .local v0, "arr0":[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    if-nez v0, :cond_1

    .line 1604
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 1574
    :cond_1
    :try_start_1
    array-length v6, v0

    if-ne v6, v5, :cond_2

    .line 1575
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1578
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->arr:[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    move v4, v5

    .line 1580
    goto :goto_0

    .line 1583
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 1584
    aget-object v6, v0, v2

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1585
    array-length v4, v0

    add-int/lit8 v3, v4, -0x1

    .line 1587
    .local v3, "newLen":I
    if-ne v2, v3, :cond_3

    .line 1588
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    iput-object v4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->arr:[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    :goto_2
    move v4, v5

    .line 1600
    goto :goto_0

    .line 1590
    :cond_3
    new-array v1, v3, [Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 1592
    .local v1, "arr1":[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    if-eqz v2, :cond_4

    .line 1593
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v4, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1595
    :cond_4
    add-int/lit8 v4, v2, 0x1

    sub-int v6, v3, v2

    invoke-static {v0, v4, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1597
    iput-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ArrayListener;->arr:[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1569
    .end local v0    # "arr0":[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .end local v1    # "arr1":[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .end local v2    # "i":I
    .end local v3    # "newLen":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1583
    .restart local v0    # "arr0":[Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
