.class public Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;
.source "GridServiceAssignmentsKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey",
        "<",
        "Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;-><init>()V

    .line 37
    sget-boolean v0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;->name:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic equalsx(Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;)Z
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;

    .prologue
    .line 26
    check-cast p1, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    .end local p1    # "x0":Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;->equalsx(Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;)Z

    move-result v0

    return v0
.end method

.method protected equalsx(Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;)Z
    .locals 2
    .param p1, "that"    # Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignmentsKey;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
