.class public Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;
.super Ljava/lang/Object;
.source "IgfsFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final info:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V
    .locals 0
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;->info:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 548
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$1;

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;->info:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    return-object v0
.end method

.method public path(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo$Builder;->info:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->access$102(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsPath;

    .line 557
    return-object p0
.end method
