.class public Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteImageGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$1;,
        Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private imageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "progressDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->imageUrls:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->context:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    iput-object p4, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->imageUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->imageUrls:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->imageUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 90
    int-to-long v0, p1

    return-wide v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v10, -0x2

    .line 123
    invoke-virtual {p0, p1}, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 125
    .local v7, "imageUrl":Ljava/lang/String;
    const/4 v9, 0x0

    .line 126
    .local v9, "viewHolder":Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;
    const/4 v0, 0x0

    .line 128
    .local v0, "remoteImageView":Lcom/github/ignition/core/widgets/RemoteImageView;
    if-nez p2, :cond_0

    .line 130
    new-instance v0, Lcom/github/ignition/core/widgets/RemoteImageView;

    .end local v0    # "remoteImageView":Lcom/github/ignition/core/widgets/RemoteImageView;
    iget-object v1, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->progressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v0 .. v5}, Lcom/github/ignition/core/widgets/RemoteImageView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    .line 132
    .restart local v0    # "remoteImageView":Lcom/github/ignition/core/widgets/RemoteImageView;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 135
    invoke-virtual {v0, v8}, Lcom/github/ignition/core/widgets/RemoteImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->context:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 139
    .local v6, "container":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {v6, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 143
    move-object p2, v6

    .line 145
    new-instance v9, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;

    .end local v9    # "viewHolder":Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;
    invoke-direct {v9, v2}, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;-><init>(Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$1;)V

    .line 146
    .restart local v9    # "viewHolder":Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;
    # setter for: Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;->webImageView:Lcom/github/ignition/core/widgets/RemoteImageView;
    invoke-static {v9, v0}, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;->access$102(Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;Lcom/github/ignition/core/widgets/RemoteImageView;)Lcom/github/ignition/core/widgets/RemoteImageView;

    .line 147
    invoke-virtual {p2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    .end local v6    # "container":Landroid/widget/FrameLayout;
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    invoke-virtual {v0}, Lcom/github/ignition/core/widgets/RemoteImageView;->reset()V

    .line 156
    invoke-virtual {v0, v7}, Lcom/github/ignition/core/widgets/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/github/ignition/core/widgets/RemoteImageView;->loadImage()V

    move-object v1, p2

    .line 159
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->onGetView(ILcom/github/ignition/core/widgets/RemoteImageView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 161
    return-object p2

    .line 149
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "viewHolder":Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;
    check-cast v9, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;

    .line 150
    .restart local v9    # "viewHolder":Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;
    # getter for: Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;->webImageView:Lcom/github/ignition/core/widgets/RemoteImageView;
    invoke-static {v9}, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;->access$100(Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter$ViewHolder;)Lcom/github/ignition/core/widgets/RemoteImageView;

    move-result-object v0

    goto :goto_0
.end method

.method protected onGetView(ILcom/github/ignition/core/widgets/RemoteImageView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "remoteImageView"    # Lcom/github/ignition/core/widgets/RemoteImageView;
    .param p3, "remoteImageViewContainer"    # Landroid/view/ViewGroup;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 181
    return-void
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    return-void
.end method

.method public setImageUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->imageUrls:Ljava/util/List;

    .line 95
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "progressDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/github/ignition/core/adapters/RemoteImageGalleryAdapter;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    return-void
.end method
