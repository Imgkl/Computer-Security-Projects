.class Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;
.super Ljava/lang/Object;
.source "IgnitionEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridMBeanServerData"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cnt:I

.field private gridNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mbean:Ljavax/management/ObjectName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2198
    const-class v0, Lorg/apache/ignite/internal/IgnitionEx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljavax/management/ObjectName;)V
    .locals 1
    .param p1, "mbean"    # Ljavax/management/ObjectName;

    .prologue
    .line 2213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2200
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->gridNames:Ljava/util/Collection;

    .line 2214
    sget-boolean v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2216
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->mbean:Ljavax/management/ObjectName;

    .line 2217
    return-void
.end method


# virtual methods
.method public addGrid(Ljava/lang/String;)V
    .locals 1
    .param p1, "gridName"    # Ljava/lang/String;

    .prologue
    .line 2225
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->gridNames:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2226
    return-void
.end method

.method public containsGrid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridName"    # Ljava/lang/String;

    .prologue
    .line 2245
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->gridNames:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCounter()I
    .locals 1

    .prologue
    .line 2263
    iget v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->cnt:I

    return v0
.end method

.method public getMbean()Ljavax/management/ObjectName;
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->mbean:Ljavax/management/ObjectName;

    return-object v0
.end method

.method public removeGrid(Ljava/lang/String;)V
    .locals 1
    .param p1, "gridName"    # Ljava/lang/String;

    .prologue
    .line 2234
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->gridNames:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2235
    return-void
.end method

.method public setCounter(I)V
    .locals 0
    .param p1, "cnt"    # I

    .prologue
    .line 2272
    iput p1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$GridMBeanServerData;->cnt:I

    .line 2273
    return-void
.end method
