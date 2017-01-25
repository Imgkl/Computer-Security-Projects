.class public Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;
.super Ljava/lang/Object;
.source "CardViewHolder.java"


# instance fields
.field public bottomSeparatorLeft:Landroid/view/View;

.field public bottomSeparatorRight:Landroid/view/View;

.field public bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

.field public ibAuthorMugshot:Landroid/widget/ImageButton;

.field public ibPostTypeThumbnail:Landroid/widget/ImageButton;

.field public id:J

.field public isFav:Z

.field public ivComment:Landroid/widget/ImageView;

.field public ivDate:Landroid/widget/ImageView;

.field public ivFav:Landroid/widget/ImageView;

.field public ivShare:Landroid/widget/ImageView;

.field public llBackground:Landroid/widget/LinearLayout;

.field public postType:Ljava/lang/String;

.field public tvAuthor:Landroid/widget/TextView;

.field public tvContentDetails:Landroid/widget/TextView;

.field public tvContentTitle:Landroid/widget/TextView;

.field public tvDate:Landroid/widget/TextView;

.field public vfContent:[Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    return-void
.end method
