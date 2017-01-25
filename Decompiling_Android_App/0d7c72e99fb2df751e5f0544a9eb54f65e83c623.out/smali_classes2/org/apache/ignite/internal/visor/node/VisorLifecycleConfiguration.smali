.class public Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;
.super Ljava/lang/Object;
.source "VisorLifecycleConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private beans:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;
    .locals 2
    .param p0, "c"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    .line 43
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;-><init>()V

    .line 45
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLifecycleBeans()[Lorg/apache/ignite/lifecycle/LifecycleBean;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactArray([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;->beans:Ljava/lang/String;

    .line 47
    return-object v0
.end method


# virtual methods
.method public beans()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;->beans:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
