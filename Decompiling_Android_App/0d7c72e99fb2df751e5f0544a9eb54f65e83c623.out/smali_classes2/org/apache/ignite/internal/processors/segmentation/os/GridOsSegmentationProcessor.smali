.class public Lorg/apache/ignite/internal/processors/segmentation/os/GridOsSegmentationProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridOsSegmentationProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 33
    return-void
.end method


# virtual methods
.method public isValidSegment()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
