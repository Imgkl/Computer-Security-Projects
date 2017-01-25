.class public Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder;
.super Ljavax/management/MBeanServerBuilder;
.source "TCKMBeanServerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljavax/management/MBeanServerBuilder;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public newMBeanServer(Ljava/lang/String;Ljavax/management/MBeanServer;Ljavax/management/MBeanServerDelegate;)Ljavax/management/MBeanServer;
    .locals 2
    .param p1, "dfltDomain"    # Ljava/lang/String;
    .param p2, "outer"    # Ljavax/management/MBeanServer;
    .param p3, "delegate"    # Ljavax/management/MBeanServerDelegate;

    .prologue
    .line 30
    new-instance v0, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;

    invoke-direct {v0, p3}, Lorg/apache/ignite/internal/tck/TCKMBeanServerBuilder$ServerDelegate;-><init>(Ljavax/management/MBeanServerDelegate;)V

    .line 31
    .local v0, "decoratingDelegate":Ljavax/management/MBeanServerDelegate;
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/sun/jmx/mbeanserver/JmxMBeanServer;->newMBeanServer(Ljava/lang/String;Ljavax/management/MBeanServer;Ljavax/management/MBeanServerDelegate;Z)Ljavax/management/MBeanServer;

    move-result-object v1

    return-object v1
.end method
