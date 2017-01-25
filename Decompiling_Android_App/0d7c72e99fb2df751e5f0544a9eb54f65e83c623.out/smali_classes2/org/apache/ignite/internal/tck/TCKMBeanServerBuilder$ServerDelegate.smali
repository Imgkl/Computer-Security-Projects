.class Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;
.super Ljavax/management/MBeanServerDelegate;
.source "TCKMBeanServerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerDelegate"
.end annotation


# instance fields
.field private final delegate:Ljavax/management/MBeanServerDelegate;


# direct methods
.method constructor <init>(Ljavax/management/MBeanServerDelegate;)V
    .locals 0
    .param p1, "delegate"    # Ljavax/management/MBeanServerDelegate;

    .prologue
    .line 47
    invoke-direct {p0}, Ljavax/management/MBeanServerDelegate;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    .line 49
    return-void
.end method


# virtual methods
.method public declared-synchronized addNotificationListener(Ljavax/management/NotificationListener;Ljavax/management/NotificationFilter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "lsnr"    # Ljavax/management/NotificationListener;
    .param p2, "filter"    # Ljavax/management/NotificationFilter;
    .param p3, "handback"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/management/MBeanServerDelegate;->addNotificationListener(Ljavax/management/NotificationListener;Ljavax/management/NotificationFilter;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    invoke-virtual {v0}, Ljavax/management/MBeanServerDelegate;->getImplementationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    invoke-virtual {v0}, Ljavax/management/MBeanServerDelegate;->getImplementationVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    invoke-virtual {v0}, Ljavax/management/MBeanServerDelegate;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getMBeanServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    const-string v0, "org.jsr107.tck.management.agentId"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNotificationInfo()[Ljavax/management/MBeanNotificationInfo;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    invoke-virtual {v0}, Ljavax/management/MBeanServerDelegate;->getNotificationInfo()[Ljavax/management/MBeanNotificationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSpecificationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    invoke-virtual {v0}, Ljavax/management/MBeanServerDelegate;->getSpecificationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    invoke-virtual {v0}, Ljavax/management/MBeanServerDelegate;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    invoke-virtual {v0}, Ljavax/management/MBeanServerDelegate;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removeNotificationListener(Ljavax/management/NotificationListener;)V
    .locals 1
    .param p1, "lsnr"    # Ljavax/management/NotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/ListenerNotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    invoke-virtual {v0, p1}, Ljavax/management/MBeanServerDelegate;->removeNotificationListener(Ljavax/management/NotificationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNotificationListener(Ljavax/management/NotificationListener;Ljavax/management/NotificationFilter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "lsnr"    # Ljavax/management/NotificationListener;
    .param p2, "filter"    # Ljavax/management/NotificationFilter;
    .param p3, "handback"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/ListenerNotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/management/MBeanServerDelegate;->removeNotificationListener(Ljavax/management/NotificationListener;Ljavax/management/NotificationFilter;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendNotification(Ljavax/management/Notification;)V
    .locals 1
    .param p1, "notification"    # Ljavax/management/Notification;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;->delegate:Ljavax/management/MBeanServerDelegate;

    invoke-virtual {v0, p1}, Ljavax/management/MBeanServerDelegate;->sendNotification(Ljavax/management/Notification;)V

    .line 111
    return-void
.end method
