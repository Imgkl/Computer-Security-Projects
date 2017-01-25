.class synthetic Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$10;
.super Ljava/lang/Object;
.source "GridDiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$ignite$plugin$segmentation$GridSegmentationPolicy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1717
    invoke-static {}, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->values()[Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$10;->$SwitchMap$org$apache$ignite$plugin$segmentation$GridSegmentationPolicy:[I

    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$10;->$SwitchMap$org$apache$ignite$plugin$segmentation$GridSegmentationPolicy:[I

    sget-object v1, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->RESTART_JVM:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    invoke-virtual {v1}, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$10;->$SwitchMap$org$apache$ignite$plugin$segmentation$GridSegmentationPolicy:[I

    sget-object v1, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->STOP:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    invoke-virtual {v1}, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
