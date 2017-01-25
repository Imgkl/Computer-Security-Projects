.class Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->loadPhotoFromProfile(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$1;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 378
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$1;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mImageViewMugshot:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$000(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 379
    return-void
.end method
