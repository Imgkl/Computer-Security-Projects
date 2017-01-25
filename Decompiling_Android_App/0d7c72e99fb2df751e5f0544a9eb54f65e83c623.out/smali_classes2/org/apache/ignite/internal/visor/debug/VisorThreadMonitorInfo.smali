.class public Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
.super Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
.source "VisorThreadMonitorInfo.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final stackDepth:Ljava/lang/Integer;

.field private final stackFrame:Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1, "clsName"    # Ljava/lang/String;
    .param p2, "identityHashCode"    # Ljava/lang/Integer;
    .param p3, "stackDepth"    # Ljava/lang/Integer;
    .param p4, "stackFrame"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    iput-object p3, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;->stackDepth:Ljava/lang/Integer;

    .line 48
    iput-object p4, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;->stackFrame:Ljava/lang/StackTraceElement;

    .line 49
    return-void
.end method

.method public static from(Ljava/lang/management/MonitorInfo;)Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
    .locals 5
    .param p0, "mi"    # Ljava/lang/management/MonitorInfo;

    .prologue
    .line 53
    sget-boolean v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;

    invoke-virtual {p0}, Ljava/lang/management/MonitorInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/management/MonitorInfo;->getIdentityHashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/management/MonitorInfo;->getLockedStackDepth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/management/MonitorInfo;->getLockedStackFrame()Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/StackTraceElement;)V

    return-object v0
.end method


# virtual methods
.method public stackDepth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;->stackDepth:Ljava/lang/Integer;

    return-object v0
.end method

.method public stackFrame()Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;->stackFrame:Ljava/lang/StackTraceElement;

    return-object v0
.end method
