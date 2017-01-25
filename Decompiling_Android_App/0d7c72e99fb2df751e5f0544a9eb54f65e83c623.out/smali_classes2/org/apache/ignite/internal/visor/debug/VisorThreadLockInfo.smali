.class public Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
.super Ljava/lang/Object;
.source "VisorThreadLockInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field protected final clsName:Ljava/lang/String;

.field protected final identityHashCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "clsName"    # Ljava/lang/String;
    .param p2, "identityHashCode"    # Ljava/lang/Integer;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-boolean v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;->clsName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;->identityHashCode:Ljava/lang/Integer;

    .line 46
    return-void
.end method

.method public static from(Ljava/lang/management/LockInfo;)Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;
    .locals 3
    .param p0, "li"    # Ljava/lang/management/LockInfo;

    .prologue
    .line 50
    sget-boolean v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;

    invoke-virtual {p0}, Ljava/lang/management/LockInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/management/LockInfo;->getIdentityHashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method public identityHashCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;->identityHashCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;->clsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadLockInfo;->identityHashCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
