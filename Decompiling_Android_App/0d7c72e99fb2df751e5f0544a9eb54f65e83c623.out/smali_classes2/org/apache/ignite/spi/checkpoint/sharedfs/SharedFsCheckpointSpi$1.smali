.class Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi$1;
.super Ljava/lang/Object;
.source "SharedFsCheckpointSpi.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->getFiles()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi$1;->this$0:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "pathName"    # Ljava/io/File;

    .prologue
    .line 450
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
