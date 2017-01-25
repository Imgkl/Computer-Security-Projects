.class public Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;
.super Ljava/lang/Object;
.source "VisorThreadInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_FRAMES:I = 0x8

.field private static final serialVersionUID:J


# instance fields
.field private final blockedCnt:Ljava/lang/Long;

.field private final blockedTime:Ljava/lang/Long;

.field private final id:Ljava/lang/Long;

.field private final inNative:Ljava/lang/Boolean;

.field private final lock:Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

.field private final lockName:Ljava/lang/String;

.field private final lockOwnerId:Ljava/lang/Long;

.field private final lockOwnerName:Ljava/lang/String;

.field private final lockedMonitors:[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;

.field private final locks:[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

.field private final name:Ljava/lang/String;

.field private final stackTrace:[Ljava/lang/StackTraceElement;

.field private final state:Ljava/lang/Thread$State;

.field private final suspended:Ljava/lang/Boolean;

.field private final waitedCnt:Ljava/lang/Long;

.field private final waitedTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Thread$State;Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;[Ljava/lang/StackTraceElement;[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/Long;
    .param p3, "state"    # Ljava/lang/Thread$State;
    .param p4, "lock"    # Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    .param p5, "lockName"    # Ljava/lang/String;
    .param p6, "lockOwnerId"    # Ljava/lang/Long;
    .param p7, "lockOwnerName"    # Ljava/lang/String;
    .param p8, "inNative"    # Ljava/lang/Boolean;
    .param p9, "suspended"    # Ljava/lang/Boolean;
    .param p10, "waitedCnt"    # Ljava/lang/Long;
    .param p11, "waitedTime"    # Ljava/lang/Long;
    .param p12, "blockedCnt"    # Ljava/lang/Long;
    .param p13, "blockedTime"    # Ljava/lang/Long;
    .param p14, "stackTrace"    # [Ljava/lang/StackTraceElement;
    .param p15, "locks"    # [Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    .param p16, "lockedMonitors"    # [Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->name:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->id:Ljava/lang/Long;

    .line 101
    iput-object p3, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->state:Ljava/lang/Thread$State;

    .line 102
    iput-object p4, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lock:Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    .line 103
    iput-object p5, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockName:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockOwnerId:Ljava/lang/Long;

    .line 105
    iput-object p7, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockOwnerName:Ljava/lang/String;

    .line 106
    iput-object p8, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->inNative:Ljava/lang/Boolean;

    .line 107
    iput-object p9, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->suspended:Ljava/lang/Boolean;

    .line 108
    iput-object p10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->waitedCnt:Ljava/lang/Long;

    .line 109
    iput-object p11, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->waitedTime:Ljava/lang/Long;

    .line 110
    iput-object p12, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->blockedCnt:Ljava/lang/Long;

    .line 111
    iput-object p13, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->blockedTime:Ljava/lang/Long;

    .line 112
    iput-object p14, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 113
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->locks:[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    .line 114
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockedMonitors:[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;

    .line 115
    return-void
.end method

.method public static from(Ljava/lang/management/ThreadInfo;)Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;
    .locals 22
    .param p0, "ti"    # Ljava/lang/management/ThreadInfo;

    .prologue
    .line 119
    sget-boolean v2, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 121
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockedSynchronizers()[Ljava/lang/management/LockInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockedSynchronizers()[Ljava/lang/management/LockInfo;

    move-result-object v2

    array-length v2, v2

    new-array v0, v2, [Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    move-object/from16 v17, v0

    .line 124
    .local v17, "linfos":[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockedSynchronizers()[Ljava/lang/management/LockInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 125
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockedSynchronizers()[Ljava/lang/management/LockInfo;

    move-result-object v2

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_2

    .line 126
    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockedSynchronizers()[Ljava/lang/management/LockInfo;

    move-result-object v2

    aget-object v2, v2, v19

    invoke-static {v2}, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;->from(Ljava/lang/management/LockInfo;)Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    move-result-object v2

    aput-object v2, v17, v19

    .line 125
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 121
    .end local v17    # "linfos":[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    .end local v19    # "i":I
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 128
    .restart local v17    # "linfos":[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockedMonitors()[Ljava/lang/management/MonitorInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockedMonitors()[Ljava/lang/management/MonitorInfo;

    move-result-object v2

    array-length v2, v2

    new-array v0, v2, [Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;

    move-object/from16 v18, v0

    .line 131
    .local v18, "minfos":[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockedMonitors()[Ljava/lang/management/MonitorInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 132
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockedMonitors()[Ljava/lang/management/MonitorInfo;

    move-result-object v2

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_4

    .line 133
    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockedMonitors()[Ljava/lang/management/MonitorInfo;

    move-result-object v2

    aget-object v2, v2, v19

    invoke-static {v2}, Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;->from(Ljava/lang/management/MonitorInfo;)Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;

    move-result-object v2

    aput-object v2, v18, v19

    .line 132
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 128
    .end local v18    # "minfos":[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
    .end local v19    # "i":I
    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    .line 135
    .restart local v18    # "minfos":[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
    :cond_4
    new-instance v2, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getThreadState()Ljava/lang/Thread$State;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockInfo()Ljava/lang/management/LockInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockInfo()Ljava/lang/management/LockInfo;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;->from(Ljava/lang/management/LockInfo;)Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    move-result-object v6

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->isInNative()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->isSuspended()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getWaitedCount()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getWaitedTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getBlockedCount()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getBlockedTime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/management/ThreadInfo;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v16

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Thread$State;Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;[Ljava/lang/StackTraceElement;[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;)V

    return-object v2

    :cond_5
    const/4 v6, 0x0

    goto :goto_4
.end method


# virtual methods
.method public blockedCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->blockedCnt:Ljava/lang/Long;

    return-object v0
.end method

.method public blockedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->blockedTime:Ljava/lang/Long;

    return-object v0
.end method

.method public id()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public inNative()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->inNative:Ljava/lang/Boolean;

    return-object v0
.end method

.method public lock()Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lock:Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    return-object v0
.end method

.method public lockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockName:Ljava/lang/String;

    return-object v0
.end method

.method public lockOwnerId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockOwnerId:Ljava/lang/Long;

    return-object v0
.end method

.method public lockOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockOwnerName:Ljava/lang/String;

    return-object v0
.end method

.method public lockedMonitors()[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockedMonitors:[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;

    return-object v0
.end method

.method public locks()[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->locks:[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public stackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->stackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public state()Ljava/lang/Thread$State;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->state:Ljava/lang/Thread$State;

    return-object v0
.end method

.method public suspended()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->suspended:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0xa

    .line 268
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->id:Ljava/lang/Long;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->state:Ljava/lang/Thread$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .local v7, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockName:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 271
    const-string v9, " on "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_0
    iget-object v9, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockOwnerName:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 274
    const-string v9, " owned by \""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockOwnerName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" Id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockOwnerId:Ljava/lang/Long;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    :cond_1
    iget-object v9, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->suspended:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 277
    const-string v9, " (suspended)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_2
    iget-object v9, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->inNative:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 280
    const-string v9, " (in native)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_3
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    iget-object v9, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->stackTrace:[Ljava/lang/StackTraceElement;

    array-length v9, v9

    const/16 v10, 0x8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 286
    .local v5, "maxFrames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_7

    .line 287
    iget-object v9, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->stackTrace:[Ljava/lang/StackTraceElement;

    aget-object v8, v9, v1

    .line 289
    .local v8, "ste":Ljava/lang/StackTraceElement;
    const-string v9, "\tat "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    if-nez v1, :cond_4

    iget-object v9, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lock:Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    if-eqz v9, :cond_4

    .line 292
    sget-object v9, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo$1;->$SwitchMap$java$lang$Thread$State:[I

    iget-object v10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->state:Ljava/lang/Thread$State;

    invoke-virtual {v10}, Ljava/lang/Thread$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 309
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lockedMonitors:[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;

    .local v0, "arr$":[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_6

    aget-object v6, v0, v2

    .line 310
    .local v6, "mi":Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;->stackDepth()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v1, :cond_5

    .line 311
    const-string v9, "\t-  locked "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 294
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "mi":Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
    :pswitch_0
    const-string v9, "\t-  blocked on "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lock:Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 298
    :pswitch_1
    const-string v9, "\t-  waiting on "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lock:Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 302
    :pswitch_2
    const-string v9, "\t-  waiting on "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->lock:Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 286
    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/visor/debug/VisorThreadMonitorInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v8    # "ste":Ljava/lang/StackTraceElement;
    :cond_7
    iget-object v9, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->stackTrace:[Ljava/lang/StackTraceElement;

    array-length v9, v9

    if-ge v5, v9, :cond_8

    .line 316
    const-string v9, "\t..."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    :cond_8
    iget-object v9, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->locks:[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    array-length v9, v9

    if-lez v9, :cond_9

    .line 319
    const-string v9, "\n\tNumber of locked synchronizers = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->locks:[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->locks:[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    .local v0, "arr$":[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_9

    aget-object v4, v0, v2

    .line 322
    .local v4, "li":Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    const-string v9, "\t- "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 325
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "li":Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    :cond_9
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public waitedCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->waitedCnt:Ljava/lang/Long;

    return-object v0
.end method

.method public waitedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;->waitedTime:Ljava/lang/Long;

    return-object v0
.end method
