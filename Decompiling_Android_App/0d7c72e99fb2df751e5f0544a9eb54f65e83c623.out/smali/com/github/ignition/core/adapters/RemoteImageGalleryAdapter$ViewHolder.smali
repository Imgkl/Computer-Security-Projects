.class final Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RemoteImageGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field private webImageView:Lcom/github/ignition/core/widgets/RemoteImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$1;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;)Lcom/github/ignition/core/widgets/RemoteImageView;
    .locals 1
    .param p0, "x0"    # Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;->webImageView:Lcom/github/ignition/core/widgets/RemoteImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;Lcom/github/ignition/core/widgets/RemoteImageView;)Lcom/github/ignition/core/widgets/RemoteImageView;
    .locals 0
    .param p0, "x0"    # Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/github/ignition/core/widgets/RemoteImageView;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;->webImageView:Lcom/github/ignition/core/widgets/RemoteImageView;

    return-object p1
.end method
