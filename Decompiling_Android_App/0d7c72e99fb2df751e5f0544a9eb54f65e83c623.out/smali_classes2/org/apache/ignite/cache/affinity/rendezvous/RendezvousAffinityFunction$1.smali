.class Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction$1;
.super Ljava/lang/ThreadLocal;
.source "RendezvousAffinityFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/security/MessageDigest;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction$1;->this$0:Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction$1;->initialValue()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/security/MessageDigest;
    .locals 3

    .prologue
    .line 70
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-boolean v1, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Should have failed in constructor"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 75
    :cond_0
    new-instance v1, Lorg/apache/ignite/IgniteException;

    const-string v2, "Failed to obtain message digest (digest was available in constructor)"

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
