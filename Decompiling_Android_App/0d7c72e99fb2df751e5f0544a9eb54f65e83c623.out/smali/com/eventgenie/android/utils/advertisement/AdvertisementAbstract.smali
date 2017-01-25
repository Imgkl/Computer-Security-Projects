.class public abstract Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
.super Ljava/lang/Object;
.source "AdvertisementAbstract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;
    }
.end annotation


# static fields
.field protected static final ORIENTATION_BOTTOM:Ljava/lang/String; = "advert_bottom"

.field protected static final ORIENTATION_TOP:Ljava/lang/String; = "advert_top"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAdView:Landroid/view/View;

.field protected mCallback:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

.field private final mImageView:Landroid/widget/ImageView;

.field private final mOrientation:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mActivity:Landroid/app/Activity;

    .line 65
    if-nez p2, :cond_0

    .line 66
    sget v1, Lcom/eventgenie/android/R$id;->footer_ad:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mAdView:Landroid/view/View;

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mAdView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mAdView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mAdView:Landroid/view/View;

    sget v2, Lcom/eventgenie/android/R$id;->footer_ad_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mImageView:Landroid/widget/ImageView;

    .line 81
    :goto_1
    if-eqz v0, :cond_2

    .line 82
    iput-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mOrientation:Ljava/lang/String;

    .line 86
    :goto_2
    return-void

    .line 68
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    sget v1, Lcom/eventgenie/android/R$id;->footer_ad:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mAdView:Landroid/view/View;

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    .restart local v0    # "tag":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mImageView:Landroid/widget/ImageView;

    goto :goto_1

    .line 84
    :cond_2
    const-string v1, "advert_bottom"

    iput-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mOrientation:Ljava/lang/String;

    goto :goto_2
.end method

.method protected static normaliseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 130
    const/16 v0, 0x406

    const/16 v1, 0x280

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/help/UrlUtils;->alterGoogleUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 131
    return-object p0
.end method


# virtual methods
.method public abstract adClick()V
.end method

.method public abstract ensureVisible()V
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mAdView:Landroid/view/View;

    return-object v0
.end method

.method protected getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mOrientation:Ljava/lang/String;

    return-object v0
.end method

.method protected isInsideTab(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 109
    invoke-static {p1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->isInsideTab(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public setCallback(Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V
    .locals 0
    .param p1, "callback"    # Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mCallback:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

    .line 60
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mAdView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->mAdView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->footer_ad_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_0
    return-void
.end method

.method public abstract setup()V
.end method

.method public abstract shouldAdViewBeVisible()Z
.end method
