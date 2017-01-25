.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;
.super Ljava/lang/Object;
.source "ActivityStreamDetailsFragment.java"

# interfaces
.implements Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->setFavourite(Ljava/lang/Long;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public favouritingFailed()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    sget v2, Lcom/eventgenie/android/R$string;->webview_error_title_you_are_currently_offline:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 234
    return-void
.end method

.method public favouritingFinished(Z)V
    .locals 4
    .param p1, "isFavourited"    # Z

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$drawable;->ic_action_fav_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->favId:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "ACTIVITYSTREAM_POST_FAVOURITED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 226
    .end local v0    # "data":Landroid/content/Intent;
    :goto_1
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$drawable;->ic_action_fav_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    goto :goto_1
.end method
