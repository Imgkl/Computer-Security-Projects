.class public final enum Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;
.super Ljava/lang/Enum;
.source "GridSegmentationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

.field public static final enum NOOP:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

.field public static final enum RESTART_JVM:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

.field public static final enum STOP:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    const-string v1, "RESTART_JVM"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->RESTART_JVM:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    .line 39
    new-instance v0, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->STOP:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    .line 46
    new-instance v0, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    const-string v1, "NOOP"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->NOOP:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    sget-object v1, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->RESTART_JVM:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->STOP:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->NOOP:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->$VALUES:[Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->$VALUES:[Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    invoke-virtual {v0}, [Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    return-object v0
.end method
